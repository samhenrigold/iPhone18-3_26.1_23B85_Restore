uint64_t sub_1E596D994@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
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
  sub_1E596F7F8(v9, v6, MEMORY[0x1E697EAF0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E596F860(&qword_1ECFFEA90, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAC8]);
  sub_1E5A2AD54();
  sub_1E596F8A8(v9, MEMORY[0x1E697EAF0]);
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

uint64_t sub_1E596DBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE918, &qword_1E5A451A0) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5A2A9B4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)) = 256;

  return sub_1E58A0480(a1, a2);
}

uint64_t sub_1E596DC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE920, &qword_1E5A3B260) + 36));
  v5 = *(sub_1E5A2A754() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;

  return sub_1E58A0480(a1, a2);
}

uint64_t sub_1E596DD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9E0, &qword_1E5A3B330);
  MEMORY[0x1EEE9AC00](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9E8, &qword_1E5A3B338);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - v5;
  v7 = sub_1E5A2AB14();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  sub_1E5A2AB04();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F8, &qword_1E5A3B348);
  sub_1E58CD164(&qword_1ECFFEA00, &qword_1ECFFE9F8, &qword_1E5A3B348, MEMORY[0x1E697D680]);
  sub_1E5A2A524();
  sub_1E5A2AAF4();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA08, &unk_1E5A3B350);
  sub_1E596F2DC();
  sub_1E5A2A524();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_1E5A2AA54();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E596E0AC(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledDayReviewView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1E5A2A414();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2A3F4();
  sub_1E596F7F8(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScheduledDayReviewView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1E596ED6C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x1E69321A0](v7, sub_1E596F3C8, v9);
}

uint64_t sub_1E596E214(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5A2A5E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScheduledDayReviewView(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  sub_1E596F8A8(v8, type metadata accessor for WorkoutPlanCreationAction);
  sub_1E58CD724(v5);
  sub_1E5A2A5D4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E596E38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScheduledDayReviewView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1E5A2A414();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2A404();
  sub_1E596F7F8(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScheduledDayReviewView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1E596ED6C(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  MEMORY[0x1E69321A0](v9, sub_1E596F3C0, v11);
  LOBYTE(a1) = sub_1E59A9188();
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = (a1 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA08, &unk_1E5A3B350);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_1E5939210;
  v15[2] = v13;
  return result;
}

uint64_t sub_1E596E57C()
{
  v0 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for EditItem(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  type metadata accessor for ScheduledDayReviewView(0);
  swift_getKeyPath();
  sub_1E5A2B934();

  LODWORD(v7) = v12[*(v7 + 32)];
  sub_1E596F8A8(v12, type metadata accessor for EditItem);
  if (v7 == 7)
  {
    v13 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1E5A2B934();

    sub_1E58BABA0(v9, v5, &qword_1ECFFB790, &qword_1E5A2D620);
    sub_1E596F8A8(v9, type metadata accessor for EditItem);
    v14 = type metadata accessor for WorkoutPlanScheduledItem(0);
    v15 = (*(*(v14 - 8) + 48))(v5, 1, v14);
    sub_1E58BAD14(v5, &qword_1ECFFB790, &qword_1E5A2D620);
    if (v15 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }
  }

  *v2 = v13;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E596F8A8(v2, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t type metadata accessor for ScheduledDayReviewView(uint64_t a1)
{
  result = qword_1ECFFE990;
  if (!qword_1ECFFE990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E596E890()
{
  result = qword_1ECFFE8F8;
  if (!qword_1ECFFE8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE8E8, &qword_1E5A3B240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE900, &qword_1E5A3B248);
    sub_1E596E950();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE8F8);
  }

  return result;
}

unint64_t sub_1E596E950()
{
  result = qword_1ECFFE908;
  if (!qword_1ECFFE908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE900, &qword_1E5A3B248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE910, &unk_1E5A3B250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE918, &qword_1E5A451A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE920, &qword_1E5A3B260);
    sub_1E596EA84();
    sub_1E596EBFC();
    sub_1E596ECB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE908);
  }

  return result;
}

unint64_t sub_1E596EA84()
{
  result = qword_1ECFFE928;
  if (!qword_1ECFFE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE910, &unk_1E5A3B250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE930, &qword_1E5A3B268);
    sub_1E5A2ACA4();
    sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268, MEMORY[0x1E697D680]);
    sub_1E596F860(&qword_1ECFFE940, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFE948, &qword_1ECFFE950, &qword_1E5A3B270, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE928);
  }

  return result;
}

unint64_t sub_1E596EBFC()
{
  result = qword_1ECFFE958;
  if (!qword_1ECFFE958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE918, &qword_1E5A451A0);
    sub_1E596EA84();
    sub_1E58CD164(&qword_1ECFFE960, &qword_1ECFFC788, &qword_1E5A319E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE958);
  }

  return result;
}

unint64_t sub_1E596ECB4()
{
  result = qword_1ECFFE968;
  if (!qword_1ECFFE968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE920, &qword_1E5A3B260);
    sub_1E596EA84();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE968);
  }

  return result;
}

uint64_t sub_1E596ED6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledDayReviewView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E596EDD0()
{
  type metadata accessor for ScheduledDayReviewView(0);

  return sub_1E596E57C();
}

void sub_1E596EE74(uint64_t a1)
{
  sub_1E596EF10(319);
  if (v1 <= 0x3F)
  {
    sub_1E596EF68(319);
    if (v2 <= 0x3F)
    {
      sub_1E596F00C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E596EF10(uint64_t a1)
{
  if (!qword_1ECFFE9A0)
  {
    sub_1E5A2A5E4();
    v1 = sub_1E5A2A4D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFFE9A0);
    }
  }
}

void sub_1E596EF68(uint64_t a1)
{
  if (!qword_1ECFFE9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
    sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
    v1 = sub_1E5A2A664();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFFE9A8);
    }
  }
}

void sub_1E596F00C()
{
  if (!qword_1ECFFE9B0)
  {
    v0 = sub_1E5A2B554();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFE9B0);
    }
  }
}

unint64_t sub_1E596F05C()
{
  result = qword_1ECFFE9B8;
  if (!qword_1ECFFE9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE980, &qword_1E5A3B278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE8B0, &qword_1E5A3B208);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58CD164(&qword_1ECFFE978, &qword_1ECFFE8B0, &qword_1E5A3B208, MEMORY[0x1E697C1A8]);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE9B8);
  }

  return result;
}

__n128 sub_1E596F1B8@<Q0>(uint64_t a1@<X8>)
{
  sub_1E596C788(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1E596F20C()
{
  result = qword_1ECFFE9C8;
  if (!qword_1ECFFE9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9C0, &qword_1E5A3B320);
    sub_1E58CD164(&qword_1ECFFE9D0, &qword_1ECFFE9D8, &qword_1E5A3B328, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE9C8);
  }

  return result;
}

unint64_t sub_1E596F2DC()
{
  result = qword_1ECFFEA10;
  if (!qword_1ECFFEA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA08, &unk_1E5A3B350);
    sub_1E58CD164(&qword_1ECFFEA00, &qword_1ECFFE9F8, &qword_1E5A3B348, MEMORY[0x1E697D680]);
    sub_1E58CD164(&qword_1ECFFDB28, &qword_1ECFFDB30, &qword_1E5A36B78, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEA10);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for ScheduledDayReviewView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1E5A2A5E4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1E596F578()
{
  result = qword_1ECFFEA48;
  if (!qword_1ECFFEA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA30, &unk_1E5A3C420);
    sub_1E596F604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEA48);
  }

  return result;
}

unint64_t sub_1E596F604()
{
  result = qword_1ECFFEA50;
  if (!qword_1ECFFEA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA58, &unk_1E5A3B3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEA50);
  }

  return result;
}

unint64_t sub_1E596F688()
{
  result = qword_1ECFFEA60;
  if (!qword_1ECFFEA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
    sub_1E596F578();
    sub_1E58CD164(&qword_1ECFFEA68, &qword_1ECFFEA70, &unk_1E5A3C440, MEMORY[0x1E6980CF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEA60);
  }

  return result;
}

unint64_t sub_1E596F740()
{
  result = qword_1ECFFEA78;
  if (!qword_1ECFFEA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA40, &unk_1E5A3C430);
    sub_1E596F578();
    sub_1E58CD164(&qword_1ECFFEA80, &qword_1ECFFEA88, &qword_1E5A3B3F0, MEMORY[0x1E6980CF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEA78);
  }

  return result;
}

uint64_t sub_1E596F7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E596F860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E596F8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TVActiveWorkoutPlanWorkoutView.init(store:artworkViewBuilder:primaryActionButtonViewBuilder:secondaryActionButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(0, &v25);
  swift_getWitnessTable();
  sub_1E5A2A444();
  v22 = *(&v25 + 1);
  v23 = v26;
  *(a9 + 24) = v25;
  *(a9 + 32) = v22;
  *(a9 + 40) = v23;
  *(a9 + 96) = xmmword_1E5A3AC30;
  *(a9 + 112) = 0x4020000000000000;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a9 = sub_1E58D2CB8;
  *(a9 + 8) = result;
  *(a9 + 16) = 0;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  return result;
}

uint64_t sub_1E596FA3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7B8, qword_1E5A3AD50);
  sub_1E58CD164(&qword_1EE2CFA90, &qword_1ECFFE7B8, qword_1E5A3AD50, MEMORY[0x1E6999B78]);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E596FADC(_OWORD *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = v2;
  v9 = v3;
  v4 = a1[2];
  v6[0] = a1[1];
  v6[1] = v4;
  v6[2] = a1[3];
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(255, v6);
  sub_1E5A2BD84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A454();
  sub_1E5A2A434();
  return *&v6[0];
}

uint64_t sub_1E596FBF8(uint64_t a1)
{
  sub_1E5A2C1B4();
  sub_1E58E8020(v3, *v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E596FC48()
{
  v0 = sub_1E5A29D24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1E5A2BBA4();
  sub_1E5A29D14();
  return sub_1E5A29D04();
}

uint64_t sub_1E596FCEC()
{
  sub_1E596FA3C();
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v1 > 2u)
  {
    sub_1E5A2A734();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB580, &qword_1E5A30510);
    sub_1E5A2A734();
    *(swift_allocObject() + 16) = xmmword_1E5A2C920;
    sub_1E5A2A724();
  }

  sub_1E5977D28(&qword_1ECFFB568, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB570, &unk_1E5A2CA80);
  sub_1E58CD164(&qword_1ECFFB578, &qword_1ECFFB570, &unk_1E5A2CA80, MEMORY[0x1E69E6328]);
  return sub_1E5A2BDD4();
}

uint64_t sub_1E596FEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v23[0] = MEMORY[0x1E699DB38];
  *&v33 = swift_getOpaqueTypeMetadata2();
  *(&v33 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  *&v34 = swift_getOpaqueTypeConformance2();
  *(&v34 + 1) = sub_1E5969788();
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA0, &qword_1E5A3B448);
  sub_1E5A2AA84();
  v6 = sub_1E5A2B494();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = v2[5];
  v37 = v2[4];
  v38 = v13;
  v39 = v2[6];
  v40 = *(v2 + 14);
  v14 = v2[1];
  v33 = *v2;
  v34 = v14;
  v15 = v2[3];
  v35 = v2[2];
  v36 = v15;
  v23[4] = v4;
  v24 = *(a1 + 24);
  v25 = v5;
  v26 = *(a1 + 48);
  v27 = &v33;
  WitnessTable = swift_getWitnessTable();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  v18 = sub_1E58CD164(qword_1ECFFEAC8, &qword_1ECFFEAC0, &qword_1E5A3B470, MEMORY[0x1E697DB78]);
  v31 = v17;
  v32 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = WitnessTable;
  v30 = OpaqueTypeConformance2;
  v20 = swift_getWitnessTable();
  sub_1E5A2B484();
  v28 = v20;
  swift_getWitnessTable();
  sub_1E58B41DC();
  v21 = *(v7 + 8);
  v21(v9, v6);
  sub_1E58B41DC();
  return (v21)(v12, v6);
}

uint64_t sub_1E5970200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v86 = a6;
  v87 = a7;
  v84 = a3;
  v85 = a4;
  v88 = a1;
  v94 = a8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  MEMORY[0x1EEE9AC00](v75);
  v80 = &v68 - v10;
  v82 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a2;
  v98 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v74 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v97 = a2;
  v98 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_1E5969788();
  v78 = OpaqueTypeMetadata2;
  v97 = OpaqueTypeMetadata2;
  v98 = v15;
  v73 = v15;
  v72 = OpaqueTypeConformance2;
  v99 = OpaqueTypeConformance2;
  v100 = v17;
  v71 = v17;
  v18 = sub_1E5A2B5C4();
  v83 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v68 - v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  MEMORY[0x1EEE9AC00](v93);
  v23 = &v68 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAA0, &qword_1E5A3B448);
  v70 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v69 = &v68 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v68 - v27;
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v30 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v24;
  v33 = sub_1E5A2AA84();
  v91 = *(v33 - 8);
  v92 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v90 = &v68 - v34;
  v97 = a2;
  v98 = v84;
  v99 = v85;
  v100 = a5;
  v85 = a5;
  v101 = v86;
  v102 = v87;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView(0, &v97);
  v35 = v88;
  sub_1E596FA3C();
  swift_getKeyPath();
  sub_1E5A2B934();

  if ((*(v30 + 48))(v28, 1, active) == 1)
  {
    sub_1E58BAD14(v28, &qword_1ECFFC2A0, &qword_1E5A30640);
    v36 = *(v35 + 112);
    v37 = *(sub_1E5A2A754() + 20);
    v38 = *MEMORY[0x1E697F468];
    v39 = sub_1E5A2A9B4();
    (*(*(v39 - 8) + 104))(&v23[v37], v38, v39);
    *v23 = v36;
    *(v23 + 1) = v36;
    v40 = [objc_opt_self() tertiarySystemFillColor];
    v41 = sub_1E5A2B474();
    v42 = v93;
    *&v23[*(v93 + 52)] = v41;
    *&v23[*(v42 + 56)] = 256;
    v43 = sub_1E58CD164(qword_1ECFFEAC8, &qword_1ECFFEAC0, &qword_1E5A3B470, MEMORY[0x1E697DB78]);
    v44 = v69;
    sub_1E5A2B024();
    sub_1E58BAD14(v23, &qword_1ECFFEAC0, &qword_1E5A3B470);
    WitnessTable = swift_getWitnessTable();
    v97 = v42;
    v98 = v43;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = v89;
    v48 = v90;
    sub_1E595ECB8(v44, v18, v89, WitnessTable, v46);
    (*(v70 + 8))(v44, v47);
  }

  else
  {
    sub_1E5969FD8(v28, v32);
    v49 = *(v35 + 48);
    v50 = *MEMORY[0x1E699DC58];
    v51 = sub_1E5A2A0D4();
    v52 = v80;
    (*(*(v51 - 8) + 104))(v80, v50, v51);
    swift_storeEnumTagMultiPayload();
    v53 = type metadata accessor for ActiveWorkoutPlanArtwork(0);
    v54 = v79;
    v49(v32, v52, &v32[*(v53 + 20)]);
    sub_1E58BAD14(v52, &qword_1ECFFD7C8, &qword_1E5A35E28);
    v55 = v74;
    sub_1E5A2B024();
    (*(v82 + 8))(v54, a2);
    v56 = v81;
    v57 = v78;
    sub_1E5A2B2A4();
    (*(v76 + 8))(v55, v57);
    v58 = swift_getWitnessTable();
    v59 = v77;
    sub_1E58B41DC();
    v60 = *(v83 + 8);
    v60(v56, v18);
    sub_1E58B41DC();
    v61 = sub_1E58CD164(qword_1ECFFEAC8, &qword_1ECFFEAC0, &qword_1E5A3B470, MEMORY[0x1E697DB78]);
    v42 = v93;
    v97 = v93;
    v98 = v61;
    v62 = swift_getOpaqueTypeConformance2();
    v48 = v90;
    sub_1E595EBC0(v56, v18, v89, v58, v62);
    v60(v56, v18);
    v60(v59, v18);
    sub_1E58E7804(v32, type metadata accessor for ActiveWorkoutPlanWorkout);
  }

  v63 = swift_getWitnessTable();
  v64 = sub_1E58CD164(qword_1ECFFEAC8, &qword_1ECFFEAC0, &qword_1E5A3B470, MEMORY[0x1E697DB78]);
  v97 = v42;
  v98 = v64;
  v65 = swift_getOpaqueTypeConformance2();
  v95 = v63;
  v96 = v65;
  v66 = v92;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v91 + 8))(v48, v66);
}

uint64_t TVActiveWorkoutPlanWorkoutView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_1E5A2A734();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[5];
  *&v147 = a1[2];
  v5 = v147;
  *(&v147 + 1) = v6;
  v107 = MEMORY[0x1E699DB38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  *&v147 = v5;
  *(&v147 + 1) = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = sub_1E5969788();
  *&v147 = OpaqueTypeMetadata2;
  *(&v147 + 1) = v8;
  *&v148 = OpaqueTypeConformance2;
  *(&v148 + 1) = v10;
  v99 = sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA0, &qword_1E5A3B448);
  v100 = sub_1E5A2AA84();
  v101 = sub_1E5A2B494();
  v102 = sub_1E5A2A6C4();
  v97 = sub_1E5A2A6C4();
  *&v116 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA8, &qword_1E5A3B450);
  *(&v116 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB0, &qword_1E5A3B458);
  *&v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB8, &unk_1E5A3B460);
  *(&v117 + 1) = MEMORY[0x1E6981840];
  v11 = a1[3];
  v12 = sub_1E5A2BD84();
  v13 = a1[4];
  v93 = a1;
  v15 = a1[6];
  v14 = a1[7];
  *&v16 = v13;
  *(&v16 + 1) = v6;
  *&v17 = v5;
  *(&v17 + 1) = v11;
  v105 = v17;
  v106 = v16;
  v147 = v17;
  v148 = v16;
  *&v149 = v15;
  *(&v149 + 1) = v14;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(255, &v147);
  v18 = sub_1E5A2BD84();
  v89 = v15;
  v146 = v15;
  v96 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable();
  v145 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  *&v147 = v12;
  *(&v147 + 1) = v18;
  *&v148 = WitnessTable;
  *(&v148 + 1) = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  *&v147 = v12;
  *(&v147 + 1) = v18;
  *&v148 = WitnessTable;
  *(&v148 + 1) = v20;
  v22 = swift_getOpaqueTypeConformance2();
  *&v147 = v21;
  *(&v147 + 1) = v22;
  v98 = MEMORY[0x1E69E3B40];
  v23 = swift_getOpaqueTypeMetadata2();
  *&v147 = v21;
  *(&v147 + 1) = v22;
  v24 = swift_getOpaqueTypeConformance2();
  *&v147 = v23;
  *(&v147 + 1) = MEMORY[0x1E69E6158];
  *&v148 = v24;
  *(&v148 + 1) = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  v25 = sub_1E5A2BD84();
  v88 = v14;
  v144 = v14;
  v26 = swift_getWitnessTable();
  *&v147 = v25;
  *(&v147 + 1) = v18;
  *&v148 = v26;
  *(&v148 + 1) = v20;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = sub_1E5A29E74();
  *&v147 = v25;
  *(&v147 + 1) = v18;
  *&v148 = v26;
  *(&v148 + 1) = v20;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_1E5977D28(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *&v147 = v27;
  *(&v147 + 1) = v28;
  *&v148 = v29;
  *(&v148 + 1) = v30;
  sub_1E5A2B5C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v142 = v31;
  v143 = v32;
  v95 = MEMORY[0x1E697F968];
  v141 = swift_getWitnessTable();
  swift_getWitnessTable();
  v33 = sub_1E5A2B604();
  v96 = MEMORY[0x1E6981870];
  v34 = swift_getWitnessTable();
  *&v147 = v33;
  *(&v147 + 1) = v18;
  *&v148 = v34;
  *(&v148 + 1) = v20;
  swift_getOpaqueTypeMetadata2();
  *&v118 = sub_1E5A2A6C4();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  v139 = swift_getWitnessTable();
  v140 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E5A2A774();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  v94 = sub_1E5A2A6C4();
  v35 = sub_1E5A2B734();
  v36 = swift_getWitnessTable();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  v38 = sub_1E58CD164(qword_1ECFFEAC8, &qword_1ECFFEAC0, &qword_1E5A3B470, MEMORY[0x1E697DB78]);
  *&v147 = v37;
  *(&v147 + 1) = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v137 = v36;
  v138 = v39;
  v136 = swift_getWitnessTable();
  v134 = swift_getWitnessTable();
  v135 = MEMORY[0x1E697E040];
  v132 = swift_getWitnessTable();
  v133 = MEMORY[0x1E697EBF8];
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v130 = v40;
  v131 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  v128 = v42;
  v129 = v43;
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x1E6981E60];
  v125 = MEMORY[0x1E6981E60];
  v126 = v44;
  v127 = MEMORY[0x1E6981E60];
  v46 = swift_getWitnessTable();
  *&v147 = v35;
  *(&v147 + 1) = v46;
  swift_getOpaqueTypeMetadata2();
  *&v147 = v35;
  *(&v147 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  v47 = sub_1E5A2B494();
  v95 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v87 - v48;
  v94 = swift_getWitnessTable();
  v124 = v94;
  v50 = swift_getWitnessTable();
  *&v147 = v47;
  *(&v147 + 1) = v50;
  v107 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v96 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v87 - v52;
  v54 = sub_1E5A2A6C4();
  v99 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v98 = &v87 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v97 = &v87 - v57;
  v58 = sub_1E5A2AA84();
  v101 = *(v58 - 8);
  v102 = v58;
  MEMORY[0x1EEE9AC00](v58);
  v100 = &v87 - v59;
  v60 = *(v103 + 80);
  v151 = *(v103 + 64);
  v152 = v60;
  v153 = *(v103 + 96);
  v154 = *(v103 + 112);
  v61 = *(v103 + 16);
  v147 = *v103;
  v148 = v61;
  v62 = *(v103 + 48);
  v149 = *(v103 + 32);
  v150 = v62;
  sub_1E596FA3C();
  swift_getKeyPath();
  sub_1E5A2B944();

  v64 = MEMORY[0x1E69805D0];
  if (v116)
  {
    MEMORY[0x1EEE9AC00](v63);
    v65 = v106;
    *(&v87 - 4) = v105;
    *(&v87 - 3) = v65;
    v103 = v51;
    v66 = v88;
    v67 = v89;
    *(&v87 - 4) = v89;
    *(&v87 - 3) = v66;
    *(&v87 - 2) = &v147;
    sub_1E5A2B484();
    v120 = v151;
    v121 = v152;
    v122 = v153;
    v123 = v154;
    v116 = v147;
    v117 = v148;
    v118 = v149;
    v119 = v150;
    v68 = v90;
    v69 = v93;
    sub_1E596FCEC();
    sub_1E5A2B394();
    (*(v91 + 8))(v68, v92);
    (*(v95 + 8))(v49, v47);
    v70 = swift_allocObject();
    v71 = v106;
    *(v70 + 16) = v105;
    *(v70 + 32) = v71;
    *(v70 + 48) = v67;
    *(v70 + 56) = v66;
    v72 = v152;
    *(v70 + 128) = v151;
    *(v70 + 144) = v72;
    *(v70 + 160) = v153;
    *(v70 + 176) = v154;
    v73 = v148;
    *(v70 + 64) = v147;
    *(v70 + 80) = v73;
    v74 = v150;
    *(v70 + 96) = v149;
    *(v70 + 112) = v74;
    (*(*(v69 - 1) + 16))(&v116, &v147, v69);
    *&v116 = v47;
    *(&v116 + 1) = v107;
    v75 = swift_getOpaqueTypeConformance2();
    v76 = v98;
    v77 = v103;
    sub_1E5A2B364();

    (*(v96 + 8))(v53, v77);
    v114 = v75;
    v115 = MEMORY[0x1E69805D0];
    v78 = swift_getWitnessTable();
    v79 = v97;
    sub_1E58B41DC();
    v80 = *(v99 + 8);
    v80(v76, v54);
    sub_1E58B41DC();
    v81 = v100;
    v82 = v78;
    v64 = MEMORY[0x1E69805D0];
    sub_1E595ECB8(v76, MEMORY[0x1E6981E70], v54, MEMORY[0x1E6981E60], v82);
    v80(v76, v54);
    v80(v79, v54);
    v45 = MEMORY[0x1E6981E60];
  }

  else
  {
    *&v116 = v47;
    *(&v116 + 1) = v107;
    v108 = swift_getOpaqueTypeConformance2();
    v109 = v64;
    v83 = swift_getWitnessTable();
    v81 = v100;
    sub_1E595EBC0(v83, MEMORY[0x1E6981E70], v54, MEMORY[0x1E6981E60], v83);
  }

  *&v116 = v47;
  *(&v116 + 1) = v107;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = v64;
  v84 = swift_getWitnessTable();
  v110 = v45;
  v111 = v84;
  v85 = v102;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v101 + 8))(v81, v85);
}

