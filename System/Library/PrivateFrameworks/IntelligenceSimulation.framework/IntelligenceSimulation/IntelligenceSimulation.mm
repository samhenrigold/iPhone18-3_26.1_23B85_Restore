uint64_t SimulationError.className.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SimulationError.data.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SimulationError.description.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t SimulationError.error.getter()
{
  v1 = *(v0 + 104);
  MEMORY[0x259C34260](v1);
  return v1;
}

uint64_t SimulationError.GRPCStatus.hashValue.getter()
{
  v1 = *v0;
  sub_255422774();
  MEMORY[0x259C34040](v1);
  return sub_2554227A4();
}

uint64_t sub_25541613C()
{
  v1 = *v0;
  sub_255422774();
  MEMORY[0x259C34040](v1);
  return sub_2554227A4();
}

uint64_t sub_2554161B0(uint64_t a1)
{
  v2 = *v1;
  sub_255422774();
  MEMORY[0x259C34040](v2);
  return sub_2554227A4();
}

uint64_t sub_2554161F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (result == 15)
  {
    v8 = a2;
    MEMORY[0x259C34260](a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4730, &qword_255422D08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4738, &qword_255422D10);
    if (swift_dynamicCast())
    {
      sub_2554168D4(v6, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v5 + 16))(v6, v4, v5);
      *a3 = v6[0];
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      result = sub_25541686C(v6);
      *a3 = 15;
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void Error.asSimulationError(_:file:function:line:className:data:grpcStatus:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v40 = a8;
  v38 = a6;
  v39 = a7;
  v37 = a5;
  v35 = a3;
  v36 = a4;
  v18 = a1;
  v20 = *(a16 - 8);
  MEMORY[0x28223BE20](a1);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v23;
  (*(v20 + 16))(v22, v24, a16);
  v25 = sub_2554226F4();
  if (v25)
  {
    v26 = v25;
    (*(v20 + 8))(v22, a16);
  }

  else
  {
    v26 = swift_allocError();
    (*(v20 + 32))(v27, v22, a16);
  }

  if (a2)
  {
    MEMORY[0x259C34260](v26);

    v28 = a2;
  }

  else
  {
    swift_getErrorValue();
    v33 = v42;
    MEMORY[0x259C34260](v26);

    v18 = sub_255422724();
    v28 = v29;
  }

  sub_2554161F4(v34, v26, &v41);

  v30 = v41;
  v31 = v36;
  *a9 = v35;
  *(a9 + 8) = v31;
  *(a9 + 16) = v37;
  v32 = v39;
  *(a9 + 24) = v38;
  *(a9 + 32) = v32;
  *(a9 + 40) = v40;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  *(a9 + 72) = a13;
  *(a9 + 80) = a14;
  *(a9 + 88) = v18;
  *(a9 + 96) = v28;
  *(a9 + 104) = v26;
  *(a9 + 112) = v30;
}

unint64_t sub_255416564()
{
  result = qword_27F7B4728;
  if (!qword_27F7B4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4728);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2554165E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25541662C(uint64_t result, int a2, int a3)
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
      *(result + 113) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SimulationError.GRPCStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SimulationError.GRPCStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_25541686C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4740, &qword_255422D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2554168D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t dispatch thunk of StatefulSiriReplayerProtocol.startSiriRequest(ifRequestEvent:stopEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_255416AC0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_255416AC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of StatefulSiriReplayerProtocol.injectIFEvent(ifEvent:stopEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_255416F50;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of StatefulSiriReplayerProtocol.endSession()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_255416F50;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of static StatefulSiriReplayerProvider.getStatefulSiriReplayer()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_255416F50;

  return v9(a1, a2, a3);
}

uint64_t InterceptionType.typeName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_255416F8C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_255422634();
  if (!v4)
  {
    result = sub_2554227F4();
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_255416FD4()
{
  sub_255422774();
  MEMORY[0x259C34040](0);
  return sub_2554227A4();
}

uint64_t sub_255417040(uint64_t a1)
{
  sub_255422774();
  MEMORY[0x259C34040](0);
  return sub_2554227A4();
}

uint64_t sub_255417098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255422704();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255417138(uint64_t a1)
{
  v2 = sub_2554172EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255417174(uint64_t a1)
{
  v2 = sub_2554172EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InterceptionType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4748, &qword_255422DC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2554172EC();
  sub_2554227C4();
  sub_2554226C4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2554172EC()
{
  result = qword_27F7B4750;
  if (!qword_27F7B4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4750);
  }

  return result;
}

uint64_t InterceptionType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4758, &qword_255422DC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2554172EC();
  sub_2554227B4();
  if (!v2)
  {
    v9 = sub_255422694();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2554174CC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4748, &qword_255422DC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2554172EC();
  sub_2554227C4();
  sub_2554226C4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t InterceptionValue.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2554224D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InterceptionValue.type.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterceptionValue(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t type metadata accessor for InterceptionValue(uint64_t a1)
{
  result = qword_27F7B47B0;
  if (!qword_27F7B47B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InterceptionValue.encodedData.getter()
{
  v1 = v0 + *(type metadata accessor for InterceptionValue(0) + 24);
  v2 = *v1;
  sub_255417748(*v1, *(v1 + 8));
  return v2;
}

void sub_255417748(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_25541779C@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_2554224D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2554224B4();
  swift_allocObject();
  sub_2554224A4();
  v9 = sub_255422494();
  v11 = v10;

  v12 = sub_255422634();
  if (!v13)
  {
    v12 = sub_2554227F4();
  }

  v14 = v12;
  v15 = v13;
  sub_2554224C4();
  (*(v6 + 32))(a4, v8, v5);
  v16 = type metadata accessor for InterceptionValue(0);
  v17 = (a4 + *(v16 + 20));
  *v17 = v14;
  v17[1] = v15;
  v18 = (a4 + *(v16 + 24));
  *v18 = v9;
  v18[1] = v11;
  return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
}

uint64_t sub_255417B44()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x446465646F636E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255417B94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255419408(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255417BC8(uint64_t a1)
{
  v2 = sub_255417E6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255417C04(uint64_t a1)
{
  v2 = sub_255417E6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InterceptionValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4760, &qword_255422DD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255417E6C();
  sub_2554227C4();
  LOBYTE(v17) = 0;
  sub_2554224D4();
  sub_2554185EC(&qword_27F7B4770, MEMORY[0x277CC95F8]);
  sub_2554226E4();
  if (!v2)
  {
    v9 = type metadata accessor for InterceptionValue(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v17 = *v10;
    v18 = v11;
    v16 = 1;
    sub_255417EC0();

    sub_2554226E4();

    v12 = (v3 + *(v9 + 24));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 2;
    sub_255417748(v17, v13);
    sub_255417F14();
    sub_2554226E4();
    sub_255417F68(v17, v18);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_255417E6C()
{
  result = qword_27F7B4768;
  if (!qword_27F7B4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4768);
  }

  return result;
}

unint64_t sub_255417EC0()
{
  result = qword_27F7B4778;
  if (!qword_27F7B4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4778);
  }

  return result;
}

unint64_t sub_255417F14()
{
  result = qword_27F7B4780;
  if (!qword_27F7B4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4780);
  }

  return result;
}

uint64_t sub_255417F68(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t InterceptionValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_2554224D4();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4788, &qword_255422DD8);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v19 - v6;
  v8 = type metadata accessor for InterceptionValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255417E6C();
  sub_2554227B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v23;
  v11 = v24;
  v20 = v8;
  v21 = v10;
  LOBYTE(v27) = 0;
  sub_2554185EC(&qword_27F7B4790, MEMORY[0x277CC9618]);
  v14 = v25;
  v13 = v26;
  sub_2554226B4();
  (*(v11 + 32))(v21, v14, v4);
  v28 = 1;
  sub_255418384();
  sub_2554226B4();
  v15 = *(&v27 + 1);
  v16 = &v21[*(v20 + 20)];
  *v16 = v27;
  *(v16 + 1) = v15;
  v28 = 2;
  sub_2554183D8();
  sub_2554226B4();
  (*(v12 + 8))(v7, v13);
  v17 = v21;
  *&v21[*(v20 + 24)] = v27;
  sub_25541842C(v17, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_255418490(v17);
}

unint64_t sub_255418384()
{
  result = qword_27F7B4798;
  if (!qword_27F7B4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4798);
  }

  return result;
}

unint64_t sub_2554183D8()
{
  result = qword_27F7B47A0;
  if (!qword_27F7B47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B47A0);
  }

  return result;
}

uint64_t sub_25541842C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterceptionValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255418490(uint64_t a1)
{
  v2 = type metadata accessor for InterceptionValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2554184EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2554224D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InterceptionResponse.encodedData.getter()
{
  v1 = *v0;
  sub_255417748(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2554185EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2554224D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25541863C(uint64_t a1, int a2)
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

uint64_t sub_255418684(uint64_t result, int a2, int a3)
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

uint64_t sub_2554186E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2554224D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2554187B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2554224D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_255418874(uint64_t a1)
{
  result = sub_2554224D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_255418924(uint64_t a1, int a2)
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

uint64_t sub_25541896C(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2554189F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
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

uint64_t sub_255418A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22IntelligenceSimulation20InterceptionDecisionO(uint64_t a1)
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

uint64_t sub_255418AC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255418B1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_255418B6C(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t dispatch thunk of SimulationIntercepting.interceptionPointTriggered(interceptionPoint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_255416AC0;

  return v11(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for InterceptionValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InterceptionValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterceptionType.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for InterceptionType.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_255418F1C()
{
  result = qword_27F7B47C0;
  if (!qword_27F7B47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B47C0);
  }

  return result;
}

unint64_t sub_255418F74()
{
  result = qword_27F7B47C8;
  if (!qword_27F7B47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B47C8);
  }

  return result;
}

unint64_t sub_255418FCC()
{
  result = qword_27F7B47D0;
  if (!qword_27F7B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B47D0);
  }

  return result;
}

unint64_t sub_255419024()
{
  result = qword_27F7B47D8;
  if (!qword_27F7B47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B47D8);
  }

  return result;
}

unint64_t sub_25541907C()
{
  result = qword_27F7B47E0;
  if (!qword_27F7B47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B47E0);
  }

  return result;
}

unint64_t sub_2554190D4()
{
  result = qword_27F7B47E8;
  if (!qword_27F7B47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B47E8);
  }

  return result;
}

uint64_t sub_255419128@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>, uint64_t x0_0@<X0>)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](x0_0);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255422484();
  swift_allocObject();
  sub_255422474();
  sub_255422464();

  (*(v6 + 32))(a3, v8, a1);
  return (*(v6 + 56))(a3, 0, 1, a1);
}

uint64_t sub_255419408(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_255422704() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_255422704() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446465646F636E65 && a2 == 0xEB00000000617461)
  {

    return 2;
  }

  else
  {
    v6 = sub_255422704();

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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_255419554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B47F0, &unk_255423370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_255419660(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_255422504();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2554224F4();
}

void *TaskID.init(tree:stableTaskID:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  *a3 = *result;
  a3[1] = v3;
  a3[2] = v4;
  return result;
}

uint64_t static TreeID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_255422704();
  }
}

uint64_t static StableTaskID.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255419834()
{
  if (*v0)
  {
    return 0x6154656C62617473;
  }

  else
  {
    return 1701147252;
  }
}

uint64_t sub_255419870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701147252 && a2 == 0xE400000000000000;
  if (v5 || (sub_255422704() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6154656C62617473 && a2 == 0xEC00000044496B73)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255422704();

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

uint64_t sub_25541995C(uint64_t a1)
{
  v2 = sub_25541E8A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255419998(uint64_t a1)
{
  v2 = sub_25541E8A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaskID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B47F8, &qword_2554233A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v11[0] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25541E8A8();

  sub_2554227C4();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  sub_25541E8FC();
  v9 = v11[1];
  sub_2554226E4();

  if (!v9)
  {
    v12 = v11[0];
    v14 = 1;
    sub_25541E950();

    sub_2554226E4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TaskID.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_255422514();
  result = MEMORY[0x259C34040](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x259C34050](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t TaskID.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_255422774();
  sub_255422514();
  MEMORY[0x259C34040](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x259C34050](v4);
      --v2;
    }

    while (v2);
  }

  return sub_2554227A4();
}

uint64_t TaskID.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4818, &qword_2554233A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25541E8A8();
  sub_2554227B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_25541E9A4();
  sub_2554226B4();
  v10 = v13[0];
  v9 = v13[1];
  v14 = 1;
  sub_25541E9F8();
  sub_2554226B4();
  (*(v6 + 8))(v8, v5);
  v11 = v13[0];
  *a2 = v10;
  a2[1] = v9;
  a2[2] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_255419E88()
{
  sub_255422774();
  TaskID.hash(into:)();
  return sub_2554227A4();
}

uint64_t sub_255419EE0(uint64_t a1)
{
  sub_255422774();
  TaskID.hash(into:)();
  return sub_2554227A4();
}

uint64_t sub_255419F80(uint64_t a1)
{
  v2 = sub_25541EA4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255419FBC(uint64_t a1)
{
  v2 = sub_25541EA4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TreeID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4830, &qword_2554233B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25541EA4C();
  sub_2554227C4();
  sub_2554226C4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t TreeID.hashValue.getter()
{
  sub_255422774();
  sub_255422514();
  return sub_2554227A4();
}

uint64_t TreeID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4840, &qword_2554233B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25541EA4C();
  sub_2554227B4();
  if (!v2)
  {
    v9 = sub_255422694();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25541A2FC()
{
  sub_255422774();
  sub_255422514();
  return sub_2554227A4();
}

uint64_t sub_25541A350(uint64_t a1)
{
  sub_255422774();
  sub_255422514();
  return sub_2554227A4();
}

uint64_t sub_25541A3B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4830, &qword_2554233B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25541EA4C();
  sub_2554227C4();
  sub_2554226C4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25541A4EC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_255422704();
  }
}

uint64_t StableTaskID.init(root:)@<X0>(void *a2@<X8>)
{

  *a2 = &unk_286750B50;
  return result;
}

uint64_t sub_25541A550(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25541A5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255422704();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25541A63C(uint64_t a1)
{
  v2 = sub_25541EAA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25541A678(uint64_t a1)
{
  v2 = sub_25541EAA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StableTaskID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4848, &qword_2554233C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25541EAA0();

  sub_2554227C4();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4858, &qword_2554233C8);
  sub_25541EB3C(&qword_27F7B4860, MEMORY[0x277D84D40], MEMORY[0x277D83948]);
  sub_2554226E4();

  return (*(v4 + 8))(v6, v3);
}

uint64_t StableTaskID.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x259C34040](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x259C34050](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t StableTaskID.hashValue.getter()
{
  v1 = *v0;
  sub_255422774();
  MEMORY[0x259C34040](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x259C34050](v4);
      --v2;
    }

    while (v2);
  }

  return sub_2554227A4();
}

uint64_t StableTaskID.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4868, &qword_2554233D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25541EAA0();
  sub_2554227B4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4858, &qword_2554233C8);
    sub_25541EB3C(&qword_27F7B4870, MEMORY[0x277D84D68], MEMORY[0x277D83978]);
    sub_2554226B4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25541AAB8()
{
  v1 = *v0;
  result = MEMORY[0x259C34040](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x259C34050](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_25541AB0C(uint64_t a1)
{
  v2 = *v1;
  sub_255422774();
  MEMORY[0x259C34040](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x259C34050](v5);
      --v3;
    }

    while (v3);
  }

  return sub_2554227A4();
}

uint64_t SourceLocationID.stableValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SourceLocationID.file.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SourceLocationID.function.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall SourceLocationID.init(_:file:function:line:column:)(IntelligenceSimulation::SourceLocationID *__return_ptr retstr, Swift::String _, Swift::String file, Swift::String function, Swift::Int line, Swift::Int column)
{
  retstr->stableValue = _;
  retstr->file = file;
  retstr->function = function;
  retstr->line = line;
  retstr->column = column;
}

uint64_t sub_25541AC6C()
{
  v1 = *v0;
  v2 = 0x6156656C62617473;
  v3 = 0x6E6F6974636E7566;
  v4 = 1701734764;
  if (v1 != 3)
  {
    v4 = 0x6E6D756C6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701603686;
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

uint64_t sub_25541ACFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25541F918(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25541AD30(uint64_t a1)
{
  v2 = sub_25541EBA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25541AD6C(uint64_t a1)
{
  v2 = sub_25541EBA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SourceLocationID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4878, &qword_2554233D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25541EBA8();
  sub_2554227C4();
  v17 = 0;
  v10 = v12[7];
  sub_2554226C4();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = 1;
  sub_2554226C4();
  v15 = 2;
  sub_2554226C4();
  v14 = 3;
  sub_2554226D4();
  v13 = 4;
  sub_2554226D4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SourceLocationID.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  sub_255422514();
  sub_255422514();
  sub_255422514();
  MEMORY[0x259C34040](v2);
  return MEMORY[0x259C34040](v3);
}

uint64_t SourceLocationID.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_255422774();
  sub_255422514();
  sub_255422514();
  sub_255422514();
  MEMORY[0x259C34040](v1);
  MEMORY[0x259C34040](v2);
  return sub_2554227A4();
}

uint64_t SourceLocationID.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4888, &qword_2554233E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25541EBA8();
  sub_2554227B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_255422694();
  v28 = v10;
  LOBYTE(v33[0]) = 1;
  v11 = sub_255422694();
  v27 = v12;
  v25 = v11;
  LOBYTE(v33[0]) = 2;
  v24 = sub_255422694();
  v26 = v13;
  LOBYTE(v33[0]) = 3;
  v23 = sub_2554226A4();
  v34 = 4;
  v14 = sub_2554226A4();
  (*(v6 + 8))(v8, v5);
  v16 = v27;
  v15 = v28;
  *&v29 = v9;
  *(&v29 + 1) = v28;
  v17 = v25;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  v18 = v26;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  *&v32 = v23;
  *(&v32 + 1) = v14;
  v19 = v30;
  *a2 = v29;
  a2[1] = v19;
  v20 = v32;
  a2[2] = v31;
  a2[3] = v20;
  sub_25541EBFC(&v29, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v9;
  v33[1] = v15;
  v33[2] = v17;
  v33[3] = v16;
  v33[4] = v24;
  v33[5] = v18;
  v33[6] = v23;
  v33[7] = v14;
  return sub_25541EC34(v33);
}

uint64_t sub_25541B410()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_255422774();
  sub_255422514();
  sub_255422514();
  sub_255422514();
  MEMORY[0x259C34040](v1);
  MEMORY[0x259C34040](v2);
  return sub_2554227A4();
}

uint64_t sub_25541B4C0(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  sub_255422514();
  sub_255422514();
  sub_255422514();
  MEMORY[0x259C34040](v2);
  return MEMORY[0x259C34040](v3);
}

uint64_t sub_25541B540(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  sub_255422774();
  sub_255422514();
  sub_255422514();
  sub_255422514();
  MEMORY[0x259C34040](v2);
  MEMORY[0x259C34040](v3);
  return sub_2554227A4();
}

uint64_t static Simulation.request<A, B>(id:taskId:with:isolatedTo:expecting:)(uint64_t a1, _OWORD *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 320) = v25;
  *(v8 + 288) = v23;
  *(v8 + 304) = v24;
  *(v8 + 272) = a4;
  *(v8 + 280) = a8;
  *(v8 + 264) = a1;
  v12 = sub_2554225A4();
  *(v8 + 328) = v12;
  *(v8 + 336) = *(v12 - 8);
  *(v8 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4890, &qword_2554233F0);
  *(v8 + 352) = swift_task_alloc();
  v13 = type metadata accessor for InterceptionValue(0);
  *(v8 + 360) = v13;
  *(v8 + 368) = *(v13 - 8);
  v14 = swift_task_alloc();
  v15 = a2[1];
  *(v8 + 120) = *a2;
  *(v8 + 136) = v15;
  v16 = a2[3];
  *(v8 + 152) = a2[2];
  *(v8 + 168) = v16;
  v17 = *a3;
  *(v8 + 376) = v14;
  *(v8 + 384) = v17;
  *(v8 + 392) = *(a3 + 1);
  if (a5)
  {
    swift_getObjectType();
    v18 = sub_255422534();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(v8 + 408) = v18;
  *(v8 + 416) = v20;

  return MEMORY[0x2822009F8](sub_25541B7F8, v18);
}

uint64_t sub_25541B7F8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_25541779C(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25541EE28(*(v0 + 352), &qword_27F7B4890, &qword_2554233F0);
    if (qword_27F7B4718 != -1)
    {
      swift_once();
    }

    v4 = sub_255422504();
    __swift_project_value_buffer(v4, qword_27F7B6518);
    v5 = sub_2554224E4();
    v6 = sub_255422594();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_255415000, v5, v6, "Unable to parse input as interception type.", v7, 2u);
      MEMORY[0x259C34350](v7, -1, -1);
    }

    v8 = *(v0 + 280);
    v9 = *(v0 + 264);

    (*(*(v8 - 8) + 56))(v9, 1, 1, v8);

    v10 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v0 + 392);
  v12 = *(v0 + 400);
  v13 = *(v0 + 376);
  v14 = *(v0 + 384);
  v15 = *(v0 + 368);
  sub_25541EC64(*(v0 + 352), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4898, &qword_2554233F8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_255423380;
  sub_25541842C(v13, v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B48A0, &qword_255423400);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_255423380;

  sub_25541EBFC(v0 + 120, v0 + 184);
  sub_255416F8C((v18 + 32));
  *(v0 + 40) = *(v0 + 120);
  *(v0 + 56) = *(v0 + 136);
  *(v0 + 72) = *(v0 + 152);
  *(v0 + 88) = *(v0 + 168);
  *(v0 + 16) = v14;
  *(v0 + 24) = v11;
  *(v0 + 32) = v12;
  *(v0 + 104) = v17;
  *(v0 + 112) = v18;
  if (qword_27F7B4720 != -1)
  {
    swift_once();
  }

  v19 = qword_27F7B6530;
  *(v0 + 424) = qword_27F7B6530;

  return MEMORY[0x2822009F8](sub_25541BB4C, v19, 0);
}

uint64_t sub_25541BB4C()
{
  v1 = v0[53];
  v2 = sub_25541ECC8();
  v3 = swift_task_alloc();
  v0[54] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B48B0, &unk_255423410);
  v5 = swift_task_alloc();
  v0[55] = v5;
  *v5 = v0;
  v5[1] = sub_25541BC60;

  return MEMORY[0x282200740](v0 + 31, &type metadata for InterceptionDecision, v4, v1, v2, &unk_255423408, v3, &type metadata for InterceptionDecision);
}

uint64_t sub_25541BC60()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = v2[53];
    v4 = sub_25541C188;
    v5 = 0;
  }

  else
  {
    sub_25541EDD4((v2 + 2));

    v3 = v2[51];
    v5 = v2[52];
    v4 = sub_25541BDA0;
  }

  return MEMORY[0x2822009F8](v4, v3, v5);
}

uint64_t sub_25541BDA0()
{
  v31 = v0;
  v1 = v0[32];
  if (v1 >> 60 == 15)
  {
    if (qword_27F7B4718 != -1)
    {
      swift_once();
    }

    v2 = sub_255422504();
    __swift_project_value_buffer(v2, qword_27F7B6518);
    v3 = sub_2554224E4();
    v4 = sub_255422584();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_255415000, v3, v4, "No result provided.", v5, 2u);
      MEMORY[0x259C34350](v5, -1, -1);
    }

    v6 = v0[47];
    v7 = v0[35];
    v8 = v0[33];

    sub_255418490(v6);
    (*(*(v7 - 8) + 56))(v8, 1, 1, v7);
  }

  else
  {
    v9 = v0[31];
    v10 = v0[43];
    v11 = v0[35];
    v30[0] = v9;
    v30[1] = v1;
    sub_255419128(v11, v10, v11);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      (*(v0[42] + 8))(v0[43], v0[41]);
      if (qword_27F7B4718 != -1)
      {
        swift_once();
      }

      v13 = sub_255422504();
      __swift_project_value_buffer(v13, qword_27F7B6518);
      v14 = sub_2554224E4();
      v15 = sub_255422594();
      v16 = os_log_type_enabled(v14, v15);
      v17 = v0[47];
      if (v16)
      {
        v29 = v9;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30[0] = v19;
        *v18 = 136315138;
        v20 = sub_2554227F4();
        v22 = sub_25541E0C4(v20, v21, v30);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_255415000, v14, v15, "Failed to decode response to type %s. Returning nil.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x259C34350](v19, -1, -1);
        MEMORY[0x259C34350](v18, -1, -1);
        v23 = v29;
      }

      else
      {
        v23 = v9;
      }

      sub_25541EE88(v23, v1);

      sub_255418490(v17);
      (*(v12 + 56))(v0[33], 1, 1, v0[35]);
    }

    else
    {
      v24 = v0[43];
      v25 = v0[35];
      v26 = v0[33];
      sub_255418490(v0[47]);
      sub_25541EE88(v9, v1);
      (*(v12 + 32))(v26, v24, v25);
      (*(v12 + 56))(v26, 0, 1, v25);
    }
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_25541C188()
{

  return MEMORY[0x2822009F8](sub_25541C1F0, 0, 0);
}

uint64_t sub_25541C1F0()
{

  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_25541C254, v1, v2);
}

uint64_t sub_25541C254()
{
  sub_25541EDD4((v0 + 2));
  if (qword_27F7B4718 != -1)
  {
    swift_once();
  }

  v1 = v0[56];
  v2 = sub_255422504();
  __swift_project_value_buffer(v2, qword_27F7B6518);
  MEMORY[0x259C34260](v1);
  v3 = sub_2554224E4();
  v4 = sub_255422594();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[56];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x259C34260](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_255415000, v3, v4, "Error while handling interception point: %@", v7, 0xCu);
    sub_25541EE28(v8, &qword_27F7B47F0, &unk_255423370);
    MEMORY[0x259C34350](v8, -1, -1);
    MEMORY[0x259C34350](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[35];
  v11 = v0[33];
  sub_255418490(v0[47]);
  (*(*(v10 - 8) + 56))(v11, 1, 1, v10);

  v12 = v0[1];

  return v12();
}

uint64_t static Simulation.capture<A>(id:taskId:value:isolatedTo:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a3;
  *(v8 + 200) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4890, &qword_2554233F0);
  *(v8 + 224) = swift_task_alloc();
  v12 = type metadata accessor for InterceptionValue(0);
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 - 8);
  *(v8 + 248) = swift_task_alloc();
  v13 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v13;
  v14 = a1[3];
  *(v8 + 48) = a1[2];
  *(v8 + 64) = v14;
  *(v8 + 256) = *(a2 + 8);
  if (a4)
  {
    swift_getObjectType();
    v15 = sub_255422534();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  return MEMORY[0x2822009F8](sub_25541C5B4, v15, v17);
}

uint64_t sub_25541C5B4()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  sub_25541779C(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25541EE28(v0[28], &qword_27F7B4890, &qword_2554233F0);
    if (qword_27F7B4718 != -1)
    {
      swift_once();
    }

    v4 = sub_255422504();
    __swift_project_value_buffer(v4, qword_27F7B6518);
    v5 = sub_2554224E4();
    v6 = sub_255422594();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_255415000, v5, v6, "Unable to parse input as interception type.", v7, 2u);
      MEMORY[0x259C34350](v7, -1, -1);
    }
  }

  else
  {
    v8 = v0[30];
    v9 = v0[31];
    sub_25541EC64(v0[28], v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4898, &qword_2554233F8);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_255423380;
    sub_25541842C(v9, v11 + v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B48A0, &qword_255423400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255423380;

    sub_25541EBFC((v0 + 2), (v0 + 10));
    sub_255416F8C((inited + 32));

    if (qword_27F7B4720 != -1)
    {
      swift_once();
    }

    sub_255418490(v0[31]);
  }

  v13 = v0[1];

  return v13();
}

