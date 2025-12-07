unint64_t sub_24B73486C()
{
  result = qword_27F036038;
  if (!qword_27F036038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036038);
  }

  return result;
}

unint64_t sub_24B7348D8()
{
  result = qword_27F036070;
  if (!qword_27F036070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036060, &unk_24B766F40);
    sub_24B734990();
    sub_24B6C743C(&qword_27F036088, &qword_27F036090, &qword_24B766F60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036070);
  }

  return result;
}

unint64_t sub_24B734990()
{
  result = qword_27F036078;
  if (!qword_27F036078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036080, &unk_24B766F50);
    sub_24B6C743C(&qword_27F034BA8, &qword_27F034BB0, &qword_24B760370, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036078);
  }

  return result;
}

unint64_t sub_24B734A48()
{
  result = qword_27F0360B0;
  if (!qword_27F0360B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0360B0);
  }

  return result;
}

uint64_t sub_24B734ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v15[0] = v2[2];
  v5 = v15[0];
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v9 = *(type metadata accessor for ProgramDetailView(0, v15) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for WorkoutProgram(0) - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_24B730CDC(a1, v2 + v10, v13, v5, v6, v7, v8, a2);
}

uint64_t sub_24B734BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B734CB8()
{
  result = qword_27F0360E8;
  if (!qword_27F0360E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
    sub_24B6C743C(&qword_27F0360F0, &qword_27F0360F8, &qword_24B767050, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0360E8);
  }

  return result;
}

unint64_t sub_24B734D70()
{
  result = qword_27F036120;
  if (!qword_27F036120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036108, &qword_24B767060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036128, &qword_24B767078);
    sub_24B75B258();
    sub_24B6C743C(&qword_27F036130, &qword_27F036128, &qword_24B767078, MEMORY[0x277CDF028]);
    sub_24B73593C(&qword_27F036138, MEMORY[0x277D09D38], MEMORY[0x277D09D30]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036120);
  }

  return result;
}

uint64_t sub_24B734EB4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v5 = *(type metadata accessor for ProgramDetailView(0, v11) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24B75AFE8() - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_24B72DBAC(v0 + v6, v9, v1, v2, v3, v4);
}

uint64_t sub_24B734FBC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v11 = v1[2];
  v3 = v11;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v7 = *(type metadata accessor for ProgramDetailView(0, &v11) - 8);
  v8 = *(v1 + ((*(v7 + 64) + ((*(v7 + 80) + 48) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v9 = type metadata accessor for ProgramDetailView(0, &v11);
  return sub_24B72CC40(v8, v9, a1);
}

uint64_t sub_24B7350A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for ProgramDetailView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_24B72CF20(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_24B735160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B7351C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B735230()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v5 = *(type metadata accessor for ProgramDetailView(0, v11) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for WorkoutProgramLinkAnnotation(0) - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_24B72D1EC(v0 + v6, v9, v1, v2, v3, v4);
}

unint64_t sub_24B735340()
{
  result = qword_27F036190;
  if (!qword_27F036190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036188, &qword_24B7670B0);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
    sub_24B6C743C(&qword_27F034BA8, &qword_27F034BB0, &qword_24B760370, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036190);
  }

  return result;
}

unint64_t sub_24B735424()
{
  result = qword_27F036198;
  if (!qword_27F036198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036198);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v9 = v11;
  v12 = v1;
  v2 = (type metadata accessor for ProgramDetailView(0, &v10) - 8);
  v3 = (v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80)));
  sub_24B6C7004(*v3, v3[1]);
  v4 = v2[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v5 = sub_24B75B288();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v2[17];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  (*(*(v9 - 8) + 8))(v3 + v2[18]);
  return swift_deallocObject();
}

uint64_t sub_24B735694(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for ProgramDetailView(0, v9) - 8);
  return sub_24B72DD84(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

unint64_t sub_24B735764()
{
  result = qword_27F0361B0;
  if (!qword_27F0361B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0361A8, &qword_24B7670C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035898, &qword_24B764A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036068, &unk_24B767A80);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_24B6C743C(&qword_27F034BA8, &qword_27F034BB0, &qword_24B760370, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0361B0);
  }

  return result;
}

uint64_t sub_24B73593C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B735998()
{
  result = qword_27F0361D0;
  if (!qword_27F0361D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
    sub_24B735E34(&qword_27F0361D8, &qword_27F0361E0, &qword_24B7670D8, sub_24B735A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0361D0);
  }

  return result;
}

unint64_t sub_24B735A50()
{
  result = qword_27F0361E8;
  if (!qword_27F0361E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0361F0, &qword_24B7670E0);
    sub_24B6C743C(&qword_27F0361F8, &qword_27F036200, &unk_24B7670E8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0361E8);
  }

  return result;
}

unint64_t sub_24B735B00()
{
  result = qword_27F036218;
  if (!qword_27F036218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036210, &unk_24B767130);
    sub_24B6E8D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036218);
  }

  return result;
}

unint64_t sub_24B735B8C()
{
  result = qword_27F036278;
  if (!qword_27F036278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036270, &qword_24B7671A0);
    sub_24B735C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036278);
  }

  return result;
}

unint64_t sub_24B735C18()
{
  result = qword_27F036280;
  if (!qword_27F036280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036280);
  }

  return result;
}

unint64_t sub_24B735CC4()
{
  result = qword_27F036298;
  if (!qword_27F036298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036288, &qword_24B7671A8);
    sub_24B6C743C(&qword_27F0362A0, &qword_27F0362A8, &qword_24B7671B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036298);
  }

  return result;
}

unint64_t sub_24B735D7C()
{
  result = qword_27F0362B8;
  if (!qword_27F0362B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
    sub_24B735E34(&qword_27F0362C0, &qword_27F0362C8, &qword_24B7671B8, sub_24B735EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0362B8);
  }

  return result;
}

uint64_t sub_24B735E34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B735EB0()
{
  result = qword_27F0346E8;
  if (!qword_27F0346E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
    sub_24B6E8CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0346E8);
  }

  return result;
}

__n128 ProgramDetailEnvironment.init(addToLibrary:fetchRemoteProgramDetail:loadLibraryState:makeArchivedSessionsUpdatedStream:navigateToWorkoutDetail:openUrl:presentMoreInfo:presentVideo:refreshCanvasWorkoutItems:removeFromLibrary:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15, uint64_t a16)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 152) = a16;
  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_24B735F98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_24B735FE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B736058(uint64_t a1)
{
  v2 = sub_24B7367E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B736094(uint64_t a1)
{
  v2 = sub_24B7367E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7360F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x446D6172676F7270 && a2 == 0xED00006C69617465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B736184(uint64_t a1)
{
  v2 = sub_24B73689C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7361C0(uint64_t a1)
{
  v2 = sub_24B73689C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7361FC(uint64_t a1)
{
  v2 = sub_24B7368F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B736238(uint64_t a1)
{
  v2 = sub_24B7368F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B736274(uint64_t a1)
{
  v2 = sub_24B736944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7362B0(uint64_t a1)
{
  v2 = sub_24B736944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036300, &qword_24B767290);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v24 - v3;
  v29 = type metadata accessor for WorkoutProgram(0);
  MEMORY[0x28223BE20](v29);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036308, &qword_24B767298);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036310, &qword_24B7672A0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  State = type metadata accessor for ProgramDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036318, &unk_24B7672A8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7367E4();
  sub_24B75C738();
  sub_24B736838(v34, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v19 = (*(*(v18 - 8) + 48))(v13, 2, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v35 = 0;
      sub_24B736944();
      sub_24B75C638();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v36 = 1;
      sub_24B7368F0();
      sub_24B75C638();
      (*(v27 + 8))(v7, v28);
    }

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v20 = v30;
    sub_24B7371A8(v13, v30, type metadata accessor for WorkoutProgram);
    v37 = 2;
    sub_24B73689C();
    v21 = v31;
    sub_24B75C638();
    sub_24B737164(&qword_27F036330, &protocol conformance descriptor for WorkoutProgram);
    v22 = v33;
    sub_24B75C6A8();
    (*(v32 + 8))(v21, v22);
    sub_24B73793C(v20, type metadata accessor for WorkoutProgram);
    return (*(v15 + 8))(v17, v14);
  }
}

unint64_t sub_24B7367E4()
{
  result = qword_27F036320;
  if (!qword_27F036320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036320);
  }

  return result;
}

uint64_t sub_24B736838(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for ProgramDetailLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B73689C()
{
  result = qword_27F036328;
  if (!qword_27F036328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036328);
  }

  return result;
}

unint64_t sub_24B7368F0()
{
  result = qword_27F036338;
  if (!qword_27F036338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036338);
  }

  return result;
}

unint64_t sub_24B736944()
{
  result = qword_27F036340;
  if (!qword_27F036340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036340);
  }

  return result;
}

uint64_t ProgramDetailLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036348, &qword_24B7672B8);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x28223BE20](v3);
  v51 = &v45 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036350, &qword_24B7672C0);
  v55 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v54 = &v45 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036358, &qword_24B7672C8);
  v53 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036360, &unk_24B7672D0);
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  State = type metadata accessor for ProgramDetailLoadState(0);
  MEMORY[0x28223BE20](State);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B7367E4();
  v19 = v57;
  sub_24B75C728();
  if (!v19)
  {
    v21 = v53;
    v20 = v54;
    v45 = v14;
    v46 = v17;
    v22 = v55;
    v57 = 0;
    v23 = sub_24B75C628();
    v24 = (2 * *(v23 + 16)) | 1;
    v59 = v23;
    v60 = v23 + 32;
    v61 = 0;
    v62 = v24;
    v25 = sub_24B6B9E08();
    v26 = v11;
    if (v25 == 3 || v61 != v62 >> 1)
    {
      v32 = sub_24B75C568();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
      *v34 = State;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v56 + 8))(v26, v9);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v58);
    }

    if (v25)
    {
      v27 = v56;
      if (v25 == 1)
      {
        v63 = 1;
        sub_24B7368F0();
        v28 = v57;
        sub_24B75C598();
        if (!v28)
        {
          (*(v22 + 8))(v20, v48);
          (*(v27 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
          v30 = v46;
          (*(*(v29 - 8) + 56))(v46, 2, 2, v29);
          v31 = v52;
LABEL_17:
          sub_24B7371A8(v30, v31, type metadata accessor for ProgramDetailLoadState);
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }
      }

      else
      {
        v63 = 2;
        sub_24B73689C();
        v38 = v57;
        sub_24B75C598();
        if (!v38)
        {
          v39 = v52;
          type metadata accessor for WorkoutProgram(0);
          sub_24B737164(&qword_27F036368, &protocol conformance descriptor for WorkoutProgram);
          v40 = v45;
          v41 = v49;
          v42 = v51;
          sub_24B75C618();
          (*(v50 + 8))(v42, v41);
          (*(v27 + 8))(v26, v9);
          swift_unknownObjectRelease();
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
          (*(*(v44 - 8) + 56))(v40, 0, 2, v44);
          v30 = v46;
          sub_24B7371A8(v40, v46, type metadata accessor for ProgramDetailLoadState);
          v31 = v39;
          goto LABEL_17;
        }
      }

      (*(v27 + 8))(v11, v9);
      goto LABEL_9;
    }

    v63 = 0;
    sub_24B736944();
    v36 = v57;
    sub_24B75C598();
    v37 = v56;
    if (!v36)
    {
      (*(v21 + 8))(v8, v47);
      (*(v37 + 8))(v11, v9);
      swift_unknownObjectRelease();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
      v30 = v46;
      (*(*(v43 - 8) + 56))(v46, 1, 2, v43);
      v31 = v52;
      goto LABEL_17;
    }

    (*(v56 + 8))(v11, v9);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_24B737164(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutProgram(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B7371A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s20FitnessProductDetail07ProgramC9LoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgram(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for ProgramDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0363C0, &qword_24B767728);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_24B736838(a1, &v20 - v11);
  sub_24B736838(a2, &v12[v14]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v12, 2, v15);
  if (!v17)
  {
    sub_24B736838(v12, v9);
    if (!v16(&v12[v14], 2, v15))
    {
      sub_24B7371A8(&v12[v14], v6, type metadata accessor for WorkoutProgram);
      v18 = _s20FitnessProductDetail14WorkoutProgramV2eeoiySbAC_ACtFZ_0(v9, v6);
      sub_24B73793C(v6, type metadata accessor for WorkoutProgram);
      sub_24B73793C(v9, type metadata accessor for WorkoutProgram);
      sub_24B73793C(v12, type metadata accessor for ProgramDetailLoadState);
      return v18 & 1;
    }

    sub_24B73793C(v9, type metadata accessor for WorkoutProgram);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v12[v14], 2, v15) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v12[v14], 2, v15) != 2)
  {
LABEL_9:
    sub_24B7378D4(v12);
    v18 = 0;
    return v18 & 1;
  }

  sub_24B73793C(v12, type metadata accessor for ProgramDetailLoadState);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_24B737568()
{
  result = qword_27F036370;
  if (!qword_27F036370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036370);
  }

  return result;
}

unint64_t sub_24B7375C0()
{
  result = qword_27F036378;
  if (!qword_27F036378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036378);
  }

  return result;
}

unint64_t sub_24B737618()
{
  result = qword_27F036380;
  if (!qword_27F036380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036380);
  }

  return result;
}

unint64_t sub_24B737670()
{
  result = qword_27F036388;
  if (!qword_27F036388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036388);
  }

  return result;
}

unint64_t sub_24B7376C8()
{
  result = qword_27F036390;
  if (!qword_27F036390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036390);
  }

  return result;
}

unint64_t sub_24B737720()
{
  result = qword_27F036398;
  if (!qword_27F036398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036398);
  }

  return result;
}

unint64_t sub_24B737778()
{
  result = qword_27F0363A0;
  if (!qword_27F0363A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363A0);
  }

  return result;
}

unint64_t sub_24B7377D0()
{
  result = qword_27F0363A8;
  if (!qword_27F0363A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363A8);
  }

  return result;
}

unint64_t sub_24B737828()
{
  result = qword_27F0363B0;
  if (!qword_27F0363B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363B0);
  }

  return result;
}

unint64_t sub_24B737880()
{
  result = qword_27F0363B8;
  if (!qword_27F0363B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363B8);
  }

  return result;
}

uint64_t sub_24B7378D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0363C0, &qword_24B767728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B73793C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 ProgramDetailLayout.contentMargins.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 ProgramDetailLayout.init(contentMargins:dynamicTypeSize:sizeClass:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = a2;
  *(a4 + 33) = a3 & 1;
  return result;
}

uint64_t sub_24B7379D0()
{
  v1 = 0x5463696D616E7964;
  if (*v0 != 1)
  {
    v1 = 0x73616C43657A6973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4D746E65746E6F63;
  }
}

uint64_t sub_24B737A48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B738594(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B737A70(uint64_t a1)
{
  v2 = sub_24B737CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B737AAC(uint64_t a1)
{
  v2 = sub_24B737CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0363C8, &qword_24B767730);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v13 = *(v3 + 32);
  v9 = *(v3 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B737CCC();
  sub_24B75C738();
  v10 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v10;
  v14 = 0;
  sub_24B737D20();
  sub_24B75C6A8();
  if (!v2)
  {
    LOBYTE(v12[0]) = v13;
    v14 = 1;
    sub_24B737D74();
    sub_24B75C6A8();
    LOBYTE(v12[0]) = v9;
    v14 = 2;
    sub_24B737DC8();
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B737CCC()
{
  result = qword_27F0363D0;
  if (!qword_27F0363D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363D0);
  }

  return result;
}

unint64_t sub_24B737D20()
{
  result = qword_27F0363D8;
  if (!qword_27F0363D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363D8);
  }

  return result;
}

unint64_t sub_24B737D74()
{
  result = qword_27F0363E0;
  if (!qword_27F0363E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363E0);
  }

  return result;
}

unint64_t sub_24B737DC8()
{
  result = qword_27F0363E8;
  if (!qword_27F0363E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363E8);
  }

  return result;
}

uint64_t ProgramDetailLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0363F0, &qword_24B767738);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B737CCC();
  sub_24B75C728();
  if (!v2)
  {
    v17 = 0;
    sub_24B738040();
    sub_24B75C618();
    v13 = v16;
    v14 = v15;
    v17 = 1;
    sub_24B738094();
    sub_24B75C618();
    v10 = v15;
    v17 = 2;
    sub_24B7380E8();
    sub_24B75C618();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    v12 = v13;
    *a2 = v14;
    *(a2 + 16) = v12;
    *(a2 + 32) = v10;
    *(a2 + 33) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B738040()
{
  result = qword_27F0363F8;
  if (!qword_27F0363F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363F8);
  }

  return result;
}

unint64_t sub_24B738094()
{
  result = qword_27F036400;
  if (!qword_27F036400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036400);
  }

  return result;
}

unint64_t sub_24B7380E8()
{
  result = qword_27F036408;
  if (!qword_27F036408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036408);
  }

  return result;
}

uint64_t ProgramDetailLayout.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C2489D0](*&v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x24C2489D0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x24C2489D0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C2489D0](*&v9);
  MEMORY[0x24C2489B0](v5);
  return MEMORY[0x24C2489B0](v6);
}

uint64_t ProgramDetailLayout.hashValue.getter()
{
  sub_24B75C6D8();
  ProgramDetailLayout.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B73826C()
{
  sub_24B75C6D8();
  ProgramDetailLayout.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B7382CC(uint64_t a1)
{
  sub_24B75C6D8();
  ProgramDetailLayout.hash(into:)();
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail07ProgramC6LayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))));
  v2.i16[0] = vminv_u16(v2);
  return v2.i32[0] & ~(*(a2 + 33) ^ *(a1 + 33)) & (*(a1 + 32) == *(a2 + 32));
}

unint64_t sub_24B738378()
{
  result = qword_27F036410;
  if (!qword_27F036410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036410);
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

uint64_t sub_24B7383E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B738424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24B738490()
{
  result = qword_27F036418;
  if (!qword_27F036418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036418);
  }

  return result;
}

unint64_t sub_24B7384E8()
{
  result = qword_27F036420;
  if (!qword_27F036420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036420);
  }

  return result;
}

unint64_t sub_24B738540()
{
  result = qword_27F036428;
  if (!qword_27F036428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036428);
  }

  return result;
}

uint64_t sub_24B738594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B7386C4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_24B75C188();
}

uint64_t sub_24B738894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B75B798();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_24B75B7A8();
}

uint64_t sub_24B73898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B75B798();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_24B75B7A8();
}

uint64_t sub_24B738A9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036448, qword_24B7679D8);
  sub_24B6C743C(&qword_2810F6970, &qword_27F036448, qword_24B7679D8, MEMORY[0x277D04410]);

  return sub_24B75B408();
}

uint64_t sub_24B738B3C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  sub_24B75B288();
  sub_24B75B278();
  return v2;
}