uint64_t sub_1E5971BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a7;
  v57 = a6;
  v54 = a1;
  v55 = a8;
  v50 = MEMORY[0x1E699DB38];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v51 = a2;
  v53 = a5;
  swift_getOpaqueTypeConformance2();
  sub_1E5969788();
  v45[5] = sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA0, &qword_1E5A3B448);
  v47 = sub_1E5A2AA84();
  v48 = sub_1E5A2B494();
  v49 = sub_1E5A2A6C4();
  v45[3] = sub_1E5A2A6C4();
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA8, &qword_1E5A3B450);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB0, &qword_1E5A3B458);
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB8, &unk_1E5A3B460);
  v96 = MEMORY[0x1E6981840];
  v13 = a3;
  v52 = a3;
  v14 = sub_1E5A2BD84();
  v87 = a2;
  v88 = v13;
  v89 = a4;
  v90 = a5;
  v46 = a4;
  v91 = v57;
  v92 = a7;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(255, &v87);
  v15 = sub_1E5A2BD84();
  v86 = v57;
  WitnessTable = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v87 = v14;
  v88 = v15;
  v89 = WitnessTable;
  v90 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = v14;
  v88 = v15;
  v89 = WitnessTable;
  v90 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = OpaqueTypeMetadata2;
  v88 = OpaqueTypeConformance2;
  v45[4] = MEMORY[0x1E69E3B40];
  v20 = swift_getOpaqueTypeMetadata2();
  v87 = OpaqueTypeMetadata2;
  v88 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v87 = v20;
  v88 = MEMORY[0x1E69E6158];
  v89 = v21;
  v90 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  v22 = sub_1E5A2BD84();
  v84 = v56;
  v23 = swift_getWitnessTable();
  v87 = v22;
  v88 = v15;
  v89 = v23;
  v90 = v17;
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = sub_1E5A29E74();
  v87 = v22;
  v88 = v15;
  v89 = v23;
  v90 = v17;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1E5977D28(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v87 = v24;
  v88 = v25;
  v89 = v26;
  v90 = v27;
  sub_1E5A2B5C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  v82 = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  v45[1] = MEMORY[0x1E697F968];
  v81 = swift_getWitnessTable();
  swift_getWitnessTable();
  v28 = sub_1E5A2B604();
  v45[2] = MEMORY[0x1E6981870];
  v29 = swift_getWitnessTable();
  v87 = v28;
  v88 = v15;
  v89 = v29;
  v90 = v17;
  swift_getOpaqueTypeMetadata2();
  v97 = sub_1E5A2A6C4();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  v79 = swift_getWitnessTable();
  v80 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E5A2A774();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  v45[0] = sub_1E5A2A6C4();
  v30 = sub_1E5A2B734();
  v31 = swift_getWitnessTable();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  v33 = sub_1E58CD164(qword_1ECFFEAC8, &qword_1ECFFEAC0, &qword_1E5A3B470, MEMORY[0x1E697DB78]);
  v87 = v32;
  v88 = v33;
  v77 = v31;
  v78 = swift_getOpaqueTypeConformance2();
  v76 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v75 = MEMORY[0x1E697E040];
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x1E697EBF8];
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v68 = swift_getWitnessTable();
  v69 = sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  v34 = swift_getWitnessTable();
  v65 = MEMORY[0x1E6981E60];
  v66 = v34;
  v67 = MEMORY[0x1E6981E60];
  v35 = swift_getWitnessTable();
  v87 = v30;
  v88 = v35;
  swift_getOpaqueTypeMetadata2();
  v87 = v30;
  v88 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = sub_1E5A2B604();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v45 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v45 - v41;
  sub_1E5A2AA34();
  v58 = v51;
  v59 = v52;
  v60 = v46;
  v61 = v53;
  v62 = v57;
  v63 = v56;
  v64 = v54;
  sub_1E5A2B5F4();
  swift_getWitnessTable();
  sub_1E58B41DC();
  v43 = *(v37 + 8);
  v43(v39, v36);
  sub_1E58B41DC();
  return (v43)(v42, v36);
}

uint64_t sub_1E597254C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v111 = a8;
  v112 = a7;
  v103 = a1;
  v13 = sub_1E5A2BA14();
  v109 = *(v13 - 8);
  v110 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v108 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v107 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v104 = v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v116 = v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v106 = v93 - v24;
  v25 = a2;
  *&v130 = a2;
  *(&v130 + 1) = a5;
  v26 = a5;
  v100 = MEMORY[0x1E699DB38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  *&v130 = v25;
  *(&v130 + 1) = v26;
  v29 = v25;
  v114 = v26;
  v115 = v25;
  v30 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_1E5969788();
  *&v130 = OpaqueTypeMetadata2;
  *(&v130 + 1) = v28;
  *&v131 = OpaqueTypeConformance2;
  *(&v131 + 1) = v32;
  v96 = sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA0, &qword_1E5A3B448);
  v97 = sub_1E5A2AA84();
  v98 = sub_1E5A2B494();
  v99 = sub_1E5A2A6C4();
  v93[3] = sub_1E5A2A6C4();
  v124 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA8, &qword_1E5A3B450);
  v125 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB0, &qword_1E5A3B458);
  v126 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB8, &unk_1E5A3B460);
  v127 = MEMORY[0x1E6981840];
  v33 = a3;
  v102 = a3;
  v34 = sub_1E5A2BD84();
  *&v130 = v29;
  *(&v130 + 1) = v33;
  v95 = a4;
  *&v131 = a4;
  *(&v131 + 1) = v30;
  v101 = a6;
  v35 = v112;
  *&v132 = a6;
  *(&v132 + 1) = v112;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(255, &v130);
  v36 = sub_1E5A2BD84();
  v159 = a6;
  v113 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable();
  v158 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  *&v130 = v34;
  *(&v130 + 1) = v36;
  *&v131 = WitnessTable;
  *(&v131 + 1) = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  *&v130 = v34;
  *(&v130 + 1) = v36;
  *&v131 = WitnessTable;
  *(&v131 + 1) = v38;
  v40 = swift_getOpaqueTypeConformance2();
  *&v130 = v39;
  *(&v130 + 1) = v40;
  v93[4] = MEMORY[0x1E69E3B40];
  v41 = swift_getOpaqueTypeMetadata2();
  *&v130 = v39;
  *(&v130 + 1) = v40;
  v42 = swift_getOpaqueTypeConformance2();
  *&v130 = v41;
  *(&v130 + 1) = MEMORY[0x1E69E6158];
  *&v131 = v42;
  *(&v131 + 1) = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  v43 = sub_1E5A2BD84();
  v157 = v35;
  v44 = swift_getWitnessTable();
  *&v130 = v43;
  *(&v130 + 1) = v36;
  *&v131 = v44;
  *(&v131 + 1) = v38;
  v45 = swift_getOpaqueTypeMetadata2();
  v46 = sub_1E5A29E74();
  *&v130 = v43;
  *(&v130 + 1) = v36;
  *&v131 = v44;
  *(&v131 + 1) = v38;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_1E5977D28(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *&v130 = v45;
  *(&v130 + 1) = v46;
  *&v131 = v47;
  *(&v131 + 1) = v48;
  sub_1E5A2B5C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  v49 = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v155 = v49;
  v156 = v50;
  v93[2] = MEMORY[0x1E697F968];
  v154 = swift_getWitnessTable();
  swift_getWitnessTable();
  v51 = sub_1E5A2B604();
  v52 = swift_getWitnessTable();
  *&v130 = v51;
  *(&v130 + 1) = v36;
  *&v131 = v52;
  *(&v131 + 1) = v38;
  swift_getOpaqueTypeMetadata2();
  v128 = sub_1E5A2A6C4();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  v152 = swift_getWitnessTable();
  v153 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E5A2A774();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  v93[1] = sub_1E5A2A6C4();
  v53 = sub_1E5A2B734();
  v94 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v113 = v93 - v54;
  v55 = swift_getWitnessTable();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  v57 = sub_1E58CD164(qword_1ECFFEAC8, &qword_1ECFFEAC0, &qword_1E5A3B470, MEMORY[0x1E697DB78]);
  *&v130 = v56;
  *(&v130 + 1) = v57;
  v58 = v112;
  v59 = swift_getOpaqueTypeConformance2();
  v150 = v55;
  v151 = v59;
  v149 = swift_getWitnessTable();
  v147 = swift_getWitnessTable();
  v148 = MEMORY[0x1E697E040];
  v145 = swift_getWitnessTable();
  v146 = MEMORY[0x1E697EBF8];
  v60 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v143 = v60;
  v144 = v61;
  v62 = swift_getWitnessTable();
  v63 = sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  v141 = v62;
  v142 = v63;
  v64 = v103;
  v65 = swift_getWitnessTable();
  v138 = MEMORY[0x1E6981E60];
  v139 = v65;
  v140 = MEMORY[0x1E6981E60];
  v66 = swift_getWitnessTable();
  v100 = v53;
  *&v130 = v53;
  *(&v130 + 1) = v66;
  v98 = v66;
  v67 = swift_getOpaqueTypeMetadata2();
  v99 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v96 = v93 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v97 = v93 - v70;
  v71 = v102;
  v117 = v115;
  v118 = v102;
  v72 = v95;
  v119 = v95;
  v73 = v101;
  v120 = v114;
  v121 = v101;
  v122 = v58;
  v123 = v64;
  sub_1E5A2B724();
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A303B0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v75 = v64[5];
  v134 = v64[4];
  v135 = v75;
  v136 = v64[6];
  v137 = *(v64 + 14);
  v76 = v64[1];
  v130 = *v64;
  v131 = v76;
  v77 = v64[3];
  v132 = v64[2];
  v133 = v77;
  v78 = qword_1EE2D33E0;
  v124 = v115;
  v125 = v71;
  v126 = v72;
  v127 = v114;
  v128 = v73;
  v129 = v58;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView(0, &v124);
  sub_1E596FA3C();
  swift_getKeyPath();
  sub_1E5A2B944();

  *(inited + 48) = sub_1E5A2BB64();
  *(inited + 56) = v79;
  v80 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = 0x6973736572706D69;
  v81 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v81;
  strcpy((inited + 128), "impressionType");
  *(inited + 168) = v80;
  *(inited + 143) = -18;
  *(inited + 144) = 0x666C656873;
  *(inited + 152) = 0xE500000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v82 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v82);
  v83 = v106;
  sub_1E5A2B9D4();
  v84 = sub_1E5A2B9E4();
  (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  v85 = v108;
  sub_1E5A2BA04();
  v86 = v96;
  v87 = v100;
  v88 = v98;
  v89 = v113;
  sub_1E5A2B014();
  (*(v109 + 8))(v85, v110);
  sub_1E58BAD14(v83, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v94 + 8))(v89, v87);
  *&v130 = v87;
  *(&v130 + 1) = v88;
  swift_getOpaqueTypeConformance2();
  v90 = v97;
  sub_1E58B41DC();
  v91 = *(v99 + 8);
  v91(v86, v67);
  sub_1E58B41DC();
  return (v91)(v90, v67);
}

uint64_t sub_1E5973440@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v97 = a7;
  v98 = a6;
  v94 = a1;
  v90 = a8;
  v87 = MEMORY[0x1E699DB38];
  v92 = a2;
  v95 = a5;
  *&v123 = swift_getOpaqueTypeMetadata2();
  *(&v123 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  *&v124 = swift_getOpaqueTypeConformance2();
  *(&v124 + 1) = sub_1E5969788();
  v80 = sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA0, &qword_1E5A3B448);
  v84 = sub_1E5A2AA84();
  v82 = sub_1E5A2B494();
  v86 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = v68 - v13;
  v85 = sub_1E5A2A6C4();
  v88 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = v68 - v14;
  v96 = sub_1E5A2A6C4();
  v89 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v83 = v68 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA8, &qword_1E5A3B450);
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB0, &qword_1E5A3B458);
  v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB8, &unk_1E5A3B460);
  v120 = MEMORY[0x1E6981840];
  v16 = a3;
  v93 = a3;
  v17 = sub_1E5A2BD84();
  *&v123 = a2;
  *(&v123 + 1) = v16;
  *&v124 = a4;
  *(&v124 + 1) = a5;
  v91 = a4;
  v18 = v98;
  *&v125 = v98;
  *(&v125 + 1) = a7;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(255, &v123);
  v19 = sub_1E5A2BD84();
  v138 = v18;
  WitnessTable = swift_getWitnessTable();
  v137 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  *&v123 = v17;
  *(&v123 + 1) = v19;
  *&v124 = WitnessTable;
  *(&v124 + 1) = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v123 = v17;
  *(&v123 + 1) = v19;
  *&v124 = WitnessTable;
  *(&v124 + 1) = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v123 = OpaqueTypeMetadata2;
  *(&v123 + 1) = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeMetadata2();
  *&v123 = OpaqueTypeMetadata2;
  *(&v123 + 1) = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  *&v123 = v24;
  *(&v123 + 1) = MEMORY[0x1E69E6158];
  *&v124 = v25;
  *(&v124 + 1) = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  v26 = sub_1E5A2BD84();
  v136 = v97;
  v27 = swift_getWitnessTable();
  *&v123 = v26;
  *(&v123 + 1) = v19;
  *&v124 = v27;
  *(&v124 + 1) = v21;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = sub_1E5A29E74();
  *&v123 = v26;
  *(&v123 + 1) = v19;
  *&v124 = v27;
  *(&v124 + 1) = v21;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_1E5977D28(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *&v123 = v28;
  *(&v123 + 1) = v29;
  *&v124 = v30;
  *(&v124 + 1) = v31;
  sub_1E5A2B5C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  v32 = swift_getWitnessTable();
  v70 = MEMORY[0x1E6981810];
  v33 = swift_getWitnessTable();
  v134 = v32;
  v135 = v33;
  v72 = MEMORY[0x1E697F968];
  v133 = swift_getWitnessTable();
  swift_getWitnessTable();
  v34 = sub_1E5A2B604();
  v35 = swift_getWitnessTable();
  *&v123 = v34;
  *(&v123 + 1) = v19;
  *&v124 = v35;
  *(&v124 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  v121 = sub_1E5A2A6C4();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  v36 = sub_1E5A2A6C4();
  v131 = swift_getWitnessTable();
  v132 = MEMORY[0x1E697E5D8];
  v68[1] = MEMORY[0x1E697E858];
  v73 = v36;
  v74 = swift_getWitnessTable();
  v76 = sub_1E5A2A774();
  v37 = sub_1E5A2A6C4();
  v77 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v69 = v68 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  v39 = sub_1E5A2A6C4();
  v78 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v71 = v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v75 = v68 - v42;
  v43 = v94[5];
  v127 = v94[4];
  v128 = v43;
  v129 = v94[6];
  v130 = *(v94 + 14);
  v44 = v94[1];
  v123 = *v94;
  v124 = v44;
  v45 = v94[3];
  v125 = v94[2];
  v126 = v45;
  v117 = v92;
  v118 = v93;
  v119 = v91;
  v120 = v95;
  v121 = v98;
  v122 = v97;
  v46 = type metadata accessor for TVActiveWorkoutPlanWorkoutView(0, &v117);
  v47 = v79;
  sub_1E596FEB8(v46, v79);
  sub_1E5A2B7E4();
  v48 = swift_getWitnessTable();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  v50 = sub_1E58CD164(qword_1ECFFEAC8, &qword_1ECFFEAC0, &qword_1E5A3B470, MEMORY[0x1E697DB78]);
  *&v123 = v49;
  *(&v123 + 1) = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v115 = v48;
  v116 = v51;
  v114 = swift_getWitnessTable();
  v52 = v82;
  v53 = swift_getWitnessTable();
  v54 = v81;
  sub_1E5A2B2D4();
  (*(v86 + 8))(v47, v52);
  sub_1E5A2B7E4();
  v112 = v53;
  v113 = MEMORY[0x1E697E040];
  v66 = v85;
  v67 = swift_getWitnessTable();
  v55 = v83;
  sub_1E5A2B2E4();
  (*(v88 + 8))(v54, v66);
  sub_1E5A2B7F4();
  v99 = v92;
  v100 = v93;
  v56 = v96;
  v101 = v91;
  v102 = v95;
  v103 = v98;
  v104 = v97;
  v105 = v94;
  v110 = v67;
  v111 = MEMORY[0x1E697EBF8];
  v57 = swift_getWitnessTable();
  v58 = v69;
  sub_1E5A2B314();
  (*(v89 + 8))(v55, v56);
  sub_1E5A2A0A4();
  v59 = swift_getWitnessTable();
  v108 = v57;
  v109 = v59;
  v60 = swift_getWitnessTable();
  v61 = v71;
  sub_1E5A2B114();
  (*(v77 + 8))(v58, v37);
  v62 = sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  v106 = v60;
  v107 = v62;
  swift_getWitnessTable();
  v63 = v75;
  sub_1E58B41DC();
  v64 = *(v78 + 8);
  v64(v61, v39);
  sub_1E58B41DC();
  return (v64)(v63, v39);
}

uint64_t sub_1E5974084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a6;
  v50 = a5;
  v49 = a3;
  v48 = a2;
  v51 = a1;
  v52 = a8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA8, &qword_1E5A3B450);
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB0, &qword_1E5A3B458);
  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB8, &unk_1E5A3B460);
  v77 = MEMORY[0x1E6981840];
  v14 = sub_1E5A2BD84();
  v68 = a2;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v46 = a4;
  v72 = a6;
  v73 = a7;
  v15 = a7;
  v45 = a7;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(255, &v68);
  v16 = sub_1E5A2BD84();
  v67 = a6;
  WitnessTable = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v68 = v14;
  v69 = v16;
  v70 = WitnessTable;
  v71 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = v14;
  v69 = v16;
  v70 = WitnessTable;
  v71 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeMetadata2;
  v69 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v68 = OpaqueTypeMetadata2;
  v69 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v68 = v21;
  v69 = MEMORY[0x1E69E6158];
  v70 = v22;
  v71 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  v23 = sub_1E5A2BD84();
  v65 = v15;
  v24 = swift_getWitnessTable();
  v68 = v23;
  v69 = v16;
  v70 = v24;
  v71 = v18;
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = sub_1E5A29E74();
  v68 = v23;
  v69 = v16;
  v70 = v24;
  v71 = v18;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_1E5977D28(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v68 = v25;
  v69 = v26;
  v70 = v27;
  v71 = v28;
  sub_1E5A2B5C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  v63 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  swift_getWitnessTable();
  v29 = sub_1E5A2B604();
  v30 = swift_getWitnessTable();
  v68 = v29;
  v69 = v16;
  v70 = v30;
  v71 = v18;
  swift_getOpaqueTypeMetadata2();
  v78 = sub_1E5A2A6C4();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v31 = sub_1E5A2B604();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v45 - v33;
  v35 = sub_1E5A2A6C4();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v45 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v45 - v40;
  sub_1E5A2AA34();
  v53 = v48;
  v54 = v49;
  v55 = v46;
  v56 = v50;
  v57 = v47;
  v58 = v45;
  v59 = v51;
  sub_1E5A2B5F4();
  v42 = swift_getWitnessTable();
  sub_1E5A2B324();
  (*(v32 + 8))(v34, v31);
  v60 = v42;
  v61 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E58B41DC();
  v43 = *(v36 + 8);
  v43(v38, v35);
  sub_1E58B41DC();
  return (v43)(v41, v35);
}