uint64_t _s22IntelligenceSimulation0B0O7perform2id6taskId4with10isolatedTo_q_AA16SourceLocationIDV_AA04TaskL0VxSgnScA_pSgYiq_AMnYuYaq0_YKYTXEtYaKSeRzSERzSeR_SER_s5ErrorR0_r1_lFZ(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 344) = a13;
  *(v14 + 352) = a14;
  *(v14 + 328) = a9;
  *(v14 + 336) = a12;
  *(v14 + 312) = a8;
  *(v14 + 320) = v34;
  *(v14 + 296) = a6;
  *(v14 + 304) = a7;
  *(v14 + 280) = a4;
  *(v14 + 288) = a5;
  *(v14 + 272) = a1;
  *(v14 + 360) = *(a9 - 8);
  *(v14 + 368) = swift_task_alloc();
  *(v14 + 376) = swift_task_alloc();
  v18 = sub_2554225A4();
  *(v14 + 384) = v18;
  *(v14 + 392) = *(v18 - 8);
  *(v14 + 400) = swift_task_alloc();
  *(v14 + 408) = *(v34 - 8);
  *(v14 + 416) = swift_task_alloc();
  v19 = sub_2554225A4();
  *(v14 + 424) = v19;
  *(v14 + 432) = *(v19 - 8);
  v20 = swift_task_alloc();
  v21 = *a2;
  v22 = a2[1];
  *(v14 + 16) = *a2;
  *(v14 + 32) = v22;
  v23 = a2[2];
  v24 = a2[3];
  *(v14 + 48) = v23;
  *(v14 + 64) = v24;
  v25 = *a3;
  v26 = a3[1];
  *(v14 + 440) = v20;
  *(v14 + 448) = v25;
  v27 = a3[2];
  *(v14 + 456) = v26;
  *(v14 + 464) = v27;
  *(v14 + 112) = v23;
  *(v14 + 128) = v24;
  *(v14 + 80) = v21;
  *(v14 + 96) = v22;
  *(v14 + 208) = v25;
  *(v14 + 216) = v26;
  *(v14 + 224) = v27;
  v28 = swift_task_alloc();
  *(v14 + 472) = v28;
  *(v14 + 256) = a10;
  swift_getWitnessTable();
  *(v14 + 264) = a11;
  swift_getWitnessTable();
  *v28 = v14;
  v28[1] = sub_25541CB90;

  return static Simulation.request<A, B>(id:taskId:with:isolatedTo:expecting:)(v20, (v14 + 80), (v14 + 208), a4, a5, a6, v29, v34);
}