uint64_t sub_24B738BB4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  return sub_24B75B268();
}

uint64_t EditorialDetailView.init(store:artworkViewBuilder:filterResultsViewBuilder:textViewBuilder:bubbleTipPopoverBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *a8 = sub_24B6C4E74;
  *(a8 + 8) = v21;
  *(a8 + 16) = 0;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  type metadata accessor for EditorialDetailView(0, &v26);

  v26 = a3;
  *&v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v22 = sub_24B75B268();
  a5(v22);

  v23 = sub_24B738BB4(a6, a7);
  a9(v23);
}

uint64_t EditorialDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  sub_24B739274(v6, &v28);
  v7 = v28;
  v8 = v29;
  v9 = v30;
  v25 = v28;
  v26 = v29;
  v27 = v30;
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v12 = *(a1 + 24);
  *(v11 + 16) = *(a1 + 16);
  *(v11 + 24) = v12;
  v13 = *(a1 + 48);
  v17 = *(a1 + 32);
  *(v11 + 32) = v17;
  *(v11 + 48) = v13;
  (*(v4 + 32))(v11 + v10, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v24 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v14 = sub_24B75B3E8();
  v15 = swift_getWitnessTable();
  v21 = v14;
  v22 = v15;
  swift_getOpaqueTypeMetadata2();
  v21 = v14;
  v22 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  sub_24B75B7B8();
  v19 = swift_getWitnessTable();
  v20 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_24B75BE88();

  return sub_24B739F54(v7, v8, v9);
}

uint64_t sub_24B739274@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v5 = *(a1 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditorialDetailContent(0);
  *&v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  *&v39 = &v38 - v12;
  State = type metadata accessor for EditorialDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B738A9C();
  swift_getKeyPath();
  sub_24B75C218();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  if ((*(*(v16 - 8) + 48))(v15, 2, v16))
  {
    sub_24B75B558();
    sub_24B75B558();
    sub_24B75B7B8();
    sub_24B75B958();
    sub_24B75B558();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
    sub_24B75B558();
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    swift_getWitnessTable();
    sub_24B75C028();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    sub_24B75BF88();
    sub_24B75B558();
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    swift_getWitnessTable();
    sub_24B75C088();
    sub_24B75B558();
    WitnessTable = swift_getWitnessTable();
    v17 = MEMORY[0x277CDF918];
    v46 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v18 = sub_24B75B3E8();
    v19 = swift_getWitnessTable();
    *&v47 = v18;
    *(&v47 + 1) = v19;
    swift_getOpaqueTypeMetadata2();
    *&v47 = v18;
    *(&v47 + 1) = v19;
    swift_getOpaqueTypeConformance2();
    v20 = sub_24B75B4F8();
    v21 = swift_getWitnessTable();
    sub_24B738894(v21, v20, MEMORY[0x277CE1428], v21, MEMORY[0x277CE1410]);
  }

  else
  {
    v22 = v15;
    v23 = v39;
    sub_24B73FE00(v22, v39, type metadata accessor for EditorialDetailContent);
    (*(v5 + 16))(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
    sub_24B73FAF8(v23, v10, type metadata accessor for EditorialDetailContent);
    v24 = (*(v5 + 80) + 64) & ~*(v5 + 80);
    v25 = (v6 + *(v38 + 80) + v24) & ~*(v38 + 80);
    v26 = swift_allocObject();
    v27 = a1[3];
    *(v26 + 16) = a1[2];
    *(v26 + 24) = v27;
    v28 = *(a1 + 3);
    v38 = *(a1 + 2);
    *(v26 + 32) = v38;
    *(v26 + 48) = v28;
    (*(v5 + 32))(v26 + v24, v7, a1);
    sub_24B73FE00(v10, v26 + v25, type metadata accessor for EditorialDetailContent);
    sub_24B75B558();
    sub_24B75B558();
    sub_24B75B7B8();
    sub_24B75B958();
    sub_24B75B558();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
    sub_24B75B558();
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    swift_getWitnessTable();
    sub_24B75C028();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    sub_24B75BF88();
    sub_24B75B558();
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    swift_getWitnessTable();
    sub_24B75C088();
    sub_24B75B558();
    v41[4] = swift_getWitnessTable();
    v17 = MEMORY[0x277CDF918];
    v41[5] = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v29 = sub_24B75B3E8();
    v30 = swift_getWitnessTable();
    *&v47 = v29;
    *(&v47 + 1) = v30;
    swift_getOpaqueTypeMetadata2();
    *&v47 = v29;
    *(&v47 + 1) = v30;
    swift_getOpaqueTypeConformance2();
    *&v47 = sub_24B75B4E8();
    *(&v47 + 1) = v31;
    v32 = sub_24B75B4F8();
    v33 = swift_getWitnessTable();
    sub_24B6C7504();

    v47 = v42;
    sub_24B6C7504();
    v41[0] = v41[2];
    v41[1] = v41[3];
    sub_24B73898C(v41, v32, MEMORY[0x277CE1428], v33, MEMORY[0x277CE1410]);

    sub_24B740874(v39, type metadata accessor for EditorialDetailContent);
  }

  v34 = v48;
  v39 = v47;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  v43 = swift_getWitnessTable();
  v44 = v17;
  swift_getWitnessTable();
  v35 = sub_24B75B3E8();
  v36 = swift_getWitnessTable();
  *&v42 = v35;
  *(&v42 + 1) = v36;
  swift_getOpaqueTypeMetadata2();
  *&v42 = v35;
  *(&v42 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  sub_24B75B7B8();
  v41[6] = swift_getWitnessTable();
  v41[7] = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_24B6C7504();
  return sub_24B739F54(v39, *(&v39 + 1), v34);
}

uint64_t sub_24B739F54(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_24B739FB8(void *a1)
{
  sub_24B73A0E4(319);
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
    swift_getFunctionTypeMetadata1();
    sub_24B75B288();
    if (v2 <= 0x3F)
    {
      sub_24B6C71E0(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B73A0E4(uint64_t a1)
{
  if (!qword_2810F6980[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036448, qword_24B7679D8);
    sub_24B6C743C(&qword_2810F6970, &qword_27F036448, qword_24B7679D8, MEMORY[0x277D04410]);
    v1 = sub_24B75B418();
    if (!v2)
    {
      atomic_store(v1, qword_2810F6980);
    }
  }
}

uint64_t sub_24B73A188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v40 = a8;
  v38 = a7;
  v32 = a5;
  v39 = a3;
  v36 = a2;
  v37 = a1;
  v43 = a9;
  v35 = a10;
  v12 = sub_24B75B7E8();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v34 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a4;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  v14 = a6;
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v56 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v15 = sub_24B75B3E8();
  v31 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = swift_getWitnessTable();
  v53 = v15;
  v54 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v30 - v24;
  v44 = v33;
  v45 = v32;
  v46 = v14;
  v47 = v38;
  v48 = v40;
  v49 = v35;
  v50 = v36;
  v51 = v39;
  v52 = v37;
  sub_24B75B988();
  v26 = v34;
  sub_24B75B3F8();
  sub_24B75B7D8();
  v27 = sub_24B75B988();
  sub_24B75B978();
  sub_24B75B978();
  if (sub_24B75B978() != v27)
  {
    sub_24B75B978();
  }

  sub_24B75BDC8();
  (*(v41 + 8))(v26, v42);
  (*(v31 + 8))(v17, v15);
  v53 = v15;
  v54 = v18;
  swift_getOpaqueTypeConformance2();
  sub_24B6C7504();
  v28 = *(v20 + 8);
  v28(v22, OpaqueTypeMetadata2);
  sub_24B6C7504();
  return (v28)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_24B73A798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v16[0] = v2[2];
  v4 = v16[0];
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  v16[5] = v9;
  v10 = *(type metadata accessor for EditorialDetailView(0, v16) - 8);
  v11 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for EditorialDetailContent(0) - 8);
  return sub_24B73A188(a1, v2 + v11, v2 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)), v4, v5, v6, v7, v8, a2, v9);
}

uint64_t sub_24B73A8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a7;
  v32 = a8;
  v26 = a5;
  v33 = a3;
  v34 = a9;
  v29 = a1;
  v30 = a2;
  v27 = a4;
  v28 = a10;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v11 = sub_24B75C088();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = sub_24B75B558();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - v20;
  sub_24B75B788();
  v35 = v27;
  v36 = v26;
  v37 = a6;
  v38 = v31;
  v39 = v32;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  sub_24B75C078();
  sub_24B75B9B8();
  sub_24B75B478();
  WitnessTable = swift_getWitnessTable();
  sub_24B75BE48();
  (*(v12 + 8))(v14, v11);
  v43 = WitnessTable;
  v44 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_24B6C7504();
  v23 = *(v16 + 8);
  v23(v18, v15);
  sub_24B6C7504();
  return (v23)(v21, v15);
}

uint64_t sub_24B73AD7C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v88 = a8;
  v62 = a7;
  v69 = a6;
  v81 = a2;
  v82 = a1;
  v78 = a9;
  v79 = a5;
  v77 = *(a5 - 1);
  MEMORY[0x28223BE20](a1);
  v85 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v60 - v15;
  v16 = type metadata accessor for EditorialDetailLayout(0);
  MEMORY[0x28223BE20](v16 - 8);
  v75 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  v61 = a4;
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v70 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  v68 = sub_24B75C178();
  v71 = sub_24B75BF88();
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v60 - v18;
  v72 = sub_24B75B558();
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v87 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v84 = &v60 - v21;
  sub_24B75B558();
  v60 = a3;
  sub_24B75B558();
  v22 = sub_24B75B7B8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - v24;
  sub_24B75B958();
  v80 = sub_24B75B558();
  v83 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v86 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v89 = &v60 - v28;
  v102 = a3;
  v103 = a4;
  v104 = a5;
  v29 = v69;
  v105 = v69;
  v106 = a7;
  v107 = v88;
  v63 = type metadata accessor for EditorialDetailView(0, &v102);
  v30 = v82;
  sub_24B73B6F8(v81, v63, v25);
  v101[12] = v29;
  v101[13] = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v101[10] = v29;
  v101[11] = MEMORY[0x277CDF678];
  v32 = swift_getWitnessTable();
  v101[8] = WitnessTable;
  v101[9] = v32;
  v33 = swift_getWitnessTable();
  v34 = v86;
  sub_24B75BDA8();
  (*(v23 + 8))(v25, v22);
  v35 = sub_24B740548(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v101[6] = v33;
  v101[7] = v35;
  v36 = v80;
  v64 = swift_getWitnessTable();
  sub_24B6C7504();
  v37 = *(v83 + 8);
  v65 = v83 + 8;
  v66 = v37;
  v37(v34, v36);
  v90 = v60;
  v91 = v61;
  v92 = v79;
  v93 = v29;
  v94 = v62;
  v95 = v88;
  v96 = v81;
  v97 = v30;
  v38 = swift_getWitnessTable();
  v39 = v67;
  sub_24B75BF78();
  sub_24B75B998();
  sub_24B738A9C();
  swift_getKeyPath();
  v40 = v75;
  sub_24B75C218();

  sub_24B75B2F8();
  v41 = sub_24B75B308();
  (*(*(v41 - 8) + 8))(v40, v41);
  v101[5] = v38;
  v42 = v71;
  v43 = swift_getWitnessTable();
  v44 = v87;
  sub_24B75BE48();
  (*(v73 + 8))(v39, v42);
  v101[3] = v43;
  v101[4] = MEMORY[0x277CDF918];
  v45 = v72;
  v75 = swift_getWitnessTable();
  v46 = v84;
  sub_24B6C7504();
  v47 = v74;
  v81 = *(v74 + 8);
  v81(v44, v45);
  v48 = v76;
  v49 = v79;
  v50 = v88;
  sub_24B6C7504();
  v51 = v86;
  v52 = v80;
  (*(v83 + 16))(v86, v89, v80);
  v102 = v51;
  v53 = v87;
  (*(v47 + 16))(v87, v46, v45);
  v103 = v53;
  v54 = v77;
  v55 = v85;
  (*(v77 + 16))(v85, v48, v49);
  v104 = v55;
  v101[0] = v52;
  v101[1] = v45;
  v101[2] = v49;
  v98 = v64;
  v99 = v75;
  v100 = v50;
  sub_24B7386C4(&v102, 3uLL, v101);
  v56 = *(v54 + 8);
  v56(v48, v49);
  v57 = v81;
  v81(v84, v45);
  v58 = v66;
  v66(v89, v52);
  v56(v85, v49);
  v57(v87, v45);
  return v58(v86, v52);
}

uint64_t sub_24B73B6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v54 = a3;
  v4 = *(a2 + 16);
  v5 = sub_24B75B558();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v43 - v8;
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B75B558();
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v43 - v16;
  v17 = type metadata accessor for EditorialDetailLayout(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v5;
  v21 = sub_24B75B7B8();
  v52 = *(v21 - 8);
  v53 = v21;
  MEMORY[0x28223BE20](v21);
  v51 = &v43 - v22;
  sub_24B738A9C();
  swift_getKeyPath();
  sub_24B75C218();

  LODWORD(v18) = v20[*(v18 + 28)];
  sub_24B740874(v20, type metadata accessor for EditorialDetailLayout);
  v23 = sub_24B738B3C(a2);
  v23(v49);

  v24 = MEMORY[0x277CDF678];
  if (v18 > 2)
  {
    sub_24B75C158();
    v25 = *(a2 + 40);
    v32 = v47;
    sub_24B75BE08();
    (*(v50 + 8))(v11, v4);
    v68 = v25;
    v69 = v24;
    v33 = v55;
    WitnessTable = swift_getWitnessTable();
    v35 = v46;
    sub_24B6C7504();
    v36 = *(v48 + 8);
    v36(v32, v33);
    sub_24B6C7504();
    v66 = v25;
    v67 = MEMORY[0x277CE01B0];
    v37 = swift_getWitnessTable();
    v31 = v51;
    sub_24B738894(v32, v12, v33, v37, WitnessTable);
    v36(v32, v33);
    v38 = v35;
    v24 = MEMORY[0x277CDF678];
    v36(v38, v33);
  }

  else
  {
    v25 = *(a2 + 40);
    sub_24B75BCE8();
    (*(v50 + 8))(v11, v4);
    v58 = v25;
    v59 = MEMORY[0x277CE01B0];
    v26 = swift_getWitnessTable();
    v27 = v44;
    sub_24B6C7504();
    v28 = *(v45 + 8);
    v28(v14, v12);
    sub_24B6C7504();
    v56 = v25;
    v57 = v24;
    v29 = v55;
    v30 = swift_getWitnessTable();
    v31 = v51;
    sub_24B73898C(v14, v12, v29, v26, v30);
    v28(v14, v12);
    v28(v27, v12);
  }

  v64 = v25;
  v65 = MEMORY[0x277CE01B0];
  v39 = swift_getWitnessTable();
  v62 = v25;
  v63 = v24;
  v40 = swift_getWitnessTable();
  v60 = v39;
  v61 = v40;
  v41 = v53;
  swift_getWitnessTable();
  sub_24B6C7504();
  return (*(v52 + 8))(v31, v41);
}

uint64_t sub_24B73BD9C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v160 = a8;
  v162 = a7;
  v159 = a6;
  v161 = a5;
  v157 = a2;
  v163 = a1;
  v149 = a9;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036460, &unk_24B767A50);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v123 = v121 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED8, &qword_24B761788);
  MEMORY[0x28223BE20](v16 - 8);
  v138 = v121 - v17;
  v136 = type metadata accessor for EditorialPreview(0);
  v139 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v122 = v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121[7] = v18;
  MEMORY[0x28223BE20](v19);
  v143 = v121 - v20;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036440, &qword_24B767958);
  MEMORY[0x28223BE20](v144);
  v146 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v145 = v121 - v23;
  v176 = a3;
  v177 = a4;
  v178 = a5;
  v179 = a6;
  v180 = a7;
  v181 = a8;
  v152 = type metadata accessor for EditorialDetailView(0, &v176);
  v150 = *(v152 - 8);
  v153 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v158 = v121 - v24;
  v154 = type metadata accessor for EditorialDetailContent(0);
  v125 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v126 = v25;
  v127 = v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v26 - 8);
  v124 = v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v28 - 8);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036468, &qword_24B767A60);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = v121 - v29;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036438, &qword_24B767950);
  MEMORY[0x28223BE20](v141);
  v142 = v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = v121 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v34 = sub_24B75C028();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = v121 - v39;
  v156 = a3;
  v164 = a3;
  v165 = a4;
  v41 = v157;
  v155 = a4;
  v166 = v161;
  v167 = v159;
  v168 = v162;
  v169 = v160;
  v42 = v163;
  v170 = v163;
  v171 = v157;
  sub_24B75B6B8();
  sub_24B75C018();
  WitnessTable = swift_getWitnessTable();
  v135 = v40;
  v131 = WitnessTable;
  sub_24B6C7504();
  v132 = v35;
  v44 = *(v35 + 8);
  v137 = v37;
  v45 = v37;
  v46 = v154;
  v140 = v34;
  v134 = v35 + 8;
  v133 = v44;
  v44(v45, v34);
  v47 = (v42 + v46[10]);
  v48 = v47[1];
  v151 = v33;
  if (v48)
  {
    v49 = *v47;
    v50 = swift_allocObject();
    v121[5] = v50;
    *(v50 + 16) = v49;
    *(v50 + 24) = v48;
    v51 = &v163[v46[7]];
    v52 = *(v51 + 1);
    v121[6] = *v51;
    v121[4] = v52;

    sub_24B75C2E8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v54 = objc_opt_self();
    v55 = [v54 bundleForClass_];
    v56 = v152;
    sub_24B738A9C();
    swift_getKeyPath();
    sub_24B75C218();

    v121[3] = sub_24B75C348();
    v121[2] = v57;
    sub_24B75C2E8();
    v58 = [v54 bundleForClass_];
    sub_24B738A9C();
    swift_getKeyPath();
    sub_24B75C218();

    v124 = sub_24B75C348();
    v121[1] = v59;
    v60 = v127;
    sub_24B73FAF8(v163, v127, type metadata accessor for EditorialDetailContent);
    v61 = v150;
    v121[0] = *(v150 + 16);
    (v121[0])(v158, v41, v56);
    v62 = (*(v125 + 80) + 64) & ~*(v125 + 80);
    v63 = *(v61 + 80);
    v64 = (v126 + v63 + v62) & ~v63;
    v126 = v63 | 7;
    v65 = swift_allocObject();
    v66 = v155;
    v65[2] = v156;
    v65[3] = v66;
    v67 = v159;
    v65[4] = v161;
    v65[5] = v67;
    v68 = v160;
    v65[6] = v162;
    v65[7] = v68;
    sub_24B73FE00(v60, v65 + v62, type metadata accessor for EditorialDetailContent);
    v69 = *(v61 + 32);
    v70 = v65 + v64;
    v71 = v158;
    v72 = v56;
    v69(v70, v158, v56);
    v73 = v71;
    (v121[0])(v71, v157, v56);
    v74 = (v63 + 64) & ~v63;
    v75 = swift_allocObject();
    v76 = v155;
    *(v75 + 2) = v156;
    *(v75 + 3) = v76;
    v77 = v159;
    *(v75 + 4) = v161;
    *(v75 + 5) = v77;
    v78 = v162;
    v79 = v160;
    *(v75 + 6) = v162;
    *(v75 + 7) = v79;
    v69(&v75[v74], v73, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364B8, &qword_24B767AB8);
    sub_24B6C743C(&qword_27F0364C0, &qword_27F0364B8, &qword_24B767AB8, MEMORY[0x277CE1198]);
    v80 = v151;
    v46 = v154;
    v81 = v128;
    sub_24B75B318();
    v82 = v129;
    v33 = v80;
    v83 = v81;
    v84 = v130;
    (*(v129 + 32))(v80, v83, v130);
    v85 = 0;
    v86 = v158;
    v87 = v153;
    v88 = v84;
    v89 = v82;
  }

  else
  {
    v85 = 1;
    v78 = v162;
    v72 = v152;
    v86 = v158;
    v87 = v153;
    v88 = v130;
    v89 = v129;
  }

  (*(v89 + 56))(v33, v85, 1, v88);
  v90 = &v163[v46[8]];
  v91 = v138;
  sub_24B6B9D34(v90, v138, &qword_27F034ED8, &qword_24B761788);
  v92 = v139;
  if ((*(v139 + 48))(v91, 1, v136) == 1)
  {
    sub_24B6B9CD4(v91, &qword_27F034ED8, &qword_24B761788);
    v93 = 1;
    v94 = v148;
    v95 = v145;
  }

  else
  {
    v96 = v143;
    sub_24B73FE00(v91, v143, type metadata accessor for EditorialPreview);
    v97 = v86;
    v98 = v87;
    v99 = v78;
    v100 = v150;
    (*(v150 + 16))(v97, v157, v72);
    v101 = v122;
    sub_24B73FAF8(v96, v122, type metadata accessor for EditorialPreview);
    v102 = (*(v100 + 80) + 64) & ~*(v100 + 80);
    v103 = (v98 + *(v92 + 80) + v102) & ~*(v92 + 80);
    v104 = swift_allocObject();
    v105 = v155;
    *(v104 + 2) = v156;
    *(v104 + 3) = v105;
    v106 = v159;
    *(v104 + 4) = v161;
    *(v104 + 5) = v106;
    *(v104 + 6) = v99;
    *(v104 + 7) = v160;
    (*(v100 + 32))(&v104[v102], v158, v152);
    v107 = sub_24B73FE00(v101, &v104[v103], type metadata accessor for EditorialPreview);
    v163 = v121;
    MEMORY[0x28223BE20](v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364A0, &qword_24B767A70);
    v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0364A8, &qword_24B767A78);
    v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036068, &unk_24B767A80);
    v110 = sub_24B73F32C();
    v111 = sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80, MEMORY[0x277D84470]);
    v176 = v108;
    v177 = v109;
    v33 = v151;
    v178 = v110;
    v179 = v111;
    swift_getOpaqueTypeConformance2();
    v112 = v123;
    sub_24B75BFE8();
    LOBYTE(v104) = sub_24B75BA08();
    sub_24B740874(v143, type metadata accessor for EditorialPreview);
    v94 = v148;
    v113 = v112 + *(v148 + 36);
    *v113 = v104;
    *(v113 + 8) = 0u;
    *(v113 + 24) = 0u;
    *(v113 + 40) = 1;
    v95 = v145;
    sub_24B6B0B2C(v112, v145);
    v93 = 0;
  }

  (*(v147 + 56))(v95, v93, 1, v94);
  v114 = v137;
  v115 = v135;
  v116 = v140;
  (*(v132 + 16))(v137, v135, v140);
  v176 = v114;
  v117 = v142;
  sub_24B6B9D34(v33, v142, &qword_27F036438, &qword_24B767950);
  v177 = v117;
  v118 = v146;
  sub_24B6B9D34(v95, v146, &qword_27F036440, &qword_24B767958);
  v178 = v118;
  v175[0] = v116;
  v175[1] = v141;
  v175[2] = v144;
  v172 = v131;
  v173 = sub_24B73F0FC();
  v174 = sub_24B73F1AC();
  sub_24B7386C4(&v176, 3uLL, v175);
  sub_24B6B9CD4(v95, &qword_27F036440, &qword_24B767958);
  sub_24B6B9CD4(v33, &qword_27F036438, &qword_24B767950);
  v119 = v133;
  v133(v115, v116);
  sub_24B6B9CD4(v118, &qword_27F036440, &qword_24B767958);
  sub_24B6B9CD4(v117, &qword_27F036438, &qword_24B767950);
  return v119(v114, v116);
}