id sub_1E59747A4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v236 = a4;
  v237 = a7;
  *(&v231 + 1) = a3;
  v232 = a5;
  *&v231 = a2;
  v209 = a8;
  v15 = sub_1E5A2ACC4();
  v207 = *(v15 - 8);
  v208 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v206 = &v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5A2BD84();
  *&v266 = a2;
  *(&v266 + 1) = a3;
  *&v267 = a4;
  *(&v267 + 1) = a5;
  v233 = a6;
  *&v268 = a6;
  *(&v268 + 1) = a7;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(255, &v266);
  v18 = sub_1E5A2BD84();
  v279 = a6;
  v235 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable();
  v278 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  *&v266 = v17;
  *(&v266 + 1) = v18;
  *&v267 = WitnessTable;
  *(&v267 + 1) = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v266 = v17;
  *(&v266 + 1) = v18;
  *&v267 = WitnessTable;
  *(&v267 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v266 = OpaqueTypeMetadata2;
  *(&v266 + 1) = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeMetadata2();
  *&v266 = OpaqueTypeMetadata2;
  *(&v266 + 1) = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  *&v266 = v23;
  *(&v266 + 1) = MEMORY[0x1E69E6158];
  *&v267 = v24;
  *(&v267 + 1) = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  v25 = sub_1E5A2BD84();
  v277 = v237;
  v26 = swift_getWitnessTable();
  *&v266 = v25;
  *(&v266 + 1) = v18;
  *&v267 = v26;
  *(&v267 + 1) = v20;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = sub_1E5A29E74();
  *&v266 = v25;
  *(&v266 + 1) = v18;
  *&v267 = v26;
  *(&v267 + 1) = v20;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_1E5977D28(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *&v266 = v27;
  *(&v266 + 1) = v28;
  *&v267 = v29;
  *(&v267 + 1) = v30;
  sub_1E5A2B5C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2AA84();
  v31 = sub_1E5A2BD84();
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v275 = v32;
  v276 = v33;
  v274 = swift_getWitnessTable();
  v191 = swift_getWitnessTable();
  v192 = v31;
  v34 = sub_1E5A2B604();
  v196 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v221 = &v187 - v35;
  v36 = swift_getWitnessTable();
  v198 = v34;
  *&v266 = v34;
  v204 = v18;
  v205 = v20;
  *(&v266 + 1) = v18;
  v194 = v36;
  *&v267 = v36;
  *(&v267 + 1) = v20;
  v37 = swift_getOpaqueTypeMetadata2();
  v195 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v193 = &v187 - v38;
  v197 = v39;
  v203 = sub_1E5A2A6C4();
  v199 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v202 = &v187 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v200 = &v187 - v42;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAB8, &unk_1E5A3B460);
  MEMORY[0x1EEE9AC00](v222);
  v201 = &v187 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v190 = &v187 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v223 = &v187 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v187 = &v187 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v217 = &v187 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v187 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v189 = &v187 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v219 = &v187 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v187 - v60;
  v62 = sub_1E5A29CF4();
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v188 = &v187 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v218 = &v187 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v187 - v68;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7F8, &unk_1E5A3AE30);
  MEMORY[0x1EEE9AC00](v213);
  v215 = &v187 - v70;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE800, &qword_1E5A3B6C0);
  MEMORY[0x1EEE9AC00](v214);
  v216 = &v187 - v71;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAA8, &qword_1E5A3B450);
  MEMORY[0x1EEE9AC00](v230);
  v220 = &v187 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v210 = &v187 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v235 = &v187 - v76;
  v77 = a1[5];
  v270 = a1[4];
  v271 = v77;
  v272 = a1[6];
  v273 = *(a1 + 14);
  v78 = a1[1];
  v266 = *a1;
  v267 = v78;
  v79 = a1[3];
  v268 = a1[2];
  v269 = v79;
  v257 = v231;
  *&v258 = v236;
  *(&v258 + 1) = v232;
  *&v259 = v233;
  *(&v259 + 1) = v237;
  v80 = type metadata accessor for TVActiveWorkoutPlanWorkoutView(0, &v257);
  sub_1E596FA3C();
  swift_getKeyPath();
  sub_1E5A2B934();

  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v82 = *(active - 8);
  v83 = *(v82 + 48);
  v224 = v82 + 48;
  v225 = v83;
  v84 = v83(v54, 1, active);
  v234 = v80;
  v228 = v63;
  v229 = v62;
  v227 = active;
  if (v84 == 1)
  {
    sub_1E58BAD14(v54, &qword_1ECFFC2A0, &qword_1E5A30640);
    v226 = *(v63 + 56);
    v226(v61, 1, 1, v62);
    v85 = a1[5];
    v270 = a1[4];
    v271 = v85;
    v272 = a1[6];
    v273 = *(a1 + 14);
    v86 = a1[1];
    v266 = *a1;
    v267 = v86;
    v87 = a1[3];
    v268 = a1[2];
    v269 = v87;
    sub_1E596FC48();
    if ((*(v63 + 48))(v61, 1, v62) != 1)
    {
      sub_1E58BAD14(v61, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    }
  }

  else
  {
    (*(v63 + 16))(v61, &v54[*(active + 32)], v62);
    sub_1E58E7804(v54, type metadata accessor for ActiveWorkoutPlanWorkout);
    v226 = *(v63 + 56);
    v226(v61, 0, 1, v62);
    (*(v63 + 32))(v69, v61, v62);
  }

  v211 = sub_1E5A2AFC4();
  v212 = v88;
  v90 = v89;
  v92 = v91;
  v93 = v215;
  v94 = &v215[*(v213 + 36)];
  v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE808, &qword_1E5A3AE40) + 28);
  v96 = *MEMORY[0x1E6980FD8];
  v97 = sub_1E5A2AF94();
  v98 = *(v97 - 8);
  (*(v98 + 104))(v94 + v95, v96, v97);
  (*(v98 + 56))(v94 + v95, 0, 1, v97);
  *v94 = swift_getKeyPath();
  *v93 = v211;
  *(v93 + 1) = v90;
  v99 = v93;
  v93[16] = v92 & 1;
  *(v93 + 3) = v212;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
    v99 = v93;
  }

  v100 = qword_1ED026498;
  v101 = v216;
  sub_1E58F0054(v99, v216, &qword_1ECFFE7F8, &unk_1E5A3AE30);
  *(v101 + *(v214 + 36)) = v100;
  v102 = objc_opt_self();
  v103 = *MEMORY[0x1E69DDD10];

  result = [v102 _preferredFontForTextStyle_variant_];
  v106 = v218;
  v105 = v219;
  v107 = v217;
  if (!result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v108 = sub_1E5A2AF34();
  KeyPath = swift_getKeyPath();
  v110 = v101;
  v111 = v210;
  sub_1E58F0054(v110, v210, &qword_1ECFFE800, &qword_1E5A3B6C0);
  v112 = (v111 + *(v230 + 36));
  *v112 = KeyPath;
  v112[1] = v108;
  sub_1E58F0054(v111, v235, &qword_1ECFFEAA8, &qword_1E5A3B450);
  v113 = a1[5];
  v270 = a1[4];
  v271 = v113;
  v272 = a1[6];
  v273 = *(a1 + 14);
  v114 = a1[1];
  v266 = *a1;
  v267 = v114;
  v115 = a1[3];
  v268 = a1[2];
  v269 = v115;
  sub_1E596FA3C();
  swift_getKeyPath();
  sub_1E5A2B934();

  v116 = v227;
  v117 = v225(v107, 1, v227);
  v119 = v228;
  v118 = v229;
  if (v117 == 1)
  {
    sub_1E58BAD14(v107, &qword_1ECFFC2A0, &qword_1E5A30640);
    v226(v105, 1, 1, v118);
    v120 = a1[5];
    v270 = a1[4];
    v271 = v120;
    v272 = a1[6];
    v273 = *(a1 + 14);
    v121 = a1[1];
    v266 = *a1;
    v267 = v121;
    v122 = a1[3];
    v268 = a1[2];
    v269 = v122;
    sub_1E596FC48();
    if ((*(v119 + 48))(v105, 1, v118) != 1)
    {
      sub_1E58BAD14(v105, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    }
  }

  else
  {
    (*(v228 + 16))(v105, v107 + *(v116 + 24), v229);
    sub_1E58E7804(v107, type metadata accessor for ActiveWorkoutPlanWorkout);
    v226(v105, 0, 1, v118);
    (*(v119 + 32))(v106, v105, v118);
  }

  v123 = sub_1E5A2AFC4();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v130 = swift_getKeyPath();
  result = [v102 _preferredFontForTextStyle_variant_];
  if (!result)
  {
    goto LABEL_19;
  }

  v131 = sub_1E5A2AF34();
  v132 = swift_getKeyPath();
  v265 = v127 & 1;
  v263 = 0;
  *&v257 = v123;
  *(&v257 + 1) = v125;
  LOBYTE(v258) = v127 & 1;
  *(&v258 + 1) = *v264;
  DWORD1(v258) = *&v264[3];
  *(&v258 + 1) = v129;
  *&v259 = v130;
  *(&v259 + 1) = 1;
  LOBYTE(v260) = 0;
  *(&v260 + 1) = *v262;
  DWORD1(v260) = *&v262[3];
  *(&v260 + 1) = v132;
  v261 = v131;
  v133 = a1[5];
  v270 = a1[4];
  v271 = v133;
  v272 = a1[6];
  v273 = *(a1 + 14);
  v134 = a1[1];
  v266 = *a1;
  v267 = v134;
  v135 = a1[3];
  v268 = a1[2];
  v269 = v135;
  sub_1E596FA3C();
  swift_getKeyPath();
  v136 = v187;
  sub_1E5A2B934();

  v137 = v227;
  if (v225(v136, 1, v227) == 1)
  {
    sub_1E58BAD14(v136, &qword_1ECFFC2A0, &qword_1E5A30640);
    v139 = v228;
    v138 = v229;
    v140 = v189;
    v226(v189, 1, 1, v229);
    v141 = a1[5];
    v270 = a1[4];
    v271 = v141;
    v272 = a1[6];
    v273 = *(a1 + 14);
    v142 = a1[1];
    v266 = *a1;
    v267 = v142;
    v143 = a1[3];
    v268 = a1[2];
    v269 = v143;
    sub_1E596FC48();
    if ((*(v139 + 48))(v140, 1, v138) != 1)
    {
      sub_1E58BAD14(v140, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    }
  }

  else
  {
    v145 = v228;
    v144 = v229;
    v146 = v136 + *(v137 + 28);
    v147 = v189;
    (*(v228 + 16))(v189, v146, v229);
    sub_1E58E7804(v136, type metadata accessor for ActiveWorkoutPlanWorkout);
    v226(v147, 0, 1, v144);
    (*(v145 + 32))(v188, v147, v144);
  }

  v148 = sub_1E5A2AFC4();
  v150 = v149;
  v152 = v151;
  v154 = v153;
  v155 = swift_getKeyPath();
  v156 = sub_1E5A2ABA4();
  v256 = v152 & 1;
  v254 = 0;
  v157 = *(v222 + 36);
  v158 = *MEMORY[0x1E6981DB8];
  v159 = sub_1E5A2B814();
  v160 = v190;
  (*(*(v159 - 8) + 104))(&v190[v157], v158, v159);
  *v160 = v148;
  *(v160 + 8) = v150;
  *(v160 + 16) = v256;
  *(v160 + 17) = *v255;
  *(v160 + 20) = *&v255[3];
  *(v160 + 24) = v154;
  *(v160 + 32) = v155;
  *(v160 + 40) = 1;
  *(v160 + 48) = v254;
  *(v160 + 49) = v252;
  *(v160 + 51) = v253;
  *(v160 + 52) = v156;
  v161 = sub_1E58F0054(v160, v223, &qword_1ECFFEAB8, &unk_1E5A3B460);
  MEMORY[0x1EEE9AC00](v161);
  v162 = *(&v231 + 1);
  *(&v187 - 8) = v231;
  *(&v187 - 7) = v162;
  v164 = v232;
  v163 = v233;
  *(&v187 - 6) = v236;
  *(&v187 - 5) = v164;
  *(&v187 - 4) = v163;
  *(&v187 - 3) = v237;
  *(&v187 - 2) = a1;
  sub_1E5A2AA24();
  sub_1E5A2B5F4();
  v165 = a1[5];
  v270 = a1[4];
  v271 = v165;
  v272 = a1[6];
  v273 = *(a1 + 14);
  v166 = a1[1];
  v266 = *a1;
  v267 = v166;
  v167 = a1[3];
  v268 = a1[2];
  v269 = v167;
  *&v246 = sub_1E596FADC(v234);
  *(&v246 + 1) = v168;
  LOBYTE(v247) = v169;
  LOBYTE(v251[0]) = 0;
  v170 = v206;
  sub_1E5A2ACB4();
  v171 = swift_checkMetadataState();
  v172 = v193;
  v173 = v194;
  v174 = v198;
  v175 = v205;
  v176 = v221;
  MEMORY[0x1E6931D40](&v246, v251, v170, v198, v171, v194, v205);
  (*(v207 + 8))(v170, v208);

  (*(v196 + 8))(v176, v174);
  sub_1E5A2B7E4();
  *&v266 = v174;
  *(&v266 + 1) = v171;
  *&v267 = v173;
  *(&v267 + 1) = v175;
  v177 = swift_getOpaqueTypeConformance2();
  v178 = v202;
  v179 = v197;
  sub_1E5A2B2D4();
  (*(v195 + 8))(v172, v179);
  v251[5] = v177;
  v251[6] = MEMORY[0x1E697E040];
  v180 = v203;
  v237 = swift_getWitnessTable();
  v181 = v200;
  sub_1E58B41DC();
  v182 = v199;
  v183 = *(v199 + 8);
  v183(v178, v180);
  v184 = v220;
  sub_1E58BABA0(v235, v220, &qword_1ECFFEAA8, &qword_1E5A3B450);
  v248 = v259;
  v249 = v260;
  v250 = v261;
  v246 = v257;
  v247 = v258;
  v251[0] = v184;
  v251[1] = &v246;
  v185 = v223;
  v186 = v201;
  sub_1E58BABA0(v223, v201, &qword_1ECFFEAB8, &unk_1E5A3B460);
  v244 = 0;
  v245 = 1;
  v251[2] = v186;
  v251[3] = &v244;
  (*(v182 + 16))(v178, v181, v180);
  v251[4] = v178;
  sub_1E58BABA0(&v257, &v266, &qword_1ECFFEAB0, &qword_1E5A3B458);
  v243[0] = v230;
  v243[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAB0, &qword_1E5A3B458);
  v243[2] = v222;
  v243[3] = MEMORY[0x1E6981840];
  v243[4] = v180;
  v238 = sub_1E5977A74();
  v239 = sub_1E5977B2C();
  v240 = sub_1E5977BE4();
  v241 = MEMORY[0x1E6981838];
  v242 = v237;
  sub_1E597DC00(v251, 5uLL, v243);
  sub_1E58BAD14(&v257, &qword_1ECFFEAB0, &qword_1E5A3B458);
  v183(v181, v180);
  sub_1E58BAD14(v185, &qword_1ECFFEAB8, &unk_1E5A3B460);
  sub_1E58BAD14(v235, &qword_1ECFFEAA8, &qword_1E5A3B450);
  v183(v178, v180);
  sub_1E58BAD14(v186, &qword_1ECFFEAB8, &unk_1E5A3B460);
  v268 = v248;
  v269 = v249;
  *&v270 = v250;
  v266 = v246;
  v267 = v247;
  sub_1E58BAD14(&v266, &qword_1ECFFEAB0, &qword_1E5A3B458);
  return sub_1E58BAD14(v220, &qword_1ECFFEAA8, &qword_1E5A3B450);
}

uint64_t sub_1E5975F80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, void (*a7)(char *, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v218 = a8;
  v219 = a7;
  *(&v211 + 1) = a3;
  v212 = a5;
  *&v211 = a2;
  v208 = a1;
  v14 = sub_1E5A2BD84();
  *&v228 = a2;
  *(&v228 + 1) = a3;
  *&v229 = a4;
  v209 = a4;
  v210 = a6;
  *(&v229 + 1) = a5;
  *&v230 = a6;
  *(&v230 + 1) = a7;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(255, &v228);
  v15 = sub_1E5A2BD84();
  v243 = a6;
  v16 = v14;
  WitnessTable = swift_getWitnessTable();
  v242 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v228 = v16;
  v19 = v16;
  v220 = v16;
  *(&v228 + 1) = v15;
  *&v229 = WitnessTable;
  *(&v229 + 1) = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v228 = v19;
  *(&v228 + 1) = v15;
  v179 = WitnessTable;
  *&v229 = WitnessTable;
  *(&v229 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v228 = OpaqueTypeMetadata2;
  v217 = OpaqueTypeMetadata2;
  *(&v228 + 1) = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeMetadata2();
  *&v228 = OpaqueTypeMetadata2;
  v180 = OpaqueTypeConformance2;
  *(&v228 + 1) = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  *&v228 = v22;
  *(&v228 + 1) = MEMORY[0x1E69E6158];
  v181 = v23;
  *&v229 = v23;
  *(&v229 + 1) = MEMORY[0x1E69E6168];
  v24 = sub_1E5A2B5C4();
  v25 = sub_1E5A2BD84();
  v241 = v219;
  v26 = swift_getWitnessTable();
  *&v228 = v25;
  *(&v228 + 1) = v15;
  *&v229 = v26;
  *(&v229 + 1) = v18;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = sub_1E5A29E74();
  *&v228 = v25;
  v188 = v15;
  *(&v228 + 1) = v15;
  v196 = v26;
  *&v229 = v26;
  v207 = v18;
  *(&v229 + 1) = v18;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_1E5977D28(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *&v228 = v27;
  v201 = v28;
  *(&v228 + 1) = v28;
  v197 = v30;
  v198 = v29;
  *&v229 = v29;
  *(&v229 + 1) = v30;
  v31 = sub_1E5A2B5C4();
  swift_getTupleTypeMetadata2();
  v32 = sub_1E5A2B864();
  v184 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v183 = &v163 - v33;
  v194 = swift_checkMetadataState();
  v192 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v190 = &v163 - v34;
  v202 = v27;
  v195 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v193 = &v163 - v36;
  v199 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v200 = &v163 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v205 = &v163 - v40;
  v41 = sub_1E5A2BA14();
  v177 = *(v41 - 8);
  v178 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v176 = &v163 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v175 = &v163 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1E5A29C74();
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v163 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v46 - 8);
  v186 = &v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v174 = &v163 - v49;
  v50 = swift_checkMetadataState();
  v166 = *(v50 - 8);
  v167 = v50;
  MEMORY[0x1EEE9AC00](v50);
  v165 = &v163 - v51;
  v52 = swift_checkMetadataState();
  v171 = *(v52 - 8);
  v172 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v185 = &v163 - v53;
  v182 = v22;
  v173 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v170 = &v163 - v55;
  v206 = v24;
  v187 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v203 = &v163 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v204 = &v163 - v59;
  v216 = v32;
  v217 = v31;
  v60 = sub_1E5A2AA84();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v191 = &v163 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v189 = &v163 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v67 = &v163 - v66;
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v69 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v71 = &v163 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = v60;
  v72 = sub_1E5A2BD84();
  v214 = *(v72 - 8);
  v215 = v72;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v163 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v213 = &v163 - v76;
  v228 = v211;
  *&v229 = v209;
  *(&v229 + 1) = v212;
  *&v230 = v210;
  *(&v230 + 1) = v219;
  v219 = type metadata accessor for TVActiveWorkoutPlanWorkoutView(0, &v228);
  v77 = v208;
  sub_1E596FA3C();
  swift_getKeyPath();
  sub_1E5A2B934();

  if ((*(v69 + 48))(v67, 1, active) == 1)
  {
    sub_1E58BAD14(v67, &qword_1ECFFC2A0, &qword_1E5A30640);
    (*(v61 + 56))(v74, 1, 1, v220);
    v78 = swift_getWitnessTable();
    v79 = swift_getWitnessTable();
    v239 = v78;
    v240 = v79;
    swift_getWitnessTable();
    v80 = v74;
  }

  else
  {
    *(&v211 + 1) = v74;
    v212 = v61;
    v81 = v71;
    sub_1E5969FD8(v67, v71);
    if (v71[*(active + 44)] == 1)
    {
      v82 = active;
      v164 = active;
      v83 = v77;
      v84 = *(v77 + 8);
      v85 = &v71[*(v82 + 20)];
      v86 = *v85;
      v87 = v85[1];
      swift_bridgeObjectRetain_n();
      v88 = v165;
      v209 = v87;
      v210 = v86;
      v84(v86, v87);
      v89 = v83[5];
      v232 = v83[4];
      v233 = v89;
      v234 = v83[6];
      v235 = *(v83 + 14);
      v90 = v83[1];
      v228 = *v83;
      v229 = v90;
      v91 = v83[3];
      v230 = v83[2];
      v231 = v91;
      v225 = sub_1E596FADC(v219);
      v226 = v92;
      v227 = v93;
      LOBYTE(v221) = 0;
      *&v211 = swift_checkMetadataState();
      v94 = v167;
      sub_1E5A2B304();

      (*(v166 + 8))(v88, v94);
      sub_1E5A2B9B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E5A2C930;
      *(inited + 32) = 1701667182;
      *(inited + 40) = 0xE400000000000000;
      sub_1E5A29C64();
      sub_1E5977D28(&qword_1ECFFE7C8, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      *(inited + 48) = sub_1E5A2BBB4();
      *(inited + 56) = v96;
      v97 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      strcpy((inited + 80), "impressionType");
      *(inited + 120) = v97;
      *(inited + 95) = -18;
      *(inited + 96) = 0x74756F6B726F77;
      *(inited + 104) = 0xE700000000000000;
      sub_1E590DF48(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
      swift_arrayDestroy();
      sub_1E5A2B984();
      v98 = MEMORY[0x1E69E7CC0];
      sub_1E590DF48(MEMORY[0x1E69E7CC0]);
      sub_1E590DF48(v98);
      v99 = v174;
      sub_1E5A2B9D4();
      v100 = sub_1E5A2B9E4();
      (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
      v101 = v176;
      sub_1E5A2B9F4();
      v102 = v170;
      v103 = v172;
      v104 = v185;
      sub_1E5A2B014();
      (*(v177 + 8))(v101, v178);
      sub_1E58BAD14(v99, &qword_1ECFFB550, &qword_1E5A304B0);
      (*(v171 + 8))(v104, v103);
      *&v228 = v210;
      *(&v228 + 1) = v209;
      v105 = v203;
      v106 = v182;
      sub_1E5A2B2A4();

      (*(v173 + 8))(v102, v106);
      v186 = MEMORY[0x1E6981810];
      v107 = v206;
      v188 = swift_getWitnessTable();
      sub_1E58B41DC();
      v108 = *(v187 + 8);
      v209 = v187 + 8;
      v210 = v108;
      v108(v105, v107);
      v109 = v190;
      (*(v83 + 10))(&v81[*(v164 + 40)]);
      v110 = v83[5];
      v232 = v83[4];
      v233 = v110;
      v234 = v83[6];
      v235 = *(v83 + 14);
      v111 = v83[1];
      v228 = *v83;
      v229 = v111;
      v112 = v83[3];
      v230 = v83[2];
      v231 = v112;
      v225 = sub_1E596FADC(v219);
      v226 = v113;
      v227 = v114;
      LOBYTE(v221) = 1;
      v163 = v81;
      v116 = v193;
      v115 = v194;
      sub_1E5A2B304();

      (*(v192 + 8))(v109, v115);
      v117 = v200;
      v118 = v202;
      sub_1E5A2B2A4();
      (*(v195 + 8))(v116, v118);
      v119 = v217;
      v120 = swift_getWitnessTable();
      v121 = v205;
      sub_1E58B41DC();
      v122 = v199;
      v123 = *(v199 + 8);
      v123(v117, v119);
      v219 = v123;
      v124 = v203;
      v125 = v206;
      (*(v187 + 16))(v203, v204, v206);
      *&v228 = v124;
      (*(v122 + 16))(v117, v121, v119);
      *(&v228 + 1) = v117;
      v225 = v125;
      v226 = v119;
      v221 = v188;
      v222 = v120;
      v126 = v120;
      v127 = v183;
      sub_1E597DC00(&v228, 2uLL, &v225);
      v123(v117, v119);
      v128 = v210;
      v210(v203, v125);
      v129 = v216;
      v130 = swift_getWitnessTable();
      v131 = v189;
      sub_1E595EBC0(v127, v129, v119, v130, v126);
      (*(v184 + 8))(v127, v129);
      (v219)(v205, v119);
      v128(v204, v206);
      v132 = v163;
    }

    else
    {
      v133 = v190;
      (*(v77 + 10))(&v71[*(active + 40)]);
      v134 = v77[5];
      v232 = v77[4];
      v233 = v134;
      v234 = v77[6];
      v235 = *(v77 + 14);
      v135 = v77[1];
      v228 = *v77;
      v229 = v135;
      v136 = v77[3];
      v230 = v77[2];
      v231 = v136;
      v225 = sub_1E596FADC(v219);
      v226 = v137;
      v227 = v138;
      LOBYTE(v221) = 0;
      swift_checkMetadataState();
      v140 = v193;
      v139 = v194;
      sub_1E5A2B304();

      (*(v192 + 8))(v133, v139);
      v141 = v200;
      v142 = v202;
      sub_1E5A2B2A4();
      (*(v195 + 8))(v140, v142);
      v143 = v217;
      v144 = swift_getWitnessTable();
      v145 = v205;
      sub_1E58B41DC();
      v146 = *(v199 + 8);
      v146(v141, v143);
      sub_1E58B41DC();
      v147 = v216;
      v148 = swift_getWitnessTable();
      v131 = v189;
      sub_1E595ECB8(v141, v147, v143, v148, v144);
      v146(v141, v143);
      v146(v145, v143);
      v132 = v81;
    }

    sub_1E58E7804(v132, type metadata accessor for ActiveWorkoutPlanWorkout);
    v149 = swift_getWitnessTable();
    v150 = swift_getWitnessTable();
    v223 = v149;
    v224 = v150;
    v151 = v220;
    swift_getWitnessTable();
    v152 = v191;
    sub_1E58B41DC();
    v153 = v212;
    (*(v212 + 8))(v131, v151);
    v154 = *(&v211 + 1);
    (*(v153 + 32))(*(&v211 + 1), v152, v151);
    v155 = v151;
    v80 = v154;
    (*(v153 + 56))(v154, 0, 1, v155);
  }

  v156 = v213;
  sub_1E598D20C(v80, v213);
  v157 = *(v214 + 8);
  v158 = v80;
  v159 = v215;
  v157(v158, v215);
  v160 = swift_getWitnessTable();
  v161 = swift_getWitnessTable();
  v237 = v160;
  v238 = v161;
  v236 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (v157)(v156, v159);
}

uint64_t sub_1E5977620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  MEMORY[0x1EEE9AC00](active);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView(0, v17);
  sub_1E596FA3C();
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return sub_1E58E7804(v15, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
}

uint64_t sub_1E5977790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1E5977804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E597784C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E59778C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5977984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC08, &unk_1E5A3B7B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E58BABA0(a1, &v5 - v3, &qword_1ECFFEC08, &unk_1E5A3B7B0);
  return sub_1E5A2A874();
}

unint64_t sub_1E5977A74()
{
  result = qword_1ECFFEBD0;
  if (!qword_1ECFFEBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA8, &qword_1E5A3B450);
    sub_1E596A4E0();
    sub_1E58CD164(&qword_1ECFFEBD8, &qword_1ECFFEBE0, &qword_1E5A3B788, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEBD0);
  }

  return result;
}

unint64_t sub_1E5977B2C()
{
  result = qword_1ECFFEBE8;
  if (!qword_1ECFFEBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB0, &qword_1E5A3B458);
    sub_1E596A650();
    sub_1E58CD164(&qword_1ECFFEBD8, &qword_1ECFFEBE0, &qword_1E5A3B788, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEBE8);
  }

  return result;
}

unint64_t sub_1E5977BE4()
{
  result = qword_1ECFFEBF0;
  if (!qword_1ECFFEBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB8, &unk_1E5A3B460);
    sub_1E5977C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEBF0);
  }

  return result;
}

unint64_t sub_1E5977C70()
{
  result = qword_1ECFFEBF8;
  if (!qword_1ECFFEBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEC00, &unk_1E5A3B7A0);
    sub_1E596A650();
    sub_1E58CD164(&qword_1ECFFC290, &qword_1ECFFC298, &qword_1E5A30568, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEBF8);
  }

  return result;
}

uint64_t sub_1E5977D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

FitnessWorkoutPlan::WorkoutPlanOffset __swiftcall WorkoutPlanOffset.init(days:hours:minutes:seconds:)(Swift::Int days, Swift::Int hours, Swift::Int minutes, Swift::Int seconds)
{
  *v4 = days;
  v4[1] = hours;
  v4[2] = minutes;
  v4[3] = seconds;
  result.seconds = seconds;
  result.minutes = minutes;
  result.hours = hours;
  result.days = days;
  return result;
}

uint64_t WorkoutPlanOffset.components.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC10, &qword_1E5A3B7C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC18, &qword_1E5A3B7C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1E5A29FE4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_1E5A2A004();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1E5A29C44();
}

uint64_t sub_1E5978058()
{
  v1 = 1937334628;
  v2 = 0x736574756E696DLL;
  if (*v0 != 2)
  {
    v2 = 0x73646E6F636573;
  }

  if (*v0)
  {
    v1 = 0x7372756F68;
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

uint64_t sub_1E59780C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5978A30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59780F0(uint64_t a1)
{
  v2 = sub_1E5978BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E597812C(uint64_t a1)
{
  v2 = sub_1E5978BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1E5978174(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_1E59781B0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_1E59781EC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t WorkoutPlanOffset.description.getter()
{
  sub_1E5A2BE64();
  MEMORY[0x1E69327A0](0xD000000000000018, 0x80000001E5A46A20);
  v0 = sub_1E5A2C0F4();
  MEMORY[0x1E69327A0](v0);

  MEMORY[0x1E69327A0](0x3A7372756F68202CLL, 0xE900000000000020);
  v1 = sub_1E5A2C0F4();
  MEMORY[0x1E69327A0](v1);

  MEMORY[0x1E69327A0](0x6574756E696D202CLL, 0xEB00000000203A73);
  v2 = sub_1E5A2C0F4();
  MEMORY[0x1E69327A0](v2);

  MEMORY[0x1E69327A0](0x646E6F636573202CLL, 0xEB00000000203A73);
  v3 = sub_1E5A2C0F4();
  MEMORY[0x1E69327A0](v3);

  MEMORY[0x1E69327A0](41, 0xE100000000000000);
  return 0;
}

uint64_t WorkoutPlanOffset.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC20, &qword_1E5A3B7D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5978BCC();
  sub_1E5A2C224();
  v15 = 0;
  sub_1E5A2C094();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_1E5A2C094();
  v13 = 2;
  sub_1E5A2C094();
  v12 = 3;
  sub_1E5A2C094();
  return (*(v5 + 8))(v7, v4);
}

uint64_t WorkoutPlanOffset.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC30, &qword_1E5A3B7D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5978BCC();
  sub_1E5A2C214();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_1E5A2BFC4();
    v17 = 1;
    v10 = sub_1E5A2BFC4();
    v16 = 2;
    v14 = sub_1E5A2BFC4();
    v15 = 3;
    v13 = sub_1E5A2BFC4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    v12 = v13;
    a2[2] = v14;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanOffset.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1E6932DE0](*v0);
  MEMORY[0x1E6932DE0](v1);
  MEMORY[0x1E6932DE0](v2);
  return MEMORY[0x1E6932DE0](v3);
}

uint64_t WorkoutPlanOffset.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  MEMORY[0x1E6932DE0](v2);
  MEMORY[0x1E6932DE0](v3);
  MEMORY[0x1E6932DE0](v4);
  return sub_1E5A2C204();
}

uint64_t sub_1E59788A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  MEMORY[0x1E6932DE0](v2);
  MEMORY[0x1E6932DE0](v3);
  MEMORY[0x1E6932DE0](v4);
  return sub_1E5A2C204();
}