uint64_t sub_25541CB90()
{
  v1 = *v0;
  v2 = *(*v0 + 288);

  if (v2)
  {
    swift_getObjectType();
    v3 = sub_255422534();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 480) = v3;
  *(v1 + 488) = v5;

  return MEMORY[0x2822009F8](sub_25541CCD8, v3);
}

uint64_t sub_25541CCD8()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[40];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[49];
    v4 = v0[50];
    v6 = v0[48];
    v7 = v0[38];
    v8 = v0[35];
    (*(v0[54] + 8))(v1, v0[53]);
    (*(v5 + 16))(v4, v8, v6);
    v16 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[62] = v9;
    *v9 = v0;
    v9[1] = sub_25541CF10;
    v10 = v0[52];
    v11 = v0[50];
    v12 = v0[47];

    return v16(v10, v11, v12);
  }

  else
  {
    v14 = v0[34];
    (*(v0[49] + 8))(v0[35], v0[48]);
    (*(v2 + 32))(v14, v1, v3);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_25541CF10()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v2[60];
    v5 = v2[61];

    return MEMORY[0x2822009F8](sub_25541D2C0, v4, v5);
  }

  else
  {
    v2[29] = v2[56];
    v6 = (v2 + 29);
    *(v6 - 88) = *(v6 - 216);
    *(v6 - 72) = *(v6 - 200);
    *(v6 - 56) = *(v6 - 184);
    *(v6 - 40) = *(v6 - 168);
    *(v6 + 8) = *(v6 + 224);
    v7 = swift_task_alloc();
    *(v6 + 272) = v7;
    *v7 = v3;
    v7[1] = sub_25541D0BC;
    v8 = *(v6 + 184);
    v9 = *(v6 + 104);
    v10 = *(v6 + 112);
    v11 = *(v6 + 88);
    v12 = *(v6 + 56);
    v13 = *(v6 + 64);

    return static Simulation.capture<A>(id:taskId:value:isolatedTo:)((v6 - 88), v6, v8, v12, v13, v11, v9, v10);
  }
}