uint64_t sub_24B73CFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = a8;
  v69 = a7;
  v68 = a6;
  v66 = a5;
  v59 = a4;
  v63 = a3;
  v71 = a2;
  v74 = a9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036430, &qword_24B767948);
  MEMORY[0x28223BE20](v64);
  v62 = &v55 - v10;
  v72 = sub_24B75B558();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v55 - v13;
  v58 = sub_24B75B768();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  MEMORY[0x28223BE20](v67);
  v60 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v55 - v18;
  v19 = (a1 + *(type metadata accessor for EditorialDetailContent(0) + 28));
  v20 = v19[1];
  v83 = *v19;
  v84 = v20;
  sub_24B6E89B0();

  v21 = sub_24B75BC48();
  v23 = v22;
  v25 = v24;
  sub_24B75BA18();
  v26 = sub_24B75BC18();
  v28 = v27;
  v30 = v29;

  sub_24B6E89A0(v21, v23, v25 & 1);

  v31 = sub_24B75BC08();
  v33 = v32;
  LOBYTE(v23) = v34;
  v36 = v35;
  sub_24B6E89A0(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v83 = v31;
  v84 = v33;
  LOBYTE(v85) = v23 & 1;
  v86 = v36;
  v87 = KeyPath;
  v88 = 3;
  v89 = 0;
  sub_24B75B758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
  sub_24B6E8D88();
  v38 = v56;
  sub_24B75BDD8();
  (*(v57 + 8))(v15, v58);
  sub_24B6E89A0(v31, v33, v23 & 1);

  v39 = v59;
  v83 = v63;
  v84 = v59;
  v85 = v66;
  v86 = v68;
  v40 = v69;
  v87 = v69;
  v88 = v70;
  v41 = type metadata accessor for EditorialDetailView(0, &v83);
  v42 = v62;
  v43 = v71;
  sub_24B73D620(v41, v62);
  v44 = *(v41 + 76);
  v45 = sub_24B7401C4();
  v46 = v43 + v44;
  v47 = v61;
  MEMORY[0x24C248140](v46, v64, v39, v45);
  sub_24B6B9CD4(v42, &qword_27F036430, &qword_24B767948);
  v81 = v45;
  v82 = v40;
  v48 = v72;
  WitnessTable = swift_getWitnessTable();
  v50 = v65;
  sub_24B6C7504();
  v51 = v73;
  v52 = *(v73 + 8);
  v52(v47, v48);
  v53 = v60;
  sub_24B6B9D34(v38, v60, &qword_27F0346C0, &qword_24B75FAC0);
  v79 = 0x4014000000000000;
  v80 = 0;
  v83 = v53;
  v84 = &v79;
  (*(v51 + 16))(v47, v50, v48);
  v85 = v47;
  v78[0] = v67;
  v78[1] = MEMORY[0x277CE1180];
  v78[2] = v48;
  v75 = sub_24B6E8CCC();
  v76 = MEMORY[0x277CE1170];
  v77 = WitnessTable;
  sub_24B7386C4(&v83, 3uLL, v78);
  v52(v50, v48);
  sub_24B6B9CD4(v38, &qword_27F0346C0, &qword_24B75FAC0);
  v52(v47, v48);
  return sub_24B6B9CD4(v53, &qword_27F0346C0, &qword_24B75FAC0);
}

uint64_t sub_24B73D620@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036068, &unk_24B767A80);
  MEMORY[0x28223BE20](v39);
  v46 = &v38 - v4;
  v5 = sub_24B75B948();
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  MEMORY[0x28223BE20](v5);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036540, &qword_24B767BB8);
  v12 = *(v11 - 8);
  v48 = v11;
  v49 = v12;
  MEMORY[0x28223BE20](v11);
  v45 = &v38 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036520, &qword_24B767BA8);
  v14 = MEMORY[0x28223BE20](v44);
  v43 = &v38 - v15;
  (*(v8 + 16))(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v14);
  v16 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v19 = a1[2];
  v18 = a1[3];
  *(v17 + 2) = v19;
  *(v17 + 3) = v18;
  v21 = a1[4];
  v20 = a1[5];
  *(v17 + 4) = v21;
  *(v17 + 5) = v20;
  v22 = a1[6];
  v23 = a1[7];
  *(v17 + 6) = v22;
  *(v17 + 7) = v23;
  (*(v8 + 32))(&v17[v16], v41, a1);
  v52 = v19;
  v53 = v18;
  v54 = v21;
  v55 = v20;
  v24 = v43;
  v25 = v44;
  v26 = v46;
  v56 = v22;
  v57 = v23;
  v58 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036578, &unk_24B767BD0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036188, &qword_24B7670B0);
  v28 = sub_24B735340();
  v59 = v27;
  v60 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v45;
  sub_24B75BFE8();
  v30 = v47;
  sub_24B75B938();
  sub_24B6C743C(&qword_27F036548, &qword_27F036540, &qword_24B767BB8, MEMORY[0x277CDF028]);
  sub_24B740548(&qword_27F036550, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v31 = v48;
  v32 = v50;
  sub_24B75BCF8();
  (*(v51 + 8))(v30, v32);
  (*(v49 + 8))(v29, v31);
  v33 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036538, &qword_24B767BB0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036560, &qword_24B767BC0);
  sub_24B75B5E8();
  *v33 = swift_getKeyPath();
  *(v24 + *(v25 + 36)) = sub_24B75BEF8();
  v34 = *MEMORY[0x277CDFA10];
  v35 = sub_24B75B538();
  (*(*(v35 - 8) + 104))(v26, v34, v35);
  sub_24B740548(&qword_27F0360B8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B75C2D8();
  if (result)
  {
    sub_24B740318();
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80, MEMORY[0x277D84470]);
    v37 = v40;
    sub_24B75BD58();
    sub_24B6B9CD4(v26, &qword_27F036068, &unk_24B767A80);
    sub_24B6B9CD4(v24, &qword_27F036520, &qword_24B767BA8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036430, &qword_24B767948);
    *(v37 + *(result + 36)) = 0x3FF0000000000000;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B73DC44(uint64_t a1, uint64_t a2)
{
  sub_24B6E89B0();

  return sub_24B75BC48();
}

uint64_t sub_24B73DC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = sub_24B75B788();
  *(a9 + 8) = 0x4024000000000000;
  *(a9 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364C8, &unk_24B767AC0);
  return sub_24B73DD48(a1, a2, a3, a4, a5, a6, a7, a8, a9 + *(v18 + 44));
}

uint64_t sub_24B73DD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v42 = a2;
  v44 = a3;
  v45 = a4;
  v46[0] = a3;
  v46[1] = a4;
  v46[2] = a5;
  v46[3] = a6;
  v46[4] = a7;
  v46[5] = a8;
  v43 = type metadata accessor for EditorialDetailView(0, v46);
  v15 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v34 - v16;
  v17 = *(a1 + *(type metadata accessor for EditorialDetailContent(0) + 20));
  v18 = *(v17 + 16);
  if (!v18)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v35 = v12;
  v36 = v11;
  v37 = v10;
  v38 = v9;
  v39 = a9;
  v19 = sub_24B73F548(v18, 0);
  v20 = *(type metadata accessor for EditorialExternalLink(0) - 8);
  sub_24B73F7C8(v46, v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v18, v17);
  KeyPath = v21;
  v22 = v46[0];

  result = sub_24B73FA1C(v22);
  if (KeyPath == v18)
  {
    v9 = v38;
    v11 = v36;
    v10 = v37;
    v12 = v35;
LABEL_5:
    v46[0] = v19;
    KeyPath = swift_getKeyPath();
    v24 = v41;
    v25 = v43;
    (*(v15 + 16))(v41, v42, v43);
    v26 = (*(v15 + 80) + 64) & ~*(v15 + 80);
    v27 = swift_allocObject();
    v28 = v45;
    *(v27 + 2) = v44;
    *(v27 + 3) = v28;
    *(v27 + 4) = v12;
    *(v27 + 5) = v11;
    *(v27 + 6) = v10;
    *(v27 + 7) = v9;
    (*(v15 + 32))(&v27[v26], v24, v25);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364D0, &qword_24B767AE8);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364D8, &qword_24B767AF0);
    v31 = sub_24B6C743C(&qword_27F0364E0, &qword_27F0364D0, &qword_24B767AE8, MEMORY[0x277D83980]);
    v32 = sub_24B740548(&qword_2810F70E8, type metadata accessor for EditorialExternalLink, &protocol conformance descriptor for EditorialExternalLink);
    v33 = sub_24B6C743C(&qword_27F0364E8, &qword_27F0364D8, &qword_24B767AF0, MEMORY[0x277CDF028]);
    return sub_24B75C0D8(v46, KeyPath, sub_24B73FA24, v27, v29, v30, v31, v32, v33);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B73E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v40 = a9;
  v17 = type metadata accessor for EditorialExternalLink(0);
  v33 = *(v17 - 8);
  v18 = *(v33 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v42[0] = a3;
  v42[1] = a4;
  v42[2] = a5;
  v42[3] = a6;
  v42[4] = a7;
  v42[5] = a8;
  v19 = type metadata accessor for EditorialDetailView(0, v42);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v33 - v23;
  (*(v20 + 16))(&v33 - v23, a2, v19, v22);
  v25 = a1;
  sub_24B73FAF8(a1, &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditorialExternalLink);
  v26 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v27 = (v21 + *(v33 + 80) + v26) & ~*(v33 + 80);
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 2) = v34;
  *(v28 + 3) = v29;
  v30 = v37;
  *(v28 + 4) = v36;
  *(v28 + 5) = v30;
  v31 = v39;
  *(v28 + 6) = v38;
  *(v28 + 7) = v31;
  (*(v20 + 32))(&v28[v26], v24, v19);
  sub_24B73FE00(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &v28[v27], type metadata accessor for EditorialExternalLink);
  v41 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364F0, &qword_24B767AF8);
  sub_24B73FFD0();
  return sub_24B75BFE8();
}

uint64_t sub_24B73E338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for EditorialDetailAction(0);
  MEMORY[0x28223BE20](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = a8;
  type metadata accessor for EditorialDetailView(0, v21);
  sub_24B738A9C();
  v18 = *(type metadata accessor for EditorialExternalLink(0) + 20);
  v19 = sub_24B75B108();
  (*(*(v19 - 8) + 16))(v17, a2 + v18, v19);
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B740874(v17, type metadata accessor for EditorialDetailAction);
}

uint64_t sub_24B73E490@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B75BAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = *a1;
  v13 = a1[1];
  v22[0] = v12;
  v22[1] = v13;
  sub_24B6E89B0();

  sub_24B75BFD8();
  v22[0] = 0x4000000000000000;
  sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
  sub_24B735424();
  sub_24B75BCC8();
  (*(v9 + 8))(v11, v8);
  sub_24B75BA38();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
  v14 = sub_24B75BB28();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036508, &qword_24B767B00) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364F0, &qword_24B767AF8) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348D8, &qword_24B75FC70) + 28);
  v19 = *MEMORY[0x277CE1050];
  v20 = sub_24B75BFA8();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  result = swift_getKeyPath();
  *v17 = result;
  return result;
}

uint64_t sub_24B73E7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = type metadata accessor for EditorialDetailAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  type metadata accessor for EditorialDetailView(0, v18);
  sub_24B738A9C();
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B740874(v16, type metadata accessor for EditorialDetailAction);
}

uint64_t sub_24B73E8C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for EditorialDetailAction(0);
  MEMORY[0x28223BE20](v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a8;
  type metadata accessor for EditorialDetailView(0, v23);
  sub_24B738A9C();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70) + 48);
  v19 = *(a2 + 1);
  *v17 = *a2;
  *(v17 + 1) = v19;
  v20 = *(type metadata accessor for EditorialPreview(0) + 20);
  v21 = sub_24B75B108();
  (*(*(v21 - 8) + 16))(&v17[v18], &a2[v20], v21);
  swift_storeEnumTagMultiPayload();

  sub_24B75C228();

  return sub_24B740874(v17, type metadata accessor for EditorialDetailAction);
}

uint64_t sub_24B73EA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a6;
  v29 = a7;
  v26 = a8;
  v27 = a5;
  v30 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036068, &unk_24B767A80);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364A8, &qword_24B767A78);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v17 - 8);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = v27;
  v35 = v28;
  v36 = v29;
  type metadata accessor for EditorialDetailView(0, &v31);
  sub_24B738A9C();
  swift_getKeyPath();
  sub_24B75C218();

  v31 = sub_24B75C348();
  v32 = v20;
  sub_24B6E89B0();
  sub_24B75BFD8();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *&v15[*(v13 + 36)] = sub_24B75BED8();
  v21 = *MEMORY[0x277CDFA10];
  v22 = sub_24B75B538();
  (*(*(v22 - 8) + 104))(v12, v21, v22);
  sub_24B740548(&qword_27F0360B8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B75C2D8();
  if (result)
  {
    sub_24B73F32C();
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80, MEMORY[0x277D84470]);
    sub_24B75BD58();
    sub_24B6B9CD4(v12, &qword_27F036068, &unk_24B767A80);
    return sub_24B6B9CD4(v15, &qword_27F0364A8, &qword_24B767A78);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B73EE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a6;
  v26 = a7;
  v27 = a1;
  v28 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036188, &qword_24B7670B0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v16 - 8);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = v25;
  v34 = v26;
  type metadata accessor for EditorialDetailView(0, &v29);
  sub_24B738A9C();
  swift_getKeyPath();
  sub_24B75C218();

  v29 = sub_24B75C348();
  v30 = v19;
  sub_24B6E89B0();
  sub_24B75BFD8();
  v20 = sub_24B75BA28();
  KeyPath = swift_getKeyPath();
  v22 = &v14[*(v12 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_24B75BA88();
  sub_24B735340();
  sub_24B75BCB8();
  return sub_24B6B9CD4(v14, &qword_27F036188, &qword_24B7670B0);
}

unint64_t sub_24B73F0FC()
{
  result = qword_27F036470;
  if (!qword_27F036470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
    sub_24B6C743C(&qword_27F036478, &qword_27F036468, &qword_24B767A60, MEMORY[0x277D09728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036470);
  }

  return result;
}

unint64_t sub_24B73F1AC()
{
  result = qword_27F036480;
  if (!qword_27F036480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
    sub_24B73F230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036480);
  }

  return result;
}

unint64_t sub_24B73F230()
{
  result = qword_27F036488;
  if (!qword_27F036488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036460, &unk_24B767A50);
    sub_24B6C743C(&qword_27F036490, &qword_27F036498, &qword_24B767A68, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036488);
  }

  return result;
}