uint64_t sub_1E5978920()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1E6932DE0](*v0);
  MEMORY[0x1E6932DE0](v1);
  MEMORY[0x1E6932DE0](v2);
  return MEMORY[0x1E6932DE0](v3);
}

uint64_t sub_1E5978978(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v2);
  MEMORY[0x1E6932DE0](v3);
  MEMORY[0x1E6932DE0](v4);
  MEMORY[0x1E6932DE0](v5);
  return sub_1E5A2C204();
}

uint64_t sub_1E5978A30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372756F68 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736574756E696DLL && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646E6F636573 && a2 == 0xE700000000000000)
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

BOOL _s18FitnessWorkoutPlan0bC6OffsetV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    v4 = a1[2] < a2[2];
  }

  else
  {
    v4 = v2 < v3;
  }

  if (*a1 == *a2)
  {
    return v4;
  }

  else
  {
    return *a1 < *a2;
  }
}

unint64_t sub_1E5978BCC()
{
  result = qword_1ECFFEC28;
  if (!qword_1ECFFEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEC28);
  }

  return result;
}

unint64_t sub_1E5978C20()
{
  result = qword_1ECFFEC38;
  if (!qword_1ECFFEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEC38);
  }

  return result;
}

uint64_t sub_1E5978C74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5978C94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1E5978CE4()
{
  result = qword_1ECFFEC40;
  if (!qword_1ECFFEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEC40);
  }

  return result;
}

unint64_t sub_1E5978D3C()
{
  result = qword_1ECFFEC48;
  if (!qword_1ECFFEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEC48);
  }

  return result;
}

unint64_t sub_1E5978D94()
{
  result = qword_1ECFFEC50;
  if (!qword_1ECFFEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEC50);
  }

  return result;
}

uint64_t PreviousPlanLockupState.placeholderIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviousPlanLockupState(0) + 24));

  return v1;
}

uint64_t PreviousPlanLockupState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PreviousPlanLockupState(0) + 28);

  return sub_1E5978EC8(a1, v3);
}

uint64_t sub_1E5978EC8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t PreviousPlanLockupState.isShowingAlert.setter(char a1)
{
  result = type metadata accessor for PreviousPlanLockupState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PreviousPlanLockupState.supportsRefreshedPlans.setter(char a1)
{
  result = type metadata accessor for PreviousPlanLockupState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PreviousPlanLockupState.init(hasActiveWorkoutPlan:locale:placeholderIdentifier:loadState:isShowingAlert:supportsRefreshedPlans:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for PreviousPlanLockupState(0);
  v17 = v16[8];
  sub_1E58D5C24(a1, a8);
  v18 = v16[5];
  v19 = sub_1E5A29EB4();
  (*(*(v19 - 8) + 32))(a8 + v18, a2, v19);
  v20 = (a8 + v16[6]);
  *v20 = a3;
  v20[1] = a4;
  result = sub_1E597918C(a5, a8 + v16[7]);
  *(a8 + v17) = a6;
  *(a8 + v16[9]) = a7;
  return result;
}

uint64_t sub_1E597918C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

unint64_t sub_1E59791F0()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0x7461745364616F6CLL;
  v4 = 0x6E69776F68537369;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1E59792C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5979FDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59792EC(uint64_t a1)
{
  v2 = sub_1E597965C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5979328(uint64_t a1)
{
  v2 = sub_1E597965C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviousPlanLockupState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC58, &qword_1E5A3BA68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E597965C();
  sub_1E5A2C224();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  sub_1E58FE478(&qword_1ECFFCDE0, MEMORY[0x1E6999B20]);
  sub_1E5A2C0B4();
  if (!v1)
  {
    type metadata accessor for PreviousPlanLockupState(0);
    v8[14] = 1;
    sub_1E5A29EB4();
    sub_1E5979C7C(&qword_1ECFFCDF0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5A2C0B4();
    v8[13] = 2;
    sub_1E5A2C064();
    v8[12] = 3;
    type metadata accessor for PreviousPlanLockupLoadState(0);
    sub_1E5979C7C(&qword_1ECFFEC68, type metadata accessor for PreviousPlanLockupLoadState, &protocol conformance descriptor for PreviousPlanLockupLoadState);
    sub_1E5A2C0B4();
    v8[11] = 4;
    sub_1E5A2C074();
    v8[10] = 5;
    sub_1E5A2C074();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E597965C()
{
  result = qword_1ECFFEC60;
  if (!qword_1ECFFEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEC60);
  }

  return result;
}

uint64_t PreviousPlanLockupState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E5A29EB4();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC70, &qword_1E5A3BA70);
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v25 - v9;
  v11 = type metadata accessor for PreviousPlanLockupState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E597965C();
  v31 = v10;
  v15 = v33;
  sub_1E5A2C214();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v16 = v13;
  v18 = v29;
  v17 = v30;
  v40 = 0;
  sub_1E58FE478(&qword_1ECFFCE08, MEMORY[0x1E6999B30]);
  sub_1E5A2BFE4();
  sub_1E58D5C24(v8, v16);
  v39 = 1;
  sub_1E5979C7C(&qword_1ECFFCE18, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  sub_1E5A2BFE4();
  (*(v28 + 32))(v16 + v11[5], v5, v17);
  v38 = 2;
  v19 = sub_1E5A2BF94();
  v20 = (v16 + v11[6]);
  *v20 = v19;
  v20[1] = v21;
  v37 = 3;
  sub_1E5979C7C(&qword_1ECFFEC78, type metadata accessor for PreviousPlanLockupLoadState, &protocol conformance descriptor for PreviousPlanLockupLoadState);
  v22 = v27;
  sub_1E5A2BFE4();
  sub_1E597918C(v22, v16 + v11[7]);
  v36 = 4;
  *(v16 + v11[8]) = sub_1E5A2BFA4() & 1;
  v35 = 5;
  v24 = sub_1E5A2BFA4();
  (*(v18 + 8))(v31, v32);
  *(v16 + v11[9]) = v24 & 1;
  sub_1E5979CC4(v16, v25, type metadata accessor for PreviousPlanLockupState);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_1E5979D2C(v16, type metadata accessor for PreviousPlanLockupState);
}

uint64_t sub_1E5979C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5979CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5979D2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s18FitnessWorkoutPlan08PreviousC11LockupStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E5A2B8F4() & 1) != 0 && (v4 = type metadata accessor for PreviousPlanLockupState(0), (MEMORY[0x1E6930AC0](a1 + v4[5], a2 + v4[5])) && ((v5 = v4[6], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_1E5A2C114()) && (_s18FitnessWorkoutPlan08PreviousC15LockupLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v4[7], (a2 + v4[7])) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8])))
  {
    v10 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_1E5979ED8()
{
  result = qword_1ECFFEC80;
  if (!qword_1ECFFEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEC80);
  }

  return result;
}

unint64_t sub_1E5979F30()
{
  result = qword_1ECFFEC88;
  if (!qword_1ECFFEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEC88);
  }

  return result;
}

unint64_t sub_1E5979F88()
{
  result = qword_1ECFFEC90;
  if (!qword_1ECFFEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEC90);
  }

  return result;
}

uint64_t sub_1E5979FDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001E5A46540 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A46A40 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E69776F68537369 && a2 == 0xEE007472656C4167 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5A46A60 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ActiveWorkoutPlanWorkoutEnvironment.init(fetchWorkout:makeActiveWorkoutPlanUpdatedStream:makeWorkoutPlansUpdatedStream:navigateToActiveWorkoutPlanDetail:navigateToWorkoutDetail:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
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

uint64_t ActiveWorkoutPlanWorkout.init(artwork:identifier:title:subtitle:caption:detail:planIdentifier:isScheduledToday:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  sub_1E597A380(a1, a9);
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v18 = (a9 + active[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = active[6];
  v20 = sub_1E5A29CF4();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a4, v20);
  v21(a9 + active[7], a5, v20);
  v21(a9 + active[8], a6, v20);
  sub_1E597A430(a7, a9 + active[9]);
  v22 = active[10];
  v23 = sub_1E5A29E74();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a8, v23);
  *(a9 + active[11]) = a10;
  return result;
}

uint64_t sub_1E597A380(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t type metadata accessor for ActiveWorkoutPlanWorkout(uint64_t a1)
{
  result = qword_1ECFFECE0;
  if (!qword_1ECFFECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E597A430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ActiveWorkoutPlanWorkout.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActiveWorkoutPlanWorkout(0) + 20));

  return v1;
}

uint64_t ActiveWorkoutPlanWorkout.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActiveWorkoutPlanWorkout(0) + 24);
  v4 = sub_1E5A29CF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActiveWorkoutPlanWorkout.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActiveWorkoutPlanWorkout(0) + 28);
  v4 = sub_1E5A29CF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActiveWorkoutPlanWorkout.caption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActiveWorkoutPlanWorkout(0) + 32);
  v4 = sub_1E5A29CF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActiveWorkoutPlanWorkout.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActiveWorkoutPlanWorkout(0) + 40);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1E597A770()
{
  v1 = *v0;
  v2 = 0x6B726F77747261;
  v3 = 0x6E6564496E616C70;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6E6F6974706163;
  if (v1 != 4)
  {
    v4 = 0x6C6961746564;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E597A878@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E597C508(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E597A8A0(uint64_t a1)
{
  v2 = sub_1E597AC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E597A8DC(uint64_t a1)
{
  v2 = sub_1E597AC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActiveWorkoutPlanWorkout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC98, &qword_1E5A3BCB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E597AC90();
  sub_1E5A2C224();
  v16 = 0;
  type metadata accessor for ActiveWorkoutPlanArtwork(0);
  sub_1E597C7AC(&qword_1ECFFECA8, type metadata accessor for ActiveWorkoutPlanArtwork, &protocol conformance descriptor for ActiveWorkoutPlanArtwork);
  sub_1E5A2C0B4();
  if (!v1)
  {
    type metadata accessor for ActiveWorkoutPlanWorkout(0);
    v15 = 1;
    sub_1E5A2C064();
    v14 = 2;
    sub_1E5A29CF4();
    sub_1E597C7AC(&qword_1ECFFECB0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
    sub_1E5A2C0B4();
    v13 = 3;
    sub_1E5A2C0B4();
    v12 = 4;
    sub_1E5A2C0B4();
    v11 = 5;
    sub_1E5A2C054();
    v10 = 6;
    sub_1E5A29E74();
    sub_1E597C7AC(&qword_1ECFFC7F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5A2C0B4();
    v9 = 7;
    sub_1E5A2C074();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E597AC90()
{
  result = qword_1ECFFECA0;
  if (!qword_1ECFFECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFECA0);
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1E5A29E74();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v44 - v6;
  v54 = sub_1E5A29CF4();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  active = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  MEMORY[0x1EEE9AC00](active);
  v53 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFECB8, &qword_1E5A3BCC0);
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E597AC90();
  v57 = v18;
  v23 = v58;
  sub_1E5A2C214();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v24 = v13;
  v44 = v10;
  v45 = v21;
  v58 = v19;
  v25 = v54;
  v67 = 0;
  sub_1E597C7AC(&qword_1ECFFECC0, type metadata accessor for ActiveWorkoutPlanArtwork, &protocol conformance descriptor for ActiveWorkoutPlanArtwork);
  v26 = v53;
  sub_1E5A2BFE4();
  v27 = v45;
  sub_1E597A380(v26, v45);
  v66 = 1;
  v28 = sub_1E5A2BF94();
  v29 = v58;
  v30 = (v27 + v58[5]);
  *v30 = v28;
  v30[1] = v31;
  v65 = 2;
  sub_1E597C7AC(&qword_1ECFFECC8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  sub_1E5A2BFE4();
  v32 = v27 + v29[6];
  v53 = *(v52 + 32);
  v53(v32, v24, v25);
  v64 = 3;
  v33 = v44;
  sub_1E5A2BFE4();
  v53(&v45[v29[7]], v33, v25);
  v63 = 4;
  v34 = v49;
  v35 = v25;
  v36 = v57;
  sub_1E5A2BFE4();
  LODWORD(v44) = 1;
  v37 = v29;
  v53(&v45[v29[8]], v34, v35);
  v62 = 5;
  v38 = v48;
  sub_1E5A2BF84();
  v39 = v45;
  sub_1E597A430(v38, &v45[v37[9]]);
  v61 = 6;
  sub_1E597C7AC(&qword_1ECFFC818, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v40 = v47;
  v41 = v51;
  sub_1E5A2BFE4();
  (*(v50 + 32))(v39 + v37[10], v40, v41);
  v60 = 7;
  v42 = v56;
  LOBYTE(v41) = sub_1E5A2BFA4();
  (*(v55 + 8))(v36, v42);
  *(v39 + v37[11]) = v41 & 1;
  sub_1E597B670(v39, v46, type metadata accessor for ActiveWorkoutPlanWorkout);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_1E597B6D8(v39, type metadata accessor for ActiveWorkoutPlanWorkout);
}

uint64_t sub_1E597B670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E597B6D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActiveWorkoutPlanWorkout.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E5A29CF4();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v29 - v6;
  v7 = sub_1E5A29D44();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1E5A2A064();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  sub_1E58BABA0(v2, &v29 - v17, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  if ((*(v13 + 48))(v18, 1, v12) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    sub_1E5A2C1D4();
    sub_1E597C7AC(&qword_1ECFFB5F0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
    sub_1E5A2BA44();
    (*(v13 + 8))(v15, v12);
  }

  active = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  sub_1E58BABA0(v2 + *(active + 20), v11, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v21 = v31;
  v20 = v32;
  v22 = (*(v31 + 48))(v11, 1, v32);
  v23 = v34;
  if (v22 == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    v24 = v29;
    (*(v21 + 32))(v29, v11, v20);
    sub_1E5A2C1D4();
    sub_1E597C7AC(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E5A2BA44();
    (*(v21 + 8))(v24, v20);
  }

  v25 = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  sub_1E5A2BB74();
  sub_1E597C7AC(&qword_1ECFFECD0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5A2BA44();
  sub_1E5A2BA44();
  sub_1E5A2BA44();
  v26 = v33;
  sub_1E58BABA0(v2 + *(v25 + 36), v33, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
  if ((*(v23 + 48))(v26, 1, v3) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    v27 = v30;
    (*(v23 + 32))(v30, v26, v3);
    sub_1E5A2C1D4();
    sub_1E5A2BA44();
    (*(v23 + 8))(v27, v3);
  }

  sub_1E5A29E74();
  sub_1E597C7AC(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  return sub_1E5A2C1D4();
}

uint64_t ActiveWorkoutPlanWorkout.hashValue.getter()
{
  sub_1E5A2C1B4();
  ActiveWorkoutPlanWorkout.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E597BDE4()
{
  sub_1E5A2C1B4();
  ActiveWorkoutPlanWorkout.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E597BE28(uint64_t a1)
{
  sub_1E5A2C1B4();
  ActiveWorkoutPlanWorkout.hash(into:)(v2);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan06ActivebcB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A29CF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFED10, &unk_1E5A3BF00);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  if ((static ActiveWorkoutPlanArtwork.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_19;
  }

  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v15 = active[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1E5A2C114() & 1) == 0 || (sub_1E5A29CC4() & 1) == 0 || (sub_1E5A29CC4() & 1) == 0 || (sub_1E5A29CC4() & 1) == 0)
  {
    goto LABEL_19;
  }

  v20 = active[9];
  v21 = *(v11 + 48);
  sub_1E58BABA0(a1 + v20, v13, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
  v28 = v21;
  sub_1E58BABA0(a2 + v20, &v13[v21], &qword_1ECFFE7C0, &unk_1E5A3ADD0);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v28], 1, v4) == 1)
    {
      sub_1E58BAD14(v13, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_1E58BABA0(v13, v10, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
  if (v22(&v13[v28], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_15:
    sub_1E58BAD14(v13, &qword_1ECFFED10, &unk_1E5A3BF00);
LABEL_19:
    v25 = 0;
    return v25 & 1;
  }

  (*(v5 + 32))(v7, &v13[v28], v4);
  sub_1E597C7AC(&qword_1ECFFED18, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
  v23 = sub_1E5A2BA74();
  v24 = *(v5 + 8);
  v24(v7, v4);
  v24(v10, v4);
  sub_1E58BAD14(v13, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((sub_1E5A29E54() & 1) == 0)
  {
    goto LABEL_19;
  }

  v25 = *(a1 + active[11]) ^ *(a2 + active[11]) ^ 1;
  return v25 & 1;
}

void sub_1E597C2CC(uint64_t a1)
{
  type metadata accessor for ActiveWorkoutPlanArtwork(319);
  if (v1 <= 0x3F)
  {
    sub_1E5A29CF4();
    if (v2 <= 0x3F)
    {
      sub_1E597C398(319);
      if (v3 <= 0x3F)
      {
        sub_1E5A29E74();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E597C398(uint64_t a1)
{
  if (!qword_1ECFFECF0)
  {
    sub_1E5A29CF4();
    v1 = sub_1E5A2BD84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFFECF0);
    }
  }
}

unint64_t sub_1E597C404()
{
  result = qword_1ECFFECF8;
  if (!qword_1ECFFECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFECF8);
  }

  return result;
}

unint64_t sub_1E597C45C()
{
  result = qword_1ECFFED00;
  if (!qword_1ECFFED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFED00);
  }

  return result;
}

unint64_t sub_1E597C4B4()
{
  result = qword_1ECFFED08;
  if (!qword_1ECFFED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFED08);
  }

  return result;
}

uint64_t sub_1E597C508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6564496E616C70 && a2 == 0xEE00726569666974 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5A46A80 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1E597C7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CalendarDay.components(calendar:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC10, &qword_1E5A3B7C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC18, &qword_1E5A3B7C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1E5A29FE4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = sub_1E5A2A004();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  return sub_1E5A29C44();
}

uint64_t CalendarDay.date(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC10, &qword_1E5A3B7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEC18, &qword_1E5A3B7C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v23 - v8;
  v24 = sub_1E5A29C54();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE58, &qword_1E5A340E8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v23 - v14;
  v16 = v2[1];
  v23[1] = *v2;
  v23[2] = v16;
  v17 = sub_1E5A29FE4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v9, a1, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  v19 = sub_1E5A2A004();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1E5A29C44();
  sub_1E5A29F84();
  (*(v10 + 8))(v12, v24);
  v20 = sub_1E5A29E34();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v15, 1, v20);
  if (result != 1)
  {
    return (*(v21 + 32))(v23[0], v15, v20);
  }

  __break(1u);
  return result;
}

__n128 CreateWorkoutPlanButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void CreateWorkoutPlanButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC348, &unk_1E5A3BF10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (a4)
  {
    if (a4 == 1)
    {
      v15 = v4[1];
      v44 = *v4;
      v16 = v4[3];
      v45 = v4[2];
      v46 = a3;
      v17 = *(a2 + 24);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v19 = v18[16];
      v20 = v18[20];
      v21 = v18[24];
      if (v17 == 1)
      {
        v22 = &v14[v21];
        v47 = 1;
        sub_1E597D29C();
        sub_1E5A2BE14();
        sub_1E5A2BC94();
        v23 = *MEMORY[0x1E6999B60];
        v24 = sub_1E5A2B924();
        (*(*(v24 - 8) + 104))(&v14[v19], v23, v24);
        v25 = *MEMORY[0x1E6999B40];
        v26 = sub_1E5A2B914();
        (*(*(v26 - 8) + 104))(&v14[v20], v25, v26);
        v27 = swift_allocObject();
        v28 = v45;
        v27[2] = v44;
        v27[3] = v15;
        v27[4] = v28;
        v27[5] = v16;
        *v22 = &unk_1E5A3BF38;
        *(v22 + 1) = v27;
        (*(v9 + 104))(v14, *MEMORY[0x1E6999AD8], v8);
        v29 = v46;
        v30 = *v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1E58E73A8(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        if (v32 >= v31 >> 1)
        {
          v30 = sub_1E58E73A8((v31 > 1), v32 + 1, 1, v30);
        }

        v30[2] = v32 + 1;
        (*(v9 + 32))(v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v14, v8);
        *v29 = v30;
      }

      else
      {
        v33 = &v11[v21];
        v48 = 0;
        sub_1E597D29C();
        sub_1E5A2BE14();
        sub_1E5A2BC94();
        v34 = *MEMORY[0x1E6999B50];
        v35 = sub_1E5A2B924();
        (*(*(v35 - 8) + 104))(&v11[v19], v34, v35);
        v36 = *MEMORY[0x1E6999B40];
        v37 = sub_1E5A2B914();
        (*(*(v37 - 8) + 104))(&v11[v20], v36, v37);
        v38 = swift_allocObject();
        v39 = v45;
        v38[2] = v44;
        v38[3] = v15;
        v38[4] = v39;
        v38[5] = v16;
        *v33 = &unk_1E5A3BF28;
        *(v33 + 1) = v38;
        (*(v9 + 104))(v11, *MEMORY[0x1E6999AD8], v8);
        v40 = v46;
        v41 = *v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1E58E73A8(0, v41[2] + 1, 1, v41);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_1E58E73A8((v42 > 1), v43 + 1, 1, v41);
        }

        v41[2] = v43 + 1;
        (*(v9 + 32))(v41 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v43, v11, v8);
        *v40 = v41;
      }
    }

    else
    {
      *(a2 + 1) = 1;
    }
  }
}

unint64_t sub_1E597D29C()
{
  result = qword_1ECFFED20;
  if (!qword_1ECFFED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFED20);
  }

  return result;
}

uint64_t sub_1E597D2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  *(v5 + 32) = sub_1E5A2BC84();
  *(v5 + 40) = sub_1E5A2BC74();
  *(v5 + 72) = 2;
  v6 = swift_task_alloc();
  *(v5 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFED30, &qword_1E5A3C068);
  *v6 = v5;
  v6[1] = sub_1E597D3D8;

  return MEMORY[0x1EEE01A40](v5 + 72, v7);
}

uint64_t sub_1E597D3D8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *v0;

  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_1E597D588;

  return v6();
}

uint64_t sub_1E597D588()
{
  *(*v1 + 64) = v0;

  v3 = sub_1E5A2BC54();
  if (v0)
  {
    v4 = sub_1E597D748;
  }

  else
  {
    v4 = sub_1E597D6E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E597D6E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E597D748()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E597D7AC(uint64_t a1, int *a2)
{
  v2[2] = sub_1E5A2BC84();
  v2[3] = sub_1E5A2BC74();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E58E4890;

  return v6();
}

uint64_t sub_1E597D8BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E58CD5C8;

  return sub_1E597D7AC(a1, v4);
}

uint64_t objectdestroyTm_4()
{

  return swift_deallocObject();
}

uint64_t sub_1E597D9C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E58CECB4;

  return sub_1E597D2F0(a1, v4, v5, v7, v6);
}

unint64_t sub_1E597DA84()
{
  result = qword_1EE2D0320;
  if (!qword_1EE2D0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0320);
  }

  return result;
}

unint64_t sub_1E597DADC()
{
  result = qword_1EE2D0328;
  if (!qword_1EE2D0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0328);
  }

  return result;
}

unint64_t sub_1E597DB34()
{
  result = qword_1EE2D0330[0];
  if (!qword_1EE2D0330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D0330);
  }

  return result;
}

unint64_t sub_1E597DBAC()
{
  result = qword_1ECFFED28;
  if (!qword_1ECFFED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFED28);
  }

  return result;
}

uint64_t sub_1E597DC00(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
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

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
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

  return sub_1E5A2B874();
}

uint64_t sub_1E597DDD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for WorkoutPlan(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E58BABA0(v2, v6, &qword_1ECFFEF78, &qword_1E5A3FD40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E598C4E4(v6, v10, type metadata accessor for WorkoutPlan);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E58BAD14(v6, &qword_1ECFFEF78, &qword_1E5A3FD40);
LABEL_8:
    v14 = 1;
    return (*(v8 + 56))(a1, v14, 1, v7);
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF88, &qword_1E5A3C548) + 48);
  sub_1E598C4E4(v6, v10, type metadata accessor for WorkoutPlan);
  v13 = sub_1E5A29E34();
  (*(*(v13 - 8) + 8))(&v6[v12], v13);
LABEL_6:
  sub_1E598C4E4(v10, a1, type metadata accessor for WorkoutPlan);
  v14 = 0;
  return (*(v8 + 56))(a1, v14, 1, v7);
}

id sub_1E597E018(uint64_t a1)
{
  v42 = a1;
  v2 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1E5A29EC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E5A29FE4();
  v11 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = sub_1E597E494(a1);
  v39 = v18;
  v40 = v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v31 = v19;
  v20 = sub_1E5A29E84();
  [v19 setLocale_];

  v38 = *MEMORY[0x1E6969868];
  v37 = *(v8 + 104);
  v33 = v7;
  v37(v10);
  sub_1E5A29ED4();
  v21 = *(v8 + 8);
  v35 = v8 + 8;
  v36 = v21;
  v21(v10, v7);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v22 = sub_1E5A29EB4();
  v32 = *(*(v22 - 8) + 56);
  v32(v6, 0, 1, v22);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v23 = sub_1E5A29F54();
  v24 = *(v11 + 8);
  v43 = v11 + 8;
  v41 = v24;
  v24(v16, v44);
  v25 = v31;
  [v31 setCalendar_];

  v26 = sub_1E5A2BB34();

  [v25 setLocalizedDateFormatFromTemplate_];

  v27 = v33;
  (v37)(v10, v38, v33);
  sub_1E5A29ED4();
  v36(v10, v27);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v32(v6, 0, 1, v22);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  if (sub_1E5A29F14() & 1) != 0 || (sub_1E5A29F44())
  {
    v28 = v25;
    v29 = 5;
  }

  else
  {
    v28 = v25;
    v29 = 4;
  }

  [v28 setFormattingContext_];
  v41(v13, v44);
  return v25;
}

uint64_t sub_1E597E494(uint64_t a1)
{
  v1 = 0x64204D4D4D4DLL;
  v2 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1E5A29EC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A29FE4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E6969868], v6, v12);
  sub_1E5A29ED4();
  (*(v7 + 8))(v9, v6);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v15 = sub_1E5A29EB4();
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  if ((sub_1E5A29F14() & 1) == 0 && (sub_1E5A29F44() & 1) == 0)
  {
    v1 = 0x4D4D202C45454545;
  }

  (*(v11 + 8))(v14, v10);
  return v1;
}

uint64_t sub_1E597E778@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1E5A29D24();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E5A29EB4();
  v5 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A29E34();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v58 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_1E5A29EC4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E5A29FE4();
  v23 = *(v22 - 8);
  v68 = v22;
  v69 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - v27;
  v56 = *a1;
  v55 = *(a1 + 2);
  v54 = *MEMORY[0x1E6969868];
  v53 = *(v19 + 104);
  v50 = v18;
  v53(v21);
  sub_1E5A29ED4();
  v52 = *(v19 + 8);
  v52(v21, v18);
  v29 = v28;
  sub_1E5A29F04();
  sub_1E5A29E94();
  v48 = v5;
  v51 = *(v5 + 56);
  v30 = v59;
  v51(v17, 0, 1, v59);
  v57 = v29;
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v70 = v56;
  v71 = v55;
  v31 = v50;
  (v53)(v21, v54, v50);
  v32 = v61;
  sub_1E5A29ED4();
  v33 = v21;
  v34 = v30;
  v52(v33, v31);
  v35 = v60;
  sub_1E5A29F04();
  sub_1E5A29E94();
  v51(v17, 0, 1, v30);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  CalendarDay.date(calendar:)(v25, v35);
  v36 = *(v69 + 8);
  v69 += 8;
  v36(v25, v68);
  v37 = sub_1E597E018(v35);
  v38 = sub_1E5A29DF4();
  v39 = [v37 stringFromDate_];

  sub_1E5A2BB44();
  v40 = v57;
  if (sub_1E5A29F14())
  {
    sub_1E5A2BAE4();
    sub_1E5A2BAD4();
    sub_1E5A2BAC4();

    sub_1E5A2BAD4();
    sub_1E5A2BB04();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v41 = qword_1EE2D33E0;
    (*(v48 + 16))(v49, v32, v34);
    v42 = v41;
    sub_1E5A2BB64();
    sub_1E5A29D14();
    v43 = v67;
    sub_1E5A29D04();
  }

  else
  {
    v58 = v36;
    if (sub_1E5A29F44())
    {
      sub_1E5A2BAE4();
      sub_1E5A2BAD4();
      sub_1E5A2BAC4();

      sub_1E5A2BAD4();
      sub_1E5A2BB04();
      if (qword_1EE2CFA28 != -1)
      {
        swift_once();
      }

      v44 = qword_1EE2D33E0;
      (*(v48 + 16))(v49, v32, v34);
      v45 = v44;
      sub_1E5A2BB64();
      sub_1E5A29D14();
      v43 = v67;
    }

    else
    {
      sub_1E5A29D14();
      v43 = v67;
    }

    sub_1E5A29D04();
    v36 = v58;
  }

  (*(v64 + 8))(v35, v65);
  v36(v40, v68);
  v46 = sub_1E5A29CF4();
  return (*(*(v46 - 8) + 56))(v43, 0, 1, v46);
}

uint64_t sub_1E597F050@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29E34();
  v24 = *(v2 - 8);
  *&v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1E5A29EC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A29FE4();
  v21 = *(v12 - 8);
  v22 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v29)
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E6969868], v8);
    sub_1E5A29ED4();
    (*(v9 + 8))(v11, v8);
    sub_1E5A29F04();
    sub_1E5A29E94();
    v16 = sub_1E5A29EB4();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    sub_1E5A29FA4();
    sub_1E5A29FF4();
    sub_1E5A29FB4();
    swift_getKeyPath();
    sub_1E5A2B934();

    v26[0] = v26[1];
    v17 = v23;
    sub_1E5A29E14();
    v18 = Calendar.availableDays(for:schedule:)(v17, v26);
    (*(v24 + 8))(v17, v25);

    (*(v21 + 8))(v14, v22);
    if (!*(v18 + 16))
    {

      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
      return result;
    }

    v25 = *(v18 + 32);
    v19 = *(v18 + 48);

    *a1 = v25;
    *(a1 + 16) = v19;
  }

  else
  {
    v20 = v28;
    *a1 = v27;
    *(a1 + 16) = v20;
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1E597F454@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v47 = sub_1E5A29CA4();
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = sub_1E5A2BB14();
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v37 - v5;
  v6 = sub_1E5A29E34();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_1E5A29EC4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5A29FE4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, *MEMORY[0x1E6969868], v13, v19);
  sub_1E5A29ED4();
  (*(v14 + 8))(v16, v13);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v22 = sub_1E5A29EB4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v40 = v23 + 56;
  v41 = v24;
  v24(v12, 0, 1, v22);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  sub_1E597F050(&v52);
  if (v53)
  {
    (*(v18 + 8))(v21, v17);
    v25 = 1;
    v26 = v51;
  }

  else
  {
    v37 = v18;
    v38 = v17;
    CalendarDay.date(calendar:)(v21, v8);
    type metadata accessor for ScheduleConfigurationSection(0);
    v27 = sub_1E597E018(v8);
    v28 = sub_1E5A29DF4();
    v49 = v27;
    v29 = [v27 stringFromDate_];

    sub_1E5A2BB44();
    v30 = sub_1E5A29F14();
    v39 = v8;
    if (v30)
    {
      sub_1E5A2BAE4();
      sub_1E5A2BAD4();
      v31 = v46;
    }

    else
    {
      sub_1E5A29F44();
      v31 = v46;
      sub_1E5A2BAE4();
      sub_1E5A2BAD4();
    }

    sub_1E5A2BAC4();

    sub_1E5A2BAD4();
    v32 = v42;
    sub_1E5A2BB04();
    (*(v31 + 16))(v43, v32, v50);
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v33 = qword_1EE2D33E0;
    v41(v12, 1, 1, v22);
    *&v52 = MEMORY[0x1E69E7CC0];
    sub_1E598932C(&qword_1ECFFF1B8, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF1C0, &qword_1E5A3C830);
    sub_1E58CD164(&qword_1ECFFF1C8, &qword_1ECFFF1C0, &qword_1E5A3C830, MEMORY[0x1E69E6328]);
    sub_1E5A2BDD4();
    v26 = v51;
    sub_1E5A29CD4();

    (*(v31 + 8))(v32, v50);
    (*(v44 + 8))(v39, v45);
    (*(v37 + 8))(v21, v38);
    v25 = 0;
  }

  v35 = sub_1E5A29CF4();
  return (*(*(v35 - 8) + 56))(v26, v25, 1, v35);
}

uint64_t sub_1E597FC4C()
{
  v60 = sub_1E5A29EB4();
  v0 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1E5A29CB4();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A29D24();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A29CF4();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E5A29E34();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_1E5A29EC4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E5A29FE4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v20, *MEMORY[0x1E6969868], v17, v23);
  sub_1E5A29ED4();
  (*(v18 + 8))(v20, v17);
  sub_1E5A29F04();
  sub_1E5A29E94();
  (*(v0 + 56))(v16, 0, 1, v60);
  v26 = v61;
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  sub_1E597F050(v62);
  if (v63)
  {
    (*(v22 + 8))(v25, v21);
    return 0;
  }

  else
  {
    v46 = v22;
    v60 = v21;
    CalendarDay.date(calendar:)(v25, v12);
    v28 = v26 + *(type metadata accessor for ScheduleConfigurationSection(0) + 24);
    v29 = sub_1E597E018(v12);
    v30 = sub_1E5A29DF4();
    v45 = v29;
    v31 = [v29 stringFromDate_];

    sub_1E5A2BB44();
    sub_1E5A2BAE4();
    sub_1E5A2BAD4();
    sub_1E5A2BAC4();

    sub_1E5A2BAD4();
    swift_getKeyPath();
    sub_1E5A2B934();

    v32 = *(v28 + *(type metadata accessor for WorkoutPlanDateHelper(0) + 20));
    [v32 setUnitsStyle_];
    [v32 setAllowedUnits_];
    sub_1E5A2BCF4();
    v33 = [v32 stringFromTimeInterval_];
    v47 = v12;
    if (v33)
    {
      v34 = v33;
      v35 = sub_1E5A2BB44();
      v37 = v36;

      v62[0] = v35;
      v62[1] = v37;
      sub_1E58D1C80();
      sub_1E5A2BDA4();
    }

    sub_1E5A29D14();
    v38 = v50;
    sub_1E5A29D04();
    v62[0] = MEMORY[0x1E69E7CC0];
    sub_1E598932C(&qword_1ECFFF0D0, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF0D8, &qword_1E5A3C720);
    sub_1E58CD164(&qword_1ECFFF0E0, &qword_1ECFFF0D8, &qword_1E5A3C720, MEMORY[0x1E69E6328]);
    v39 = v53;
    v40 = v57;
    sub_1E5A2BDD4();
    sub_1E5A2BAA4();
    (*(v55 + 8))(v39, v40);
    (*(v51 + 8))(v38, v52);
    sub_1E5A2BAD4();
    sub_1E5A2BB04();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v41 = qword_1EE2D33E0;
    swift_getKeyPath();
    v42 = v41;
    sub_1E5A2B944();

    v43 = sub_1E5A2BB64();

    (*(v54 + 8))(v47, v56);
    (*(v46 + 8))(v25, v60);
    return v43;
  }
}