uint64_t sub_25541D0BC()
{
  v1 = *v0;

  v2 = *(v1 + 488);
  v3 = *(v1 + 480);

  return MEMORY[0x2822009F8](sub_25541D1DC, v3, v2);
}

uint64_t sub_25541D1DC()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[40];
  v4 = v0[34];
  (*(v0[49] + 8))(v0[35], v0[48]);
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25541D2C0()
{
  v1 = *(v0[45] + 32);
  v1(v0[46], v0[47], v0[41]);
  v2 = sub_2554226F4();
  v3 = v0[46];
  if (v2)
  {
    (*(v0[45] + 8))(v0[46], v0[41]);
  }

  else
  {
    v4 = v0[41];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[49] + 8))(v0[35], v0[48]);

  v6 = v0[1];

  return v6();
}

uint64_t _s22IntelligenceSimulation0B0O7perform2id6taskId4with10isolatedTo_q_AA16SourceLocationIDV_AA04TaskL0VxnScA_pSgYiq_xnYuYaq0_YKYTXEtYaKSeRzSERzSeR_SER_s5ErrorR0_r1_lFZ(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 336) = a13;
  *(v14 + 344) = a14;
  *(v14 + 320) = a9;
  *(v14 + 328) = a12;
  *(v14 + 304) = v33;
  *(v14 + 312) = v34;
  *(v14 + 288) = a7;
  *(v14 + 296) = a8;
  *(v14 + 272) = a5;
  *(v14 + 280) = a6;
  *(v14 + 256) = a1;
  *(v14 + 264) = a4;
  *(v14 + 352) = *(a9 - 8);
  *(v14 + 360) = swift_task_alloc();
  *(v14 + 368) = swift_task_alloc();
  *(v14 + 376) = *(v33 - 8);
  *(v14 + 384) = swift_task_alloc();
  *(v14 + 392) = *(v34 - 8);
  *(v14 + 400) = swift_task_alloc();
  v19 = sub_2554225A4();
  *(v14 + 408) = v19;
  *(v14 + 416) = *(v19 - 8);
  v20 = swift_task_alloc();
  v21 = *a2;
  v22 = a2[1];
  *(v14 + 16) = *a2;
  *(v14 + 32) = v22;
  v23 = a2[2];
  v24 = a2[3];
  *(v14 + 48) = v23;
  *(v14 + 64) = v24;
  v25 = *a3;
  v26 = a3[1];
  *(v14 + 424) = v20;
  *(v14 + 432) = v25;
  v27 = a3[2];
  *(v14 + 440) = v26;
  *(v14 + 448) = v27;
  *(v14 + 112) = v23;
  *(v14 + 128) = v24;
  *(v14 + 80) = v21;
  *(v14 + 96) = v22;
  *(v14 + 208) = v25;
  *(v14 + 216) = v26;
  *(v14 + 224) = v27;
  v29 = swift_task_alloc();
  *(v14 + 456) = v29;
  *v29 = v14;
  v29[1] = sub_25541D6DC;

  return static Simulation.request<A, B>(id:taskId:with:isolatedTo:expecting:)(v20, (v14 + 80), (v14 + 208), a4, a5, a6, v28, v34);
}