unint64_t sub_24B73F32C()
{
  result = qword_27F0364B0;
  if (!qword_27F0364B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0364A8, &qword_24B767A78);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
    sub_24B6C743C(&qword_27F034920, &qword_27F034928, &qword_24B767A90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0364B0);
  }

  return result;
}

uint64_t sub_24B73F418@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for EditorialDetailContent(0) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v16[0] = v3;
  v16[1] = v4;
  v12 = (v10 + 64) & ~v10;
  v16[2] = v5;
  v16[3] = v6;
  v16[4] = v7;
  v16[5] = v8;
  v13 = *(type metadata accessor for EditorialDetailView(0, v16) - 8);
  v14 = v1 + ((v12 + v11 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_24B73DC98(v1 + v12, v14, v3, v4, v5, v6, v7, v8, a1);
}

void *sub_24B73F548(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036510, &qword_24B767B68);
  v4 = *(type metadata accessor for EditorialExternalLink(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B73F644@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B75B698();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B73F6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

void sub_24B73F7C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EditorialExternalLink(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_24B73FAF8(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for EditorialExternalLink);
      v23 = v22;
      v24 = v30;
      sub_24B73FE00(v23, v30, type metadata accessor for EditorialExternalLink);
      sub_24B73FE00(v24, a2, type metadata accessor for EditorialExternalLink);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_24B73FA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for EditorialDetailView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_24B73E0A4(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_24B73FAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_12Tm(uint64_t (*a1)(void))
{
  v3 = *(v1 + 24);
  v19[0] = *(v1 + 16);
  v19[1] = v3;
  v4 = *(v1 + 48);
  v20 = *(v1 + 32);
  v18 = v20;
  v21 = v4;
  v5 = (type metadata accessor for EditorialDetailView(0, v19) - 8);
  v6 = (*(*v5 + 80) + 64) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = (a1(0) - 8);
  v9 = (v6 + v7 + *(*v8 + 80)) & ~*(*v8 + 80);
  v10 = (v1 + v6);
  sub_24B6C7004(*v10, v10[1]);
  v11 = v5[19];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v12 = sub_24B75B288();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);
  v13 = v5[20];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v14 - 8) + 8))(v10 + v13, v14);
  (*(*(v3 - 8) + 8))(v10 + v5[21], v3);
  (*(*(v18 - 8) + 8))(v10 + v5[22]);

  v15 = v8[7];
  v16 = sub_24B75B108();
  (*(*(v16 - 8) + 8))(v1 + v9 + v15, v16);
  return swift_deallocObject();
}

uint64_t sub_24B73FE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B73FE94(uint64_t (*a1)(void), uint64_t (*a2)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v17[0] = *(v2 + 2);
  v4 = v17[0];
  v17[1] = v5;
  v17[2] = v6;
  v17[3] = v7;
  v17[4] = v8;
  v17[5] = v9;
  v10 = *(type metadata accessor for EditorialDetailView(0, v17) - 8);
  v11 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(a1(0) - 8);
  v14 = &v2[(v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)];

  return a2(&v2[v11], v14, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_24B73FFD0()
{
  result = qword_27F0364F8;
  if (!qword_27F0364F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0364F0, &qword_24B767AF8);
    sub_24B740088();
    sub_24B6C743C(&qword_27F0348F8, &qword_27F0348D8, &qword_24B75FC70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0364F8);
  }

  return result;
}

unint64_t sub_24B740088()
{
  result = qword_27F036500;
  if (!qword_27F036500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036508, &qword_24B767B00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035898, &qword_24B764A10);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
    sub_24B735424();
    swift_getOpaqueTypeConformance2();
    sub_24B6C743C(&qword_27F034BA8, &qword_27F034BB0, &qword_24B760370, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036500);
  }

  return result;
}

unint64_t sub_24B7401C4()
{
  result = qword_27F036518;
  if (!qword_27F036518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036520, &qword_24B767BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036068, &unk_24B767A80);
    sub_24B740318();
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_24B6C743C(&qword_27F036568, &qword_27F036570, &qword_24B767BC8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036518);
  }

  return result;
}

unint64_t sub_24B740318()
{
  result = qword_27F036528;
  if (!qword_27F036528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036520, &qword_24B767BA8);
    sub_24B7403D0();
    sub_24B6C743C(&qword_27F034920, &qword_27F034928, &qword_24B767A90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036528);
  }

  return result;
}

unint64_t sub_24B7403D0()
{
  result = qword_27F036530;
  if (!qword_27F036530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036538, &qword_24B767BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036540, &qword_24B767BB8);
    sub_24B75B948();
    sub_24B6C743C(&qword_27F036548, &qword_27F036540, &qword_24B767BB8, MEMORY[0x277CDF028]);
    sub_24B740548(&qword_27F036550, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_24B6C743C(&qword_27F036558, &qword_27F036560, &qword_24B767BC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036530);
  }

  return result;
}

uint64_t sub_24B740548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);
  v11[0] = *(v0 + 16);
  v11[1] = v1;
  v2 = *(v0 + 48);
  v12 = *(v0 + 32);
  v10 = v12;
  v13 = v2;
  v3 = (type metadata accessor for EditorialDetailView(0, v11) - 8);
  v4 = (v0 + ((*(*v3 + 80) + 64) & ~*(*v3 + 80)));
  sub_24B6C7004(*v4, v4[1]);
  v5 = v3[19];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v6 = sub_24B75B288();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v3[20];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  (*(*(v1 - 8) + 8))(v4 + v3[21], v1);
  (*(*(v10 - 8) + 8))(v4 + v3[22]);
  return swift_deallocObject();
}

uint64_t sub_24B740788(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v8;
  v9 = *(type metadata accessor for EditorialDetailView(0, v11) - 8);
  return sub_24B73E7B0(v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v3, v4, v5, v6, v7, v8, a1);
}

uint64_t sub_24B740874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 ProgramDetailState.layout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

uint64_t ProgramDetailState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProgramDetailState(0) + 24);

  return sub_24B7409B8(a1, v3);
}

uint64_t sub_24B7409B8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for ProgramDetailLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t ProgramDetailState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProgramDetailState(0) + 28);
  v4 = sub_24B75B1F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProgramDetailState.programIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProgramDetailState(0) + 32));

  return v1;
}

uint64_t ProgramDetailState.showingRemoveFromLibraryAlert.setter(char a1)
{
  result = type metadata accessor for ProgramDetailState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ProgramDetailState.showingShareSheet.setter(char a1)
{
  result = type metadata accessor for ProgramDetailState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ProgramDetailState.init(layout:libraryState:loadState:locale:programIdentifier:showingRemoveFromLibraryAlert:showingShareSheet:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v16 = *(a1 + 32);
  v17 = *(a1 + 33);
  v18 = *a2;
  v19 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v19;
  *(a9 + 32) = v16;
  *(a9 + 33) = v17;
  *(a9 + 34) = v18;
  v20 = type metadata accessor for ProgramDetailState(0);
  sub_24B740D40(a3, a9 + v20[6]);
  v21 = v20[7];
  v22 = sub_24B75B1F8();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a4, v22);
  v24 = (a9 + v20[8]);
  *v24 = a5;
  v24[1] = a6;
  *(a9 + v20[9]) = a7;
  *(a9 + v20[10]) = a8;
  return result;
}

uint64_t sub_24B740D40(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for ProgramDetailLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_24B740DA4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x537972617262696CLL;
    if (v1 != 1)
    {
      v5 = 0x7461745364616F6CLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x74756F79616CLL;
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0x656C61636F6CLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24B740E94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B741E84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B740EC8(uint64_t a1)
{
  v2 = sub_24B741260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B740F04(uint64_t a1)
{
  v2 = sub_24B741260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036580, &qword_24B767C10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B741260();
  sub_24B75C738();
  v9 = *(v3 + 32);
  v10 = *(v3 + 33);
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v17 = v9;
  v18 = v10;
  v14 = 0;
  sub_24B7412B4();
  sub_24B75C6A8();
  if (!v2)
  {
    LOBYTE(v15) = *(v3 + 34);
    v14 = 1;
    sub_24B709E80();
    sub_24B75C6A8();
    type metadata accessor for ProgramDetailState(0);
    LOBYTE(v15) = 2;
    type metadata accessor for ProgramDetailLoadState(0);
    sub_24B7419A0(&qword_27F036598, type metadata accessor for ProgramDetailLoadState, &protocol conformance descriptor for ProgramDetailLoadState);
    sub_24B75C6A8();
    LOBYTE(v15) = 3;
    sub_24B75B1F8();
    sub_24B7419A0(&qword_27F033EC8, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_24B75C6A8();
    LOBYTE(v15) = 4;
    sub_24B75C678();
    LOBYTE(v15) = 5;
    sub_24B75C688();
    LOBYTE(v15) = 6;
    sub_24B75C688();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B741260()
{
  result = qword_27F036588;
  if (!qword_27F036588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036588);
  }

  return result;
}

unint64_t sub_24B7412B4()
{
  result = qword_27F036590;
  if (!qword_27F036590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036590);
  }

  return result;
}

uint64_t ProgramDetailState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_24B75B1F8();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for ProgramDetailLoadState(0);
  MEMORY[0x28223BE20](State);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0365A0, &qword_24B767C18);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ProgramDetailState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24B741260();
  v14 = v39;
  sub_24B75C728();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v15 = v7;
  v32 = v10;
  v39 = v12;
  v17 = v35;
  v16 = v36;
  v18 = v37;
  v45 = 0;
  sub_24B74194C();
  sub_24B75C618();
  v19 = v43;
  v20 = v44;
  v21 = v42;
  v22 = v39;
  *v39 = v41;
  *(v22 + 16) = v21;
  *(v22 + 32) = v19;
  *(v22 + 33) = v20;
  v45 = 1;
  sub_24B70C424();
  sub_24B75C618();
  *(v22 + 34) = v41;
  LOBYTE(v41) = 2;
  sub_24B7419A0(&qword_27F0365B0, type metadata accessor for ProgramDetailLoadState, &protocol conformance descriptor for ProgramDetailLoadState);
  sub_24B75C618();
  sub_24B740D40(v15, v22 + v32[6]);
  LOBYTE(v41) = 3;
  sub_24B7419A0(&qword_27F033EF8, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  v23 = v34;
  v24 = v18;
  sub_24B75C618();
  v25 = v32;
  (*(v16 + 32))(v22 + v32[7], v23, v24);
  LOBYTE(v41) = 4;
  v26 = sub_24B75C5E8();
  v27 = (v22 + v25[8]);
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v41) = 5;
  *(v22 + v25[9]) = sub_24B75C5F8() & 1;
  LOBYTE(v41) = 6;
  LOBYTE(v25) = sub_24B75C5F8();
  (*(v17 + 8))(v9, v38);
  v29 = v33;
  *(v22 + v32[10]) = v25 & 1;
  sub_24B7419E8(v22, v29, type metadata accessor for ProgramDetailState);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_24B741A50(v22, type metadata accessor for ProgramDetailState);
}

unint64_t sub_24B74194C()
{
  result = qword_27F0365A8;
  if (!qword_27F0365A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365A8);
  }

  return result;
}

uint64_t sub_24B7419A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B7419E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B741A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s20FitnessProductDetail07ProgramC5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v6;
  v21 = v4;
  v22 = v5;
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v9 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v9;
  v18 = v7;
  v19 = v8;
  if (_s20FitnessProductDetail07ProgramC6LayoutV2eeoiySbAC_ACtFZ_0(v20, v17) & 1) != 0 && *(a1 + 34) == *(a2 + 34) && (v10 = type metadata accessor for ProgramDetailState(0), (_s20FitnessProductDetail07ProgramC9LoadStateO2eeoiySbAC_ACtFZ_0(a1 + v10[6], a2 + v10[6])) && (MEMORY[0x24C2474B0](a1 + v10[7], a2 + v10[7]) & 1) != 0 && ((v11 = v10[8], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) && v13 == v14[1] || (sub_24B75C6B8()) && *(a1 + v10[9]) == *(a2 + v10[9]))
  {
    v15 = *(a1 + v10[10]) ^ *(a2 + v10[10]) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t getEnumTagSinglePayload for ProgramDetailState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProgramDetailState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B741D80()
{
  result = qword_27F0365B8;
  if (!qword_27F0365B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365B8);
  }

  return result;
}

unint64_t sub_24B741DD8()
{
  result = qword_27F0365C0;
  if (!qword_27F0365C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365C0);
  }

  return result;
}

unint64_t sub_24B741E30()
{
  result = qword_27F0365C8;
  if (!qword_27F0365C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365C8);
  }

  return result;
}

uint64_t sub_24B741E84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x537972617262696CLL && a2 == 0xEC00000065746174 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B76C1F0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024B76C210 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B76C230 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

BOOL static EditorialDetailLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x24C2475B0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EditorialDetailLayout(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t EditorialDetailLayout.init(contentMargins:sizeClass:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_24B75B308();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for EditorialDetailLayout(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_24B7421A8()
{
  if (*v0)
  {
    return 0x73616C43657A6973;
  }

  else
  {
    return 0x4D746E65746E6F63;
  }
}

uint64_t sub_24B7421F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B7422E0(uint64_t a1)
{
  v2 = sub_24B7428B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74231C(uint64_t a1)
{
  v2 = sub_24B7428B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0365D0, &qword_24B767E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7428B8();
  sub_24B75C738();
  v10[15] = 0;
  sub_24B75B308();
  sub_24B742E10(&qword_27F0365E0, MEMORY[0x277D096F0], MEMORY[0x277D096F8]);
  sub_24B75C6A8();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for EditorialDetailLayout(0) + 20));
    v10[13] = 1;
    sub_24B74290C();
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t EditorialDetailLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_24B75B308();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0365F0, &qword_24B767E08);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for EditorialDetailLayout(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7428B8();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_24B742E10(&qword_27F0365F8, MEMORY[0x277D096F0], MEMORY[0x277D09710]);
  v15 = v27;
  v16 = v25;
  sub_24B75C618();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_24B742960();
  sub_24B75C618();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_24B7429B4(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B742A18(v18);
}

unint64_t sub_24B7428B8()
{
  result = qword_27F0365D8;
  if (!qword_27F0365D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365D8);
  }

  return result;
}

unint64_t sub_24B74290C()
{
  result = qword_27F0365E8;
  if (!qword_27F0365E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365E8);
  }

  return result;
}

unint64_t sub_24B742960()
{
  result = qword_27F036600;
  if (!qword_27F036600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036600);
  }

  return result;
}

uint64_t sub_24B7429B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialDetailLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B742A18(uint64_t a1)
{
  v2 = type metadata accessor for EditorialDetailLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EditorialDetailLayout.hash(into:)(uint64_t a1)
{
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B75C2C8();
  v2 = type metadata accessor for EditorialDetailLayout(0);
  return MEMORY[0x24C2489B0](*(v1 + *(v2 + 20)));
}

uint64_t EditorialDetailLayout.hashValue.getter()
{
  sub_24B75C6D8();
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B75C2C8();
  v1 = type metadata accessor for EditorialDetailLayout(0);
  MEMORY[0x24C2489B0](*(v0 + *(v1 + 20)));
  return sub_24B75C718();
}

uint64_t sub_24B742BA4(uint64_t a1)
{
  sub_24B75C6D8();
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B75C2C8();
  MEMORY[0x24C2489B0](*(v1 + *(a1 + 20)));
  return sub_24B75C718();
}

uint64_t sub_24B742C48(uint64_t a1, uint64_t a2)
{
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B75C2C8();
  return MEMORY[0x24C2489B0](*(v2 + *(a2 + 20)));
}

uint64_t sub_24B742CD4(uint64_t a1, uint64_t a2)
{
  sub_24B75C6D8();
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B75C2C8();
  MEMORY[0x24C2489B0](*(v2 + *(a2 + 20)));
  return sub_24B75C718();
}

uint64_t sub_24B742E10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B742E94()
{
  result = qword_27F036610;
  if (!qword_27F036610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036610);
  }

  return result;
}

unint64_t sub_24B742EEC()
{
  result = qword_27F036618;
  if (!qword_27F036618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036618);
  }

  return result;
}

unint64_t sub_24B742F44()
{
  result = qword_27F036620;
  if (!qword_27F036620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036620);
  }

  return result;
}