uint64_t sub_1E5980598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E5A2AA24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF008, &qword_1E5A3C5E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF010, &qword_1E5A3C5F0);
  sub_1E5A2B664();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF018, &qword_1E5A3C5F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF020, &qword_1E5A3C600);
  v32 = sub_1E598C25C(&qword_1ECFFF028, &qword_1ECFFF018, &qword_1E5A3C5F8, sub_1E598C2E0);
  v33 = sub_1E598C42C();
  sub_1E5A2B704();
  v4 = sub_1E5A2AD94();
  sub_1E5A2A424();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF068, &qword_1E5A3C620) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_1E5A2B7E4();
  v16 = v15;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF070, &unk_1E5A3C628) + 36));
  v18 = *(sub_1E5A2A754() + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E5A2A9B4();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #28.0 }

  *v17 = _Q0;
  v26 = [objc_opt_self() secondarySystemBackgroundColor];
  v27 = sub_1E5A2B474();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  *&v17[*(v28 + 52)] = v27;
  *&v17[*(v28 + 56)] = 256;
  v29 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF078, &qword_1E5A3C638) + 36)];
  *v29 = v14;
  v29[1] = v16;
  v30 = sub_1E5A2B634();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF080, &qword_1E5A3C640);
  *(a2 + *(result + 36)) = v30;
  return result;
}

uint64_t sub_1E5980884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E5A2AA24();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF0E8, &qword_1E5A3C748);
  sub_1E5980D9C(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_1E5A2ADC4();
  sub_1E5A2A424();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF020, &qword_1E5A3C600);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

__n128 sub_1E5980938@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1E5A2A714();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScheduleConfigurationSection(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF040, &qword_1E5A3C610);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF038, &qword_1E5A3C608);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  sub_1E598BC80(v2, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScheduleConfigurationSection);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_1E598C4E4(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ScheduleConfigurationSection);
  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF088, &qword_1E5A3C648);
  sub_1E598C5B4();
  sub_1E5A2B574();
  sub_1E5A2A704();
  sub_1E58CD164(&qword_1ECFFF048, &qword_1ECFFF040, &qword_1E5A3C610, MEMORY[0x1E697D680]);
  sub_1E598932C(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v20 = v33;
  sub_1E5A2B0B4();
  (*(v34 + 8))(v6, v20);
  (*(v11 + 8))(v13, v10);
  v21 = sub_1E5A2ADF4();
  sub_1E5A2A424();
  v22 = &v17[*(v15 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v27 = v35;
  sub_1E58F0054(v17, v35, &qword_1ECFFF038, &qword_1E5A3C608);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF018, &qword_1E5A3C5F8) + 36);
  v29 = v42;
  *(v28 + 64) = v41;
  *(v28 + 80) = v29;
  *(v28 + 96) = v43;
  v30 = v38;
  *v28 = v37;
  *(v28 + 16) = v30;
  result = v40;
  *(v28 + 32) = v39;
  *(v28 + 48) = result;
  return result;
}

__n128 sub_1E5980D9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF0F0, &qword_1E5A3C750);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  sub_1E5980F60(a1, v26 - v6);
  LOBYTE(a1) = sub_1E5A2ADD4();
  sub_1E5A2A424();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF0F8, &qword_1E5A3C758) + 36)];
  *v16 = a1;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  LOBYTE(a1) = sub_1E5A2ADE4();
  sub_1E5A2A424();
  v17 = &v7[*(v5 + 44)];
  *v17 = a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  sub_1E58F0054(v7, a2, &qword_1ECFFF0F0, &qword_1E5A3C750);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF100, &qword_1E5A3C760) + 36);
  v23 = v26[5];
  *(v22 + 64) = v26[4];
  *(v22 + 80) = v23;
  *(v22 + 96) = v26[6];
  v24 = v26[1];
  *v22 = v26[0];
  *(v22 + 16) = v24;
  result = v26[3];
  *(v22 + 32) = v26[2];
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_1E5980F60@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF108, &qword_1E5A3C768);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF110, &qword_1E5A3C770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = sub_1E5A2B6C4();
  v39 = *(v13 - 8);
  v14 = v39;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  v41 = &v36 - v23;
  sub_1E5A2B6B4();
  *v12 = sub_1E5A2A934();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v25 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF118, &qword_1E5A3C778) + 44)];
  v38 = v12;
  sub_1E5981B78(a1, v25);
  v26 = v21;
  v37 = v21;
  sub_1E5A2B6B4();
  *v7 = sub_1E5A2A934();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF120, &qword_1E5A3C780);
  sub_1E5983288(a1, &v7[*(v27 + 44)]);
  v28 = *(v14 + 16);
  v40 = v18;
  v28(v18, v24, v13);
  v29 = v45;
  sub_1E58BABA0(v12, v45, &qword_1ECFFF110, &qword_1E5A3C770);
  v30 = v42;
  v28(v42, v26, v13);
  v31 = v43;
  sub_1E58BABA0(v7, v43, &qword_1ECFFF108, &qword_1E5A3C768);
  v32 = v44;
  v28(v44, v18, v13);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF128, &qword_1E5A3C788);
  sub_1E58BABA0(v29, &v32[v33[12]], &qword_1ECFFF110, &qword_1E5A3C770);
  v28(&v32[v33[16]], v30, v13);
  sub_1E58BABA0(v31, &v32[v33[20]], &qword_1ECFFF108, &qword_1E5A3C768);
  sub_1E58BAD14(v7, &qword_1ECFFF108, &qword_1E5A3C768);
  v34 = *(v39 + 8);
  v34(v37, v13);
  sub_1E58BAD14(v38, &qword_1ECFFF110, &qword_1E5A3C770);
  v34(v41, v13);
  sub_1E58BAD14(v31, &qword_1ECFFF108, &qword_1E5A3C768);
  v34(v30, v13);
  sub_1E58BAD14(v45, &qword_1ECFFF110, &qword_1E5A3C770);
  return (v34)(v40, v13);
}

uint64_t sub_1E59813BC(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF010, &qword_1E5A3C5F0);
  MEMORY[0x1E6932260](&v2);
  sub_1E5A2B654();
}

uint64_t sub_1E598146C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E5A2A934();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF0A8, &qword_1E5A3C660);
  sub_1E59814DC(a1, a2 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF088, &qword_1E5A3C648);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1E59814DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF0B0, &qword_1E5A3C668);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v58 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF0B8, &unk_1E5A3C670) - 8;
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v58 - v10;
  v11 = sub_1E5A2B3E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE3F8, &qword_1E5A39B80);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v58 - v16;
  v68 = sub_1E5A2B4A4();
  v18 = sub_1E5A2AE34();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v65 = sub_1E5A2AE74();
  sub_1E58BAD14(v17, &qword_1ECFFE3F8, &qword_1E5A39B80);
  KeyPath = swift_getKeyPath();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  (*(v12 + 104))(v14, *MEMORY[0x1E69814D8], v11);
  v72 = sub_1E5A2B464();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v62 = v85;
  v63 = v83;
  v60 = v88;
  v61 = v87;
  v94 = 1;
  v93 = v84;
  v92 = v86;
  v19 = v66;
  v20 = sub_1E597FC4C();
  v22 = v21;
  if (v21)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  v58 = v23;
  v24 = MEMORY[0x1E69E7CC0];
  if (!v21)
  {
    v24 = 0;
  }

  v59 = v24;

  v25 = sub_1E5A2B4A4();
  v26 = sub_1E5A2ABA4();
  v27 = v67;
  v28 = &v67[*(v4 + 44)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC068, &qword_1E5A3AB50) + 28);
  v30 = *MEMORY[0x1E69816C8];
  v31 = sub_1E5A2B4D4();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  *v27 = v25;
  *(v27 + 8) = v26;
  v32 = *(v19 + 24);
  v33 = *(v19 + 32);
  v76 = *(v19 + 16);
  v77 = v32;
  LOBYTE(v78) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF010, &qword_1E5A3C5F0);
  MEMORY[0x1E6932260](&v74, v34);
  if (v74)
  {
    v35 = 1.57079633;
  }

  else
  {
    v35 = 0.0;
  }

  sub_1E5A2B884();
  v37 = v36;
  v39 = v38;
  v40 = v69;
  sub_1E58F0054(v27, v69, &qword_1ECFFF0B0, &qword_1E5A3C668);
  v41 = v40 + *(v70 + 44);
  *v41 = v35;
  *(v41 + 8) = v37;
  *(v41 + 16) = v39;
  v42 = v73;
  sub_1E58F0054(v40, v73, &qword_1ECFFF0B8, &unk_1E5A3C670);
  LOBYTE(v40) = v94;
  v43 = v93;
  v44 = v92;
  v45 = v42;
  v46 = v71;
  sub_1E58BABA0(v45, v71, &qword_1ECFFF0B8, &unk_1E5A3C670);
  v47 = v68;
  v48 = KeyPath;
  v49 = v65;
  *&v74 = v68;
  *(&v74 + 1) = KeyPath;
  *&v75[0] = v65;
  *(v75 + 8) = v89;
  *(&v75[1] + 8) = v90;
  *(&v75[2] + 8) = v91;
  *(&v75[3] + 1) = v72;
  v50 = v75[0];
  *a2 = v74;
  *(a2 + 16) = v50;
  v51 = v75[2];
  *(a2 + 32) = v75[1];
  *(a2 + 48) = v51;
  *(a2 + 64) = v75[3];
  *(a2 + 80) = 0;
  *(a2 + 88) = v40;
  v52 = v62;
  *(a2 + 96) = v63;
  *(a2 + 104) = v43;
  *(a2 + 112) = v52;
  *(a2 + 120) = v44;
  v53 = v60;
  *(a2 + 128) = v61;
  *(a2 + 136) = v53;
  v55 = v58;
  v54 = v59;
  *(a2 + 144) = v58;
  *(a2 + 152) = v22;
  *(a2 + 160) = 0;
  *(a2 + 168) = v54;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF0C0, &qword_1E5A3C6E8);
  sub_1E58BABA0(v46, a2 + *(v56 + 96), &qword_1ECFFF0B8, &unk_1E5A3C670);
  sub_1E58BABA0(&v74, &v76, &qword_1ECFFF0C8, &unk_1E5A3C6F0);
  sub_1E598C698(v55, v22, 0, v54);
  sub_1E598C6DC(v55, v22, 0, v54);
  sub_1E58BAD14(v73, &qword_1ECFFF0B8, &unk_1E5A3C670);
  sub_1E58BAD14(v46, &qword_1ECFFF0B8, &unk_1E5A3C670);
  sub_1E598C6DC(v55, v22, 0, v54);
  v76 = v47;
  v77 = v48;
  v78 = v49;
  v79 = v89;
  v80 = v90;
  v81 = v91;
  v82 = v72;
  return sub_1E58BAD14(&v76, &qword_1ECFFF0C8, &unk_1E5A3C6F0);
}

uint64_t sub_1E5981B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF188, &qword_1E5A3C808);
  v27 = *(v4 - 8);
  v5 = v27;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  sub_1E5A2A984();
  v10 = sub_1E5A2AFB4();
  v12 = v11;
  v14 = v13;
  v34 = sub_1E5A2ABA4();
  v15 = sub_1E5A2AF84();
  v28 = v16;
  v29 = v17;
  v30 = v18;
  sub_1E58B3C9C(v10, v12, v14 & 1);

  v33 = a1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF190, &qword_1E5A3C810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF198, &qword_1E5A3C818);
  sub_1E598CB90();
  sub_1E58CD164(&qword_1ECFFF1A8, &qword_1ECFFF198, &qword_1E5A3C818, MEMORY[0x1E697D690]);
  sub_1E5A2AF54();
  v19 = *(v5 + 16);
  v20 = v31;
  v19(v31, v9, v4);
  v21 = v28;
  *a2 = v15;
  *(a2 + 8) = v21;
  v22 = v29 & 1;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF1B0, &unk_1E5A3C820);
  v19((a2 + *(v23 + 64)), v20, v4);
  sub_1E594C9E8(v15, v21, v22);
  v24 = *(v27 + 8);

  v24(v9, v4);
  v24(v20, v4);
  sub_1E58B3C9C(v15, v21, v22);
}

uint64_t sub_1E5981EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for ScheduleConfigurationSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E598BC80(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScheduleConfigurationSection);
  sub_1E5A2BC84();
  v6 = sub_1E5A2BC74();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_1E598C4E4(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ScheduleConfigurationSection);
  sub_1E598BC80(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScheduleConfigurationSection);
  v10 = sub_1E5A2BC74();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_1E598C4E4(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for ScheduleConfigurationSection);
  sub_1E5A2B684();
  v13[4] = a1;
  v13[6] = v16;
  v13[7] = v17;
  v14 = v18;
  v15 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF1D0, &unk_1E5A3C838);
  sub_1E598CD04();
  sub_1E598CD58();
  return sub_1E5A2B5D4();
}

uint64_t sub_1E5982104@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E5A29E34();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v4 - 8);
  *&v38 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_1E5A29EC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E5A29FE4();
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v42 == 1)
  {
    v33 = a1;
    v17 = v10;
    v18 = *MEMORY[0x1E6969868];
    v31 = *(v17 + 104);
    v31(v12, v18, v9);
    sub_1E5A29ED4();
    v19 = *(v17 + 8);
    v32 = v17 + 8;
    v30 = v19;
    v19(v12, v9);
    sub_1E5A29F04();
    sub_1E5A29E94();
    v20 = sub_1E5A29EB4();
    v21 = *(v20 - 8);
    v28 = *(v21 + 56);
    v29 = v20;
    v27[1] = v21 + 56;
    v28(v8, 0, 1);
    sub_1E5A29FA4();
    sub_1E5A29FF4();
    sub_1E5A29FB4();
    swift_getKeyPath();
    sub_1E5A2B934();

    v39 = v40;
    v22 = v37;
    sub_1E5A29E14();
    v23 = Calendar.availableDays(for:schedule:)(v22, &v39);
    (*(v35 + 8))(v22, v36);

    (*(v13 + 8))(v15, v34);
    if (*(v23 + 16))
    {
      v38 = *(v23 + 32);
      v24 = *(v23 + 48);

      v25 = v33;
      *v33 = v38;
      v25[2] = v24;
    }

    else
    {

      sub_1E5A29E14();
      v31(v12, v18, v9);
      sub_1E5A29ED4();
      v30(v12, v9);
      sub_1E5A29F04();
      sub_1E5A29E94();
      (v28)(v8, 0, 1, v29);
      sub_1E5A29FA4();
      sub_1E5A29FF4();
      sub_1E5A29FB4();
      return CalendarDay.init(date:in:)(v22, v15, v33);
    }
  }

  else
  {
    v26 = v41;
    *a1 = v40;
    a1[2] = v26;
  }

  return result;
}