uint64_t sub_25541D6DC()
{
  v1 = *v0;
  v2 = *(*v0 + 272);

  if (v2)
  {
    swift_getObjectType();
    v3 = sub_255422534();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 464) = v3;
  *(v1 + 472) = v5;

  return MEMORY[0x2822009F8](sub_25541D824, v3);
}

uint64_t sub_25541D824()
{
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[39];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[47];
    v4 = v0[48];
    v6 = v0[38];
    v7 = v0[36];
    v8 = v0[33];
    (*(v0[52] + 8))(v1, v0[51]);
    (*(v5 + 16))(v4, v8, v6);
    v16 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[60] = v9;
    *v9 = v0;
    v9[1] = sub_25541DA5C;
    v10 = v0[50];
    v11 = v0[48];
    v12 = v0[46];

    return v16(v10, v11, v12);
  }

  else
  {
    v14 = v0[32];
    (*(v0[47] + 8))(v0[33], v0[38]);
    (*(v2 + 32))(v14, v1, v3);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_25541DA5C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v2[58];
    v5 = v2[59];

    return MEMORY[0x2822009F8](sub_25541DE08, v4, v5);
  }

  else
  {
    v2[29] = v2[54];
    v6 = (v2 + 29);
    *(v6 - 88) = *(v6 - 216);
    *(v6 - 72) = *(v6 - 200);
    *(v6 - 56) = *(v6 - 184);
    *(v6 - 40) = *(v6 - 168);
    *(v6 + 8) = *(v6 + 208);
    v7 = swift_task_alloc();
    *(v6 + 256) = v7;
    *v7 = v3;
    v7[1] = sub_25541DC08;
    v8 = *(v6 + 168);
    v9 = *(v6 + 96);
    v10 = *(v6 + 104);
    v11 = *(v6 + 80);
    v12 = *(v6 + 40);
    v13 = *(v6 + 48);

    return static Simulation.capture<A>(id:taskId:value:isolatedTo:)((v6 - 88), v6, v8, v12, v13, v11, v9, v10);
  }
}