uint64_t sub_24B742F98(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4164694477656976;
    v7 = 0xD000000000000013;
    if (a1 == 3)
    {
      v8 = 0xD000000000000013;
    }

    else
    {
      v8 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7070615465726F6DLL;
    v2 = 0xD000000000000017;
    if (a1 != 9)
    {
      v2 = 0x707061546B6E696CLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    v4 = 0xD000000000000023;
    if (a1 != 6)
    {
      v4 = 0x6C69466863746177;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B74312C(uint64_t a1)
{
  v2 = sub_24B7448A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743168(uint64_t a1)
{
  v2 = sub_24B7448A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7431AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B746BB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7431E0(uint64_t a1)
{
  v2 = sub_24B7445F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74321C(uint64_t a1)
{
  v2 = sub_24B7445F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743258(uint64_t a1)
{
  v2 = sub_24B744A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743294(uint64_t a1)
{
  v2 = sub_24B744A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7432D0(uint64_t a1)
{
  v2 = sub_24B7449A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74330C(uint64_t a1)
{
  v2 = sub_24B7449A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7433E0(uint64_t a1)
{
  v2 = sub_24B7446A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74341C(uint64_t a1)
{
  v2 = sub_24B7446A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743458(uint64_t a1)
{
  v2 = sub_24B7448F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743494(uint64_t a1)
{
  v2 = sub_24B7448F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7434D0(uint64_t a1)
{
  v2 = sub_24B744750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74350C(uint64_t a1)
{
  v2 = sub_24B744750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743548(uint64_t a1)
{
  v2 = sub_24B7446FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743584(uint64_t a1)
{
  v2 = sub_24B7446FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7435C0(uint64_t a1)
{
  v2 = sub_24B7447F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7435FC(uint64_t a1)
{
  v2 = sub_24B7447F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743638(uint64_t a1)
{
  v2 = sub_24B74484C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743674(uint64_t a1)
{
  v2 = sub_24B74484C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7436B0(uint64_t a1)
{
  v2 = sub_24B7449F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7436EC(uint64_t a1)
{
  v2 = sub_24B7449F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743728(uint64_t a1)
{
  v2 = sub_24B7447A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743764(uint64_t a1)
{
  v2 = sub_24B7447A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailAction.encode(to:)(void *a1)
{
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036628, &qword_24B768000);
  v59 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v59 - v2;
  v3 = sub_24B75B108();
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x28223BE20](v3);
  v91 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036630, &qword_24B768008);
  v81 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036638, &qword_24B768010);
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x28223BE20](v6);
  v82 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036640, &qword_24B768018);
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v78 = &v59 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036648, &qword_24B768020);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v59 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036650, &qword_24B768028);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v59 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036658, &qword_24B768030);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v59 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036660, &qword_24B768038);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v88 = &v59 - v13;
  v66 = type metadata accessor for WorkoutProgram(0);
  MEMORY[0x28223BE20](v66);
  v87 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036668, &qword_24B768040);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v16 = &v59 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036670, &qword_24B768048);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036678, &qword_24B768050);
  v60 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = type metadata accessor for ProgramDetailAction(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036680, &qword_24B768058);
  v25 = *(v24 - 8);
  v96 = v24;
  v97 = v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v59 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7445F0();
  v95 = v27;
  sub_24B75C738();
  sub_24B744644(v94, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload != 8)
      {
        v30 = v96;
        if (EnumCaseMultiPayload == 9)
        {
          v107 = 7;
          sub_24B7447A4();
          v46 = v78;
          v31 = v95;
          sub_24B75C638();
          v48 = v79;
          v47 = v80;
        }

        else
        {
          v108 = 8;
          sub_24B744750();
          v46 = v82;
          v31 = v95;
          sub_24B75C638();
          v48 = v83;
          v47 = v84;
        }

        v32 = *(v48 + 8);
        v33 = v46;
        goto LABEL_26;
      }

      v106 = 6;
      sub_24B7447F8();
      v55 = v75;
      v31 = v95;
      v30 = v96;
      sub_24B75C638();
      v32 = *(v76 + 8);
      v33 = v55;
      v34 = &v112;
    }

    else if (EnumCaseMultiPayload == 5)
    {
      v99 = 1;
      sub_24B7449F8();
      v54 = v61;
      v31 = v95;
      v30 = v96;
      sub_24B75C638();
      v32 = *(v62 + 8);
      v33 = v54;
      v34 = &v95;
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v104 = 4;
      sub_24B7448A0();
      v29 = v67;
      v31 = v95;
      v30 = v96;
      sub_24B75C638();
      v32 = *(v68 + 8);
      v33 = v29;
      v34 = &v102;
    }

    else
    {
      v105 = 5;
      sub_24B74484C();
      v58 = v72;
      v31 = v95;
      v30 = v96;
      sub_24B75C638();
      v32 = *(v73 + 8);
      v33 = v58;
      v34 = &v111;
    }

    v47 = *(v34 - 32);
LABEL_26:
    v32(v33, v47);
    return (*(v97 + 8))(v31, v30);
  }

  v94 = v18;
  v35 = v88;
  v36 = v89;
  v37 = v90;
  v38 = v91;
  v39 = v93;
  if (EnumCaseMultiPayload <= 1)
  {
    v49 = v96;
    if (EnumCaseMultiPayload)
    {
      v56 = v87;
      sub_24B745E1C(v23, v87, type metadata accessor for WorkoutProgram);
      v103 = 3;
      sub_24B7448F4();
      v51 = v95;
      sub_24B75C638();
      sub_24B6A72EC(&qword_27F036330, type metadata accessor for WorkoutProgram, &protocol conformance descriptor for WorkoutProgram);
      v57 = v71;
      sub_24B75C6A8();
      (*(v70 + 8))(v35, v57);
      sub_24B744948(v56);
    }

    else
    {
      v50 = *v23;
      v101 = 2;
      sub_24B7449A4();
      v51 = v95;
      sub_24B75C638();
      v100 = v50;
      sub_24B709E80();
      v52 = v65;
      sub_24B75C6A8();
      (*(v64 + 8))(v16, v52);
    }

    return (*(v97 + 8))(v51, v49);
  }

  else
  {
    v40 = v96;
    if (EnumCaseMultiPayload == 2)
    {
      v109 = 9;
      sub_24B7446FC();
      v53 = v95;
      sub_24B75C638();
      sub_24B75C678();

      (*(v81 + 8))(v36, v37);
      return (*(v97 + 8))(v53, v40);
    }

    else
    {
      v41 = v95;
      if (EnumCaseMultiPayload == 3)
      {
        v42 = v92;
        (*(v92 + 32))(v91, v23, v93);
        v110 = 10;
        sub_24B7446A8();
        v43 = v85;
        sub_24B75C638();
        sub_24B6A72EC(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
        v44 = v86;
        sub_24B75C6A8();
        (*(v59 + 8))(v43, v44);
        (*(v42 + 8))(v38, v39);
      }

      else
      {
        v98 = 0;
        sub_24B744A4C();
        sub_24B75C638();
        (*(v60 + 8))(v20, v94);
      }

      return (*(v97 + 8))(v41, v40);
    }
  }
}

uint64_t type metadata accessor for ProgramDetailAction(uint64_t a1)
{
  result = qword_27F036748;
  if (!qword_27F036748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B7445F0()
{
  result = qword_27F036688;
  if (!qword_27F036688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036688);
  }

  return result;
}

uint64_t sub_24B744644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgramDetailAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B7446A8()
{
  result = qword_27F036690;
  if (!qword_27F036690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036690);
  }

  return result;
}

unint64_t sub_24B7446FC()
{
  result = qword_27F036698;
  if (!qword_27F036698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036698);
  }

  return result;
}

unint64_t sub_24B744750()
{
  result = qword_27F0366A0;
  if (!qword_27F0366A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366A0);
  }

  return result;
}

unint64_t sub_24B7447A4()
{
  result = qword_27F0366A8;
  if (!qword_27F0366A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366A8);
  }

  return result;
}

unint64_t sub_24B7447F8()
{
  result = qword_27F0366B0;
  if (!qword_27F0366B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366B0);
  }

  return result;
}

unint64_t sub_24B74484C()
{
  result = qword_27F0366B8;
  if (!qword_27F0366B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366B8);
  }

  return result;
}

unint64_t sub_24B7448A0()
{
  result = qword_27F0366C0;
  if (!qword_27F0366C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366C0);
  }

  return result;
}

unint64_t sub_24B7448F4()
{
  result = qword_27F0366C8;
  if (!qword_27F0366C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366C8);
  }

  return result;
}

uint64_t sub_24B744948(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutProgram(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B7449A4()
{
  result = qword_27F0366D0;
  if (!qword_27F0366D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366D0);
  }

  return result;
}

unint64_t sub_24B7449F8()
{
  result = qword_27F0366D8;
  if (!qword_27F0366D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366D8);
  }

  return result;
}

unint64_t sub_24B744A4C()
{
  result = qword_27F0366E0;
  if (!qword_27F0366E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366E0);
  }

  return result;
}

uint64_t ProgramDetailAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0366E8, &qword_24B768060);
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v105 = &v73 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0366F0, &qword_24B768068);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v106 = &v73 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0366F8, &qword_24B768070);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v112 = &v73 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036700, &qword_24B768078);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v104 = &v73 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036708, &qword_24B768080);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v103 = &v73 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036710, &qword_24B768088);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v102 = &v73 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036718, &qword_24B768090);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v101 = &v73 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036720, &qword_24B768098);
  v86 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v100 = &v73 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036728, &qword_24B7680A0);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v111 = &v73 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036730, &qword_24B7680A8);
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v110 = &v73 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036738, &qword_24B7680B0);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v99 = &v73 - v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036740, &unk_24B7680B8);
  v113 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v15 = &v73 - v14;
  v108 = type metadata accessor for ProgramDetailAction(0);
  MEMORY[0x28223BE20](v108);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v73 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v73 - v28;
  v30 = a1[3];
  v115 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_24B7445F0();
  v31 = v114;
  sub_24B75C728();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  v73 = v26;
  v74 = v20;
  v75 = v23;
  v76 = v17;
  v33 = v110;
  v32 = v111;
  v34 = v112;
  v114 = v29;
  v35 = v109;
  v36 = sub_24B75C628();
  v37 = (2 * *(v36 + 16)) | 1;
  v116 = v36;
  v117 = v36 + 32;
  v118 = 0;
  v119 = v37;
  v38 = sub_24B6B66F4();
  v39 = v15;
  if (v38 == 11 || v118 != v119 >> 1)
  {
    v45 = sub_24B75C568();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v47 = v108;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    (*(v113 + 8))(v39, v35);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  if (v38 <= 4u)
  {
    if (v38 <= 1u)
    {
      v57 = v113;
      if (v38)
      {
        v120 = 1;
        sub_24B7449F8();
        sub_24B75C598();
        v41 = v107;
        (*(v80 + 8))(v33, v79);
      }

      else
      {
        v120 = 0;
        sub_24B744A4C();
        v58 = v99;
        sub_24B75C598();
        v41 = v107;
        (*(v77 + 8))(v58, v78);
      }

      (*(v57 + 8))(v15, v35);
      swift_unknownObjectRelease();
      v44 = v114;
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    v49 = v113;
    if (v38 != 2)
    {
      if (v38 == 3)
      {
        v120 = 3;
        sub_24B7448F4();
        v50 = v100;
        sub_24B75C598();
        type metadata accessor for WorkoutProgram(0);
        sub_24B6A72EC(&qword_27F036368, type metadata accessor for WorkoutProgram, &protocol conformance descriptor for WorkoutProgram);
        v51 = v75;
        v52 = v84;
        sub_24B75C618();
        (*(v86 + 8))(v50, v52);
        (*(v49 + 8))(v15, v35);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v44 = v114;
        sub_24B745E1C(v51, v114, type metadata accessor for ProgramDetailAction);
      }

      else
      {
        v120 = 4;
        sub_24B7448A0();
        v60 = v101;
        sub_24B75C598();
        (*(v83 + 8))(v60, v85);
        (*(v49 + 8))(v39, v35);
        swift_unknownObjectRelease();
        v44 = v114;
        swift_storeEnumTagMultiPayload();
      }

      v67 = v115;
      v41 = v107;
      goto LABEL_33;
    }

    v120 = 2;
    sub_24B7449A4();
    sub_24B75C598();
    v41 = v107;
    sub_24B70C424();
    v63 = v82;
    sub_24B75C618();
    (*(v81 + 8))(v32, v63);
    (*(v49 + 8))(v15, v35);
    swift_unknownObjectRelease();
    v66 = v73;
    *v73 = v120;
    goto LABEL_30;
  }

  v40 = v15;
  v41 = v107;
  if (v38 <= 7u)
  {
    v42 = v113;
    if (v38 == 5)
    {
      v120 = 5;
      sub_24B74484C();
      v59 = v102;
      sub_24B75C598();
      (*(v87 + 8))(v59, v88);
      (*(v42 + 8))(v40, v35);
      swift_unknownObjectRelease();
      v44 = v114;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (v38 == 6)
      {
        v120 = 6;
        sub_24B7447F8();
        v43 = v103;
        sub_24B75C598();
        (*(v89 + 8))(v43, v90);
      }

      else
      {
        v120 = 7;
        sub_24B7447A4();
        v61 = v104;
        sub_24B75C598();
        (*(v91 + 8))(v61, v92);
      }

      (*(v42 + 8))(v40, v35);
      swift_unknownObjectRelease();
      v44 = v114;
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_32;
  }

  if (v38 != 8)
  {
    if (v38 == 9)
    {
      v120 = 9;
      sub_24B7446FC();
      v53 = v106;
      sub_24B75C598();
      v54 = v96;
      v55 = sub_24B75C5E8();
      v56 = v113;
      v68 = v55;
      v70 = v69;
      (*(v95 + 8))(v53, v54);
      (*(v56 + 8))(v40, v35);
      swift_unknownObjectRelease();
      v71 = v74;
      *v74 = v68;
      v71[1] = v70;
      swift_storeEnumTagMultiPayload();
      v72 = v71;
LABEL_31:
      v44 = v114;
      sub_24B745E1C(v72, v114, type metadata accessor for ProgramDetailAction);
      goto LABEL_32;
    }

    v120 = 10;
    sub_24B7446A8();
    v62 = v105;
    sub_24B75C598();
    sub_24B75B108();
    sub_24B6A72EC(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v64 = v76;
    v65 = v97;
    sub_24B75C618();
    (*(v98 + 8))(v62, v65);
    v66 = v64;
    (*(v113 + 8))(v15, v35);
    swift_unknownObjectRelease();
LABEL_30:
    swift_storeEnumTagMultiPayload();
    v72 = v66;
    goto LABEL_31;
  }

  v120 = 8;
  sub_24B744750();
  sub_24B75C598();
  (*(v93 + 8))(v34, v94);
  (*(v113 + 8))(v15, v35);
  swift_unknownObjectRelease();
  v44 = v114;
  swift_storeEnumTagMultiPayload();
LABEL_32:
  v67 = v115;
LABEL_33:
  sub_24B745E1C(v44, v41, type metadata accessor for ProgramDetailAction);
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_24B745E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24B745EB4(uint64_t a1)
{
  type metadata accessor for WorkoutProgram(319);
  if (v1 <= 0x3F)
  {
    sub_24B745F48();
    if (v2 <= 0x3F)
    {
      sub_24B745F78();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B745F48()
{
  result = qword_27F036758;
  if (!qword_27F036758)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F036758);
  }

  return result;
}

void sub_24B745F78()
{
  if (!qword_27F036760)
  {
    v0 = sub_24B75B108();
    if (!v1)
    {
      atomic_store(v0, &qword_27F036760);
    }
  }
}

uint64_t getEnumTagSinglePayload for ProgramDetailAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgramDetailAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B7461C4()
{
  result = qword_27F036768;
  if (!qword_27F036768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036768);
  }

  return result;
}

unint64_t sub_24B74621C()
{
  result = qword_27F036770;
  if (!qword_27F036770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036770);
  }

  return result;
}

unint64_t sub_24B746274()
{
  result = qword_27F036778;
  if (!qword_27F036778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036778);
  }

  return result;
}

unint64_t sub_24B7462CC()
{
  result = qword_27F036780;
  if (!qword_27F036780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036780);
  }

  return result;
}

unint64_t sub_24B746324()
{
  result = qword_27F036788;
  if (!qword_27F036788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036788);
  }

  return result;
}

unint64_t sub_24B74637C()
{
  result = qword_27F036790;
  if (!qword_27F036790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036790);
  }

  return result;
}

unint64_t sub_24B7463D4()
{
  result = qword_27F036798;
  if (!qword_27F036798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036798);
  }

  return result;
}

unint64_t sub_24B74642C()
{
  result = qword_27F0367A0;
  if (!qword_27F0367A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367A0);
  }

  return result;
}

unint64_t sub_24B746484()
{
  result = qword_27F0367A8;
  if (!qword_27F0367A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367A8);
  }

  return result;
}

unint64_t sub_24B7464DC()
{
  result = qword_27F0367B0;
  if (!qword_27F0367B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367B0);
  }

  return result;
}

unint64_t sub_24B746534()
{
  result = qword_27F0367B8;
  if (!qword_27F0367B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367B8);
  }

  return result;
}

unint64_t sub_24B74658C()
{
  result = qword_27F0367C0;
  if (!qword_27F0367C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367C0);
  }

  return result;
}

unint64_t sub_24B7465E4()
{
  result = qword_27F0367C8;
  if (!qword_27F0367C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367C8);
  }

  return result;
}

unint64_t sub_24B74663C()
{
  result = qword_27F0367D0;
  if (!qword_27F0367D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367D0);
  }

  return result;
}

unint64_t sub_24B746694()
{
  result = qword_27F0367D8;
  if (!qword_27F0367D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367D8);
  }

  return result;
}

unint64_t sub_24B7466EC()
{
  result = qword_27F0367E0;
  if (!qword_27F0367E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367E0);
  }

  return result;
}

unint64_t sub_24B746744()
{
  result = qword_27F0367E8;
  if (!qword_27F0367E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367E8);
  }

  return result;
}

unint64_t sub_24B74679C()
{
  result = qword_27F0367F0;
  if (!qword_27F0367F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367F0);
  }

  return result;
}

unint64_t sub_24B7467F4()
{
  result = qword_27F0367F8;
  if (!qword_27F0367F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367F8);
  }

  return result;
}

unint64_t sub_24B74684C()
{
  result = qword_27F036800;
  if (!qword_27F036800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036800);
  }

  return result;
}

unint64_t sub_24B7468A4()
{
  result = qword_27F036808;
  if (!qword_27F036808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036808);
  }

  return result;
}

unint64_t sub_24B7468FC()
{
  result = qword_27F036810;
  if (!qword_27F036810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036810);
  }

  return result;
}

unint64_t sub_24B746954()
{
  result = qword_27F036818;
  if (!qword_27F036818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036818);
  }

  return result;
}

unint64_t sub_24B7469AC()
{
  result = qword_27F036820;
  if (!qword_27F036820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036820);
  }

  return result;
}

unint64_t sub_24B746A04()
{
  result = qword_27F036828;
  if (!qword_27F036828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036828);
  }

  return result;
}

unint64_t sub_24B746A5C()
{
  result = qword_27F036830;
  if (!qword_27F036830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036830);
  }

  return result;
}

unint64_t sub_24B746AB4()
{
  result = qword_27F036838;
  if (!qword_27F036838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036838);
  }

  return result;
}

unint64_t sub_24B746B0C()
{
  result = qword_27F036840;
  if (!qword_27F036840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036840);
  }

  return result;
}

unint64_t sub_24B746B64()
{
  result = qword_27F036848;
  if (!qword_27F036848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036848);
  }

  return result;
}