uint64_t sub_1E59825D8(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 2) = v5;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v4, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5982698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v32 = a2;
  v2 = type metadata accessor for ScheduleConfigurationSection(0);
  v31 = *(v2 - 8);
  v30 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E5A29E34();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_1E5A29EC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A29FE4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x1E6969868], v11, v17);
  sub_1E5A29ED4();
  (*(v12 + 8))(v14, v11);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v20 = sub_1E5A29EB4();
  (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v21 = v27;
  swift_getKeyPath();
  sub_1E5A2B934();

  v33 = v34;
  sub_1E5A29E14();
  v22 = Calendar.availableDays(for:schedule:)(v6, &v33);
  (*(v4 + 8))(v6, v28);

  (*(v16 + 8))(v19, v15);
  v34 = v22;
  swift_getKeyPath();
  v23 = v29;
  sub_1E598BC80(v21, v29, type metadata accessor for ScheduleConfigurationSection);
  v24 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v25 = swift_allocObject();
  sub_1E598C4E4(v23, v25 + v24, type metadata accessor for ScheduleConfigurationSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF1E8, &unk_1E5A3C860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC000, &qword_1E5A2FCB0);
  sub_1E58CD164(&qword_1ECFFF1F0, &qword_1ECFFF1E8, &unk_1E5A3C860, MEMORY[0x1E69E6338]);
  sub_1E598CD04();
  sub_1E598CE08(&qword_1ECFFC020, &qword_1ECFFC000, &qword_1E5A2FCB0, MEMORY[0x1E6982090]);
  return sub_1E5A2B6E4();
}

uint64_t sub_1E5982BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1E5A29CF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v24 = *a1;
  v14 = *(a1 + 16);
  type metadata accessor for ScheduleConfigurationSection(0);
  v25 = v24;
  v26 = v14;
  sub_1E597E778(&v25, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1E58BAD14(v6, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v16 = sub_1E5A2AFC4();
    v17 = v20;
    v22 = v21;
    v19 = v23;
    result = (*(v8 + 8))(v13, v7);
    v18 = v22 & 1;
  }

  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v19;
  return result;
}

uint64_t sub_1E5982E20@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF138, &qword_1E5A3C798);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39[-v7];
  v9 = sub_1E5A29CF4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39[-v14];
  sub_1E597F454(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E58BAD14(v8, &qword_1ECFFE7C0, &unk_1E5A3ADD0);
    v16 = 1;
  }

  else
  {
    v44 = v3;
    v45 = v2;
    v46 = a1;
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    v17 = sub_1E5A2AFC4();
    v19 = v18;
    v21 = v20;
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v47 = qword_1ED026498;

    v22 = sub_1E5A2AF84();
    v42 = v23;
    v43 = v22;
    v25 = v24;
    v41 = v26;
    sub_1E58B3C9C(v17, v19, v21 & 1);

    v40 = sub_1E5A2ADA4();
    v25 &= 1u;
    v49 = v25;
    v48 = 0;
    v27 = sub_1E5A2B7E4();
    v29 = v28;
    v2 = v45;
    v30 = &v5[*(v45 + 36)];
    v31 = *MEMORY[0x1E697F468];
    v32 = sub_1E5A2A9B4();
    (*(*(v32 - 8) + 104))(v30, v31, v32);
    v33 = [objc_opt_self() tertiarySystemFillColor];
    v34 = sub_1E5A2B474();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD778, &unk_1E5A35DE0);
    *&v30[*(v35 + 52)] = v34;
    *&v30[*(v35 + 56)] = 256;
    (*(v10 + 8))(v15, v9);
    v36 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD798, &qword_1E5A37DF0) + 36)];
    *v36 = v27;
    v36[1] = v29;
    v37 = v42;
    *v5 = v43;
    *(v5 + 1) = v37;
    v5[16] = v25;
    *(v5 + 3) = v41;
    v5[32] = v40;
    *(v5 + 40) = xmmword_1E5A3C080;
    *(v5 + 56) = xmmword_1E5A3C080;
    v5[72] = 0;
    a1 = v46;
    sub_1E58F0054(v5, v46, &qword_1ECFFF138, &qword_1E5A3C798);
    v16 = 0;
    v3 = v44;
  }

  return (*(v3 + 56))(a1, v16, 1, v2);
}

uint64_t sub_1E5983288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF130, &qword_1E5A3C790);
  v27 = *(v4 - 8);
  v5 = v27;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  sub_1E5A2A984();
  v10 = sub_1E5A2AFB4();
  v12 = v11;
  v14 = v13;
  v34 = sub_1E5A2ABA4();
  v15 = sub_1E5A2AF84();
  v28 = v16;
  v29 = v17;
  v30 = v18;
  sub_1E58B3C9C(v10, v12, v14 & 1);

  v33 = a1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF138, &qword_1E5A3C798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF140, &unk_1E5A3C7A0);
  sub_1E598C730();
  sub_1E58CD164(&qword_1ECFFF158, &qword_1ECFFF140, &unk_1E5A3C7A0, MEMORY[0x1E697D690]);
  sub_1E5A2AF54();
  v19 = *(v5 + 16);
  v20 = v31;
  v19(v31, v9, v4);
  v21 = v28;
  *a2 = v15;
  *(a2 + 8) = v21;
  v22 = v29 & 1;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF160, &unk_1E5A3C7B0);
  v19((a2 + *(v23 + 64)), v20, v4);
  sub_1E594C9E8(v15, v21, v22);
  v24 = *(v27 + 8);

  v24(v9, v4);
  v24(v20, v4);
  sub_1E58B3C9C(v15, v21, v22);
}

uint64_t sub_1E59835CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for ScheduleConfigurationSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E598BC80(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScheduleConfigurationSection);
  sub_1E5A2BC84();
  v6 = sub_1E5A2BC74();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_1E598C4E4(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ScheduleConfigurationSection);
  sub_1E598BC80(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScheduleConfigurationSection);
  v10 = sub_1E5A2BC74();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_1E598C4E4(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for ScheduleConfigurationSection);
  sub_1E5A2B684();
  v13[4] = a1;
  v14 = v16;
  v15 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF168, &qword_1E5A3C7C0);
  sub_1E598CE08(&qword_1ECFFF170, &qword_1ECFFF168, &qword_1E5A3C7C0, MEMORY[0x1E69819D0]);
  return sub_1E5A2B5D4();
}

uint64_t sub_1E5983844()
{
  swift_getKeyPath();
  sub_1E5A2B934();
}

uint64_t sub_1E598389C(void *a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v4, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5983954(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleConfigurationSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  swift_getKeyPath();
  sub_1E5A2B934();

  v8[0] = v8[1];
  swift_getKeyPath();
  sub_1E598BC80(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScheduleConfigurationSection);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1E598C4E4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ScheduleConfigurationSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
  sub_1E58CD164(&qword_1ECFFF180, &qword_1ECFFF178, &qword_1E5A3C800, MEMORY[0x1E69E6338]);
  return sub_1E5A2B6E4();
}

uint64_t sub_1E5983B40@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 + *(type metadata accessor for ScheduleConfigurationSection(0) + 24);
  v5 = *(v4 + *(type metadata accessor for WorkoutPlanDateHelper(0) + 20));
  [v5 setUnitsStyle_];
  [v5 setAllowedUnits_];
  sub_1E5A2BCF4();
  v6 = [v5 stringFromTimeInterval_];
  if (v6)
  {
    v7 = v6;
    sub_1E5A2BB44();

    sub_1E58D1C80();
    sub_1E5A2BDA4();
  }

  sub_1E58D1C80();
  v8 = sub_1E5A2BD94();
  v10 = v9;

  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

double sub_1E5983C70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5A29D24();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E5A29CF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = a1 + *(type metadata accessor for ScheduleConfigurationSection(0) + 24);
  swift_getKeyPath();
  sub_1E5A2B934();

  v7 = *(v6 + *(type metadata accessor for WorkoutPlanDateHelper(0) + 20));
  [v7 setUnitsStyle_];
  [v7 setAllowedUnits_];
  sub_1E5A2BCF4();
  v8 = [v7 stringFromTimeInterval_];
  if (v8)
  {
    v9 = v8;
    sub_1E5A2BB44();

    sub_1E58D1C80();
    sub_1E5A2BDA4();
  }

  sub_1E5A29D14();
  sub_1E5A29D04();
  v10 = sub_1E5A2AFC4();
  v12 = v11;
  v14 = v13;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v15 = sub_1E5A2AF84();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1E58B3C9C(v10, v12, v14 & 1);

  v22 = sub_1E5A2ADA4();
  v23 = sub_1E5A2B7E4();
  v25 = v24;
  v26 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF138, &qword_1E5A3C798) + 36);
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_1E5A2A9B4();
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  v29 = [objc_opt_self() tertiarySystemFillColor];
  v30 = sub_1E5A2B474();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD778, &unk_1E5A35DE0);
  *(v26 + *(v31 + 52)) = v30;
  *(v26 + *(v31 + 56)) = 256;
  v32 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD798, &qword_1E5A37DF0) + 36));
  *v32 = v23;
  v32[1] = v25;
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
  result = 5.0;
  *(a2 + 40) = xmmword_1E5A3C080;
  *(a2 + 56) = xmmword_1E5A3C080;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_1E5984010(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF90, &qword_1E5A3C550);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for TrainerPreferenceView(255, v3, v4, v5);
  sub_1E5A2A6C4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v6 = sub_1E5A2B604();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11];
  v13 = v1[1];
  v20[0] = *v1;
  v20[1] = v13;
  v20[2] = v1[2];
  v17 = v3;
  v18 = v4;
  v19 = v20;
  sub_1E5A2AA24();
  sub_1E5A2B5F4();
  swift_getWitnessTable();
  sub_1E58B41DC();
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_1E58B41DC();
  return (v14)(v12, v6);
}

uint64_t sub_1E59842A4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF90, &qword_1E5A3C550);
  MEMORY[0x1EEE9AC00](v26[0]);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = a1[1];
  v51 = *a1;
  v52 = v12;
  v53 = a1[2];
  v14 = type metadata accessor for PageContentSection(0, a2, a3, v13);
  sub_1E59846A0(v14, v11);
  v15 = a1[1];
  v41 = *a1;
  v42 = v15;
  v43 = a1[2];
  sub_1E5984AE8(v14);
  v48 = v53;
  v49 = v54;
  v50 = v55;
  v46 = v51;
  v47 = v52;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
  type metadata accessor for TrainerPreferenceView(255, a2, a3, v16);
  sub_1E5A2A6C4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
  sub_1E5A2AA84();
  v17 = sub_1E5A2B494();
  v18 = sub_1E598BCF4();
  v33[7] = swift_getWitnessTable();
  v33[8] = MEMORY[0x1E69805D0];
  WitnessTable = swift_getWitnessTable();
  v33[5] = v18;
  v33[6] = WitnessTable;
  v20 = swift_getWitnessTable();
  v21 = sub_1E598BDD4();
  v33[3] = v20;
  v33[4] = v21;
  v33[2] = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  sub_1E58B41DC();
  v39[2] = v48;
  v39[3] = v49;
  v40 = v50;
  v39[0] = v46;
  v39[1] = v47;
  v23 = *(v17 - 8);
  v24 = *(v23 + 8);
  v24(v39, v17);
  sub_1E58A1C84(v11, v8);
  v43 = v36;
  v44 = v37;
  v45 = v38;
  v41 = v34;
  v42 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v28 = v34;
  v29 = v35;
  v33[0] = v8;
  v33[1] = &v28;
  (*(v23 + 16))(&v51, &v41, v17);
  v27[0] = v26[0];
  v27[1] = v17;
  v26[2] = sub_1E598BEB4();
  v26[3] = v22;
  sub_1E597DC00(v33, 2uLL, v27);
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v46 = v34;
  v47 = v35;
  v24(&v46, v17);
  sub_1E58BAD14(v11, &qword_1ECFFEF90, &qword_1E5A3C550);
  v53 = v30;
  v54 = v31;
  v55 = v32;
  v51 = v28;
  v52 = v29;
  v24(&v51, v17);
  return sub_1E58BAD14(v8, &qword_1ECFFEF90, &qword_1E5A3C550);
}

uint64_t sub_1E59846A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = sub_1E5A2AAE4();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEFD0, &qword_1E5A3C568);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v32 - v6;
  v8 = v2[1];
  v46 = *v2;
  v47 = v8;
  v48 = v2[2];
  sub_1E5A2BC84();
  v9 = *(*(a1 - 8) + 16);
  v9(v44, &v46, a1);
  v10 = sub_1E5A2BC74();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  v15 = v47;
  *(v11 + 48) = v46;
  *(v11 + 64) = v15;
  *(v11 + 80) = v48;
  v9(v44, &v46, a1);
  v16 = sub_1E5A2BC74();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v12;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  v18 = v47;
  *(v17 + 48) = v46;
  *(v17 + 64) = v18;
  *(v17 + 80) = v48;
  sub_1E5A2B684();
  v38 = v13;
  v39 = v14;
  v40 = &v46;
  v41 = v44[0];
  v42 = v44[1];
  v43 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEFE8, &unk_1E5A3C598);
  sub_1E598C180();
  sub_1E598CE08(&qword_1ECFFEFF8, &qword_1ECFFEFE8, &unk_1E5A3C598, MEMORY[0x1E69819D0]);
  sub_1E5A2B5D4();
  sub_1E5A2AAD4();
  sub_1E58CD164(&qword_1ECFFEFD8, &qword_1ECFFEFD0, &qword_1E5A3C568, MEMORY[0x1E697D690]);
  v19 = v37;
  v20 = v33;
  v21 = v35;
  sub_1E5A2B0D4();
  (*(v36 + 8))(v5, v21);
  (*(v34 + 8))(v7, v20);
  LOBYTE(v16) = sub_1E5A2ADC4();
  sub_1E5A2A424();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF90, &qword_1E5A3C550);
  v31 = v19 + *(result + 36);
  *v31 = v16;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_1E5984AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
  type metadata accessor for TrainerPreferenceView(255, v1, v2, v3);
  sub_1E5A2A6C4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
  sub_1E5A2AA84();
  sub_1E598BCF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E598BDD4();
  swift_getWitnessTable();
  sub_1E5A2B484();
  v9 = v21;
  v10 = v22;
  v11 = v23;
  v7 = v19;
  v8 = v20;
  v4 = sub_1E5A2B494();
  swift_getWitnessTable();
  sub_1E58B41DC();
  v17[2] = v9;
  v17[3] = v10;
  v18 = v11;
  v17[0] = v7;
  v17[1] = v8;
  v5 = *(*(v4 - 8) + 8);
  v5(v17, v4);
  sub_1E58B41DC();
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19 = v12;
  v20 = v13;
  return v5(&v19, v4);
}

uint64_t sub_1E5984D90(_BYTE *a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v4, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5984E48(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v12 = &unk_1F5F5BC40;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v7;
  *(v6 + 64) = a1[2];
  v9 = type metadata accessor for PageContentSection(0, a2, a3, v8);
  (*(*(v9 - 8) + 16))(v11, a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCDC0, &qword_1E5A3C5C0);
  sub_1E58CD164(&qword_1ECFFF000, &qword_1ECFFCDC0, &qword_1E5A3C5C0, MEMORY[0x1E69E6338]);
  sub_1E598C180();
  return sub_1E5A2B6E4();
}

uint64_t sub_1E5984FB0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5A29EB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  swift_getKeyPath();
  sub_1E5A2B934();

  v8 = v16[0];
  swift_getKeyPath();
  sub_1E5A2B944();

  v9 = sub_1E590F070(v8, v7, a1);
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  v16[0] = v9;
  v16[1] = v11;
  sub_1E58D1C80();
  result = sub_1E5A2AFD4();
  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_1E5985120(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v114 = *a1;
  swift_getKeyPath();
  sub_1E58BABA0(&v114, &v115, &qword_1ECFFEFE0, &qword_1E5A3C590);
  swift_retain_n();
  sub_1E5A2B934();

  sub_1E58BAD14(&v114, &qword_1ECFFEFE0, &qword_1E5A3C590);
  sub_1E58BAD14(&v114, &qword_1ECFFEFE0, &qword_1E5A3C590);
  v6 = MEMORY[0x1E69805D0];
  if (v113)
  {
    if (v113 == 1)
    {
      v7 = *(a1 + 4);
      v8 = *(a1 + 5);

      TrainerPreferenceView.init(store:artworkViewBuilder:)(v7, v8, v109);
      *&v101[8] = *&v109[8];
      *v101 = *v109;
      *&v101[24] = *&v109[24];
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      *(v9 + 24) = a3;
      v10 = a1[1];
      *(v9 + 32) = *a1;
      *(v9 + 48) = v10;
      *(v9 + 64) = a1[2];
      v12 = type metadata accessor for PageContentSection(0, a2, a3, v11);
      (*(*(v12 - 8) + 16))(&v115, a1, v12);
      type metadata accessor for TrainerPreferenceView(0, a2, a3, v13);
      WitnessTable = swift_getWitnessTable();
      sub_1E5A2B364();

      *v109 = v115;
      *&v109[16] = v116;
      v110 = v117;
      v111 = v118;
      v15 = sub_1E5A2A6C4();
      v76 = WitnessTable;
      v77 = v6;
      v16 = swift_getWitnessTable();
      sub_1E58B41DC();
      v82[0] = *v109;
      v82[1] = *&v109[16];
      v82[2] = v110;
      v82[3] = v111;
      v17 = *(v15 - 8);
      v18 = *(v17 + 8);
      v18(v82, v15);
      v83[0] = v78;
      v83[1] = v79;
      v83[2] = v80;
      v83[3] = v81;
      v115 = v78;
      v116 = v79;
      v117 = v80;
      v118 = v81;
      sub_1E58B41DC();
      v84[0] = v115;
      v84[1] = v116;
      v84[2] = v117;
      v84[3] = v118;
      v19 = *(v17 + 16);
      v19(v109, v83, v15);
      v18(v84, v15);
      v85[0] = v72;
      v85[1] = v73;
      v85[2] = v74;
      v85[3] = v75;
      *v109 = v72;
      *&v109[16] = v73;
      v110 = v74;
      v111 = v75;
      v19(&v115, v85, v15);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF98, &qword_1E5A3C558);
      v21 = sub_1E598BCF4();
      sub_1E595ECB8(v109, v20, v15, v21, v16);
      v86[0] = *v109;
      v86[1] = *&v109[16];
      v86[2] = v110;
      v86[3] = v111;
      v18(v86, v15);
      v69 = v117;
      v70 = v118;
      v71 = v119;
      v67 = v115;
      v68 = v116;
      v22 = sub_1E5A2AA84();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
      v24 = swift_getWitnessTable();
      v25 = sub_1E598BDD4();
      sub_1E595EBC0(&v67, v22, v23, v24, v25);
      v102 = v69;
      v103 = v70;
      LOBYTE(v104) = v71;
      *v101 = v67;
      *&v101[16] = v68;
      (*(*(v22 - 8) + 8))(v101, v22);
      v87 = v72;
      v88 = v73;
      v89 = v74;
      v90 = v75;
      v18(&v87, v15);
      v91 = v78;
      v92 = v79;
      v93 = v80;
      v94 = v81;
      v18(&v91, v15);
      v6 = MEMORY[0x1E69805D0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
      sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
      v45 = sub_1E5A2A654();
      v47 = v46;
      v48 = swift_allocObject();
      *(v48 + 16) = a2;
      *(v48 + 24) = a3;
      v49 = a1[1];
      *(v48 + 32) = *a1;
      *(v48 + 48) = v49;
      *(v48 + 64) = a1[2];
      *&v115 = v45;
      *(&v115 + 1) = v47;
      *&v116 = sub_1E598BFDC;
      *(&v116 + 1) = v48;
      v117 = 0uLL;
      v51 = type metadata accessor for PageContentSection(0, a2, a3, v50);
      (*(*(v51 - 8) + 16))(v109, a1, v51);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
      type metadata accessor for TrainerPreferenceView(255, a2, a3, v52);
      sub_1E5A2A6C4();
      v53 = sub_1E5A2AA84();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
      v55 = sub_1E598BCF4();
      v107 = swift_getWitnessTable();
      v108 = v6;
      v105 = v55;
      v106 = swift_getWitnessTable();
      v56 = swift_getWitnessTable();
      v57 = sub_1E598BDD4();
      sub_1E595ECB8(&v115, v53, v54, v56, v57);
      v58 = v116;
      v59 = v117;

      sub_1E598C000(v58, *(&v58 + 1));
      sub_1E598C000(v59, *(&v59 + 1));
    }
  }

  else
  {
    v26 = *(a1 + 3);
    *&v86[0] = *(a1 + 2);
    sub_1E598C034(v86, &v115);
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
    sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
    v28 = sub_1E5A2A654();
    v30 = v29;
    v31 = *&v86[0];
    v32 = swift_allocObject();
    *(v32 + 16) = a2;
    *(v32 + 24) = a3;
    v33 = a1[1];
    *(v32 + 32) = *a1;
    *(v32 + 48) = v33;
    *(v32 + 64) = a1[2];
    *&v87 = v28;
    *(&v87 + 1) = v30;
    *&v88 = v27;
    *(&v88 + 1) = v31;
    *&v89 = sub_1E598C090;
    *(&v89 + 1) = v32;
    v90 = 0uLL;
    *v109 = v87;
    *&v109[16] = v88;
    v110 = v89;
    v111 = 0uLL;
    sub_1E58BABA0(&v87, &v115, &qword_1ECFFEF98, &qword_1E5A3C558);
    sub_1E58BABA0(&v87, &v115, &qword_1ECFFEF98, &qword_1E5A3C558);
    v35 = type metadata accessor for PageContentSection(0, a2, a3, v34);
    (*(*(v35 - 8) + 16))(&v115, a1, v35);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF98, &qword_1E5A3C558);
    type metadata accessor for TrainerPreferenceView(255, a2, a3, v37);
    v38 = sub_1E5A2A6C4();
    v39 = sub_1E598BCF4();
    swift_getWitnessTable();
    v40 = swift_getWitnessTable();
    sub_1E595EBC0(v109, v36, v38, v39, v40);
    v91 = *v109;
    v92 = *&v109[16];
    v93 = v110;
    v94 = v111;
    sub_1E58BAD14(&v91, &qword_1ECFFEF98, &qword_1E5A3C558);
    v69 = v117;
    v70 = v118;
    v71 = v119;
    v67 = v115;
    v68 = v116;
    v41 = sub_1E5A2AA84();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
    v43 = swift_getWitnessTable();
    v44 = sub_1E598BDD4();
    sub_1E595EBC0(&v67, v41, v42, v43, v44);
    sub_1E58BAD14(&v87, &qword_1ECFFEF98, &qword_1E5A3C558);
    sub_1E58BAD14(&v87, &qword_1ECFFEF98, &qword_1E5A3C558);
    v102 = v69;
    v103 = v70;
    LOBYTE(v104) = v71;
    *v101 = v67;
    *&v101[16] = v68;
    (*(*(v41 - 8) + 8))(v101, v41);
  }

  v117 = v110;
  v118 = v111;
  v119 = v112;
  v115 = *v109;
  v116 = *&v109[16];
  v102 = v110;
  v103 = v111;
  v104 = v112;
  *v101 = *v109;
  *&v101[16] = *&v109[16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
  type metadata accessor for TrainerPreferenceView(255, a2, a3, v60);
  sub_1E5A2A6C4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
  v61 = sub_1E5A2AA84();
  v62 = sub_1E598BCF4();
  v99 = swift_getWitnessTable();
  v100 = v6;
  v63 = swift_getWitnessTable();
  v97 = v62;
  v98 = v63;
  v64 = swift_getWitnessTable();
  v65 = sub_1E598BDD4();
  v95 = v64;
  v96 = v65;
  swift_getWitnessTable();
  sub_1E58B41DC();
  v110 = v102;
  v111 = v103;
  v112 = v104;
  *v109 = *v101;
  *&v109[16] = *&v101[16];
  return (*(*(v61 - 8) + 8))(v109, v61);
}

uint64_t sub_1E5985CF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = a4;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v7, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5985DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v38 = a1;
  v45 = a7;
  v9 = sub_1E5A2AA04();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEEF8, &qword_1E5A3C398);
  v11 = a5;
  sub_1E5A2AA84();
  v12 = sub_1E5A2B494();
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v30 - v13;
  v14 = sub_1E5A2A6C4();
  v36 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v30 - v15;
  v57 = sub_1E58CD164(&qword_1ECFFEF00, &qword_1ECFFEEF8, &qword_1E5A3C398, MEMORY[0x1E6981870]);
  v58 = a6;
  v16 = a6;
  WitnessTable = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v54 = v31;
  v55 = MEMORY[0x1E697E5D8];
  v32 = swift_getWitnessTable();
  v52 = v14;
  v53 = v32;
  v33 = MEMORY[0x1E697D198];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  v46 = v11;
  v47 = v16;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v24 = v34;
  sub_1E5A2B484();
  swift_getKeyPath();
  sub_1E5A2B944();

  v25 = v35;
  sub_1E5A2B324();
  (*(v37 + 8))(v24, v12);
  v26 = v42;
  sub_1E5A2A9F4();
  v27 = v32;
  sub_1E5A2B1F4();
  (*(v43 + 8))(v26, v44);
  (*(v36 + 8))(v25, v14);
  v52 = v14;
  v53 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v28 = *(v18 + 8);
  v28(v20, OpaqueTypeMetadata2);
  sub_1E58B41DC();
  return (v28)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1E59862E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a7;
  v34 = a6;
  v30 = a3;
  v31 = a4;
  v29 = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEEF8, &qword_1E5A3C398);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = sub_1E5A2AA84();
  v32 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v37 == 1)
  {
    v22 = v34;
    sub_1E598669C(v29, a2, v30, v31, a5, v34, v17);
    v23 = sub_1E58CD164(&qword_1ECFFEF00, &qword_1ECFFEEF8, &qword_1E5A3C398, MEMORY[0x1E6981870]);
    sub_1E595EBC0(v17, v15, a5, v23, v22);
    sub_1E58BAD14(v17, &qword_1ECFFEEF8, &qword_1E5A3C398);
  }

  else
  {
    v30(v21);
    v24 = v34;
    sub_1E58B41DC();
    v25 = *(v9 + 8);
    v25(v11, a5);
    sub_1E58B41DC();
    v26 = sub_1E58CD164(&qword_1ECFFEF00, &qword_1ECFFEEF8, &qword_1E5A3C398, MEMORY[0x1E6981870]);
    sub_1E595ECB8(v11, v15, a5, v26, v24);
    v25(v11, a5);
    v25(v14, a5);
  }

  v35 = sub_1E58CD164(&qword_1ECFFEF00, &qword_1ECFFEEF8, &qword_1E5A3C398, MEMORY[0x1E6981870]);
  v36 = v34;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v32 + 8))(v20, v18);
}