uint64_t sub_25541DC08()
{
  v1 = *v0;

  v2 = *(v1 + 472);
  v3 = *(v1 + 464);

  return MEMORY[0x2822009F8](sub_25541DD28, v3, v2);
}

uint64_t sub_25541DD28()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[39];
  v4 = v0[32];
  (*(v0[47] + 8))(v0[33], v0[38]);
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25541DE08()
{
  v1 = *(v0[44] + 32);
  v1(v0[45], v0[46], v0[40]);
  v2 = sub_2554226F4();
  v3 = v0[45];
  if (v2)
  {
    (*(v0[44] + 8))(v0[45], v0[40]);
  }

  else
  {
    v4 = v0[40];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[47] + 8))(v0[33], v0[38]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25541DF58(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25541DFA4(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_25541E004(uint64_t (*a1)(void))
{
  a1();

  return sub_2554227F4();
}

uint64_t sub_25541E068(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25541E0C4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25541E0C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25541E190(v11, 0, 0, 1, a1, a2);
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
    sub_25541FAC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25541E190(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25541E29C(a5, a6);
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
    result = sub_255422624();
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

void *sub_25541E29C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25541E2E8(a1, a2);
  sub_25541E418(&unk_286750B28);
  return v3;
}

void *sub_25541E2E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_25541E504(v5, 0);
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

  result = sub_255422624();
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
        v10 = sub_255422524();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25541E504(v10, 0);
        result = sub_2554225F4();
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

uint64_t sub_25541E418(uint64_t result)
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

  result = sub_25541E578(result, v11, 1, v3);
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

void *sub_25541E504(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4938, &qword_255423C58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25541E578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4938, &qword_255423C58);
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

_BYTE **sub_25541E66C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_25541E67C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

BOOL _s22IntelligenceSimulation16SourceLocationIDV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v14 = a2[7];
  v15 = a1[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_255422704() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_255422704() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v9 && v5 == v10)
  {
    if (v6 != v11)
    {
      return 0;
    }

    return v15 == v14;
  }

  v13 = sub_255422704();
  result = 0;
  if ((v13 & 1) != 0 && v6 == v11)
  {
    return v15 == v14;
  }

  return result;
}

uint64_t _s22IntelligenceSimulation6TaskIDV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  result = *a1;
  v4 = a1[2];
  v5 = a2[2];
  if (result != *a2 || a1[1] != a2[1])
  {
    result = sub_255422704();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(v4 + 16);
  if (v7 != *(v5 + 16))
  {
    return 0;
  }

  if (!v7 || v4 == v5)
  {
    return 1;
  }

  v8 = (v4 + 32);
  v9 = (v5 + 32);
  while (v7)
  {
    v11 = *v8++;
    v10 = v11;
    v12 = *v9++;
    result = v10 == v12;
    if (v10 != v12 || v7-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25541E8A8()
{
  result = qword_27F7B4800;
  if (!qword_27F7B4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4800);
  }

  return result;
}

unint64_t sub_25541E8FC()
{
  result = qword_27F7B4808;
  if (!qword_27F7B4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4808);
  }

  return result;
}

unint64_t sub_25541E950()
{
  result = qword_27F7B4810;
  if (!qword_27F7B4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4810);
  }

  return result;
}

unint64_t sub_25541E9A4()
{
  result = qword_27F7B4820;
  if (!qword_27F7B4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4820);
  }

  return result;
}

unint64_t sub_25541E9F8()
{
  result = qword_27F7B4828;
  if (!qword_27F7B4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4828);
  }

  return result;
}

unint64_t sub_25541EA4C()
{
  result = qword_27F7B4838;
  if (!qword_27F7B4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4838);
  }

  return result;
}

unint64_t sub_25541EAA0()
{
  result = qword_27F7B4850;
  if (!qword_27F7B4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4850);
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

uint64_t sub_25541EB3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B4858, &qword_2554233C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25541EBA8()
{
  result = qword_27F7B4880;
  if (!qword_27F7B4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4880);
  }

  return result;
}

uint64_t sub_25541EC64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterceptionValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25541ECC8()
{
  result = qword_27F7B48A8;
  if (!qword_27F7B48A8)
  {
    type metadata accessor for SimulationCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48A8);
  }

  return result;
}

uint64_t sub_25541ED20(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_255416AC0;

  return sub_255420420(a1, a2, v7, v6);
}

uint64_t sub_25541EE28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25541EE88(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255417F68(result, a2);
  }

  return result;
}

unint64_t sub_25541EEA0()
{
  result = qword_27F7B48B8;
  if (!qword_27F7B48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48B8);
  }

  return result;
}

unint64_t sub_25541EEF8()
{
  result = qword_27F7B48C0;
  if (!qword_27F7B48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48C0);
  }

  return result;
}

unint64_t sub_25541EF50()
{
  result = qword_27F7B48C8;
  if (!qword_27F7B48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48C8);
  }

  return result;
}

unint64_t sub_25541EFA8()
{
  result = qword_27F7B48D0;
  if (!qword_27F7B48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48D0);
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

uint64_t sub_25541F010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25541F058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SimulationService(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SimulationService(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25541F16C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25541F1B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SourceLocationID.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SourceLocationID.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TaskID.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TaskID.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25541F4FC()
{
  result = qword_27F7B48D8;
  if (!qword_27F7B48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48D8);
  }

  return result;
}

unint64_t sub_25541F554()
{
  result = qword_27F7B48E0;
  if (!qword_27F7B48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48E0);
  }

  return result;
}

unint64_t sub_25541F5AC()
{
  result = qword_27F7B48E8;
  if (!qword_27F7B48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48E8);
  }

  return result;
}

unint64_t sub_25541F604()
{
  result = qword_27F7B48F0;
  if (!qword_27F7B48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48F0);
  }

  return result;
}

unint64_t sub_25541F65C()
{
  result = qword_27F7B48F8;
  if (!qword_27F7B48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B48F8);
  }

  return result;
}

unint64_t sub_25541F6B4()
{
  result = qword_27F7B4900;
  if (!qword_27F7B4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4900);
  }

  return result;
}