uint64_t sub_24B746BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001DLL && 0x800000024B76C250 == a2;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B76C270 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B76C290 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B76C2B0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B76C2D0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024B76C2F0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C69466863746177 && a2 == 0xEF6465707061546DLL || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7070615465726F6DLL && a2 == 0xEA00000000006465 || (sub_24B75C6B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B76C320 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x707061546B6E696CLL && a2 == 0xEA00000000006465)
  {

    return 10;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_24B746F68(uint64_t a1)
{
  v2 = sub_24B748264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B746FA4(uint64_t a1)
{
  v2 = sub_24B748264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B746FE0(uint64_t a1)
{
  v2 = sub_24B748210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74701C(uint64_t a1)
{
  v2 = sub_24B748210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747058(uint64_t a1)
{
  v2 = sub_24B7481BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747094(uint64_t a1)
{
  v2 = sub_24B7481BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7470D0(uint64_t a1)
{
  v2 = sub_24B748168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74710C(uint64_t a1)
{
  v2 = sub_24B748168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747148(uint64_t a1)
{
  v2 = sub_24B748114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747184(uint64_t a1)
{
  v2 = sub_24B748114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7471C0(uint64_t a1)
{
  v2 = sub_24B7480C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7471FC(uint64_t a1)
{
  v2 = sub_24B7480C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747238(uint64_t a1)
{
  v2 = sub_24B7482B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747274(uint64_t a1)
{
  v2 = sub_24B7482B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7472B0(uint64_t a1)
{
  v2 = sub_24B74830C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7472EC(uint64_t a1)
{
  v2 = sub_24B74830C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747328(uint64_t a1)
{
  v2 = sub_24B748360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747364(uint64_t a1)
{
  v2 = sub_24B748360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7473A0(uint64_t a1)
{
  v2 = sub_24B7484B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7473DC(uint64_t a1)
{
  v2 = sub_24B7484B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747418(uint64_t a1)
{
  v2 = sub_24B7483B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747454(uint64_t a1)
{
  v2 = sub_24B7483B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747490(uint64_t a1)
{
  v2 = sub_24B748408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7474CC(uint64_t a1)
{
  v2 = sub_24B748408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747508(uint64_t a1)
{
  v2 = sub_24B74845C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747544(uint64_t a1)
{
  v2 = sub_24B74845C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailDynamicTypeSize.encode(to:)(void *a1, int a2)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036850, &qword_24B768C80);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036858, &qword_24B768C88);
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036860, &qword_24B768C90);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036868, &qword_24B768C98);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036870, &qword_24B768CA0);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v58 = &v41 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036878, &qword_24B768CA8);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v41 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036880, &qword_24B768CB0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v41 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036888, &qword_24B768CB8);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v41 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036890, &qword_24B768CC0);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036898, &qword_24B768CC8);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0368A0, &qword_24B768CD0);
  v42 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0368A8, &qword_24B768CD8);
  v41 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0368B0, &qword_24B768CE0);
  v24 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v26 = &v41 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7480C0();
  v74 = v26;
  sub_24B75C738();
  v27 = (v24 + 8);
  if (v73 > 5u)
  {
    if (v73 > 8u)
    {
      if (v73 == 9)
      {
        v85 = 9;
        sub_24B7481BC();
        v30 = v64;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v65;
        v31 = v66;
      }

      else if (v73 == 10)
      {
        v86 = 10;
        sub_24B748168();
        v30 = v67;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v68;
        v31 = v69;
      }

      else
      {
        v87 = 11;
        sub_24B748114();
        v30 = v70;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v71;
        v31 = v72;
      }
    }

    else
    {
      if (v73 == 6)
      {
        v82 = 6;
        sub_24B7482B8();
        v37 = v55;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        (*(v56 + 8))(v37, v57);
        return (*v27)(v29, v28);
      }

      if (v73 == 7)
      {
        v83 = 7;
        sub_24B748264();
        v30 = v58;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v59;
        v31 = v60;
      }

      else
      {
        v84 = 8;
        sub_24B748210();
        v30 = v61;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v62;
        v31 = v63;
      }
    }

    (*(v32 + 8))(v30, v31);
    return (*v27)(v29, v28);
  }

  if (v73 > 2u)
  {
    if (v73 == 3)
    {
      v79 = 3;
      sub_24B7483B4();
      v38 = v46;
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v47 + 8))(v38, v48);
    }

    else if (v73 == 4)
    {
      v80 = 4;
      sub_24B748360();
      v33 = v49;
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v50 + 8))(v33, v51);
    }

    else
    {
      v81 = 5;
      sub_24B74830C();
      v40 = v52;
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v53 + 8))(v40, v54);
    }
  }

  else
  {
    if (!v73)
    {
      v76 = 0;
      sub_24B7484B0();
      v34 = v74;
      v35 = v75;
      sub_24B75C638();
      (*(v41 + 8))(v23, v21);
      return (*v27)(v34, v35);
    }

    if (v73 == 1)
    {
      v77 = 1;
      sub_24B74845C();
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v42 + 8))(v20, v18);
    }

    else
    {
      v78 = 2;
      sub_24B748408();
      v39 = v43;
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v44 + 8))(v39, v45);
    }
  }

  return (*v27)(v29, v28);
}

unint64_t sub_24B7480C0()
{
  result = qword_27F0368B8;
  if (!qword_27F0368B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368B8);
  }

  return result;
}

unint64_t sub_24B748114()
{
  result = qword_27F0368C0;
  if (!qword_27F0368C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368C0);
  }

  return result;
}

unint64_t sub_24B748168()
{
  result = qword_27F0368C8;
  if (!qword_27F0368C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368C8);
  }

  return result;
}

unint64_t sub_24B7481BC()
{
  result = qword_27F0368D0;
  if (!qword_27F0368D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368D0);
  }

  return result;
}

unint64_t sub_24B748210()
{
  result = qword_27F0368D8;
  if (!qword_27F0368D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368D8);
  }

  return result;
}

unint64_t sub_24B748264()
{
  result = qword_27F0368E0;
  if (!qword_27F0368E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368E0);
  }

  return result;
}

unint64_t sub_24B7482B8()
{
  result = qword_27F0368E8;
  if (!qword_27F0368E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368E8);
  }

  return result;
}

unint64_t sub_24B74830C()
{
  result = qword_27F0368F0;
  if (!qword_27F0368F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368F0);
  }

  return result;
}

unint64_t sub_24B748360()
{
  result = qword_27F0368F8;
  if (!qword_27F0368F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368F8);
  }

  return result;
}

unint64_t sub_24B7483B4()
{
  result = qword_27F036900;
  if (!qword_27F036900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036900);
  }

  return result;
}

unint64_t sub_24B748408()
{
  result = qword_27F036908;
  if (!qword_27F036908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036908);
  }

  return result;
}

unint64_t sub_24B74845C()
{
  result = qword_27F036910;
  if (!qword_27F036910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036910);
  }

  return result;
}

unint64_t sub_24B7484B0()
{
  result = qword_27F036918;
  if (!qword_27F036918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036918);
  }

  return result;
}

uint64_t sub_24B74851C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B7485D4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t WorkoutDetailDynamicTypeSize.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t sub_24B7485D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A00, &qword_24B769808);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x28223BE20](v2);
  v86 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A08, &qword_24B769810);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v91 = &v55 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A10, &qword_24B769818);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v90 = &v55 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A18, &qword_24B769820);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v85 = &v55 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A20, &qword_24B769828);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v84 = &v55 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A28, &qword_24B769830);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v83 = &v55 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A30, &qword_24B769838);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v89 = &v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A38, &qword_24B769840);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v88 = &v55 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A40, &qword_24B769848);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v87 = &v55 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A48, &qword_24B769850);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v82 = &v55 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A50, &qword_24B769858);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A58, &qword_24B769860);
  v59 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A60, &qword_24B769868);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v23 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B7480C0();
  v24 = v92;
  sub_24B75C728();
  if (v24)
  {
    goto LABEL_12;
  }

  v56 = v18;
  v55 = v16;
  v57 = v15;
  v25 = v87;
  v26 = v88;
  v27 = v89;
  v28 = v90;
  v58 = 0;
  v29 = v91;
  v92 = v20;
  v30 = sub_24B75C628();
  v31 = (2 * *(v30 + 16)) | 1;
  v94 = v30;
  v95 = v30 + 32;
  v96 = 0;
  v97 = v31;
  v32 = sub_24B6B9E0C();
  v33 = v22;
  if (v32 != 12 && v96 == v97 >> 1)
  {
    v20 = v32;
    if (v32 <= 5u)
    {
      if (v32 <= 2u)
      {
        v34 = v58;
        if (v32)
        {
          if (v32 == 1)
          {
            v98 = 1;
            sub_24B74845C();
            v35 = v57;
            sub_24B75C598();
            if (!v34)
            {
              (*(v60 + 8))(v35, v61);
LABEL_45:
              v41 = v92;
              goto LABEL_47;
            }
          }

          else
          {
            v98 = 2;
            sub_24B748408();
            v51 = v82;
            sub_24B75C598();
            if (!v34)
            {
              (*(v62 + 8))(v51, v63);
              goto LABEL_45;
            }
          }
        }

        else
        {
          v98 = 0;
          sub_24B7484B0();
          v47 = v56;
          sub_24B75C598();
          if (!v34)
          {
            (*(v59 + 8))(v47, v55);
            goto LABEL_45;
          }
        }

        v41 = v92;
        goto LABEL_41;
      }

      v41 = v92;
      v44 = v58;
      if (v32 == 3)
      {
        v98 = 3;
        sub_24B7483B4();
        sub_24B75C598();
        if (!v44)
        {
          (*(v64 + 8))(v25, v65);
          goto LABEL_47;
        }
      }

      else if (v32 == 4)
      {
        v98 = 4;
        sub_24B748360();
        sub_24B75C598();
        if (!v44)
        {
          (*(v67 + 8))(v26, v66);
          goto LABEL_47;
        }
      }

      else
      {
        v98 = 5;
        sub_24B74830C();
        sub_24B75C598();
        if (!v44)
        {
          (*(v69 + 8))(v27, v68);
          goto LABEL_47;
        }
      }

      goto LABEL_41;
    }

    if (v32 <= 8u)
    {
      v41 = v92;
      if (v32 == 6)
      {
        v98 = 6;
        sub_24B7482B8();
        v48 = v83;
        v49 = v58;
        sub_24B75C598();
        if (!v49)
        {
          (*(v70 + 8))(v48, v71);
          goto LABEL_47;
        }
      }

      else
      {
        v42 = v58;
        if (v32 == 7)
        {
          v98 = 7;
          sub_24B748264();
          v43 = v84;
          sub_24B75C598();
          if (!v42)
          {
            (*(v72 + 8))(v43, v73);
LABEL_47:
            (*(v41 + 8))(v33, v19);
LABEL_50:
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v93);
            return v20;
          }
        }

        else
        {
          v98 = 8;
          sub_24B748210();
          v52 = v85;
          sub_24B75C598();
          if (!v42)
          {
            (*(v74 + 8))(v52, v75);
            goto LABEL_47;
          }
        }
      }

LABEL_41:
      (*(v41 + 8))(v33, v19);
      goto LABEL_11;
    }

    v45 = v92;
    if (v32 == 9)
    {
      v98 = 9;
      sub_24B7481BC();
      v50 = v58;
      sub_24B75C598();
      if (!v50)
      {
        (*(v76 + 8))(v28, v77);
        goto LABEL_49;
      }
    }

    else if (v32 == 10)
    {
      v98 = 10;
      sub_24B748168();
      v46 = v58;
      sub_24B75C598();
      if (!v46)
      {
        (*(v78 + 8))(v29, v79);
LABEL_49:
        (*(v45 + 8))(v33, v19);
        goto LABEL_50;
      }
    }

    else
    {
      v98 = 11;
      sub_24B748114();
      v53 = v86;
      v54 = v58;
      sub_24B75C598();
      if (!v54)
      {
        (*(v80 + 8))(v53, v81);
        goto LABEL_49;
      }
    }

    (*(v45 + 8))(v33, v19);
    goto LABEL_11;
  }

  v36 = v19;
  v37 = sub_24B75C568();
  swift_allocError();
  v39 = v38;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
  *v39 = &type metadata for WorkoutDetailDynamicTypeSize;
  sub_24B75C5A8();
  sub_24B75C558();
  (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
  swift_willThrow();
  (*(v92 + 8))(v33, v36);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v93);
  return v20;
}

unint64_t sub_24B7493B4()
{
  result = qword_27F036920;
  if (!qword_27F036920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036920);
  }

  return result;
}

unint64_t sub_24B7494EC()
{
  result = qword_27F036928;
  if (!qword_27F036928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036928);
  }

  return result;
}

unint64_t sub_24B749544()
{
  result = qword_27F036930;
  if (!qword_27F036930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036930);
  }

  return result;
}

unint64_t sub_24B74959C()
{
  result = qword_27F036938;
  if (!qword_27F036938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036938);
  }

  return result;
}

unint64_t sub_24B7495F4()
{
  result = qword_27F036940;
  if (!qword_27F036940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036940);
  }

  return result;
}

unint64_t sub_24B74964C()
{
  result = qword_27F036948;
  if (!qword_27F036948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036948);
  }

  return result;
}

unint64_t sub_24B7496A4()
{
  result = qword_27F036950;
  if (!qword_27F036950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036950);
  }

  return result;
}

unint64_t sub_24B7496FC()
{
  result = qword_27F036958;
  if (!qword_27F036958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036958);
  }

  return result;
}

unint64_t sub_24B749754()
{
  result = qword_27F036960;
  if (!qword_27F036960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036960);
  }

  return result;
}

unint64_t sub_24B7497AC()
{
  result = qword_27F036968;
  if (!qword_27F036968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036968);
  }

  return result;
}

unint64_t sub_24B749804()
{
  result = qword_27F036970;
  if (!qword_27F036970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036970);
  }

  return result;
}

unint64_t sub_24B74985C()
{
  result = qword_27F036978;
  if (!qword_27F036978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036978);
  }

  return result;
}

unint64_t sub_24B7498B4()
{
  result = qword_27F036980;
  if (!qword_27F036980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036980);
  }

  return result;
}

unint64_t sub_24B74990C()
{
  result = qword_27F036988;
  if (!qword_27F036988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036988);
  }

  return result;
}

unint64_t sub_24B749964()
{
  result = qword_27F036990;
  if (!qword_27F036990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036990);
  }

  return result;
}

unint64_t sub_24B7499BC()
{
  result = qword_27F036998;
  if (!qword_27F036998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036998);
  }

  return result;
}

unint64_t sub_24B749A14()
{
  result = qword_27F0369A0;
  if (!qword_27F0369A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369A0);
  }

  return result;
}

unint64_t sub_24B749A6C()
{
  result = qword_27F0369A8;
  if (!qword_27F0369A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369A8);
  }

  return result;
}

unint64_t sub_24B749AC4()
{
  result = qword_27F0369B0;
  if (!qword_27F0369B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369B0);
  }

  return result;
}

unint64_t sub_24B749B1C()
{
  result = qword_27F0369B8;
  if (!qword_27F0369B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369B8);
  }

  return result;
}

unint64_t sub_24B749B74()
{
  result = qword_27F0369C0;
  if (!qword_27F0369C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369C0);
  }

  return result;
}

unint64_t sub_24B749BCC()
{
  result = qword_27F0369C8;
  if (!qword_27F0369C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369C8);
  }

  return result;
}

unint64_t sub_24B749C24()
{
  result = qword_27F0369D0;
  if (!qword_27F0369D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369D0);
  }

  return result;
}

unint64_t sub_24B749C7C()
{
  result = qword_27F0369D8;
  if (!qword_27F0369D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369D8);
  }

  return result;
}

unint64_t sub_24B749CD4()
{
  result = qword_27F0369E0;
  if (!qword_27F0369E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369E0);
  }

  return result;
}

unint64_t sub_24B749D2C()
{
  result = qword_27F0369E8;
  if (!qword_27F0369E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369E8);
  }

  return result;
}

unint64_t sub_24B749D84()
{
  result = qword_27F0369F0;
  if (!qword_27F0369F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369F0);
  }

  return result;
}

unint64_t sub_24B749DDC()
{
  result = qword_27F0369F8;
  if (!qword_27F0369F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369F8);
  }

  return result;
}

uint64_t sub_24B749E4C()
{
  if (*v0)
  {
    return 0x62694C6E49746F6ELL;
  }

  else
  {
    return 0x72617262694C6E69;
  }
}

uint64_t sub_24B749E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72617262694C6E69 && a2 == 0xE900000000000079;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x62694C6E49746F6ELL && a2 == 0xEC00000079726172)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B749F7C(uint64_t a1)
{
  v2 = sub_24B74A394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B749FB8(uint64_t a1)
{
  v2 = sub_24B74A394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B749FF4(uint64_t a1)
{
  v2 = sub_24B74A43C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74A030(uint64_t a1)
{
  v2 = sub_24B74A43C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B74A06C(uint64_t a1)
{
  v2 = sub_24B74A3E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74A0A8(uint64_t a1)
{
  v2 = sub_24B74A3E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BookmarkStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A68, &qword_24B769870);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A70, &qword_24B769878);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A78, &qword_24B769880);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B74A394();
  sub_24B75C738();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_24B74A3E8();
    v14 = v18;
    sub_24B75C638();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_24B74A43C();
    sub_24B75C638();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_24B74A394()
{
  result = qword_27F036A80;
  if (!qword_27F036A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036A80);
  }

  return result;
}

unint64_t sub_24B74A3E8()
{
  result = qword_27F036A88;
  if (!qword_27F036A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036A88);
  }

  return result;
}

unint64_t sub_24B74A43C()
{
  result = qword_27F036A90;
  if (!qword_27F036A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036A90);
  }

  return result;
}

uint64_t BookmarkStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A98, &qword_24B769888);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036AA0, &qword_24B769890);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036AA8, &unk_24B769898);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B74A394();
  v12 = v31;
  sub_24B75C728();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_24B75C628();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_24B6B9E04();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_24B75C568();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
      *v22 = &type metadata for BookmarkStatus;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_24B74A3E8();
        sub_24B75C598();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_24B74A43C();
        sub_24B75C598();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t BookmarkStatus.hashValue.getter()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

unint64_t sub_24B74A9F4()
{
  result = qword_27F036AB0;
  if (!qword_27F036AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AB0);
  }

  return result;
}

unint64_t sub_24B74AA8C()
{
  result = qword_27F036AB8;
  if (!qword_27F036AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AB8);
  }

  return result;
}

unint64_t sub_24B74AAE4()
{
  result = qword_27F036AC0;
  if (!qword_27F036AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AC0);
  }

  return result;
}

unint64_t sub_24B74AB3C()
{
  result = qword_27F036AC8;
  if (!qword_27F036AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AC8);
  }

  return result;
}

unint64_t sub_24B74AB94()
{
  result = qword_27F036AD0;
  if (!qword_27F036AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AD0);
  }

  return result;
}

unint64_t sub_24B74ABEC()
{
  result = qword_27F036AD8;
  if (!qword_27F036AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AD8);
  }

  return result;
}

unint64_t sub_24B74AC44()
{
  result = qword_27F036AE0;
  if (!qword_27F036AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AE0);
  }

  return result;
}

unint64_t sub_24B74AC9C()
{
  result = qword_27F036AE8;
  if (!qword_27F036AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AE8);
  }

  return result;
}