uint64_t sub_1E598669C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = sub_1E5A2AA24();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF08, &unk_1E5A3C3E0);
  return sub_1E5986734(a1, a2, a3, a4, a5, a6, a7 + *(v14 + 44));
}

uint64_t sub_1E5986734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v110 = a7;
  v13 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v102 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v101 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1E5A2ACA4();
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE930, &qword_1E5A3B268);
  v90 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v20 = &v87 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF10, &unk_1E5A3C3F0);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v88 = &v87 - v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE910, &unk_1E5A3B250);
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v87 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF18, &qword_1E5A3C400);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v87 - v23;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF20, &qword_1E5A3C408);
  v100 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v99 = &v87 - v24;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF28, &unk_1E5A3C410);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v112 = &v87 - v25;
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a1;
  v26[5] = a2;
  v26[6] = a3;
  v26[7] = a4;
  v106 = a5;
  v113 = a5;
  v114 = a6;
  v107 = a6;
  v105 = a1;
  v115 = a1;
  v116 = a2;
  v108 = a3;
  v117 = a3;
  v118 = a4;

  v109 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA28, &unk_1E5A3B3C0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  v30 = sub_1E598C25C(&qword_1ECFFEA48, &qword_1ECFFEA30, &unk_1E5A3C420, sub_1E596F604);
  v31 = sub_1E596F688();
  v32 = sub_1E596F740();
  v120 = v27;
  v121 = MEMORY[0x1E6981CD8];
  v122 = v28;
  v123 = v29;
  v124 = v30;
  v125 = MEMORY[0x1E6981CD0];
  v126 = v31;
  v127 = v32;
  v33 = v88;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B574();
  sub_1E5A2AC94();
  sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268, MEMORY[0x1E697D680]);
  sub_1E598932C(&qword_1ECFFE940, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v34 = v89;
  v35 = v91;
  sub_1E5A2B0B4();
  (*(v92 + 8))(v18, v35);
  (*(v90 + 8))(v20, v34);
  swift_getKeyPath();
  v36 = a2;
  sub_1E5A2B934();

  if (v120 && (v37 = WorkoutPlanSchedule.isEmpty.getter(), , (v37 & 1) == 0))
  {
    v38 = v111;
    v39 = v96;
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v40 = &qword_1ED026498;
  }

  else
  {
    v38 = v111;
    v39 = v96;
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v40 = &qword_1ED0264A8;
  }

  v41 = *v40;

  KeyPath = swift_getKeyPath();
  v120 = v41;
  v43 = sub_1E5A2A5C4();
  (*(v94 + 32))(v39, v33, v95);
  v44 = (v39 + *(v93 + 9));
  *v44 = KeyPath;
  v44[1] = v43;
  swift_getKeyPath();
  sub_1E5A2B934();

  v45 = v120;
  if (v120)
  {
    v46 = WorkoutPlanSchedule.isEmpty.getter();

    v45 = v46 ^ 1;
  }

  v47 = v97;
  sub_1E58F0054(v39, v97, &qword_1ECFFE910, &unk_1E5A3B250);
  v48 = v98;
  *(v47 + *(v98 + 36)) = v45 & 1;
  v49 = sub_1E598B7DC();
  v50 = v99;
  sub_1E5A2B004();
  sub_1E58BAD14(v47, &qword_1ECFFEF18, &qword_1E5A3C400);
  sub_1E5A2B7A4();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF38, &qword_1E5A3C4A8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF40, &qword_1E5A3C4B0);
  v120 = v48;
  v121 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_1E598B868();
  v95 = sub_1E598B95C();
  v85 = v95;
  v96 = v54;
  v84 = v54;
  v83 = MEMORY[0x1E6981CD0];
  v97 = OpaqueTypeConformance2;
  v82 = OpaqueTypeConformance2;
  v98 = v52;
  v81 = v52;
  v101 = v51;
  sub_1E5A2B3A4();
  (*(v100 + 8))(v50, v38);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v55 = qword_1EE2D33E0;
  swift_getKeyPath();
  v56 = v55;
  sub_1E5A2B944();

  v102 = sub_1E5A2AF64();
  v100 = v57;
  LODWORD(v94) = v58;
  v99 = v59;
  sub_1E5A2BC84();

  v60 = v109;

  v61 = sub_1E5A2BC74();
  v62 = swift_allocObject();
  v63 = MEMORY[0x1E69E85E0];
  v62[2] = v61;
  v62[3] = v63;
  v64 = v106;
  v65 = v36;
  v66 = v107;
  v62[4] = v106;
  v62[5] = v66;
  v67 = v105;
  v62[6] = v105;
  v62[7] = v36;
  v68 = v108;
  v62[8] = v108;
  v62[9] = v60;

  v69 = sub_1E5A2BC74();
  v70 = swift_allocObject();
  v70[2] = v69;
  v70[3] = v63;
  v70[4] = v64;
  v70[5] = v66;
  v70[6] = v67;
  v70[7] = v65;
  v70[8] = v68;
  v70[9] = v60;
  v71 = sub_1E5A2B684();
  v93 = &v87;
  LODWORD(v92) = v119;
  MEMORY[0x1EEE9AC00](v71);
  MEMORY[0x1EEE9AC00](v72);
  v86 = v60;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF58, &qword_1E5A3C4D8);
  v120 = v111;
  v121 = MEMORY[0x1E6981CD8];
  v122 = v101;
  v123 = v98;
  v124 = v97;
  v125 = MEMORY[0x1E6981CD0];
  v126 = v96;
  v127 = v95;
  v74 = swift_getOpaqueTypeConformance2();
  v84 = sub_1E58CD164(&qword_1ECFFEF60, &qword_1ECFFEF58, &qword_1E5A3C4D8, MEMORY[0x1E6981F48]);
  v85 = MEMORY[0x1E6981138];
  v83 = v74;
  v81 = v73;
  v82 = MEMORY[0x1E6981148];
  v75 = v104;
  v80[0] = v80;
  v80[1] = v104;
  LOBYTE(v65) = v94;
  v76 = v102;
  v77 = v100;
  v78 = v112;
  sub_1E5A2B2C4();

  sub_1E58B3C9C(v76, v77, v65 & 1);

  return (*(v103 + 8))(v78, v75);
}

uint64_t sub_1E5987574()
{
  v0 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF80, &qword_1E5A3C520);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E597DDD0(v8);
  sub_1E58BAD14(v5, &qword_1ECFFEF78, &qword_1E5A3FD40);
  v9 = type metadata accessor for WorkoutPlan(0);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_1E58BAD14(v8, &qword_1ECFFEF80, &qword_1E5A3C520);
  *v2 = v10 != 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v2, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5987784()
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
  swift_getKeyPath();
  sub_1E5A2B934();

  if (*&v40[0] && (v10 = WorkoutPlanSchedule.isEmpty.getter(), , (v10 & 1) == 0))
  {
    v12 = [objc_opt_self() secondarySystemBackgroundColor];
    v11 = sub_1E5A2B474();
  }

  else
  {
    v11 = sub_1E5A2B454();
  }

  *&v40[0] = v11;
  v13 = sub_1E5A2AF84();
  v15 = v14;
  v17 = v16;
  sub_1E58B3C9C(v5, v7, v9 & 1);

  sub_1E5A2AE14();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v18 = sub_1E5A2AFA4();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1E58B3C9C(v13, v15, v17 & 1);

  v25 = sub_1E5A2ADF4();
  sub_1E5A2A424();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v42 = v22 & 1;
  v41 = 0;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *(&v43[6] + 7) = *&v43[21];
  *(&v43[8] + 7) = *&v43[23];
  *(&v43[10] + 7) = *&v43[25];
  *(&v43[12] + 7) = v44;
  *(v43 + 7) = *&v43[15];
  *(&v43[2] + 7) = *&v43[17];
  *(&v43[4] + 7) = *&v43[19];
  *&v35 = v18;
  *(&v35 + 1) = v20;
  LOBYTE(v36) = v22 & 1;
  *(&v36 + 1) = v24;
  LOBYTE(v37) = v25;
  *(&v37 + 1) = v27;
  *&v38 = v29;
  *(&v38 + 1) = v31;
  *v39 = v33;
  v39[8] = 0;
  *&v39[73] = *&v43[8];
  *&v39[89] = *&v43[10];
  *&v39[105] = *&v43[12];
  *&v39[120] = *(&v44 + 1);
  *&v39[9] = *v43;
  *&v39[25] = *&v43[2];
  *&v39[41] = *&v43[4];
  *&v39[57] = *&v43[6];
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E598C25C(&qword_1ECFFEA48, &qword_1ECFFEA30, &unk_1E5A3C420, sub_1E596F604);
  sub_1E596F688();
  sub_1E596F740();
  sub_1E5A2B3A4();
  v40[8] = *&v39[64];
  v40[9] = *&v39[80];
  v40[10] = *&v39[96];
  v40[11] = *&v39[112];
  v40[4] = *v39;
  v40[5] = *&v39[16];
  v40[6] = *&v39[32];
  v40[7] = *&v39[48];
  v40[0] = v35;
  v40[1] = v36;
  v40[2] = v37;
  v40[3] = v38;
  return sub_1E58BAD14(v40, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E5987C88@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
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
  sub_1E598BC80(v9, v6, MEMORY[0x1E6981998]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  sub_1E598932C(&qword_1ECFFEA98, MEMORY[0x1E6981998], MEMORY[0x1E6981978]);
  sub_1E5A2AD54();
  sub_1E598BC20(v9, MEMORY[0x1E6981998]);
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

uint64_t sub_1E5987E9C@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
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
  sub_1E598BC80(v9, v6, MEMORY[0x1E697EAF0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E598932C(&qword_1ECFFEA90, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAC8]);
  sub_1E5A2AD54();
  sub_1E598BC20(v9, MEMORY[0x1E697EAF0]);
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

uint64_t sub_1E59880BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF38, &qword_1E5A3C4A8) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5A2A9B4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)) = 256;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF20, &qword_1E5A3C408);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_1E59881C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF40, &qword_1E5A3C4B0) + 36));
  v5 = *(sub_1E5A2A754() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF20, &qword_1E5A3C408);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_1E59882E0(_BYTE *a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v4, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5988394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v45 = a7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF68, &unk_1E5A3C4E0);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v39 - v15;
  v16 = sub_1E5A2A414();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F8, &qword_1E5A3B348);
  v47 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  sub_1E5A2A3F4();
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = a4;

  v40 = v22;
  MEMORY[0x1E69321A0](v18, sub_1E598BB6C, v23);
  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a1;
  v24[5] = a2;
  v24[6] = a3;
  v24[7] = a4;
  v49 = a5;
  v50 = a6;
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a4;

  v25 = v48;
  sub_1E5A2B574();
  v26 = v46;
  v27 = *(v47 + 16);
  v28 = v41;
  v27(v46, v22, v41);
  v30 = v42;
  v29 = v43;
  v31 = *(v42 + 16);
  v32 = v25;
  v33 = v44;
  v31(v43, v32, v44);
  v34 = v45;
  v27(v45, v26, v28);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF70, &qword_1E5A3C4F0);
  v31(&v34[*(v35 + 48)], v29, v33);
  v36 = *(v30 + 8);
  v36(v48, v33);
  v37 = *(v47 + 8);
  v37(v40, v28);
  v36(v29, v33);
  return (v37)(v46, v28);
}

uint64_t sub_1E5988770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v9 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = a7;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v11, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5988828@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2D33E0;
  swift_getKeyPath();
  v5 = v4;
  sub_1E5A2B944();

  result = sub_1E5A2AF64();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1E5988998@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2D33E0;
  swift_getKeyPath();
  v5 = v4;
  sub_1E5A2B944();

  result = sub_1E5A2AF64();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1E5988B20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF200, &qword_1E5A3C8C8);
  sub_1E5A2B544();
  return v1;
}

id sub_1E5988B7C@<X0>(void *a2@<X8>)
{
  v5 = *(v2 + 32);
  swift_getKeyPath();

  sub_1E5A2B944();

  *(a2 + *(type metadata accessor for WorkoutPlanDateHelper(0) + 20)) = v5;

  return v5;
}

uint64_t WorkoutPlanScheduleReviewView.init(store:dateComponentsFormatter:artworkViewBuilder:marketingButtonViewBuilder:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1E5A2B514();
  *(a7 + 16) = v15;
  *(a7 + 24) = v16;
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a7 = result;
  *(a7 + 8) = v14;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  return result;
}

uint64_t WorkoutPlanScheduleReviewView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  type metadata accessor for ScheduleConfigurationSection(255);
  v26 = a1[2];
  v27 = a1[4];
  type metadata accessor for PageContentSection(255, v26, v27, v3);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A494();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  sub_1E5A2AC14();
  v4 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v41 = sub_1E598932C(&qword_1EE2CFAE8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  *&v42 = v4;
  *(&v42 + 1) = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v24 = a1[3];
  v25 = a1[5];
  type metadata accessor for BottomActionSection(255, v24, v25, v5);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ScheduledDayReviewView(255);
  swift_getOpaqueTypeConformance2();
  sub_1E598932C(&qword_1ECFFED38, type metadata accessor for ScheduledDayReviewView, &protocol conformance descriptor for ScheduledDayReviewView);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  *&v42 = OpaqueTypeMetadata2;
  *(&v42 + 1) = v7;
  *&v43 = OpaqueTypeConformance2;
  *(&v43 + 1) = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFED40, &qword_1E5A3C098);
  sub_1E5A2AA84();
  v10 = sub_1E5A2B494();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = v28[3];
  v44 = v28[2];
  v45 = v17;
  v46 = *(v28 + 8);
  v18 = v28[1];
  v42 = *v28;
  v43 = v18;
  *&v18 = v26;
  *(&v18 + 1) = v24;
  *&v17 = v27;
  *(&v17 + 1) = v25;
  v31 = v17;
  v30 = v18;
  v32 = &v42;
  v36 = OpaqueTypeMetadata2;
  v37 = v7;
  v38 = OpaqueTypeConformance2;
  v39 = v9;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
  v34 = v19;
  v35 = v20;
  v21 = swift_getWitnessTable();
  sub_1E5A2B484();
  v33 = v21;
  swift_getWitnessTable();
  sub_1E58B41DC();
  v22 = *(v11 + 8);
  v22(v13, v10);
  sub_1E58B41DC();
  return (v22)(v16, v10);
}

uint64_t sub_1E598932C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5989374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v163 = a5;
  v162 = a4;
  v159 = a1;
  v158 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v10);
  v152 = &v117 - v11;
  v149 = sub_1E5A2AC64();
  v147 = *(v149 - 1);
  MEMORY[0x1EEE9AC00](v149);
  v143 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScheduleConfigurationSection(255);
  type metadata accessor for PageContentSection(255, a2, a4, v13);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v14 = sub_1E5A2A494();
  WitnessTable = swift_getWitnessTable();
  v130 = v14;
  v128 = WitnessTable;
  v16 = sub_1E5A2A4B4();
  v131 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v117 - v17;
  sub_1E5A2AC14();
  v18 = sub_1E5A2A6C4();
  v141 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v133 = &v117 - v19;
  v132 = v16;
  v20 = swift_getWitnessTable();
  v21 = sub_1E598932C(&qword_1EE2CFAE8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v126 = v20;
  v171 = v20;
  v172 = v21;
  v22 = swift_getWitnessTable();
  v165 = v18;
  v166 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v139 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v138 = &v117 - v24;
  v26 = type metadata accessor for BottomActionSection(255, a3, a5, v25);
  v142 = v18;
  v165 = v18;
  v166 = v22;
  v137 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = swift_getWitnessTable();
  v165 = OpaqueTypeMetadata2;
  v166 = v26;
  v167 = OpaqueTypeConformance2;
  v168 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v150 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v160 = &v117 - v30;
  v31 = type metadata accessor for ScheduledDayReviewView(255);
  v140 = OpaqueTypeMetadata2;
  v165 = OpaqueTypeMetadata2;
  v166 = v26;
  v136 = v26;
  v135 = OpaqueTypeConformance2;
  v167 = OpaqueTypeConformance2;
  v168 = v28;
  v134 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_1E598932C(&qword_1ECFFED38, type metadata accessor for ScheduledDayReviewView, &protocol conformance descriptor for ScheduledDayReviewView);
  v165 = v29;
  v166 = v31;
  v167 = v32;
  v168 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v124 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v148 = &v117 - v35;
  v151 = v29;
  v165 = v29;
  v166 = v31;
  v146 = v31;
  v145 = v32;
  v167 = v32;
  v168 = v33;
  v144 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = a2;
  v38 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  v157 = v34;
  v165 = v34;
  v166 = v10;
  v161 = v10;
  v156 = v36;
  v167 = v36;
  v168 = v38;
  v155 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v125 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v123 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v121 = &v117 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v122 = &v117 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFED40, &qword_1E5A3C098);
  v120 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v117 - v46;
  v154 = sub_1E5A2AA84();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v49 = &v117 - v48;
  v50 = v159;
  v164 = v37;
  v165 = v37;
  v166 = a3;
  v51 = a3;
  v52 = v162;
  v167 = v162;
  v53 = v163;
  v168 = v163;
  v127 = type metadata accessor for WorkoutPlanScheduleReviewView(0, &v165);
  swift_getKeyPath();

  sub_1E5A2B934();

  v54 = v165;
  if (!v165)
  {
    sub_1E5A2A534();
    v97 = v157;
    v107 = v161;
    v165 = v157;
    v166 = v161;
    v99 = v156;
    v100 = v155;
    v167 = v156;
    v168 = v155;
    v108 = swift_getOpaqueTypeConformance2();
    v109 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
    sub_1E595ECB8(v47, v39, v45, v108, v109);
    (*(v120 + 8))(v47, v45);
    goto LABEL_9;
  }

  v117 = v45;
  v118 = v49;
  v119 = v39;
  v55 = sub_1E5A2AD84();
  MEMORY[0x1EEE9AC00](v55);
  *(&v117 - 6) = v164;
  *(&v117 - 5) = v51;
  v120 = v51;
  v113 = v52;
  v114 = v53;
  v115 = v50;
  v116 = v54;
  v56 = v129;
  sub_1E594320C(v57, sub_1E598CEE8, (&v117 - 8), v130, v128);

  v58 = sub_1E5A2AD94();
  v59 = v133;
  v60 = v132;
  sub_1E5943224(v58, 0, 1, v132, v126);
  (*(v131 + 8))(v56, v60);
  v61 = v143;
  sub_1E5A2AAB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD770, &qword_1E5A35D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  v63 = sub_1E5A2AD84();
  *(inited + 32) = v63;
  v64 = sub_1E5A2AD64();
  *(inited + 33) = v64;
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v63)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v64)
  {
    sub_1E5A2AD74();
  }

  v65 = v163;
  v66 = v162;
  v67 = v138;
  v68 = v142;
  sub_1E5A2B1B4();
  (*(v147 + 8))(v61, v149);
  v69 = (*(v141 + 8))(v59, v68);
  MEMORY[0x1EEE9AC00](v69);
  v70 = v120;
  *(&v117 - 6) = v164;
  *(&v117 - 5) = v70;
  v113 = v66;
  v114 = v65;
  sub_1E5A2AA24();
  swift_checkMetadataState();
  v116 = v134;
  v115 = v135;
  v71 = v140;
  sub_1E5A2B0E4();
  (*(v139 + 8))(v67, v71);
  sub_1E5A2BC84();
  v72 = v127;
  v73 = *(*(v127 - 8) + 16);
  v74 = *(v127 - 8) + 16;
  v73(&v165, v50, v127);
  v147 = v74;
  v149 = v73;
  v75 = sub_1E5A2BC74();
  v76 = swift_allocObject();
  v77 = MEMORY[0x1E69E85E0];
  *(v76 + 16) = v75;
  *(v76 + 24) = v77;
  v78 = v164;
  *(v76 + 32) = v164;
  *(v76 + 40) = v70;
  *(v76 + 48) = v66;
  *(v76 + 56) = v65;
  v79 = *(v50 + 48);
  *(v76 + 96) = *(v50 + 32);
  *(v76 + 112) = v79;
  *(v76 + 128) = *(v50 + 64);
  v80 = *(v50 + 16);
  *(v76 + 64) = *v50;
  *(v76 + 80) = v80;
  v73(&v165, v50, v72);
  v81 = sub_1E5A2BC74();
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = MEMORY[0x1E69E85E0];
  *(v82 + 32) = v78;
  *(v82 + 40) = v70;
  *(v82 + 48) = v66;
  *(v82 + 56) = v65;
  v83 = *(v50 + 48);
  *(v82 + 96) = *(v50 + 32);
  *(v82 + 112) = v83;
  *(v82 + 128) = *(v50 + 64);
  v84 = *(v50 + 16);
  *(v82 + 64) = *v50;
  *(v82 + 80) = v84;
  sub_1E5A2B684();
  v85 = swift_allocObject();
  *(v85 + 16) = v78;
  *(v85 + 24) = v70;
  *(v85 + 32) = v66;
  *(v85 + 40) = v65;
  v86 = *(v50 + 48);
  *(v85 + 80) = *(v50 + 32);
  *(v85 + 96) = v86;
  *(v85 + 112) = *(v50 + 64);
  v87 = *(v50 + 16);
  *(v85 + 48) = *v50;
  *(v85 + 64) = v87;
  v149(&v165, v50, v72);
  v88 = swift_checkMetadataState();
  v115 = v144;
  v113 = v88;
  v114 = v145;
  v89 = v148;
  v90 = v151;
  v91 = v160;
  sub_1E5A2B2F4();

  (*(v150 + 8))(v91, v90);
  v92 = *MEMORY[0x1E697E728];
  v93 = sub_1E5A2A684();
  v94 = v152;
  (*(*(v93 - 8) + 104))(v152, v92, v93);
  sub_1E598932C(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    v96 = v121;
    v97 = v157;
    v98 = v161;
    v99 = v156;
    v100 = v155;
    sub_1E5A2B164();
    sub_1E58BAD14(v94, &qword_1ECFFCE80, &qword_1E5A35BC0);
    (*(v124 + 8))(v89, v97);
    v165 = v97;
    v166 = v98;
    v167 = v99;
    v168 = v100;
    v101 = swift_getOpaqueTypeConformance2();
    v102 = v122;
    v103 = v119;
    sub_1E58B41DC();
    v104 = *(v125 + 8);
    v104(v96, v103);
    v105 = v123;
    sub_1E58B41DC();
    v106 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
    v49 = v118;
    sub_1E595EBC0(v105, v103, v117, v101, v106);
    v104(v105, v103);
    v104(v102, v103);
    v107 = v161;
LABEL_9:
    v165 = v97;
    v166 = v107;
    v167 = v99;
    v168 = v100;
    v110 = swift_getOpaqueTypeConformance2();
    v111 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
    v169 = v110;
    v170 = v111;
    v112 = v154;
    swift_getWitnessTable();
    sub_1E58B41DC();
    return (*(v153 + 8))(v49, v112);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E598A6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a2;
  v24 = a6;
  v21 = a4;
  v22 = a1;
  v25 = a7;
  v9 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v9 - 8);
  type metadata accessor for ScheduleConfigurationSection(255);
  type metadata accessor for PageContentSection(255, a3, a5, v10);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v11 = sub_1E5A2A494();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  sub_1E5A2AA34();
  v26 = a3;
  v27 = v21;
  v28 = a5;
  v29 = v24;
  v30 = v22;
  v31 = v23;
  sub_1E59C9940();
  sub_1E5A2A484();
  swift_getWitnessTable();
  sub_1E58B41DC();
  v18 = *(v12 + 8);
  v18(v14, v11);
  sub_1E58B41DC();
  return (v18)(v17, v11);
}