unint64_t sub_25541F70C()
{
  result = qword_27F7B4908;
  if (!qword_27F7B4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4908);
  }

  return result;
}

unint64_t sub_25541F764()
{
  result = qword_27F7B4910;
  if (!qword_27F7B4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4910);
  }

  return result;
}

unint64_t sub_25541F7BC()
{
  result = qword_27F7B4918;
  if (!qword_27F7B4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4918);
  }

  return result;
}

unint64_t sub_25541F814()
{
  result = qword_27F7B4920;
  if (!qword_27F7B4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4920);
  }

  return result;
}

unint64_t sub_25541F86C()
{
  result = qword_27F7B4928;
  if (!qword_27F7B4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4928);
  }

  return result;
}

unint64_t sub_25541F8C4()
{
  result = qword_27F7B4930;
  if (!qword_27F7B4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B4930);
  }

  return result;
}

uint64_t sub_25541F918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6156656C62617473 && a2 == 0xEB0000000065756CLL;
  if (v4 || (sub_255422704() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000 || (sub_255422704() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000 || (sub_255422704() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701734764 && a2 == 0xE400000000000000 || (sub_255422704() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6D756C6F63 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_255422704();

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

uint64_t sub_25541FAC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25541FB44(uint64_t a1)
{
  type metadata accessor for SimulationCoordinator();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_255422210(MEMORY[0x277D84F90]);
  *(v1 + 112) = result;
  qword_27F7B6530 = v1;
  return result;
}

uint64_t sub_25541FB90(void *a1)
{
  v2 = sub_2554224D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7 + 16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255422614();
  (*(v3 + 16))(v6, v8, v2);
  sub_2554203B4(&qword_27F7B47A8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2554225E4();
  (*(v3 + 8))(v8, v2);
  sub_25541FD4C(a1, v11);
  swift_beginAccess();
  sub_25541FDB0(v11, v12);
  return swift_endAccess();
}

uint64_t sub_25541FD4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25541FDB0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2554168D4(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_255421CC4(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_25542003C(a2);
    *v2 = v6;
  }

  else
  {
    sub_25541EE28(a1, &qword_27F7B4940, &unk_255423C60);
    sub_2554217A0(a2, v7);
    sub_25542003C(a2);
    return sub_25541EE28(v7, &qword_27F7B4940, &unk_255423C60);
  }

  return result;
}

uint64_t sub_25541FE6C(void *a1)
{
  v2 = sub_2554224D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7 + 16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255422614();
  (*(v3 + 16))(v6, v8, v2);
  sub_2554203B4(&qword_27F7B47A8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2554225E4();
  (*(v3 + 8))(v8, v2);
  swift_beginAccess();
  sub_2554217A0(v11, v12);
  sub_25542003C(v11);
  sub_25541EE28(v12, &qword_27F7B4940, &unk_255423C60);
  return swift_endAccess();
}

uint64_t sub_255420090(uint64_t a1, uint64_t a2)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  v4 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v6;
  return MEMORY[0x2822009F8](sub_2554200D0, v2, 0);
}

uint64_t sub_2554200D0(uint64_t a1, uint64_t a2)
{
  v3 = v2[16];
  v4 = sub_2554203B4(&qword_27F7B48A8, a2, type metadata accessor for SimulationCoordinator, &protocol conformance descriptor for SimulationCoordinator);
  v5 = swift_task_alloc();
  v2[17] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2 + 2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B48B0, &unk_255423410);
  v7 = swift_task_alloc();
  v2[18] = v7;
  *v7 = v2;
  v7[1] = sub_255420214;
  v8 = v2[15];

  return MEMORY[0x282200740](v8, &type metadata for InterceptionDecision, v6, v3, v4, &unk_255423408, v5, &type metadata for InterceptionDecision);
}

uint64_t sub_255420214()
{
  v2 = *v1;
  v2[19] = v0;

  if (!v0)
  {

    v4 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[16];

  return MEMORY[0x2822009F8](sub_255420350, v3, 0);
}

uint64_t sub_255420350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2554203B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255420420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[79] = a4;
  v4[78] = a3;
  v4[77] = a2;
  v4[76] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4950, &qword_255423D08);
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4958, &unk_255423D10);
  v4[82] = v6;
  v4[83] = *(v6 - 8);
  v4[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255420540, a3, 0);
}

uint64_t sub_255420540()
{
  v1 = *(v0 + 624);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v1 + 112) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v51 = *(v1 + 112);

  v15 = 0;
  v52 = v9;
  v53 = v4;
  while (v8)
  {
    v18 = v15;
LABEL_16:
    v21 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v22 = 40 * (v21 | (v18 << 6));
    sub_25542202C(*(v51 + 48) + v22, v0 + 384);
    sub_25541FD4C(*(v51 + 56) + v22, v0 + 424);
    v23 = *(v0 + 400);
    *(v0 + 304) = *(v0 + 384);
    *(v0 + 320) = v23;
    *(v0 + 336) = *(v0 + 416);
    sub_2554168D4((v0 + 424), v0 + 344);
LABEL_17:
    v24 = *(v0 + 368);
    *(v0 + 272) = *(v0 + 352);
    *(v0 + 288) = v24;
    v25 = *(v0 + 336);
    *(v0 + 240) = *(v0 + 320);
    *(v0 + 256) = v25;
    *(v0 + 224) = *(v0 + 304);
    if (!*(v0 + 248))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4730, &qword_255422D08);
      sub_255422564();
      v46 = sub_2554203B4(&qword_27F7B48A8, v45, type metadata accessor for SimulationCoordinator, &protocol conformance descriptor for SimulationCoordinator);
      v47 = MEMORY[0x277D84F90];
      *(v0 + 680) = v46;
      *(v0 + 688) = v47;
      v48 = *(v0 + 624);
      v49 = swift_task_alloc();
      *(v0 + 696) = v49;
      *v49 = v0;
      v49[1] = sub_255420A50;
      v13 = *(v0 + 656);
      v10 = v0 + 584;
      v14 = v0 + 600;
      v11 = v48;
      v12 = v46;

      return MEMORY[0x2822004E8](v10, v11, v12, v13, v14);
    }

    v26 = *(v0 + 648);
    v27 = *(v0 + 640);
    v28 = *(v0 + 632);
    sub_25542003C(v0 + 224);
    v29 = sub_255422554();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v26, 1, 1, v29);
    sub_2554168D4((v0 + 264), v0 + 464);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = (v31 + 16);
    *(v31 + 24) = 0;
    sub_2554168D4((v0 + 464), v31 + 32);
    v34 = *(v28 + 16);
    v33 = *(v28 + 32);
    *(v31 + 72) = *v28;
    *(v31 + 88) = v34;
    *(v31 + 104) = v33;
    v36 = *(v28 + 64);
    v35 = *(v28 + 80);
    v37 = *(v28 + 96);
    *(v31 + 120) = *(v28 + 48);
    *(v31 + 168) = v37;
    *(v31 + 152) = v35;
    *(v31 + 136) = v36;
    sub_255422344(v26, v27, &qword_27F7B4950, &qword_255423D08);
    v38 = (*(v30 + 48))(v27, 1, v29);
    v39 = *(v0 + 640);
    v40 = *(v0 + 632);
    if (v38 == 1)
    {
      sub_2554221B4(v40, v0 + 16);
      sub_25541EE28(v39, &qword_27F7B4950, &qword_255423D08);
      if (*v32)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_2554221B4(v40, v0 + 120);
      sub_255422544();
      (*(v30 + 8))(v39, v29);
      if (*v32)
      {
LABEL_20:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v41 = sub_255422534();
        v43 = v42;
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    v41 = 0;
    v43 = 0;
LABEL_23:
    v44 = **(v0 + 616);

    if (v43 | v41)
    {
      v16 = v0 + 504;
      *(v0 + 504) = 0;
      *(v0 + 512) = 0;
      *(v0 + 520) = v41;
      *(v0 + 528) = v43;
    }

    else
    {
      v16 = 0;
    }

    v9 = v52;
    v4 = v53;
    v17 = *(v0 + 648);
    *(v0 + 560) = 1;
    *(v0 + 568) = v16;
    *(v0 + 576) = v44;
    swift_task_create();

    v10 = sub_25541EE28(v17, &qword_27F7B4950, &qword_255423D08);
  }

  if (v9 <= v15 + 1)
  {
    v19 = v15 + 1;
  }

  else
  {
    v19 = v9;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v9)
    {
      v8 = 0;
      *(v0 + 352) = 0u;
      *(v0 + 368) = 0u;
      *(v0 + 320) = 0u;
      *(v0 + 336) = 0u;
      v15 = v20;
      *(v0 + 304) = 0u;
      goto LABEL_17;
    }

    v8 = *(v4 + 8 * v18);
    ++v15;
    if (v8)
    {
      v15 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
  return MEMORY[0x2822004E8](v10, v11, v12, v13, v14);
}

uint64_t sub_255420A50()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 624);

    v4 = sub_255420E50;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 624);
    v4 = sub_255420B74;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_255420B74()
{
  v2 = v0[74];
  v3 = v0[86];
  if (v2 >> 60 == 11)
  {
    (*(v0[83] + 8))(v0[84], v0[82]);
    v5 = 0;
    v6 = *(v3 + 16);
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    v8 = (v3 + 40 + 16 * v5);
    while (v6 != v5)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v9 = v8 + 2;
      ++v5;
      v2 = *v8;
      v10 = *v8 >> 60;
      v8 += 2;
      if (v10 <= 0xE)
      {
        v1 = *(v9 - 3);
        sub_255417748(v1, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_25542147C(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_25542147C((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        v13 = &v7[16 * v12];
        *(v13 + 4) = v1;
        *(v13 + 5) = v2;
        goto LABEL_3;
      }
    }

    if (*(v7 + 2))
    {
      v22 = *(v7 + 4);
      v23 = *(v7 + 5);
      sub_255417748(v22, v23);
    }

    else
    {
      v22 = 0;
      v23 = 0xF000000000000000;
    }

    v24 = v0[76];

    *v24 = v22;
    v24[1] = v23;

    v25 = v0[1];

    return v25();
  }

  else
  {
    v1 = v0[73];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[86];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_25:
      v4 = sub_255421588(0, *(v4 + 2) + 1, 1, v4);
    }

    v16 = *(v4 + 2);
    v15 = *(v4 + 3);
    if (v16 >= v15 >> 1)
    {
      v4 = sub_255421588((v15 > 1), v16 + 1, 1, v4);
    }

    *(v4 + 2) = v16 + 1;
    v17 = &v4[16 * v16];
    *(v17 + 4) = v1;
    *(v17 + 5) = v2;
    v0[86] = v4;
    v18 = v0[85];
    v19 = v0[78];
    v20 = swift_task_alloc();
    v0[87] = v20;
    *v20 = v0;
    v20[1] = sub_255420A50;
    v21 = v0[82];

    return MEMORY[0x2822004E8](v0 + 73, v19, v18, v21, v0 + 75);
  }
}

uint64_t sub_255420E50()
{
  (*(v0[83] + 8))(v0[84], v0[82]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_255420EF4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_255416F50;

  return sub_255420420(a1, a2, v7, v6);
}

uint64_t sub_255420FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[15] = a1;
  return MEMORY[0x2822009F8](sub_255420FCC, 0, 0);
}

uint64_t sub_255420FCC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *v2;
  v6 = v2[2];
  *(v0 + 32) = v2[1];
  *(v0 + 48) = v6;
  *(v0 + 16) = v5;
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  *(v0 + 112) = *(v2 + 12);
  *(v0 + 80) = v8;
  *(v0 + 96) = v9;
  *(v0 + 64) = v7;
  v13 = (*(v4 + 16) + **(v4 + 16));
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_25542112C;
  v11 = *(v0 + 120);

  return v13(v11, v0 + 16, v3, v4);
}

uint64_t sub_25542112C()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_255421260, 0, 0);
}