uint64_t EditorialExternalLink.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EditorialExternalLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialExternalLink(0) + 20);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditorialExternalLink.init(name:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for EditorialExternalLink(0) + 20);
  v7 = sub_24B75B108();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_24B74AE20()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_24B74AE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B74AF28(uint64_t a1)
{
  v2 = sub_24B74B158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74AF64(uint64_t a1)
{
  v2 = sub_24B74B158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialExternalLink.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036AF0, &qword_24B769C20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B74B158();
  sub_24B75C738();
  v8[15] = 0;
  sub_24B75C678();
  if (!v1)
  {
    type metadata accessor for EditorialExternalLink(0);
    v8[14] = 1;
    sub_24B75B108();
    sub_24B6A7334(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B75C6A8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B74B158()
{
  result = qword_27F036AF8;
  if (!qword_27F036AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AF8);
  }

  return result;
}

uint64_t EditorialExternalLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24B75B108();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B00, &qword_24B769C28);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for EditorialExternalLink(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B74B158();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24B75C5E8();
  v10[1] = v13;
  v21 = 1;
  sub_24B6A7334(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B75C618();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24B74B4D0(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B74B534(v10);
}

uint64_t sub_24B74B4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialExternalLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B74B534(uint64_t a1)
{
  v2 = type metadata accessor for EditorialExternalLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static EditorialExternalLink.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for EditorialExternalLink(0);

  return sub_24B75B0F8();
}

uint64_t EditorialExternalLink.hash(into:)(uint64_t a1)
{
  sub_24B75C358();
  type metadata accessor for EditorialExternalLink(0);
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B75C2C8();
}

uint64_t EditorialExternalLink.hashValue.getter()
{
  sub_24B75C6D8();
  sub_24B75C358();
  type metadata accessor for EditorialExternalLink(0);
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B74B778()
{
  sub_24B75C6D8();
  sub_24B75C358();
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B74B820(uint64_t a1)
{
  sub_24B75C358();
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B75C2C8();
}

uint64_t sub_24B74B8AC(uint64_t a1)
{
  sub_24B75C6D8();
  sub_24B75C358();
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B74B950(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  return sub_24B75B0F8();
}

unint64_t sub_24B74BA10()
{
  result = qword_27F036B08;
  if (!qword_27F036B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036B08);
  }

  return result;
}

unint64_t sub_24B74BA68()
{
  result = qword_27F036B10;
  if (!qword_27F036B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036B10);
  }

  return result;
}

unint64_t sub_24B74BAC0()
{
  result = qword_27F036B18;
  if (!qword_27F036B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036B18);
  }

  return result;
}

uint64_t sub_24B74BB14(uint64_t a1)
{
  v2 = sub_24B75B108();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProgramDetailFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B7505D8(v1, v8, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = 4;
      }

      else
      {
        v11 = 7;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    return MEMORY[0x24C2489B0](v11);
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x24C2489B0](5);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B20, &qword_24B769E30);
      (*(v3 + 32))(v5, &v8[*(v13 + 48)], v2);
      MEMORY[0x24C2489B0](6);
      sub_24B75C358();
    }

    sub_24B750F7C(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24B75C2C8();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    MEMORY[0x24C2489B0](v10);
    sub_24B75C358();
  }
}

uint64_t sub_24B74BDB8()
{
  sub_24B75C6D8();
  sub_24B74BB14(v1);
  return sub_24B75C718();
}

uint64_t sub_24B74BDFC(uint64_t a1)
{
  sub_24B75C6D8();
  sub_24B74BB14(v2);
  return sub_24B75C718();
}

__n128 ProgramDetailFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v2;
  v3 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v3;
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

void ProgramDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t *a3, char *a4)
{
  v323 = a2;
  v324 = a4;
  v321 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  MEMORY[0x28223BE20](v5 - 8);
  v293 = &v287 - v6;
  v294 = type metadata accessor for WorkoutProgramPreview(0);
  v299 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v290 = v7;
  v291 = &v287 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v296 = &v287 - v9;
  v10 = sub_24B75B108();
  v313 = *(v10 - 8);
  v314 = v10;
  v11 = *(v313 + 64);
  MEMORY[0x28223BE20](v10);
  v306 = &v287 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v317 = (&v287 - v13);
  v292 = type metadata accessor for WorkoutProgram(0);
  v310 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v289 = &v287 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v300 = &v287 - v16;
  MEMORY[0x28223BE20](v17);
  v307 = (&v287 - v18);
  v309 = v19;
  MEMORY[0x28223BE20](v20);
  v316 = &v287 - v21;
  State = type metadata accessor for ProgramDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v305 = &v287 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v308 = &v287 - v25;
  v319 = type metadata accessor for ProgramDetailFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v319);
  v288 = (&v287 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v304 = &v287 - v28;
  MEMORY[0x28223BE20](v29);
  v315 = &v287 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v287 - v32;
  MEMORY[0x28223BE20](v34);
  v297 = &v287 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v287 - v37;
  MEMORY[0x28223BE20](v39);
  v298 = (&v287 - v40);
  MEMORY[0x28223BE20](v41);
  v318 = &v287 - v42;
  MEMORY[0x28223BE20](v43);
  v303 = &v287 - v44;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034460, &qword_24B75F658);
  v322 = *(v320 - 8);
  MEMORY[0x28223BE20](v320);
  v295 = &v287 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v312 = &v287 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v287 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v287 - v52;
  MEMORY[0x28223BE20](v54);
  v301 = &v287 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v287 - v57;
  MEMORY[0x28223BE20](v59);
  v302 = &v287 - v60;
  MEMORY[0x28223BE20](v61);
  v311 = &v287 - v62;
  v63 = type metadata accessor for ProgramDetailAction(0);
  MEMORY[0x28223BE20](v63);
  v65 = &v287 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v4[7];
  v332 = v4[6];
  v333 = v66;
  v67 = v4[9];
  v334 = v4[8];
  v335 = v67;
  v68 = v4[3];
  v328 = v4[2];
  v329 = v68;
  v69 = v4[5];
  v330 = v4[4];
  v331 = v69;
  v70 = v4[1];
  v326 = *v4;
  v327 = v70;
  sub_24B7505D8(v324, v65, type metadata accessor for ProgramDetailAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v97 = v33;
    v324 = v11;
    v98 = v50;
    v99 = v315;
    v100 = v316;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v323[34] = *v65;
        return;
      }

      v324 = type metadata accessor for WorkoutProgram;
      sub_24B74E07C(v65, v316, type metadata accessor for WorkoutProgram);
      v231 = *(type metadata accessor for ProgramDetailState(0) + 24);
      v232 = v323;
      sub_24B75275C(&v323[v231], type metadata accessor for ProgramDetailLoadState);
      sub_24B7505D8(v100, &v232[v231], type metadata accessor for WorkoutProgram);
      v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
      (*(*(v233 - 8) + 56))(&v232[v231], 0, 2, v233);
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v235 = v234[16];
      v317 = v234[20];
      v323 = &v58[v234[24]];
      swift_storeEnumTagMultiPayload();
      sub_24B7505D8(v38, v318, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier, &unk_24B769FDC);
      v236 = v100;
      sub_24B75C508();
      sub_24B75275C(v38, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B75C3F8();
      v237 = *MEMORY[0x277D04400];
      v238 = sub_24B75C208();
      (*(*(v238 - 8) + 104))(&v58[v235], v237, v238);
      v239 = *MEMORY[0x277D043E0];
      v240 = sub_24B75C1F8();
      (*(*(v240 - 8) + 104))(v317 + v58, v239, v240);
      v241 = v307;
      sub_24B7505D8(v100, v307, type metadata accessor for WorkoutProgram);
      v242 = (*(v310 + 80) + 176) & ~*(v310 + 80);
      v243 = swift_allocObject();
      v244 = v333;
      v243[7] = v332;
      v243[8] = v244;
      v245 = v335;
      v243[9] = v334;
      v243[10] = v245;
      v246 = v329;
      v243[3] = v328;
      v243[4] = v246;
      v247 = v331;
      v243[5] = v330;
      v243[6] = v247;
      v248 = v327;
      v243[1] = v326;
      v243[2] = v248;
      sub_24B74E07C(v241, v243 + v242, v324);
      v145 = v322;
      v249 = v323;
      *v323 = &unk_24B769E98;
      *(v249 + 1) = v243;
      v146 = v320;
      (*(v145 + 104))(v58, *MEMORY[0x277D043B0], v320);
      v93 = v321;
      v94 = *v321;
      sub_24B750778(&v326, v325);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_24B6C45F0(0, v94[2] + 1, 1, v94);
      }

      v148 = v94[2];
      v250 = v94[3];
      v149 = v148 + 1;
      if (v148 >= v250 >> 1)
      {
        v94 = sub_24B6C45F0((v250 > 1), v148 + 1, 1, v94);
      }

      sub_24B75275C(v236, type metadata accessor for WorkoutProgram);
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          v323[*(type metadata accessor for ProgramDetailState(0) + 36)] = 0;
          return;
        }

        v102 = v313;
        v101 = v314;
        v103 = *(v313 + 32);
        v312 = (v313 + 32);
        v315 = v103;
        v104 = v317;
        (v103)(v317, v65, v314);
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
        v316 = v105[12];
        v311 = v105[16];
        v323 = v105[20];
        v106 = v53;
        v107 = &v53[v105[24]];
        v108 = *(v102 + 16);
        v108(v97, v104, v101);
        swift_storeEnumTagMultiPayload();
        sub_24B7505D8(v97, v318, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
        sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier, &unk_24B769FDC);
        sub_24B75C508();
        sub_24B75275C(v97, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
        v109 = *MEMORY[0x277D043F0];
        v110 = sub_24B75C208();
        (*(*(v110 - 8) + 104))(&v311[v106], v109, v110);
        v111 = v306;
        v108(v306, v104, v101);
        v112 = (*(v102 + 80) + 176) & ~*(v102 + 80);
        v113 = swift_allocObject();
        v114 = v333;
        v113[7] = v332;
        v113[8] = v114;
        v115 = v335;
        v113[9] = v334;
        v113[10] = v115;
        v116 = v329;
        v113[3] = v328;
        v113[4] = v116;
        v117 = v331;
        v113[5] = v330;
        v113[6] = v117;
        v118 = v327;
        v113[1] = v326;
        v113[2] = v118;
        v119 = v106;
        (v315)(v113 + v112, v111, v101);
        *v107 = &unk_24B769E78;
        *(v107 + 1) = v113;
        sub_24B750778(&v326, v325);
        sub_24B75C3F8();
        v120 = *MEMORY[0x277D043E8];
        v121 = sub_24B75C1F8();
        (*(*(v121 - 8) + 104))(&v323[v106], v120, v121);
        v122 = v322;
        v123 = v320;
        (*(v322 + 104))(v119, *MEMORY[0x277D043B0], v320);
        v93 = v321;
        v94 = *v321;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_24B6C45F0(0, v94[2] + 1, 1, v94);
        }

        v125 = v94[2];
        v124 = v94[3];
        if (v125 >= v124 >> 1)
        {
          v94 = sub_24B6C45F0((v124 > 1), v125 + 1, 1, v94);
        }

        (*(v313 + 8))(v104, v314);
        v94[2] = v125 + 1;
        (*(v122 + 32))(v94 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v125, v119, v123);
        goto LABEL_49;
      }

      v130 = *v65;
      v129 = *(v65 + 1);
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v132 = v131[16];
      v133 = v131[20];
      v323 = v131[12];
      v324 = v133;
      v58 = v50;
      v134 = &v50[v131[24]];
      *v99 = v130;
      v99[1] = v129;
      swift_storeEnumTagMultiPayload();
      sub_24B7505D8(v99, v318, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier, &unk_24B769FDC);

      sub_24B75C508();
      sub_24B75275C(v99, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v135 = *MEMORY[0x277D043F0];
      v136 = sub_24B75C208();
      (*(*(v136 - 8) + 104))(&v98[v132], v135, v136);
      v137 = swift_allocObject();
      v138 = v333;
      *(v137 + 112) = v332;
      *(v137 + 128) = v138;
      v139 = v335;
      *(v137 + 144) = v334;
      *(v137 + 160) = v139;
      v140 = v329;
      *(v137 + 48) = v328;
      *(v137 + 64) = v140;
      v141 = v331;
      *(v137 + 80) = v330;
      *(v137 + 96) = v141;
      v142 = v327;
      *(v137 + 16) = v326;
      *(v137 + 32) = v142;
      *(v137 + 176) = v130;
      *(v137 + 184) = v129;
      *v134 = &unk_24B769E68;
      *(v134 + 1) = v137;
      sub_24B750778(&v326, v325);
      sub_24B75C3F8();
      v143 = *MEMORY[0x277D043E8];
      v144 = sub_24B75C1F8();
      (*(*(v144 - 8) + 104))(&v324[v98], v143, v144);
      v145 = v322;
      v146 = v320;
      (*(v322 + 104))(v98, *MEMORY[0x277D043B0], v320);
      v93 = v321;
      v94 = *v321;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_24B6C45F0(0, v94[2] + 1, 1, v94);
      }

      v148 = v94[2];
      v147 = v94[3];
      v149 = v148 + 1;
      if (v148 >= v147 >> 1)
      {
        v94 = sub_24B6C45F0((v147 > 1), v148 + 1, 1, v94);
      }
    }

    v94[2] = v149;
    (*(v145 + 32))(v94 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v148, v58, v146);