uint64_t sub_1E598A91C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a5;
  *&v42 = a3;
  v45 = a7;
  v13 = type metadata accessor for ScheduleConfigurationSection(0);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  *&v54 = a3;
  *(&v54 + 1) = a4;
  *v55 = a5;
  *&v55[8] = a6;
  type metadata accessor for WorkoutPlanScheduleReviewView(0, &v54);
  v18 = a1[3];
  *&v55[16] = a1[2];
  v56 = v18;
  v57 = *(a1 + 8);
  v19 = a1[1];
  v54 = *a1;
  *v55 = v19;

  v20 = sub_1E5988B20();
  v22 = v21;
  v24 = v23;
  v25 = a1[3];
  *&v51[16] = a1[2];
  v52 = v25;
  v53 = *(a1 + 8);
  v26 = a1[1];
  v50 = *a1;
  *v51 = v26;
  sub_1E5988B7C(&v17[*(v13 + 24)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  *v17 = sub_1E5A2A654();
  *(v17 + 1) = v27;
  *(v17 + 2) = v20;
  *(v17 + 3) = v22;
  v17[32] = v24 & 1;
  v28 = *(a1 + 6);

  v40 = a1[2];
  v29 = v40;

  *&v50 = sub_1E5A2A654();
  *(&v50 + 1) = v30;
  *v51 = a2;
  *&v51[8] = v40;
  *&v51[24] = v28;
  v32 = type metadata accessor for PageContentSection(0, v42, v41, v31);
  WitnessTable = swift_getWitnessTable();
  sub_1E58B41DC();
  v34 = *&v51[8];

  v35 = v44;
  sub_1E598BC80(v17, v44, type metadata accessor for ScheduleConfigurationSection);
  v50 = v54;
  *v51 = *v55;
  v42 = *&v55[8];
  *&v51[8] = *&v55[8];
  *&v51[24] = *&v55[24];
  v49[0] = v35;
  v49[1] = &v50;

  v36 = v42;

  v48[0] = v43;
  v48[1] = v32;
  v46 = sub_1E598932C(&qword_1ECFFF1F8, type metadata accessor for ScheduleConfigurationSection, &unk_1E5A3C2A8);
  v47 = WitnessTable;
  sub_1E597DC00(v49, 2uLL, v48);
  v37 = *&v55[8];

  sub_1E598BC20(v17, type metadata accessor for ScheduleConfigurationSection);
  v38 = *&v51[8];

  return sub_1E598BC20(v35, type metadata accessor for ScheduleConfigurationSection);
}

uint64_t sub_1E598AD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  type metadata accessor for WorkoutPlanScheduleReviewView(0, v9);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);

  sub_1E5A2A654();
  type metadata accessor for BottomActionSection(0, a3, a5, v7);
  swift_getWitnessTable();
  sub_1E58B41DC();

  sub_1E58B41DC();
}

uint64_t sub_1E598AEE4(void x0_0, void x1_0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for WorkoutPlanScheduleReviewView(0, v7);
  swift_getKeyPath();

  sub_1E5A2B934();
}

uint64_t sub_1E598AF6C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v17[0] = a5;
  v17[1] = a6;
  v17[2] = a7;
  v17[3] = a8;
  type metadata accessor for WorkoutPlanScheduleReviewView(0, v17);
  *v15 = a1;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();

  return sub_1E598BC20(v15, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E598B074@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  type metadata accessor for WorkoutPlanScheduleReviewView(0, &v13);
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for ScheduledDayReviewView(0);
  v8 = (a6 + *(v7 + 24));

  sub_1E5A2B514();
  v9 = v14;
  *v8 = v13;
  v8[1] = v9;
  v10 = (a6 + *(v7 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *v10 = result;
  v10[1] = v12;
  return result;
}

uint64_t sub_1E598B1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E598B1E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E598B228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E598B290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E598B2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E598B308(uint64_t a1, int a2)
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

uint64_t sub_1E598B350(uint64_t result, int a2, int a3)
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

uint64_t sub_1E598B3D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E598B41C(uint64_t a1)
{
  sub_1E596EF68(319);
  if (v1 <= 0x3F)
  {
    sub_1E598B4B8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for WorkoutPlanDateHelper(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E598B4B8()
{
  if (!qword_1ECFFEEE0)
  {
    v0 = sub_1E5A2B694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFEEE0);
    }
  }
}

unint64_t sub_1E598B530(uint64_t a1)
{
  result = sub_1E5A29EB4();
  if (v2 <= 0x3F)
  {
    result = sub_1E59581C4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E598B6BC(uint64_t a1)
{
  v2 = sub_1E5A2B4D4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E5A2A7A4();
}

uint64_t sub_1E598B784@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E6931450]();
  *a1 = result;
  return result;
}

unint64_t sub_1E598B7DC()
{
  result = qword_1ECFFEF30;
  if (!qword_1ECFFEF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF18, &qword_1E5A3C400);
    sub_1E596EA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEF30);
  }

  return result;
}

unint64_t sub_1E598B868()
{
  result = qword_1ECFFEF48;
  if (!qword_1ECFFEF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF38, &qword_1E5A3C4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF18, &qword_1E5A3C400);
    sub_1E598B7DC();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFE960, &qword_1ECFFC788, &qword_1E5A319E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEF48);
  }

  return result;
}

unint64_t sub_1E598B95C()
{
  result = qword_1ECFFEF50;
  if (!qword_1ECFFEF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF40, &qword_1E5A3C4B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF18, &qword_1E5A3C400);
    sub_1E598B7DC();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEF50);
  }

  return result;
}

uint64_t sub_1E598BA50()
{
  swift_getKeyPath();
  sub_1E5A2B934();
}

uint64_t objectdestroy_44Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t sub_1E598BC20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E598BC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E598BCF4()
{
  result = qword_1ECFFEFA8;
  if (!qword_1ECFFEFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
    sub_1E598BD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFA8);
  }

  return result;
}

unint64_t sub_1E598BD80()
{
  result = qword_1ECFFEFB0;
  if (!qword_1ECFFEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFB0);
  }

  return result;
}

unint64_t sub_1E598BDD4()
{
  result = qword_1ECFFEFB8;
  if (!qword_1ECFFEFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
    sub_1E598BE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFB8);
  }

  return result;
}

unint64_t sub_1E598BE60()
{
  result = qword_1ECFFEFC0;
  if (!qword_1ECFFEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFC0);
  }

  return result;
}

unint64_t sub_1E598BEB4()
{
  result = qword_1ECFFEFC8;
  if (!qword_1ECFFEFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF90, &qword_1E5A3C550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFD0, &qword_1E5A3C568);
    sub_1E5A2AAE4();
    sub_1E58CD164(&qword_1ECFFEFD8, &qword_1ECFFEFD0, &qword_1E5A3C568, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFC8);
  }

  return result;
}

uint64_t sub_1E598C000(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E598C0B4()
{
  swift_getKeyPath();
  sub_1E5A2B934();
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1E598C180()
{
  result = qword_1ECFFEFF0;
  if (!qword_1ECFFEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFF0);
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E598C25C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E598C2E0()
{
  result = qword_1ECFFF030;
  if (!qword_1ECFFF030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF038, &qword_1E5A3C608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF040, &qword_1E5A3C610);
    sub_1E5A2A714();
    sub_1E58CD164(&qword_1ECFFF048, &qword_1ECFFF040, &qword_1E5A3C610, MEMORY[0x1E697D680]);
    sub_1E598932C(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF030);
  }

  return result;
}

unint64_t sub_1E598C42C()
{
  result = qword_1ECFFF050;
  if (!qword_1ECFFF050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF020, &qword_1E5A3C600);
    sub_1E58CD164(&qword_1ECFFF058, &qword_1ECFFF060, &qword_1E5A3C618, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF050);
  }

  return result;
}

uint64_t sub_1E598C4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E598C54C()
{
  v1 = *(type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E59813BC(v2);
}

unint64_t sub_1E598C5B4()
{
  result = qword_1ECFFF090;
  if (!qword_1ECFFF090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF088, &qword_1E5A3C648);
    sub_1E58CD164(&qword_1ECFFF098, &qword_1ECFFF0A0, &unk_1E5A3C650, MEMORY[0x1E69817F8]);
    sub_1E58CD164(&qword_1ECFFE7A8, &qword_1ECFFE7A0, &unk_1E5A3ACA0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF090);
  }

  return result;
}

uint64_t sub_1E598C698(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E594C9E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E598C6DC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E58B3C9C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1E598C730()
{
  result = qword_1ECFFF148;
  if (!qword_1ECFFF148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF138, &qword_1E5A3C798);
    sub_1E596F604();
    sub_1E58CD164(&qword_1ECFFF150, &qword_1ECFFD798, &qword_1E5A37DF0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF148);
  }

  return result;
}

uint64_t sub_1E598C7E8()
{
  type metadata accessor for ScheduleConfigurationSection(0);

  return sub_1E5983844();
}

uint64_t objectdestroy_101Tm()
{
  v1 = (type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[8];
  v4 = sub_1E5A29EB4();
  (*(*(v4 - 8) + 8))(v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E598C974(void *a1)
{
  type metadata accessor for ScheduleConfigurationSection(0);

  return sub_1E598389C(a1);
}

uint64_t objectdestroy_86Tm()
{
  v1 = (type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[8];
  v4 = sub_1E5A29EB4();
  (*(*(v4 - 8) + 8))(v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E598CB00@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1E5983B40(v5, a2);
}

unint64_t sub_1E598CB90()
{
  result = qword_1ECFFF1A0;
  if (!qword_1ECFFF1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF190, &qword_1E5A3C810);
    sub_1E598C730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF1A0);
  }

  return result;
}

uint64_t sub_1E598CC14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScheduleConfigurationSection(0);

  return sub_1E5982104(a1);
}

uint64_t sub_1E598CC88(uint64_t a1)
{
  type metadata accessor for ScheduleConfigurationSection(0);

  return sub_1E59825D8(a1);
}

unint64_t sub_1E598CD04()
{
  result = qword_1ECFFF1D8;
  if (!qword_1ECFFF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF1D8);
  }

  return result;
}

unint64_t sub_1E598CD58()
{
  result = qword_1ECFFF1E0;
  if (!qword_1ECFFF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF1D0, &unk_1E5A3C838);
    sub_1E598CE08(&qword_1ECFFC020, &qword_1ECFFC000, &qword_1E5A2FCB0, MEMORY[0x1E6982090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF1E0);
  }

  return result;
}

uint64_t sub_1E598CE08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1E598CE68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ScheduleConfigurationSection(0);

  return sub_1E5982BF0(a1, a2);
}

uint64_t objectdestroy_125Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1E598CFD8()
{
  result = qword_1ECFFF208;
  if (!qword_1ECFFF208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF080, &qword_1E5A3C640);
    sub_1E598D090();
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF208);
  }

  return result;
}

unint64_t sub_1E598D090()
{
  result = qword_1ECFFF210;
  if (!qword_1ECFFF210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF070, &unk_1E5A3C628);
    sub_1E598D148();
    sub_1E58CD164(&qword_1ECFFF230, &qword_1ECFFF078, &qword_1E5A3C638, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF210);
  }

  return result;
}

unint64_t sub_1E598D148()
{
  result = qword_1ECFFF218;
  if (!qword_1ECFFF218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF068, &qword_1E5A3C620);
    sub_1E58CD164(&qword_1ECFFF220, &qword_1ECFFF228, &unk_1E5A3C8D0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF218);
  }

  return result;
}

uint64_t sub_1E598D20C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1E5A2BD84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t TVPersonalizedWorkoutPlansView.init(store:buildYourOwnActionButtonViewBuilder:buildPersonalizedActionButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a7 = sub_1E58D2CB8;
  *(a7 + 8) = result;
  *(a7 + 16) = 0;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_1E598D300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE258, &unk_1E5A39330);
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330, MEMORY[0x1E6999B78]);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E598D3A0()
{
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(v0 + 16);
  v27 = *v0;
  v28 = v12;
  v29 = *(v0 + 24);
  v30 = *(v0 + 40);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
      sub_1E594D3DC(v10, v13);
      v16 = sub_1E5A29E34();
      (*(*(v16 - 8) + 8))(&v10[v15], v16);
      goto LABEL_6;
    }

    sub_1E58BAD14(v10, &qword_1ECFFE260, &qword_1E5A39370);
    return 0;
  }

  sub_1E594D3DC(v10, v13);
LABEL_6:
  v17 = *&v13[*(v11 + 20)];
  v18 = *(v17 + 16);
  if (!v18)
  {
    v26 = 0;
LABEL_14:
    sub_1E599AFF0(v13, type metadata accessor for PersonalizedWorkoutPlanCandidates);
    return v26;
  }

  v19 = 0;
  v20 = v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v21 = *(v2 + 72);
  while (1)
  {
    sub_1E599AF88(v20, v7, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E599AF88(v7, v4, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v22 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
    v23 = (*(*(v22 - 8) + 48))(v4, 1, v22) == 1;
    sub_1E599AFF0(v4, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    result = sub_1E599AFF0(v7, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v25 = __OFADD__(v19, v23);
    v19 += v23;
    if (v25)
    {
      break;
    }

    v20 += v21;
    if (!--v18)
    {
      v26 = v19 > 0;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E598D728()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = *(v0 + 16);
  v13 = *v0;
  v14 = v7;
  v15 = *(v0 + 24);
  v16 = *(v0 + 40);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E58D5C24(v6, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v3;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC108, &unk_1E5A37F50) + 48);
      v10 = *v3;
      v11 = sub_1E5A29E34();
      (*(*(v11 - 8) + 8))(&v3[v9], v11);
      return v10;
    }

    sub_1E58BAD14(v3, &qword_1ECFFC100, &qword_1E5A2FE90);
  }

  return 0;
}

uint64_t sub_1E598D8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v5 = sub_1E5A29E74();
  v6 = *(a1 + 24);
  v105 = a1;
  v7 = *(a1 + 40);
  v103 = v6;
  v104 = v7;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, v6, v7, v8);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v135 = v4;
  *(&v135 + 1) = v5;
  v100 = v5;
  v99 = swift_getOpaqueTypeMetadata2();
  *&v136 = v99;
  *(&v136 + 1) = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  *&v137 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v9 = sub_1E5A2B6F4();
  v101 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v86 - v12;
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v13 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v134 = WitnessTable;
  v14 = swift_getWitnessTable();
  *&v135 = v13;
  *(&v135 + 1) = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  *&v135 = v13;
  *(&v135 + 1) = v14;
  v95 = v14;
  v16 = swift_getOpaqueTypeConformance2();
  *&v135 = v15;
  *(&v135 + 1) = v16;
  v116 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v112 = v9;
  v18 = sub_1E5A2AA84();
  v108 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v86 - v19;
  v93 = sub_1E5A2A734();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = swift_checkMetadataState();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v22 = &v86 - v21;
  v111 = swift_checkMetadataState();
  v89 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v24 = &v86 - v23;
  v107 = v17;
  v96 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v86 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v86 - v31;
  v33 = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1E5A2AA84();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v113 = &v86 - v36;
  v37 = v2[1];
  v135 = *v2;
  v136 = v37;
  v137 = v2[2];
  v138 = *(v2 + 6);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1E58BAD14(v32, &qword_1ECFFE260, &qword_1E5A39370);
      v39 = v18;
      v40 = v116;
      v41 = v113;
    }

    else
    {
      v39 = v18;
      v40 = v116;
      v41 = v113;
      if (EnumCaseMultiPayload != 3)
      {
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v42 = v105;
        v43 = v103;
        *(&v86 - 6) = *(v105 + 16);
        *(&v86 - 5) = v43;
        v44 = v104;
        *(&v86 - 4) = *(v42 + 32);
        *(&v86 - 3) = v44;
        v85 = &v135;
        swift_checkMetadataState();
        sub_1E5A2B484();
        sub_1E5A2AD64();
        sub_1E5A2B7E4();
        v45 = v90;
        sub_1E5A2B274();
        (*(v88 + 8))(v22, v45);
        v46 = v91;
        sub_1E5A2A724();
        v47 = v111;
        sub_1E5A2B394();
        (*(v92 + 8))(v46, v93);
        (*(v89 + 8))(v24, v47);
        v124 = v47;
        v125 = v116;
        v48 = swift_getOpaqueTypeConformance2();
        v49 = v107;
        sub_1E58B41DC();
        v105 = *(v96 + 8);
        (v105)(v27, v49);
        sub_1E58B41DC();
        v50 = OpaqueTypeMetadata2;
        v124 = OpaqueTypeMetadata2;
        v125 = OpaqueTypeConformance2;
        v120 = swift_getOpaqueTypeConformance2();
        v51 = v112;
        v52 = swift_getWitnessTable();
        v53 = v106;
        sub_1E595EBC0(v27, v49, v51, v48, v52);
        v118 = v48;
        v41 = v113;
        v119 = v52;
        v54 = swift_getWitnessTable();
        sub_1E595EBC0(v53, v39, MEMORY[0x1E6981E70], v54, MEMORY[0x1E6981E60]);
        (*(v108 + 8))(v53, v39);
        v55 = v105;
        (v105)(v27, v49);
        v56 = OpaqueTypeConformance2;
        v55(v102, v49);
        v40 = v116;
        goto LABEL_11;
      }
    }

    v47 = v111;
    v124 = v111;
    v125 = v40;
    v59 = swift_getOpaqueTypeConformance2();
    v50 = OpaqueTypeMetadata2;
    v124 = OpaqueTypeMetadata2;
    v56 = OpaqueTypeConformance2;
    v125 = OpaqueTypeConformance2;
    v133 = swift_getOpaqueTypeConformance2();
    v60 = swift_getWitnessTable();
    v131 = v59;
    v132 = v60;
    v61 = swift_getWitnessTable();
    sub_1E595ECB8(v61, v39, MEMORY[0x1E6981E70], v61, MEMORY[0x1E6981E60]);
    goto LABEL_11;
  }

  v57 = v97;
  v58 = v98;
  v87 = v18;
  if (EnumCaseMultiPayload)
  {
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
    sub_1E594D3DC(v32, v35);
    v63 = sub_1E5A29E34();
    (*(*(v63 - 8) + 8))(&v32[v62], v63);
  }

  else
  {
    sub_1E594D3DC(v32, v35);
  }

  v64 = OpaqueTypeMetadata2;
  v65 = OpaqueTypeConformance2;
  sub_1E590B0C8();
  sub_1E599AFF0(v35, type metadata accessor for PersonalizedWorkoutPlanCandidates);
  v66 = swift_allocObject();
  v67 = v105;
  v68 = v103;
  *(v66 + 16) = *(v105 + 16);
  *(v66 + 24) = v68;
  v69 = v104;
  *(v66 + 32) = *(v67 + 32);
  *(v66 + 40) = v69;
  v70 = v136;
  *(v66 + 48) = v135;
  *(v66 + 64) = v70;
  *(v66 + 80) = v137;
  *(v66 + 96) = v138;
  (*(*(v67 - 8) + 16))(&v124, &v135);
  type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v124 = v64;
  v125 = v65;
  v71 = swift_getOpaqueTypeConformance2();
  sub_1E599AF40(&qword_1ECFFF270, type metadata accessor for PersonalizedWorkoutPlanCandidate, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidate);
  v85 = sub_1E599AF40(&qword_1ECFFF278, type metadata accessor for PersonalizedWorkoutPlanCandidate, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidate);
  sub_1E5A2B6D4();
  v123 = v71;
  v72 = v112;
  v73 = swift_getWitnessTable();
  sub_1E58B41DC();
  v74 = v57;
  v75 = *(v101 + 8);
  v75(v58, v72);
  sub_1E58B41DC();
  v47 = v111;
  v124 = v111;
  v40 = v116;
  v125 = v116;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v106;
  sub_1E595ECB8(v58, v107, v72, v76, v73);
  v121 = v76;
  v122 = v73;
  v78 = v87;
  v79 = swift_getWitnessTable();
  v41 = v113;
  sub_1E595EBC0(v77, v78, MEMORY[0x1E6981E70], v79, MEMORY[0x1E6981E60]);
  (*(v108 + 8))(v77, v78);
  v50 = OpaqueTypeMetadata2;
  v75(v58, v72);
  v75(v74, v72);
  v56 = OpaqueTypeConformance2;
LABEL_11:
  v80 = MEMORY[0x1E6981E60];
  v124 = v47;
  v125 = v40;
  v81 = swift_getOpaqueTypeConformance2();
  v124 = v50;
  v125 = v56;
  v130 = swift_getOpaqueTypeConformance2();
  v82 = swift_getWitnessTable();
  v128 = v81;
  v129 = v82;
  v126 = swift_getWitnessTable();
  v127 = v80;
  v83 = v110;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v109 + 8))(v41, v83);
}

uint64_t sub_1E598EA38@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v44 = v38 - v12;
  v13 = a5;
  v15 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(0, a3, a5, v14);
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v45 = v38 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v38 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v48 = v38 - v23;
  v53 = a2;
  v54 = a3;
  v40 = v13;
  v41 = a3;
  v55 = a4;
  v56 = v13;
  v24 = v13;
  type metadata accessor for TVPersonalizedWorkoutPlansView(0, &v53);
  sub_1E598D300();
  v25 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v26 = *(v25 - 8);
  v42 = *(v26 + 56);
  v43 = v26 + 56;
  v27 = v44;
  v42(v44, 1, 1, v25);
  v28 = a1;
  v38[1] = a1;
  v29 = *(a1 + 40);
  v39 = v29;
  v30 = *(v28 + 48);
  swift_retain_n();
  TVPersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v27, 0, v29, v30, a3, v24, v21);
  WitnessTable = swift_getWitnessTable();
  sub_1E58B41DC();
  v32 = *(v49 + 8);
  v32(v21, v15);
  sub_1E598D300();
  v42(v27, 1, 1, v25);
  v33 = v45;
  TVPersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v27, 1, v39, v30, v41, v40, v45);
  sub_1E58B41DC();
  v32(v33, v15);
  v34 = v48;
  v35 = *(v49 + 16);
  v35(v33, v48, v15);
  v53 = v33;
  v36 = v46;
  v35(v46, v21, v15);
  v54 = v36;
  v52[0] = v15;
  v52[1] = v15;
  v50 = WitnessTable;
  v51 = WitnessTable;
  sub_1E597DC00(&v53, 2uLL, v52);
  v32(v21, v15);
  v32(v34, v15);
  v32(v36, v15);
  return (v32)(v33, v15);
}

uint64_t sub_1E598EE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v86 = a4;
  v84 = a2;
  v103 = a1;
  v101 = a8;
  v12 = sub_1E5A2BA14();
  v99 = *(v12 - 8);
  v100 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A29E74();
  v78 = *(v16 - 8);
  v79 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v89 = &v77 - v19;
  v20 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v87 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v96 = &v77 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v77 - v25;
  v27 = a5;
  v80 = a5;
  v29 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(0, a5, a7, v28);
  v85 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v83 = &v77 - v30;
  WitnessTable = swift_getWitnessTable();
  v104 = v29;
  v105 = WitnessTable;
  v81 = v29;
  v82 = WitnessTable;
  v32 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v102 = &v77 - v34;
  v104 = v29;
  v105 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeMetadata2;
  v104 = OpaqueTypeMetadata2;
  v105 = OpaqueTypeConformance2;
  v91 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeMetadata2();
  v92 = *(v36 - 8);
  v93 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v88 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v90 = &v77 - v39;
  v104 = v86;
  v105 = v27;
  v106 = a6;
  v107 = a7;
  v40 = a7;
  type metadata accessor for TVPersonalizedWorkoutPlansView(0, &v104);
  v41 = a3;
  sub_1E598D300();
  v42 = v84;
  v43 = v26;
  sub_1E599AF88(v84, v26, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v44 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  (*(*(v44 - 8) + 56))(v26, 0, 1, v44);
  v45 = *(v41 + 40);
  v46 = *(v41 + 48);

  v47 = v83;
  TVPersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v43, v103, v45, v46, v80, v40, v83);
  sub_1E5A2AD64();
  sub_1E5A2B7E4();
  v48 = v81;
  sub_1E5A2B274();
  (*(v85 + 8))(v47, v48);
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A3C8E0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v50 = (v42 + *(v44 + 20));
  v51 = MEMORY[0x1E69E6158];
  v52 = v50[1];
  *(inited + 48) = *v50;
  *(inited + 56) = v52;
  *(inited + 72) = v51;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x70756B636F6CLL;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v51;
  *(inited + 128) = 0x6973736572706D69;
  v53 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v103;
  *(inited + 168) = v53;
  *(inited + 176) = 0x64496F636572;
  *(inited + 184) = 0xE600000000000000;
  v54 = v89;
  sub_1E58BABA0(v42 + *(v44 + 36), v89, &qword_1ECFFD900, &qword_1E5A39BB0);
  v55 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
  {

    sub_1E58BAD14(v54, &qword_1ECFFD900, &qword_1E5A39BB0);
    v56 = (inited + 192);
    *(inited + 216) = v51;
LABEL_5:
    *v56 = 0;
    v64 = 0xE000000000000000;
    goto LABEL_6;
  }

  v58 = v77;
  v57 = v78;
  v59 = v54 + *(v55 + 20);
  v60 = v54;
  v61 = v79;
  (*(v78 + 16))(v77, v59, v79);

  sub_1E599AFF0(v60, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  v62 = sub_1E5A29E44();
  v64 = v63;
  (*(v57 + 8))(v58, v61);
  v56 = (inited + 192);
  *(inited + 216) = v51;
  if (!v64)
  {
    goto LABEL_5;
  }

  *v56 = v62;
LABEL_6:
  *(inited + 200) = v64;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v65 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v65);
  v66 = v96;
  sub_1E5A2B9D4();
  v67 = sub_1E5A2B9E4();
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = v98;
  sub_1E5A2B9F4();
  v69 = v88;
  v70 = v95;
  v71 = v91;
  v72 = v102;
  sub_1E5A2B014();
  (*(v99 + 8))(v68, v100);
  sub_1E58BAD14(v66, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v94 + 8))(v72, v70);
  v104 = v70;
  v105 = v71;
  swift_getOpaqueTypeConformance2();
  v73 = v90;
  v74 = v93;
  sub_1E58B41DC();
  v75 = *(v92 + 8);
  v75(v69, v74);
  sub_1E58B41DC();
  return (v75)(v73, v74);
}