uint64_t SimulationCoordinator.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SimulationCoordinator.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of SimulationCoordinator.handleInterceptionPoint(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_255416F50;

  return v8(a1, a2);
}

char *sub_25542147C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4968, &qword_255423D38);
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

char *sub_255421588(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4960, &qword_255423D30);
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

unint64_t sub_255421694(uint64_t a1)
{
  v2 = sub_2554225C4();

  return sub_2554216D8(a1, v2);
}

unint64_t sub_2554216D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25542202C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C33E90](v9, a1);
      sub_25542003C(v9);
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

double sub_2554217A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_255421694(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255421E94();
      v9 = v11;
    }

    sub_25542003C(*(v9 + 48) + 40 * v7);
    sub_2554168D4((*(v9 + 56) + 40 * v7), a2);
    sub_255421B18(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_255421854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4948, &qword_255423D00);
  result = sub_255422664();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v4)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_2554168D4((*(v5 + 56) + 40 * v23), v36);
      }

      else
      {
        sub_25542202C(v24, &v37);
        sub_25541FD4C(*(v5 + 56) + 40 * v23, v36);
      }

      result = sub_2554225C4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 40 * v15;
      v17 = *(v7 + 48) + v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_2554168D4(v36, *(v7 + 56) + v16);
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_255421B18(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2554225B4() + 1) & ~v5;
    do
    {
      sub_25542202C(*(a2 + 48) + 40 * v6, v26);
      v11 = sub_2554225C4();
      result = sub_25542003C(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_255421CC4(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_255421694(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_255421E94();
      goto LABEL_7;
    }

    sub_255421854(v13, a3 & 1);
    v19 = sub_255421694(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_25542202C(a2, v21);
      return sub_255421E14(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_255422714();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 40 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_2554168D4(a1, v17);
}

uint64_t sub_255421E14(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2554168D4(a3, a4[7] + 40 * a1);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_255421E94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4948, &qword_255423D00);
  v2 = *v0;
  v3 = sub_255422654();
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_25542202C(*(v2 + 48) + v17, v22);
        sub_25541FD4C(*(v2 + 56) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v22[0];
        v20 = v22[1];
        *(v18 + 32) = v23;
        *v18 = v19;
        *(v18 + 16) = v20;
        result = sub_2554168D4(v21, *(v4 + 56) + v17);
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

uint64_t sub_255422088()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_255422100(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_255416AC0;

  return sub_255420FA8(a1, v4, v5, v1 + 32, v1 + 72);
}

unint64_t sub_255422210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B4948, &qword_255423D00);
    v3 = sub_255422674();
    v4 = a1 + 32;

    while (1)
    {
      sub_255422344(v4, v13, &unk_27F7B4970, &unk_255423D40);
      result = sub_255421694(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2554168D4(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 80;
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

uint64_t sub_255422344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}