LABEL_49:
    *v93 = v94;
    return;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v207 = type metadata accessor for ProgramDetailState(0);
      v208 = &v323[*(v207 + 32)];
      v210 = *v208;
      v209 = *(v208 + 1);
      v323[*(v207 + 36)] = 0;
      v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v212 = v211[16];
      v213 = v211[20];
      v323 = v211[12];
      v324 = v213;
      v214 = v312;
      v215 = &v312[v211[24]];
      v216 = v304;
      swift_storeEnumTagMultiPayload();
      sub_24B7505D8(v216, v318, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier, &unk_24B769FDC);

      sub_24B75C508();
      sub_24B75275C(v216, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v217 = *MEMORY[0x277D043F0];
      v218 = sub_24B75C208();
      (*(*(v218 - 8) + 104))(&v214[v212], v217, v218);
      v219 = swift_allocObject();
      v220 = v333;
      *(v219 + 112) = v332;
      *(v219 + 128) = v220;
      v221 = v335;
      *(v219 + 144) = v334;
      *(v219 + 160) = v221;
      v222 = v329;
      *(v219 + 48) = v328;
      *(v219 + 64) = v222;
      v223 = v331;
      *(v219 + 80) = v330;
      *(v219 + 96) = v223;
      v224 = v327;
      *(v219 + 16) = v326;
      *(v219 + 32) = v224;
      *(v219 + 176) = v210;
      *(v219 + 184) = v209;
      *v215 = &unk_24B769E58;
      *(v215 + 1) = v219;
      sub_24B750778(&v326, v325);
      sub_24B75C3F8();
      v225 = *MEMORY[0x277D043E8];
      v226 = sub_24B75C1F8();
      (*(*(v226 - 8) + 104))(&v324[v214], v225, v226);
      v227 = v322;
      v228 = v320;
      (*(v322 + 104))(v214, *MEMORY[0x277D043B0], v320);
      v93 = v321;
      v94 = *v321;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_24B6C45F0(0, v94[2] + 1, 1, v94);
      }

      v230 = v94[2];
      v229 = v94[3];
      if (v230 >= v229 >> 1)
      {
        v94 = sub_24B6C45F0((v229 > 1), v230 + 1, 1, v94);
      }

      v94[2] = v230 + 1;
      (*(v227 + 32))(v94 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v230, v312, v228);
    }

    else
    {
      if (EnumCaseMultiPayload != 9)
      {
        return;
      }

      v126 = type metadata accessor for ProgramDetailState(0);
      v127 = v305;
      sub_24B7505D8(&v323[*(v126 + 24)], v305, type metadata accessor for ProgramDetailLoadState);
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
      if ((*(*(v128 - 8) + 48))(v127, 2, v128))
      {
        sub_24B75275C(v127, type metadata accessor for ProgramDetailLoadState);
        return;
      }

      v251 = v300;
      sub_24B74E07C(v127, v300, type metadata accessor for WorkoutProgram);
      v253 = v292;
      v252 = v293;
      sub_24B74E00C(v251 + *(v292 + 32), v293);
      v254 = v294;
      if ((*(v299 + 48))(v252, 1, v294) == 1)
      {
        sub_24B75275C(v251, type metadata accessor for WorkoutProgram);
        sub_24B6B9CD4(v252, &qword_27F035018, &qword_24B7670C0);
        return;
      }

      v317 = type metadata accessor for WorkoutProgramPreview;
      v255 = v296;
      sub_24B74E07C(v252, v296, type metadata accessor for WorkoutProgramPreview);
      v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v257 = v256[16];
      v258 = v256[20];
      v323 = v256[12];
      v324 = v258;
      v259 = v295;
      v260 = &v295[v256[24]];
      v261 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B20, &qword_24B769E30) + 48);
      v262 = (v251 + *(v253 + 24));
      v263 = v262[1];
      v264 = v288;
      *v288 = *v262;
      *(v264 + 8) = v263;
      (*(v313 + 16))(v264 + v261, v255 + *(v254 + 20), v314);
      swift_storeEnumTagMultiPayload();
      sub_24B7505D8(v264, v318, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier, &unk_24B769FDC);

      v265 = v300;
      sub_24B75C508();
      v266 = v264;
      v267 = v265;
      sub_24B75275C(v266, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v268 = *MEMORY[0x277D043F0];
      v269 = sub_24B75C208();
      (*(*(v269 - 8) + 104))(&v259[v257], v268, v269);
      v270 = v289;
      sub_24B7505D8(v267, v289, type metadata accessor for WorkoutProgram);
      v271 = v291;
      sub_24B7505D8(v255, v291, type metadata accessor for WorkoutProgramPreview);
      v272 = (*(v310 + 80) + 176) & ~*(v310 + 80);
      v273 = (v309 + *(v299 + 80) + v272) & ~*(v299 + 80);
      v274 = swift_allocObject();
      v275 = v333;
      v274[7] = v332;
      v274[8] = v275;
      v276 = v335;
      v274[9] = v334;
      v274[10] = v276;
      v277 = v329;
      v274[3] = v328;
      v274[4] = v277;
      v278 = v331;
      v274[5] = v330;
      v274[6] = v278;
      v279 = v327;
      v274[1] = v326;
      v274[2] = v279;
      sub_24B74E07C(v270, v274 + v272, type metadata accessor for WorkoutProgram);
      sub_24B74E07C(v271, v274 + v273, v317);
      *v260 = &unk_24B769E48;
      *(v260 + 1) = v274;
      sub_24B750778(&v326, v325);
      sub_24B75C3F8();
      v280 = *MEMORY[0x277D043E8];
      v281 = sub_24B75C1F8();
      (*(*(v281 - 8) + 104))(&v324[v259], v280, v281);
      v282 = v322;
      v283 = v259;
      v284 = v320;
      (*(v322 + 104))(v283, *MEMORY[0x277D043B0], v320);
      v93 = v321;
      v94 = *v321;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_24B6C45F0(0, v94[2] + 1, 1, v94);
      }

      v286 = v94[2];
      v285 = v94[3];
      if (v286 >= v285 >> 1)
      {
        v94 = sub_24B6C45F0((v285 > 1), v286 + 1, 1, v94);
      }

      sub_24B75275C(v296, type metadata accessor for WorkoutProgramPreview);
      sub_24B75275C(v267, type metadata accessor for WorkoutProgram);
      v94[2] = v286 + 1;
      (*(v282 + 32))(v94 + ((*(v282 + 80) + 32) & ~*(v282 + 80)) + *(v282 + 72) * v286, v295, v284);
    }

    goto LABEL_49;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v323[*(type metadata accessor for ProgramDetailState(0) + 40)] = 1;
      return;
    }

    v72 = type metadata accessor for ProgramDetailState(0);
    if ((v323[34] & 1) == 0)
    {
      v323[*(v72 + 36)] = 1;
      return;
    }

    v73 = &v323[*(v72 + 32)];
    v75 = *v73;
    v74 = *(v73 + 1);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
    v77 = v76[20];
    v323 = v76[16];
    v324 = v77;
    v78 = v301;
    v79 = &v301[v76[24]];
    v80 = v297;
    swift_storeEnumTagMultiPayload();
    sub_24B7505D8(v80, v318, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
    sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier, &unk_24B769FDC);

    sub_24B75C508();
    sub_24B75275C(v80, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
    v81 = swift_allocObject();
    v82 = v333;
    *(v81 + 112) = v332;
    *(v81 + 128) = v82;
    v83 = v335;
    *(v81 + 144) = v334;
    *(v81 + 160) = v83;
    v84 = v329;
    *(v81 + 48) = v328;
    *(v81 + 64) = v84;
    v85 = v331;
    *(v81 + 80) = v330;
    *(v81 + 96) = v85;
    v86 = v327;
    *(v81 + 16) = v326;
    *(v81 + 32) = v86;
    *(v81 + 176) = v75;
    *(v81 + 184) = v74;
    *v79 = &unk_24B769E88;
    *(v79 + 1) = v81;
    sub_24B750778(&v326, v325);
    sub_24B75C3F8();
    v87 = *MEMORY[0x277D043F8];
    v88 = sub_24B75C208();
    (*(*(v88 - 8) + 104))(&v323[v78], v87, v88);
    v89 = *MEMORY[0x277D043E8];
    v90 = sub_24B75C1F8();
    (*(*(v90 - 8) + 104))(&v324[v78], v89, v90);
    v91 = v322;
    v92 = v320;
    (*(v322 + 104))(v78, *MEMORY[0x277D043B0], v320);
    v93 = v321;
    v94 = *v321;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = sub_24B6C45F0(0, v94[2] + 1, 1, v94);
    }

    v96 = v94[2];
    v95 = v94[3];
    if (v96 >= v95 >> 1)
    {
      v94 = sub_24B6C45F0((v95 > 1), v96 + 1, 1, v94);
    }

    v94[2] = v96 + 1;
    (*(v91 + 32))(v94 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v96, v301, v92);
    goto LABEL_49;
  }

  v324 = type metadata accessor for ProgramDetailState(0);
  v150 = &v323[*(v324 + 8)];
  v152 = *v150;
  v151 = *(v150 + 1);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
  v154 = v153[16];
  v315 = v153[12];
  v316 = v154;
  v317 = v153[20];
  v155 = v311;
  v156 = &v311[v153[24]];
  v157 = v303;
  swift_storeEnumTagMultiPayload();
  sub_24B7505D8(v157, v318, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  v158 = sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier, &unk_24B769FDC);

  v313 = v158;
  sub_24B75C508();
  sub_24B75275C(v157, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  v159 = swift_allocObject();
  v160 = v333;
  *(v159 + 112) = v332;
  *(v159 + 128) = v160;
  v161 = v335;
  *(v159 + 144) = v334;
  *(v159 + 160) = v161;
  v162 = v329;
  *(v159 + 48) = v328;
  *(v159 + 64) = v162;
  v163 = v331;
  *(v159 + 80) = v330;
  *(v159 + 96) = v163;
  v164 = v327;
  *(v159 + 16) = v326;
  *(v159 + 32) = v164;
  v314 = v152;
  *(v159 + 176) = v152;
  *(v159 + 184) = v151;
  *v156 = &unk_24B769EA8;
  *(v156 + 1) = v159;

  sub_24B750778(&v326, v325);
  sub_24B75C3F8();
  v165 = *MEMORY[0x277D043F8];
  v166 = sub_24B75C208();
  v167 = *(v166 - 8);
  v168 = *(v167 + 104);
  v169 = v167 + 104;
  v168(&v155[v316], v165, v166);
  v170 = *MEMORY[0x277D043E8];
  v171 = sub_24B75C1F8();
  v172 = *(v171 - 8);
  v173 = *(v172 + 104);
  v174 = v317 + v155;
  LODWORD(v317) = v170;
  v316 = v171;
  v306 = (v172 + 104);
  v307 = v173;
  (v173)(v174, v170);
  v175 = *(v322 + 104);
  LODWORD(v305) = *MEMORY[0x277D043B0];
  v304 = v175;
  (v175)(v155);
  v176 = *v321;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  LODWORD(v315) = v165;
  v310 = v168;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v176 = sub_24B6C45F0(0, *(v176 + 16) + 1, 1, v176);
  }

  v179 = *(v176 + 16);
  v178 = *(v176 + 24);
  v312 = v166;
  v309 = v169;
  if (v179 >= v178 >> 1)
  {
    v176 = sub_24B6C45F0((v178 > 1), v179 + 1, 1, v176);
  }

  *(v176 + 16) = v179 + 1;
  v180 = *(v322 + 32);
  v303 = ((*(v322 + 80) + 32) & ~*(v322 + 80));
  v301 = *(v322 + 72);
  v181 = v311;
  v322 += 32;
  v311 = v180;
  (v180)(&v303[v176 + v301 * v179], v181, v320);
  *v321 = v176;
  v182 = v323;
  v183 = *(v324 + 6);
  v184 = v308;
  sub_24B7505D8(&v323[v183], v308, type metadata accessor for ProgramDetailLoadState);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v186 = *(v185 - 8);
  if ((*(v186 + 48))(v184, 2, v185) == 1)
  {
    sub_24B75275C(v184, type metadata accessor for ProgramDetailLoadState);
    sub_24B75275C(&v182[v183], type metadata accessor for ProgramDetailLoadState);
    (*(v186 + 56))(&v182[v183], 2, 2, v185);
    v308 = v153[12];
    v187 = v153[20];
    v323 = v153[16];
    v324 = v187;
    v188 = v302;
    v189 = &v302[v153[24]];
    v190 = v298;
    v191 = v314;
    *v298 = v314;
    *(v190 + 8) = v151;
    swift_storeEnumTagMultiPayload();
    sub_24B7505D8(v190, v318, type metadata accessor for ProgramDetailFeature.TaskIdentifier);

    sub_24B75C508();
    sub_24B75275C(v190, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
    v192 = swift_allocObject();
    v193 = v333;
    *(v192 + 112) = v332;
    *(v192 + 128) = v193;
    v194 = v335;
    *(v192 + 144) = v334;
    *(v192 + 160) = v194;
    v195 = v329;
    *(v192 + 48) = v328;
    *(v192 + 64) = v195;
    v196 = v331;
    *(v192 + 80) = v330;
    *(v192 + 96) = v196;
    v197 = v327;
    *(v192 + 16) = v326;
    *(v192 + 32) = v197;
    *(v192 + 176) = v191;
    *(v192 + 184) = v151;
    *v189 = &unk_24B769EB8;
    *(v189 + 1) = v192;
    sub_24B750778(&v326, v325);
    sub_24B75C3F8();
    v310(&v323[v188], v315, v312);
    (v307)(&v324[v188], v317, v316);
    v198 = v188;
    v199 = v320;
    (v304)(v198, v305, v320);
    v201 = *(v176 + 16);
    v200 = *(v176 + 24);
    if (v201 >= v200 >> 1)
    {
      v176 = sub_24B6C45F0((v200 > 1), v201 + 1, 1, v176);
    }

    v202 = v321;
    v203 = v311;
    v204 = v302;
    v205 = v303;
    v206 = v301;
    *(v176 + 16) = v201 + 1;
    v203(&v205[v176 + v201 * v206], v204, v199);
    *v202 = v176;
  }

  else
  {

    sub_24B75275C(v184, type metadata accessor for ProgramDetailLoadState);
  }
}

uint64_t type metadata accessor for ProgramDetailFeature.TaskIdentifier(uint64_t a1)
{
  result = qword_27F036B48;
  if (!qword_27F036B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B74E00C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B74E07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B74E0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for ProgramDetailAction(0);
  v4[4] = swift_task_alloc();
  v4[5] = sub_24B75C3E8();
  v4[6] = sub_24B75C3D8();
  v10 = (*(a2 + 32) + **(a2 + 32));
  v8 = swift_task_alloc();
  v4[7] = v8;
  *v8 = v4;
  v8[1] = sub_24B74E240;

  return v10(v4 + 12, a3, a4);
}

uint64_t sub_24B74E240()
{
  v2 = *v1;
  v2[8] = v0;

  v4 = sub_24B75C3C8();
  v2[9] = v4;
  v2[10] = v3;
  if (v0)
  {
    v5 = sub_24B74E5C0;
  }

  else
  {
    v5 = sub_24B74E3A0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B74E3A0()
{
  **(v0 + 32) = *(v0 + 96);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B70, &qword_24B76A028);
  *v1 = v0;
  v1[1] = sub_24B74E468;
  v3 = *(v0 + 32);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_24B74E468()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_24B75275C(v2, type metadata accessor for ProgramDetailAction);
  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24B752854, v4, v3);
}

uint64_t sub_24B74E5C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B74E630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for ProgramDetailAction(0);
  v4[4] = swift_task_alloc();
  type metadata accessor for WorkoutProgram(0);
  v8 = swift_task_alloc();
  v4[5] = v8;
  v4[6] = sub_24B75C3E8();
  v4[7] = sub_24B75C3D8();
  v11 = (*(a2 + 16) + **(a2 + 16));
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_24B74E7C0;

  return v11(v8, a3, a4);
}

uint64_t sub_24B74E7C0()
{
  v2 = *v1;
  v2[9] = v0;

  v4 = sub_24B75C3C8();
  v2[10] = v4;
  v2[11] = v3;
  if (v0)
  {
    v5 = sub_24B711534;
  }

  else
  {
    v5 = sub_24B74E920;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B74E920(__n128 a1)
{
  sub_24B7505D8(v1[5], v1[4], type metadata accessor for WorkoutProgram);
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v1[12] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B70, &qword_24B76A028);
  *v2 = v1;
  v2[1] = sub_24B74EA08;
  v4 = v1[4];

  return MEMORY[0x282159B08](v4, v3);
}

uint64_t sub_24B74EA08()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_24B75275C(v2, type metadata accessor for ProgramDetailAction);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24B74EB60, v4, v3);
}

uint64_t sub_24B74EB60()
{
  v1 = *(v0 + 40);

  sub_24B75275C(v1, type metadata accessor for WorkoutProgram);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B74EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B78, &qword_24B76A030);
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B80, &qword_24B76A038);
  *(v3 + 56) = v7;
  *(v3 + 64) = *(v7 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = sub_24B75C3E8();
  *(v3 + 88) = sub_24B75C3D8();
  v8 = *(a2 + 48);
  *(v3 + 96) = *(a2 + 128);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v3 + 112) = v9;
  *v9 = v3;
  v9[1] = sub_24B74EDE8;

  return v11(v6);
}

uint64_t sub_24B74EDE8()
{
  v2 = *v1;
  v2[15] = v0;

  v4 = sub_24B75C3C8();
  v2[16] = v4;
  v2[17] = v3;
  if (v0)
  {
    v5 = sub_24B74F6A0;
  }

  else
  {
    v5 = sub_24B74EF48;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B74EF48()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_24B75C428();
  (*(v2 + 8))(v1, v3);
  v4 = sub_24B75C3D8();
  v0[18] = v4;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24B74F038;
  v6 = v0[7];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v4, v7, v6);
}

uint64_t sub_24B74F038()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_24B74F17C, v3, v2);
}

uint64_t sub_24B74F17C()
{
  v1 = v0[2];
  if (v1)
  {
    type metadata accessor for WorkoutProgram(0);

    v3 = sub_24B7527BC(v2);

    v4 = sub_24B751374(v3, v1);
    v0[20] = v4;

    if (v4[2])
    {
      if (qword_27F033CF0 != -1)
      {
        swift_once();
      }

      v5 = sub_24B75B378();
      __swift_project_value_buffer(v5, qword_27F050B20);
      v6 = sub_24B75B358();
      v7 = sub_24B75C4C8();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24B6A5000, v6, v7, "Archived Sessions Updated — refreshing", v8, 2u);
        MEMORY[0x24C248E20](v8, -1, -1);
      }

      v9 = v0[12];

      v17 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[21] = v10;
      *v10 = v0;
      v10[1] = sub_24B74F4A0;

      return v17(v4);
    }

    else
    {

      v13 = sub_24B75C3D8();
      v0[18] = v13;
      v14 = swift_task_alloc();
      v0[19] = v14;
      *v14 = v0;
      v14[1] = sub_24B74F038;
      v15 = v0[7];
      v16 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 2, v13, v16, v15);
    }
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24B74F4A0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_24B74F5E4, v3, v2);
}

uint64_t sub_24B74F5E4(uint64_t a1)
{
  v2 = sub_24B75C3D8();
  v1[18] = v2;
  v3 = swift_task_alloc();
  v1[19] = v3;
  *v3 = v1;
  v3[1] = sub_24B74F038;
  v4 = v1[7];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v1 + 2, v2, v5, v4);
}

uint64_t sub_24B74F6A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B74F71C(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for ProgramDetailAction(0);
  v4[4] = swift_task_alloc();
  v4[5] = sub_24B75C3E8();
  v4[6] = sub_24B75C3D8();
  v10 = (*a2 + **a2);
  v8 = swift_task_alloc();
  v4[7] = v8;
  *v8 = v4;
  v8[1] = sub_24B74F870;

  return v10(a3, a4);
}

uint64_t sub_24B74F870()
{
  v2 = *v1;
  v2[8] = v0;

  v4 = sub_24B75C3C8();
  v2[9] = v4;
  v2[10] = v3;
  if (v0)
  {
    v5 = sub_24B74E5C0;
  }

  else
  {
    v5 = sub_24B74F9D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B74F9D0()
{
  **(v0 + 32) = 0;
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B70, &qword_24B76A028);
  *v1 = v0;
  v1[1] = sub_24B74FA94;
  v3 = *(v0 + 32);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_24B74FA94()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_24B75275C(v2, type metadata accessor for ProgramDetailAction);
  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24B74FBEC, v4, v3);
}

uint64_t sub_24B74FBEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B74FC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_24B75C3E8();
  v3[4] = sub_24B75C3D8();
  v5 = sub_24B75C3C8();

  return MEMORY[0x2822009F8](sub_24B74FCF4, v5, v4);
}

uint64_t sub_24B74FCF4()
{
  v1 = v0[3];
  v2 = v0[2];

  (*(v2 + 80))(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24B74FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_24B75C3E8();
  v4[3] = sub_24B75C3D8();
  v10 = (*(a2 + 64) + **(a2 + 64));
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_24B710828;

  return v10(a3, a4);
}

uint64_t sub_24B74FE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for ProgramDetailAction(0);
  v4[4] = swift_task_alloc();
  v4[5] = sub_24B75C3E8();
  v4[6] = sub_24B75C3D8();
  v10 = (*(a2 + 144) + **(a2 + 144));
  v8 = swift_task_alloc();
  v4[7] = v8;
  *v8 = v4;
  v8[1] = sub_24B74FFE0;

  return v10(a3, a4);
}

uint64_t sub_24B74FFE0()
{
  v2 = *v1;
  v2[8] = v0;

  v4 = sub_24B75C3C8();
  v2[9] = v4;
  v2[10] = v3;
  if (v0)
  {
    v5 = sub_24B752858;
  }

  else
  {
    v5 = sub_24B750140;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B750140()
{
  **(v0 + 32) = 1;
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B70, &qword_24B76A028);
  *v1 = v0;
  v1[1] = sub_24B74E468;
  v3 = *(v0 + 32);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_24B750208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B75C3E8();
  v4[5] = sub_24B75C3D8();
  v6 = sub_24B75C3C8();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B7502A4, v6, v5);
}

uint64_t sub_24B7502A4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + 112);
  v4 = (v1 + *(type metadata accessor for WorkoutProgram(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(type metadata accessor for WorkoutProgramPreview(0) + 20);
  v10 = (v3 + *v3);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_24B7503D4;

  return v10(v5, v6, v2 + v7);
}

uint64_t sub_24B7503D4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_24B750574;
  }

  else
  {
    v5 = sub_24B750510;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B750510()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B750574()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7505D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B750640(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutProgram(0) - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for WorkoutProgramPreview(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B6F3D84;

  return sub_24B750208(a1, v1 + 16, v1 + v5, v1 + v8);
}

uint64_t sub_24B7507B8(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74FE8C(a1, v1 + 16, v4, v5);
}

uint64_t sub_24B750864(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74FD6C(a1, v1 + 16, v4, v5);
}

uint64_t sub_24B750910(uint64_t a1)
{
  v4 = *(sub_24B75B108() - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74FC5C(a1, v1 + 16, v1 + v5);
}

uint64_t sub_24B7509EC(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74F71C(a1, (v1 + 16), v4, v5);
}

uint64_t sub_24B750A98(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutProgram(0) - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74EBF4(a1, v1 + 16, v1 + v5);
}

uint64_t sub_24B750B74(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74E0E4(a1, v1 + 16, v4, v5);
}

uint64_t objectdestroy_3Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_24B750CA8(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6C412C;

  return sub_24B74E630(a1, v1 + 16, v4, v5);
}

void sub_24B750E3C(uint64_t a1)
{
  sub_24B745F48();
  if (v1 <= 0x3F)
  {
    sub_24B75B108();
    if (v2 <= 0x3F)
    {
      sub_24B750ECC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B750ECC(uint64_t a1)
{
  if (!qword_27F036B58)
  {
    sub_24B75B108();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F036B58);
    }
  }
}

uint64_t sub_24B750F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B750FC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24B75C6D8();
  sub_24B75C358();
  v8 = sub_24B75C718();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24B75C6B8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24B751BC8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24B751114(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B88, &unk_24B76A040);
  result = sub_24B75C528();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24B75C6D8();
      sub_24B75C358();
      result = sub_24B75C718();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}