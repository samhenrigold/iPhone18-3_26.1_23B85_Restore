unint64_t sub_1D9E92AF8()
{
  result = qword_1ECB74338;
  if (!qword_1ECB74338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74338);
  }

  return result;
}

uint64_t sub_1D9E92B4C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74340, &qword_1D9F37F80);
    sub_1D9E92C90(a2, type metadata accessor for PredictedAction, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E92BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9E92C90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D9E92D00(uint64_t a1)
{
  sub_1D9E92DC4(319, &qword_1EE0F2258, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9E92DC4(319, &qword_1EE0F2348, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9E92DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PredictedAction(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D9E92E38()
{
  result = qword_1ECB74358;
  if (!qword_1ECB74358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74358);
  }

  return result;
}

unint64_t sub_1D9E92E90()
{
  result = qword_1ECB74360;
  if (!qword_1ECB74360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74360);
  }

  return result;
}

unint64_t sub_1D9E92EE8()
{
  result = qword_1ECB74368;
  if (!qword_1ECB74368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74368);
  }

  return result;
}

uint64_t sub_1D9E92F3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463416E65706FLL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974634165766173 && a2 == 0xEA00000000006E6FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6341686372616573 && a2 == 0xEC0000006E6F6974 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F48FD0 == a2)
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

unint64_t sub_1D9E931B8()
{
  result = qword_1EE0F3360;
  if (!qword_1EE0F3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3360);
  }

  return result;
}

unint64_t sub_1D9E93210()
{
  result = qword_1ECB74378;
  if (!qword_1ECB74378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74378);
  }

  return result;
}

unint64_t sub_1D9E93264()
{
  result = qword_1EE0F3368[0];
  if (!qword_1EE0F3368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F3368);
  }

  return result;
}

unint64_t sub_1D9E932BC()
{
  result = qword_1EE0F3358;
  if (!qword_1EE0F3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3358);
  }

  return result;
}

uint64_t CalendarEvent.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CalendarEvent.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CalendarEvent.location.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CalendarEvent.location.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CalendarEvent.notes.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CalendarEvent.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CalendarEvent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CalendarEvent(0) + 28);

  return sub_1D9E9354C(v3, a1);
}

uint64_t type metadata accessor for CalendarEvent(uint64_t a1)
{
  result = qword_1EE0F3058;
  if (!qword_1EE0F3058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9E9354C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CalendarEvent.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CalendarEvent(0) + 28);

  return sub_1D9E93600(a1, v3);
}

uint64_t sub_1D9E93600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CalendarEvent.schedules.getter()
{
  type metadata accessor for CalendarEvent(0);
}

uint64_t CalendarEvent.schedules.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CalendarEvent(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t CalendarEvent.init(title:location:notes:url:schedules:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v17 = type metadata accessor for CalendarEvent(0);
  v18 = *(v17 + 28);
  v19 = sub_1D9F2AC4C();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  result = sub_1D9E93600(a7, &a9[v18]);
  *&a9[*(v17 + 32)] = a8;
  return result;
}

uint64_t sub_1D9E93854()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x7365746F6ELL;
  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 0x656C756465686373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
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

uint64_t sub_1D9E938E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E95C04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E9390C(uint64_t a1)
{
  v2 = sub_1D9E956A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E93948(uint64_t a1)
{
  v2 = sub_1D9E956A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalendarEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74380, &qword_1D9F38438);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E956A8();
  sub_1D9F2BB8C();
  v16 = 0;
  sub_1D9F2B90C();
  if (!v2)
  {
    v15 = 1;
    sub_1D9F2B90C();
    v14 = 2;
    sub_1D9F2B90C();
    v9 = type metadata accessor for CalendarEvent(0);
    v13 = 3;
    sub_1D9F2AC4C();
    sub_1D9E95DB4(&qword_1ECB74390, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D9F2B94C();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74398, &qword_1D9F38440);
    sub_1D9E956FC(&qword_1ECB743A0, &qword_1ECB743A8, &protocol conformance descriptor for DateTimeSchedule, MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CalendarEvent.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for DateTimeSchedule(0);
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9F2AC4C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  if (v1[1])
  {
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    if (v1[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D9F2BB1C();
    if (v1[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D9F2BB1C();
  if (!v1[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D9F2BB1C();
  sub_1D9F2B18C();
  if (v1[5])
  {
LABEL_4:
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    goto LABEL_8;
  }

LABEL_7:
  sub_1D9F2BB1C();
LABEL_8:
  v13 = type metadata accessor for CalendarEvent(0);
  sub_1D9E9354C(v1 + *(v13 + 28), v12);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_1D9F2BB1C();
    sub_1D9E95DB4(&qword_1ECB731C8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D9F2B0EC();
    (*(v7 + 8))(v9, v6);
  }

  v14 = *(v1 + *(v13 + 32));
  result = MEMORY[0x1DA7438F0](*(v14 + 16));
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v18 = *(v20 + 72);
    do
    {
      sub_1D9E95798(v17, v5, type metadata accessor for DateTimeSchedule);
      DateTimeSchedule.hash(into:)(a1);
      result = sub_1D9E95800(v5, type metadata accessor for DateTimeSchedule);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t CalendarEvent.hashValue.getter()
{
  sub_1D9F2BAFC();
  CalendarEvent.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t CalendarEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743B0, &qword_1D9F38448);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for CalendarEvent(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 28);
  v14 = sub_1D9F2AC4C();
  v15 = *(*(v14 - 8) + 56);
  v39 = v12;
  v15(v12 + v13, 1, 1, v14);
  v16 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D9E956A8();
  v17 = v41;
  sub_1D9F2BB7C();
  if (v17)
  {
    v41 = v17;
    v18 = v13;
    v19 = v39;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v40);

    return sub_1D9E51FE8(v19 + v18, &qword_1ECB73890, &qword_1D9F38430);
  }

  v34 = v9;
  v35 = v14;
  v20 = v37;
  v47 = 0;
  v21 = sub_1D9F2B7FC();
  v18 = v13;
  v22 = v39;
  *v39 = v21;
  v22[1] = v23;
  v33 = v23;
  v46 = 1;
  v24 = v20;
  v22[2] = sub_1D9F2B7FC();
  v22[3] = v25;
  v45 = 2;
  v26 = sub_1D9F2B7FC();
  v41 = 0;
  v19 = v22;
  v22[4] = v26;
  v22[5] = v27;
  v44 = 3;
  sub_1D9E95DB4(&qword_1ECB743B8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v28 = v41;
  sub_1D9F2B83C();
  v41 = v28;
  if (v28)
  {
    (*(v24 + 8))(v8, v38);
    goto LABEL_7;
  }

  sub_1D9E93600(v5, v22 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74398, &qword_1D9F38440);
  v43 = 4;
  sub_1D9E956FC(&qword_1ECB743C0, &qword_1ECB743C8, &protocol conformance descriptor for DateTimeSchedule, MEMORY[0x1E69E6330]);
  v29 = v24;
  v30 = v38;
  v31 = v41;
  sub_1D9F2B89C();
  (*(v29 + 8))(v8, v30);
  v41 = v31;
  if (v31)
  {
    v19 = v22;
    goto LABEL_7;
  }

  *(v22 + *(v34 + 32)) = v42;
  sub_1D9E95798(v22, v36, type metadata accessor for CalendarEvent);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_1D9E95800(v22, type metadata accessor for CalendarEvent);
}

uint64_t sub_1D9E94538()
{
  sub_1D9F2BAFC();
  CalendarEvent.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E9457C()
{
  sub_1D9F2BAFC();
  CalendarEvent.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t CalendarEvent.subentities.getter()
{
  v1 = type metadata accessor for DetectedEntity(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for CalendarEvent(0) + 32));
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D9E9482C(0, v6, 0);
    v7 = v15;
    v8 = *(type metadata accessor for DateTimeSchedule(0) - 8);
    v9 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      sub_1D9E95798(v9, v4, type metadata accessor for DateTimeSchedule);
      swift_storeEnumTagMultiPayload();
      v15 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D9E9482C((v11 > 1), v12 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v12 + 1;
      sub_1D9E95860(v4, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_1D9E947AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9E948AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D9E947CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9E949B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E947EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9E94B00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E9480C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9E94C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D9E9482C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9E94D08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D9E9484C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9E94EE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E9486C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9E950D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E9488C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9E951D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9E948AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74400, &qword_1D9F386C0);
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

void *sub_1D9E949B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743F0, &unk_1D9F386B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743F8, &unk_1D9F454E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9E94B00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74438, &qword_1D9F455E0);
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

char *sub_1D9E94C04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74440, &unk_1D9F38700);
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

void *sub_1D9E94D08(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74428, &qword_1D9F454F0);
  v10 = *(type metadata accessor for DetectedEntity(0) - 8);
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
  v15 = *(type metadata accessor for DetectedEntity(0) - 8);
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

void *sub_1D9E94EE0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74418, &qword_1D9F386D8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74420, &unk_1D9F386E0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74420, &unk_1D9F386E0) - 8);
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

char *sub_1D9E950D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74408, &qword_1D9F386C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D9E951D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74410, &qword_1D9F386D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t _s29VisualActionPredictionSupport13CalendarEventV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9F2AC4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74430, &unk_1D9F386F0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v15)
  {
    goto LABEL_28;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v17)
  {
    goto LABEL_28;
  }

  v18 = a1[5];
  v19 = a2[5];
  if (v18)
  {
    if (!v19 || (a1[4] != a2[4] || v18 != v19) && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v19)
  {
    goto LABEL_28;
  }

  v28 = type metadata accessor for CalendarEvent(0);
  v20 = *(v28 + 28);
  v21 = *(v11 + 48);
  sub_1D9E9354C(a1 + v20, v13);
  sub_1D9E9354C(a2 + v20, &v13[v21]);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_1D9E51FE8(v13, &qword_1ECB73890, &qword_1D9F38430);
LABEL_31:
      v23 = sub_1D9E4B13C(*(a1 + *(v28 + 32)), *(a2 + *(v28 + 32)));
      return v23 & 1;
    }

    goto LABEL_27;
  }

  sub_1D9E9354C(v13, v10);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_27:
    sub_1D9E51FE8(v13, &qword_1ECB74430, &unk_1D9F386F0);
    goto LABEL_28;
  }

  (*(v5 + 32))(v7, &v13[v21], v4);
  sub_1D9E95DB4(&qword_1ECB731C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v25 = sub_1D9F2B10C();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v10, v4);
  sub_1D9E51FE8(v13, &qword_1ECB73890, &qword_1D9F38430);
  if (v25)
  {
    goto LABEL_31;
  }

LABEL_28:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_1D9E956A8()
{
  result = qword_1ECB74388;
  if (!qword_1ECB74388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74388);
  }

  return result;
}

uint64_t sub_1D9E956FC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74398, &qword_1D9F38440);
    sub_1D9E95DB4(a2, type metadata accessor for DateTimeSchedule, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E95798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E95800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9E95860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D9E95934(uint64_t a1)
{
  sub_1D9E95A38();
  if (v1 <= 0x3F)
  {
    sub_1D9E95A88(319, &unk_1EE0F3880, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D9E95A88(319, &qword_1EE0F2318, type metadata accessor for DateTimeSchedule, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9E95A38()
{
  if (!qword_1EE0F2358)
  {
    v0 = sub_1D9F2B59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F2358);
    }
  }
}

void sub_1D9E95A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D9E95B00()
{
  result = qword_1ECB743D8;
  if (!qword_1ECB743D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB743D8);
  }

  return result;
}

unint64_t sub_1D9E95B58()
{
  result = qword_1ECB743E0;
  if (!qword_1ECB743E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB743E0);
  }

  return result;
}

unint64_t sub_1D9E95BB0()
{
  result = qword_1ECB743E8;
  if (!qword_1ECB743E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB743E8);
  }

  return result;
}

uint64_t sub_1D9E95C04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000073)
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

uint64_t sub_1D9E95DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void static ExecutionResourceRetrievalServiceDefinition.descriptor.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000003ELL;
  *(a1 + 8) = 0x80000001D9F48C80;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 25;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
}

void sub_1D9E95E38(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000003ELL;
  *(a1 + 8) = 0x80000001D9F48C80;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 25;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
}

uint64_t sub_1D9E95EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F736572 && a2 == 0xEB00000000734449)
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

uint64_t sub_1D9E95F3C(uint64_t a1)
{
  v2 = sub_1D9E96160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E95F78(uint64_t a1)
{
  v2 = sub_1D9E96160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionResourceRetrievalServiceDefinition.ResourceRetrievalRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74448, &qword_1D9F38710);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E96160();

  sub_1D9F2BB8C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74458, &qword_1D9F38718);
  sub_1D9E9636C(&qword_1ECB74460, &qword_1EE0F3868, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
  sub_1D9F2B9AC();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9E96160()
{
  result = qword_1ECB74450;
  if (!qword_1ECB74450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74450);
  }

  return result;
}

uint64_t ExecutionResourceRetrievalServiceDefinition.ResourceRetrievalRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74468, &qword_1D9F38720);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E96160();
  sub_1D9F2BB7C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9E9636C(&qword_1ECB74470, &qword_1EE0F3860, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
    sub_1D9F2B89C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E9636C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74458, &qword_1D9F38718);
    sub_1D9E963F4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E963F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D9F2AD7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E964C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F736572 && a2 == 0xEB0000000070614DLL)
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

uint64_t sub_1D9E9654C(uint64_t a1)
{
  v2 = sub_1D9E96738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E96588(uint64_t a1)
{
  v2 = sub_1D9E96738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionResourceRetrievalServiceDefinition.ResourceRetrievalResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74478, &qword_1D9F38728);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E96738();

  sub_1D9F2BB8C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74488, &qword_1D9F38730);
  sub_1D9E9678C();
  sub_1D9F2B9AC();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9E96738()
{
  result = qword_1ECB74480;
  if (!qword_1ECB74480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74480);
  }

  return result;
}

unint64_t sub_1D9E9678C()
{
  result = qword_1ECB74490;
  if (!qword_1ECB74490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74488, &qword_1D9F38730);
    sub_1D9E963F4(&qword_1EE0F3868, MEMORY[0x1E69695B0]);
    sub_1D9E96834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74490);
  }

  return result;
}

unint64_t sub_1D9E96834()
{
  result = qword_1ECB74498;
  if (!qword_1ECB74498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74498);
  }

  return result;
}

uint64_t ExecutionResourceRetrievalServiceDefinition.ResourceRetrievalResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB744A0, &qword_1D9F38738);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E96738();
  sub_1D9F2BB7C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74488, &qword_1D9F38730);
    sub_1D9E96A08();
    sub_1D9F2B89C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9E96A08()
{
  result = qword_1ECB744A8;
  if (!qword_1ECB744A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74488, &qword_1D9F38730);
    sub_1D9E963F4(&qword_1EE0F3860, MEMORY[0x1E69695D0]);
    sub_1D9E96AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744A8);
  }

  return result;
}

unint64_t sub_1D9E96AB0()
{
  result = qword_1ECB744B0;
  if (!qword_1ECB744B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744B0);
  }

  return result;
}

unint64_t sub_1D9E96B08()
{
  result = qword_1ECB744B8;
  if (!qword_1ECB744B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744B8);
  }

  return result;
}

unint64_t sub_1D9E96B88()
{
  result = qword_1ECB744C0;
  if (!qword_1ECB744C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744C0);
  }

  return result;
}

uint64_t sub_1D9E96C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E96C60()
{
  result = qword_1ECB744C8;
  if (!qword_1ECB744C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744C8);
  }

  return result;
}

unint64_t sub_1D9E96D38()
{
  result = qword_1ECB744D0;
  if (!qword_1ECB744D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744D0);
  }

  return result;
}

unint64_t sub_1D9E96D90()
{
  result = qword_1ECB744D8;
  if (!qword_1ECB744D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744D8);
  }

  return result;
}

unint64_t sub_1D9E96DE8()
{
  result = qword_1ECB744E0;
  if (!qword_1ECB744E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744E0);
  }

  return result;
}

unint64_t sub_1D9E96E40()
{
  result = qword_1ECB744E8;
  if (!qword_1ECB744E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744E8);
  }

  return result;
}

unint64_t sub_1D9E96E98()
{
  result = qword_1ECB744F0;
  if (!qword_1ECB744F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744F0);
  }

  return result;
}

unint64_t sub_1D9E96EF0()
{
  result = qword_1ECB744F8;
  if (!qword_1ECB744F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB744F8);
  }

  return result;
}

uint64_t ServiceListener.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t ServiceListener.Callbacks.newSessionHandler.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServiceListener.Callbacks.init(newSessionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ServiceListener.__allocating_init(interfaceType:descriptor:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  ServiceListener.init(interfaceType:descriptor:targetQueue:)(v5, a2, a3);
  return v5;
}

char *ServiceListener.init(interfaceType:descriptor:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v6 = *v3;
  v47 = sub_1D9F2B47C();
  MEMORY[0x1EEE9AC00](v47);
  v46 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9F2B48C();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9F2AFFC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v6[14];
  v14 = v6[11];
  v15 = v6[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&v4[v13], 1, 2, AssociatedTypeWitness);
  v17 = *(*v4 + 120);
  sub_1D9F2AD7C();
  type metadata accessor for ServiceSession(0, v15, v14, v18);
  sub_1D9E9C984(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *&v4[v17] = sub_1D9F2B07C();
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v19 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v19, qword_1EE0F2380);

  v20 = sub_1D9F2AE6C();
  v21 = sub_1D9F2B42C();

  v22 = os_log_type_enabled(v20, v21);
  v44 = v12;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v49 = v24;
    *v23 = 136315394;
    v25 = sub_1D9F2BBBC();
    v27 = sub_1D9E71CA4(v25, v26, &v49);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1D9E71CA4(0xD00000000000002BLL, 0x80000001D9F49070, &v49);
    _os_log_impl(&dword_1D9E39000, v20, v21, "%s.%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v24, -1, -1);
    MEMORY[0x1DA744270](v23, -1, -1);
  }

  v28 = *(*v4 + 96);
  v29 = swift_getAssociatedTypeWitness();
  v30 = *(v29 - 8);
  (*(v30 + 16))(&v4[v28], a2, v29);
  v31 = v48;
  if (!v48)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1D9F2B68C();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = (*(AssociatedConformanceWitness + 8))(v29, AssociatedConformanceWitness);
    v35 = v34;

    v49 = v33;
    v50 = v35;
    MEMORY[0x1DA742F90](0xD000000000000011, 0x80000001D9F49050);
    v36 = v49;
    v37 = v50;
    v38 = (*(AssociatedConformanceWitness + 16))(v29, AssociatedConformanceWitness);
    v40[1] = v37;
    v41 = a2;
    v48 = v36;
    if (v38 <= 16)
    {
      if (v38 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_19;
      }

      if (v38 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_19;
      }
    }

    else
    {
      switch(v38)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_19;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_19;
        case 33:
          sub_1D9F2AFCC();
LABEL_19:
          sub_1D9E84F4C();
          (*(v42 + 104))(v45, *MEMORY[0x1E69E8098], v43);
          v49 = MEMORY[0x1E69E7CC0];
          sub_1D9E9C984(&unk_1EE0F22D8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9E84FE0(&qword_1EE0F2300, &unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9F2B5FC();
          v31 = sub_1D9F2B4AC();
          (*(v30 + 8))(v41, v29);
          goto LABEL_20;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_19;
  }

  (*(v30 + 8))(a2, v29);
LABEL_20:
  *&v4[*(*v4 + 104)] = v31;
  return v4;
}

char *ServiceListener.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v3 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v3, qword_1EE0F2380);

  v4 = sub_1D9F2AE6C();
  v5 = sub_1D9F2B42C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315394;
    v8 = sub_1D9F2BBBC();
    v10 = sub_1D9E71CA4(v8, v9, v20);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1D9E71CA4(0x74696E696564, 0xE600000000000000, v20);
    _os_log_impl(&dword_1D9E39000, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v7, -1, -1);
    MEMORY[0x1DA744270](v6, -1, -1);
  }

  v20[0] = 0;
  v20[1] = 0;
  v21 = 2;
  sub_1D9E97AAC(v20);
  v11 = *(*v1 + 96);
  v14 = v2 + 80;
  v13 = *(v2 + 80);
  v12 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v1[v11], AssociatedTypeWitness);

  v16 = *(*v1 + 112);
  v18 = type metadata accessor for ServiceListener.State(0, v13, v12, v17);
  (*(*(v18 - 8) + 8))(&v1[v16], v18);

  return v1;
}

void sub_1D9E97AAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v93 = &v85 - v7;
  v87 = v5;
  v88 = v4;
  v9 = type metadata accessor for ServiceListener.State(0, v5, v4, v8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v94 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v85 - v13;
  v14 = sub_1D9F2B02C();
  v90 = *(v14 - 8);
  v91 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v89 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v19 = sub_1D9F2AE8C();
  v20 = __swift_project_value_buffer(v19, qword_1EE0F2380);

  sub_1D9E84B2C(v16, v17, v18);
  v21 = sub_1D9F2AE6C();
  v22 = sub_1D9F2B42C();

  sub_1D9E84B4C(v16, v17, v18);
  v23 = os_log_type_enabled(v21, v22);
  v96 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v86 = v9;
    v25 = v24;
    v26 = swift_slowAlloc();
    v92 = v20;
    v27 = v26;
    v99[0] = v26;
    *v25 = 136315650;
    v28 = sub_1D9F2BBBC();
    v85 = v10;
    v30 = sub_1D9E71CA4(v28, v29, v99);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1D9E71CA4(0x286C65636E61635FLL, 0xED0000293A726F66, v99);
    *(v25 + 22) = 2080;
    sub_1D9E84B2C(v16, v17, v18);
    v31 = sub_1D9EB922C(v16, v17, v18);
    v33 = sub_1D9E71CA4(v31, v32, v99);
    v6 = v96;

    *(v25 + 24) = v33;
    v10 = v85;
    _os_log_impl(&dword_1D9E39000, v21, v22, "%s.%s reason = %s", v25, 0x20u);
    swift_arrayDestroy();
    v34 = v27;
    v20 = v92;
    MEMORY[0x1DA744270](v34, -1, -1);
    v35 = v25;
    v9 = v86;
    MEMORY[0x1DA744270](v35, -1, -1);
  }

  if (v18 == 2 && !(v17 | v16) || (v36 = *(v2 + *(*v2 + 104)), v38 = v89, v37 = v90, *v89 = v36, v39 = v91, (*(v37 + 104))(v38, *MEMORY[0x1E69E8020], v91), v40 = v36, LOBYTE(v36) = sub_1D9F2B04C(), (*(v37 + 8))(v38, v39), (v36 & 1) != 0))
  {
    v41 = *(*v2 + 112);
    swift_beginAccess();
    v42 = v95;
    (*(v10 + 16))(v95, v2 + v41, v9);
    v43 = AssociatedTypeWitness;
    v44 = (*(v6 + 48))(v42, 2, AssociatedTypeWitness);
    if (!v44)
    {
      v54 = v93;
      (*(v6 + 32))(v93, v42, v43);

      v92 = v20;
      v55 = sub_1D9F2AE6C();
      v56 = sub_1D9F2B41C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v98[0] = v58;
        *v57 = 136315138;

        v59 = ServiceListener.description.getter();
        v61 = v60;

        v62 = sub_1D9E71CA4(v59, v61, v98);
        v54 = v93;

        *(v57 + 4) = v62;
        _os_log_impl(&dword_1D9E39000, v55, v56, "%s cancelling...", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        v63 = v58;
        v43 = AssociatedTypeWitness;
        MEMORY[0x1DA744270](v63, -1, -1);
        MEMORY[0x1DA744270](v57, -1, -1);
      }

      else
      {
      }

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 48))(v43, AssociatedConformanceWitness);

      v74 = sub_1D9F2AE6C();
      v75 = sub_1D9F2B41C();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v98[0] = v77;
        *v76 = 136315138;

        v78 = ServiceListener.description.getter();
        v80 = v79;

        v81 = sub_1D9E71CA4(v78, v80, v98);

        *(v76 + 4) = v81;
        _os_log_impl(&dword_1D9E39000, v74, v75, "%s cancelled.", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        v82 = v77;
        v43 = AssociatedTypeWitness;
        MEMORY[0x1DA744270](v82, -1, -1);
        MEMORY[0x1DA744270](v76, -1, -1);

        v83 = v96;
        (*(v96 + 8))(v93, v43);
      }

      else
      {

        v83 = v96;
        (*(v96 + 8))(v54, v43);
      }

      v84 = v94;
      (*(v83 + 56))(v94, 2, 2, v43);
      swift_beginAccess();
      (*(v10 + 40))(v2 + v41, v84, v9);
      goto LABEL_23;
    }

    if (v44 == 1)
    {

      v45 = sub_1D9F2AE6C();
      v46 = sub_1D9F2B41C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v98[0] = v48;
        *v47 = 136315138;

        v49 = ServiceListener.description.getter();
        v51 = v50;

        v52 = sub_1D9E71CA4(v49, v51, v98);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_1D9E39000, v45, v46, "%s cancelled without being activated.", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v53 = v48;
        v43 = AssociatedTypeWitness;
        MEMORY[0x1DA744270](v53, -1, -1);
        MEMORY[0x1DA744270](v47, -1, -1);
      }

      else
      {
      }

      v72 = v94;
      (*(v96 + 56))(v94, 2, 2, v43);
      swift_beginAccess();
      (*(v10 + 40))(v2 + v41, v72, v9);
LABEL_23:
      swift_endAccess();
      return;
    }

    v64 = sub_1D9F2AE6C();
    v65 = sub_1D9F2B42C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v98[0] = v67;
      *v66 = 136315138;

      v68 = ServiceListener.description.getter();
      v70 = v69;

      v71 = sub_1D9E71CA4(v68, v70, v98);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_1D9E39000, v64, v65, "%s is already cancelled.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1DA744270](v67, -1, -1);
      MEMORY[0x1DA744270](v66, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ServiceListener.__deallocating_deinit()
{
  ServiceListener.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ServiceListener.activate(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D9F2AF8C();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D9F2AFFC();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v10 = a1[1];
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v12 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v12, qword_1EE0F2380);

  v13 = sub_1D9F2AE6C();
  v14 = sub_1D9F2B42C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v4;
    aBlock[0] = v26;
    *v15 = 136315394;
    v25 = v14;
    v16 = sub_1D9F2BBBC();
    v18 = v11;
    v19 = sub_1D9E71CA4(v16, v17, aBlock);

    *(v15 + 4) = v19;
    v11 = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1D9E71CA4(0x6574617669746361, 0xEF293A6874697728, aBlock);
    _os_log_impl(&dword_1D9E39000, v13, v25, "%s.%s", v15, 0x16u);
    v20 = v26;
    swift_arrayDestroy();
    v4 = v27;
    MEMORY[0x1DA744270](v20, -1, -1);
    MEMORY[0x1DA744270](v15, -1, -1);
  }

  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v11;
  v21[4] = v10;
  aBlock[4] = sub_1D9E9C078;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_2;
  v22 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D9E9C984(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v9, v6, v22);
  _Block_release(v22);
  (*(v30 + 8))(v6, v4);
  (*(v28 + 8))(v9, v29);
}

void sub_1D9E98A28(uint64_t *a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v140 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v143 = &v135 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v146 = &v135 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v145 = &v135 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v148 = &v135 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v142 = &v135 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v139 = &v135 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v150 = &v135 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v144 = &v135 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v159 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v149 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v135 - v28;
  v154 = v4;
  v31 = type metadata accessor for ServiceListener.State(0, v5, v4, v30);
  v157 = *(v31 - 8);
  v158 = v31;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v138 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v135 - v34;
  v36 = sub_1D9F2B02C();
  v155 = *(v36 - 8);
  v156 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = a1[1];
  v141 = *a1;
  v147 = v39;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v160 = v35;
  v40 = sub_1D9F2AE8C();
  v41 = __swift_project_value_buffer(v40, qword_1EE0F2380);

  v42 = sub_1D9F2AE6C();
  v43 = sub_1D9F2B42C();

  v44 = os_log_type_enabled(v42, v43);
  v153 = v5;
  v151 = AssociatedTypeWitness;
  v152 = v7;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v163[0] = v137;
    *v45 = 136315394;
    v46 = sub_1D9F2BBBC();
    v48 = v29;
    v49 = v2;
    v50 = v25;
    v51 = sub_1D9E71CA4(v46, v47, v163);

    *(v45 + 4) = v51;
    v25 = v50;
    v2 = v49;
    v29 = v48;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_1D9E71CA4(0xD000000000000010, 0x80000001D9F490C0, v163);
    _os_log_impl(&dword_1D9E39000, v42, v43, "%s.%s", v45, 0x16u);
    v52 = v137;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v52, -1, -1);
    MEMORY[0x1DA744270](v45, -1, -1);
  }

  v53 = *(v2 + *(*v2 + 104));
  *v38 = v53;
  v55 = v155;
  v54 = v156;
  (*(v155 + 13))(v38, *MEMORY[0x1E69E8020], v156);
  v56 = v53;
  LOBYTE(v53) = sub_1D9F2B04C();
  (*(v55 + 1))(v38, v54);
  if (v53)
  {
    v156 = v56;
    v57 = *(*v2 + 112);
    swift_beginAccess();
    v58 = v160;
    (*(v157 + 16))(v160, v2 + v57, v158);
    v59 = v159;
    v60 = (*(v159 + 48))(v58, 2, v25);
    if (v60)
    {
      if (v60 == 1)
      {
        v160 = v41;
        v61 = v149;
        (*(v154 + 56))(v2 + *(*v2 + 96), v150);
        v79 = *(v59 + 32);
        v155 = v29;
        v79(v29, v61, v25);

        v80 = sub_1D9F2AE6C();
        v81 = sub_1D9F2B41C();
        v82 = os_log_type_enabled(v80, v81);
        v136 = v25;
        v137 = 0;
        if (v82)
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v163[0] = v84;
          *v83 = 136315138;

          v85 = ServiceListener.description.getter();
          v87 = v86;

          v88 = sub_1D9E71CA4(v85, v87, v163);

          *(v83 + 4) = v88;
          _os_log_impl(&dword_1D9E39000, v80, v81, "%s activating...", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v84);
          MEMORY[0x1DA744270](v84, -1, -1);
          MEMORY[0x1DA744270](v83, -1, -1);
        }

        else
        {
        }

        v89 = v154;
        v90 = v141;
        v91 = swift_allocObject();
        swift_weakInit();
        v92 = swift_allocObject();
        v93 = v153;
        v92[2] = v153;
        v92[3] = v89;
        v92[4] = v91;
        v94 = swift_allocObject();
        swift_weakInit();
        v95 = swift_allocObject();
        v95[2] = v93;
        v95[3] = v89;
        v95[4] = v94;
        v95[5] = v90;
        v95[6] = v147;
        swift_getAssociatedTypeWitness();
        v96 = v136;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        swift_getAssociatedConformanceWitness();
        v154 = swift_getAssociatedConformanceWitness();
        v98 = v156;
        sub_1D9E77E58(sub_1D9E9C8E0, v92, sub_1D9E9C8EC, v95, v156, v163);
        v161[0] = v163[0];
        v161[1] = v163[1];
        v162 = v164;
        v99 = *(AssociatedConformanceWitness + 40);
        v100 = v98;

        v101 = v155;
        v102 = v137;
        v103 = v142;
        v156 = AssociatedConformanceWitness;
        v99(v161, v142, v96, AssociatedConformanceWitness);
        if (v102)
        {

          v104 = v152;
          v105 = *(v152 + 32);
          v106 = v139;
          v107 = v151;
          v105(v139, v103, v151);
          v108 = v143;
          v105(v143, v106, v107);
          v109 = v140;
          (*(v104 + 16))(v140, v108, v107);

          v110 = sub_1D9F2AE6C();
          v111 = sub_1D9F2B43C();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            *&v163[0] = v160;
            *v112 = 136315394;

            v113 = ServiceListener.description.getter();
            v115 = v114;

            v116 = sub_1D9E71CA4(v113, v115, v163);

            *(v112 + 4) = v116;
            *(v112 + 12) = 2080;
            v117 = sub_1D9F2BAAC();
            v119 = v118;
            v120 = *(v104 + 8);
            v120(v109, v107);
            v121 = sub_1D9E71CA4(v117, v119, v163);

            *(v112 + 14) = v121;
            _os_log_impl(&dword_1D9E39000, v110, v111, "%s failed to activate due to error %s.", v112, 0x16u);
            v122 = v160;
            swift_arrayDestroy();
            MEMORY[0x1DA744270](v122, -1, -1);
            MEMORY[0x1DA744270](v112, -1, -1);
          }

          else
          {

            v120 = *(v104 + 8);
            v120(v109, v107);
          }

          v133 = v155;
          v134 = v136;
          v156[6](v136);
          v120(v143, v107);
          (*(v159 + 8))(v133, v134);
        }

        else
        {

          v123 = v159;
          v124 = v138;
          (*(v159 + 16))(v138, v101, v96);
          (*(v123 + 56))(v124, 0, 2, v96);
          swift_beginAccess();
          (*(v157 + 40))(v2 + v57, v124, v158);
          swift_endAccess();

          v125 = sub_1D9F2AE6C();
          v126 = sub_1D9F2B41C();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            *&v163[0] = v128;
            *v127 = 136315138;

            v129 = ServiceListener.description.getter();
            v131 = v130;

            v132 = sub_1D9E71CA4(v129, v131, v163);

            *(v127 + 4) = v132;
            _os_log_impl(&dword_1D9E39000, v125, v126, "%s activated.", v127, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v128);
            MEMORY[0x1DA744270](v128, -1, -1);
            MEMORY[0x1DA744270](v127, -1, -1);
          }

          else
          {
          }

          (*(v123 + 8))(v101, v96);
        }
      }

      else
      {

        v71 = sub_1D9F2AE6C();
        v72 = sub_1D9F2B43C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v163[0] = v74;
          *v73 = 136315138;

          v75 = ServiceListener.description.getter();
          v77 = v76;

          v78 = sub_1D9E71CA4(v75, v77, v163);

          *(v73 + 4) = v78;
          _os_log_impl(&dword_1D9E39000, v71, v72, "%s failed to activate because it is already cancelled.", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v74);
          MEMORY[0x1DA744270](v74, -1, -1);
          MEMORY[0x1DA744270](v73, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {

      v62 = sub_1D9F2AE6C();
      v63 = sub_1D9F2B41C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v163[0] = v65;
        *v64 = 136315138;

        v66 = ServiceListener.description.getter();
        v67 = v59;
        v69 = v68;

        v70 = sub_1D9E71CA4(v66, v69, v163);
        v59 = v67;
        v58 = v160;

        *(v64 + 4) = v70;
        _os_log_impl(&dword_1D9E39000, v62, v63, "%s is already activated.", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x1DA744270](v65, -1, -1);
        MEMORY[0x1DA744270](v64, -1, -1);
      }

      else
      {
      }

      (*(v59 + 8))(v58, v25);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ServiceListener.cancel(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D9F2AF8C();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9F2AFFC();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v9 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v9, qword_1EE0F2380);

  v10 = sub_1D9F2AE6C();
  v11 = sub_1D9F2B42C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v7;
    v13 = v12;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v13 = 136315650;
    v14 = sub_1D9F2BBBC();
    v16 = sub_1D9E71CA4(v14, v15, aBlock);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1D9E71CA4(0x66286C65636E6163, 0xEC000000293A726FLL, aBlock);
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_1D9E71CA4(countAndFlagsBits, object, aBlock);
    _os_log_impl(&dword_1D9E39000, v10, v11, "%s.%s reason = %s", v13, 0x20u);
    v17 = v24;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v17, -1, -1);
    v18 = v13;
    v7 = v25;
    MEMORY[0x1DA744270](v18, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = countAndFlagsBits;
  v19[4] = object;
  aBlock[4] = sub_1D9E9C11C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_6_0;
  v20 = _Block_copy(aBlock);

  v21 = v26;
  sub_1D9F2AFAC();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D9E9C984(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v22 = v29;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v21, v22, v20);
  _Block_release(v20);
  (*(v27 + 8))(v22, v5);
  (*(v28 + 8))(v21, v7);
}

void sub_1D9E9A398(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v8 = 1;

  sub_1D9E97AAC(&v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;

  sub_1D9E84B4C(v3, v4, v5);
}

uint64_t ServiceListener.messageSender(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = a3;
  v6 = *v3;
  v27 = sub_1D9F2AF8C();
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D9F2AFFC();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9F2AD7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v4 + v6[13]);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v6[10];
  *(v17 + 3) = v6[11];
  *(v17 + 4) = v4;
  (*(v12 + 32))(&v17[v15], v14, v11);
  v18 = &v17[v16];
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  aBlock[4] = sub_1D9E9C128;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D9E9C984(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v21 = v27;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v10, v8, v20);
  _Block_release(v20);
  (*(v29 + 8))(v8, v21);
  (*(v26 + 8))(v10, v28);
}

uint64_t sub_1D9E9A7EC(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, _UNKNOWN **))
{
  v4 = *a1;
  swift_beginAccess();
  sub_1D9F2AD7C();
  type metadata accessor for ServiceSession(0, *(v4 + 80), *(v4 + 88), v5);
  sub_1D9E9C984(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D9F2B0BC();
  swift_endAccess();
  if (v9)
  {
    v6 = &protocol witness table for ServiceSession<A>;
  }

  else
  {
    v6 = 0;
  }

  a3(v7, v6);
}

void sub_1D9E9A934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v6 + 16))(v8, a1, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = sub_1D9F2BA0C();
    if (v9)
    {
      v10 = v9;
      (*(v6 + 8))(v8, AssociatedTypeWitness);
    }

    else
    {
      v10 = swift_allocError();
      (*(v6 + 32))(v11, v8, AssociatedTypeWitness);
    }

    sub_1D9E9AB30(v10);
  }
}

uint64_t sub_1D9E9AB30(void *a1)
{
  v2 = v1;
  v4 = sub_1D9F2B02C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v8 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v8, qword_1EE0F2380);

  v9 = a1;
  v10 = sub_1D9F2AE6C();
  v11 = sub_1D9F2B42C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = v4;
    v13 = v12;
    v30 = swift_slowAlloc();
    v32 = v30;
    *v13 = 136315650;
    v14 = sub_1D9F2BBBC();
    v16 = sub_1D9E71CA4(v14, v15, &v32);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1D9E71CA4(0xD000000000000010, 0x80000001D9F48D80, &v32);
    *(v13 + 22) = 2080;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x1EEE9AC00](ErrorValue);
    (*(v19 + 16))(&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = sub_1D9F2B13C();
    v22 = sub_1D9E71CA4(v20, v21, &v32);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_1D9E39000, v10, v11, "%s.%s error = %s", v13, 0x20u);
    v23 = v30;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v23, -1, -1);
    v24 = v13;
    v4 = v31;
    MEMORY[0x1DA744270](v24, -1, -1);
  }

  v25 = *(v2 + *(*v2 + 104));
  *v7 = v25;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v26 = v25;
  v27 = sub_1D9F2B04C();
  result = (*(v5 + 8))(v7, v4);
  if ((v27 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E9AEE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8[0] = a3;
    v8[1] = a4;
    sub_1D9E9AF5C(a1, v8);
  }

  return result;
}

uint64_t sub_1D9E9AF5C(uint64_t a1, void (**a2)(uint64_t))
{
  v3 = v2;
  v6 = *v3;
  v104 = sub_1D9F2AD7C();
  v102 = *(v104 - 8);
  v7 = MEMORY[0x1EEE9AC00](v104);
  v92 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v101 = &v83[-v10];
  v93 = v11;
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v83[-v12];
  v13 = *(v6 + 88);
  v14 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v88 = &v83[-v15];
  v16 = sub_1D9F2B02C();
  v94 = *(v16 - 8);
  v95 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = v14;
  v100 = v13;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v98 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v83[-v23];
  v25 = *a2;
  v90 = a2[1];
  v91 = v25;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v26 = sub_1D9F2AE8C();
  v27 = __swift_project_value_buffer(v26, qword_1EE0F2380);
  v28 = *(v20 + 16);
  v96 = a1;
  v28(v24, a1, v19);

  v86 = v27;
  v29 = sub_1D9F2AE6C();
  v30 = sub_1D9F2B42C();

  v31 = os_log_type_enabled(v29, v30);
  v97 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v105[0] = v85;
    *v32 = 136315650;
    v33 = sub_1D9F2BBBC();
    v34 = v19;
    v36 = sub_1D9E71CA4(v33, v35, v105);
    v84 = v30;
    v37 = v36;

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1D9E71CA4(0xD000000000000022, 0x80000001D9F490E0, v105);
    *(v32 + 22) = 2080;
    (v97)(v98, v24, v19);
    v38 = sub_1D9F2B13C();
    v40 = v39;
    v41 = v24;
    v42 = v34;
    (*(v20 + 8))(v41, v34);
    v43 = sub_1D9E71CA4(v38, v40, v105);

    *(v32 + 24) = v43;
    _os_log_impl(&dword_1D9E39000, v29, v84, "%s.%s incomingConnection = %s", v32, 0x20u);
    v44 = v85;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v44, -1, -1);
    MEMORY[0x1DA744270](v32, -1, -1);
  }

  else
  {

    v45 = v24;
    v42 = v19;
    (*(v20 + 8))(v45, v19);
  }

  v46 = *(v3 + *(*v3 + 104));
  *v18 = v46;
  v48 = v94;
  v47 = v95;
  (*(v94 + 104))(v18, *MEMORY[0x1E69E8020], v95);
  v49 = v46;
  LOBYTE(v46) = sub_1D9F2B04C();
  result = (*(v48 + 8))(v18, v47);
  v52 = v96;
  if (v46)
  {
    v95 = v49;
    v53 = v99;
    type metadata accessor for ServiceSession(0, v99, v100, v51);
    v54 = v88;
    (*(v87 + 16))(v88, v3 + *(*v3 + 96), AssociatedTypeWitness);
    v55 = v98;
    (v97)(v98, v52, v42);
    v56 = sub_1D9EB9EF4(v53, v54, 0, v55);
    v57 = v103;
    v58 = *(v102 + 16);
    v59 = v104;
    (v58)(v103, v56 + qword_1EE0FF698, v104);
    (v58)(v101, v57, v59);
    v105[3] = v56;
    swift_beginAccess();
    sub_1D9E9C984(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D9F2B0AC();

    sub_1D9F2B0CC();
    swift_endAccess();
    v60 = v92;
    v98 = v58;
    (v58)(v92, v57, v59);

    v61 = sub_1D9F2AE6C();
    v62 = sub_1D9F2B41C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v105[0] = v96;
      *v63 = 136315394;

      LODWORD(v94) = v62;
      v64 = ServiceListener.description.getter();
      v66 = v65;

      v67 = sub_1D9E71CA4(v64, v66, v105);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      sub_1D9E9C984(&unk_1EE0F3850, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v68 = sub_1D9F2B9FC();
      v70 = v69;
      v71 = v102;
      v97 = *(v102 + 8);
      v97(v60, v104);
      v72 = sub_1D9E71CA4(v68, v70, v105);

      *(v63 + 14) = v72;
      _os_log_impl(&dword_1D9E39000, v61, v94, "%s added session %s.", v63, 0x16u);
      v73 = v96;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v73, -1, -1);
      MEMORY[0x1DA744270](v63, -1, -1);
    }

    else
    {

      v71 = v102;
      v97 = *(v102 + 8);
      v97(v60, v104);
    }

    v91(v56);
    v74 = swift_allocObject();
    swift_weakInit();
    v75 = v101;
    v76 = v103;
    v77 = v104;
    (v98)(v101, v103, v104);
    v78 = (*(v71 + 80) + 48) & ~*(v71 + 80);
    v79 = swift_allocObject();
    v80 = v100;
    *(v79 + 2) = v99;
    *(v79 + 3) = v80;
    v81 = v95;
    *(v79 + 4) = v95;
    *(v79 + 5) = v74;
    (*(v71 + 32))(&v79[v78], v75, v77);
    v82 = v81;

    ServiceSession.addCancellationHandler(on:_:)(v81, sub_1D9E9C8FC, v79);

    ServiceSession.activate()();

    return (v97)(v76, v77);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9E9B9CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v43 = a4;
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = sub_1D9F2B02C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a2;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v19 = a2;
  LOBYTE(a2) = sub_1D9F2B04C();
  (*(v16 + 8))(v18, v15);
  if ((a2 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v21 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v21, qword_1EE0F2380);
  v41 = *(v9 + 16);
  v41(v14, v43, v8);

  v22 = sub_1D9F2AE6C();
  v23 = sub_1D9F2B41C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = a6;
    v25 = v24;
    v38 = swift_slowAlloc();
    v44[0] = v38;
    *v25 = 136315394;

    v26 = ServiceListener.description.getter();
    v40 = v12;
    v28 = v27;

    v29 = sub_1D9E71CA4(v26, v28, v44);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    sub_1D9E9C984(&unk_1EE0F3850, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v30 = sub_1D9F2B9FC();
    v32 = v31;
    (*(v9 + 8))(v14, v8);
    v33 = sub_1D9E71CA4(v30, v32, v44);
    v12 = v40;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_1D9E39000, v22, v23, "%s removed session %s.", v25, 0x16u);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v34, -1, -1);
    v35 = v25;
    a6 = v39;
    MEMORY[0x1DA744270](v35, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v41(v12, v43, v8);
  v44[3] = 0;
  swift_beginAccess();
  type metadata accessor for ServiceSession(255, v42, a6, v36);
  sub_1D9E9C984(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D9F2B0AC();
  sub_1D9F2B0CC();
  swift_endAccess();
}

uint64_t ServiceListener.description.getter()
{
  sub_1D9F2B68C();
  v0 = sub_1D9F2BBBC();

  MEMORY[0x1DA742F90](0x20656D616E207B20, 0xEA0000000000203DLL);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 8);
  v3 = swift_checkMetadataState();
  v4 = v2(v3, AssociatedConformanceWitness);
  MEMORY[0x1DA742F90](v4);

  MEMORY[0x1DA742F90](32032, 0xE200000000000000);
  return v0;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1D9E9C128()
{
  v1 = *(sub_1D9F2AD7C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D9E9A7EC(v3, v0 + v2, v4);
}

uint64_t sub_1D9E9C1BC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for ServiceListener.State(319, v2, v1, v4);
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D9E9C310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D9E9C36C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1D9E9C3D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 2;
  v9 = *(v6 + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v13 = 8 * v9;
    if (v9 <= 3)
    {
      v15 = ((a2 - v8 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v15))
      {
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v15 > 0xFF)
      {
        v14 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v15 < 2)
      {
LABEL_33:
        if (!v8)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    v14 = *(a1 + v9);
    if (!*(a1 + v9))
    {
      goto LABEL_33;
    }

LABEL_22:
    v16 = (v14 - 1) << v13;
    if (v9 > 3)
    {
      v16 = 0;
    }

    if (v9)
    {
      if (v9 > 3)
      {
        LODWORD(v9) = 4;
      }

      if (v9 > 2)
      {
        if (v9 == 3)
        {
          LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      else if (v9 == 1)
      {
        LODWORD(v9) = *a1;
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    return v8 + (v9 | v16) + 1;
  }

LABEL_34:
  if (!v7)
  {
    return 0;
  }

  v17 = (*(v6 + 48))(a1, v7, AssociatedTypeWitness);
  v18 = v17 >= 2;
  result = v17 - 2;
  if (result == 0 || !v18)
  {
    return 0;
  }

  return result;
}

void sub_1D9E9C5C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 2;
  v10 = *(v7 + 64);
  v11 = v10;
  if (v8 <= 1)
  {
    v9 = 0;
    if (v10 <= 3)
    {
      v13 = (~(-1 << (8 * v10)) - v8 + 2) >> (8 * v10);
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    v11 = v12 + v10;
  }

  v15 = a3 - v9;
  if (a3 <= v9)
  {
    v16 = 0;
    if (v9 < a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v16 = 1;
    if (v11 <= 3)
    {
      v17 = ((v15 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v16 = 4;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v9 < a2)
    {
LABEL_24:
      v21 = ~v9 + a2;
      if (v11 < 4)
      {
        v22 = (v21 >> (8 * v11)) + 1;
        if (v11)
        {
          v23 = v21 & ~(-1 << (8 * v11));
          bzero(a1, v11);
          if (v11 != 3)
          {
            if (v11 == 2)
            {
              *a1 = v23;
              if (v16 > 1)
              {
LABEL_61:
                if (v16 == 2)
                {
                  *&a1[v11] = v22;
                }

                else
                {
                  *&a1[v11] = v22;
                }

                return;
              }
            }

            else
            {
              *a1 = v21;
              if (v16 > 1)
              {
                goto LABEL_61;
              }
            }

            goto LABEL_58;
          }

          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        if (v16 > 1)
        {
          goto LABEL_61;
        }
      }

      else
      {
        bzero(a1, v11);
        *a1 = v21;
        v22 = 1;
        if (v16 > 1)
        {
          goto LABEL_61;
        }
      }

LABEL_58:
      if (v16)
      {
        a1[v11] = v22;
      }

      return;
    }
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v11] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v16)
  {
    goto LABEL_39;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (a2 + 2 <= v8)
  {
    v27 = *(v7 + 56);

    v27(a1, a2 + 2);
  }

  else
  {
    if (v10 <= 3)
    {
      v24 = ~(-1 << (8 * v10));
    }

    else
    {
      v24 = -1;
    }

    if (v10)
    {
      v25 = v24 & (a2 - v8 + 1);
      if (v10 <= 3)
      {
        v26 = v10;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v10);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }
}

uint64_t sub_1D9E9C8FC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_1D9F2AD7C() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1D9E9B9CC(a1, v6, v7, v8, v3, v4);
}

uint64_t sub_1D9E9C984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ServiceRole.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t ServiceRole.description.getter()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

unint64_t sub_1D9E9CAC0()
{
  result = qword_1ECB74500;
  if (!qword_1ECB74500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74500);
  }

  return result;
}

uint64_t sub_1D9E9CB14()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t ServiceMessageSender.sendMessage<A>(async:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9E9CB7C, 0, 0);
}

uint64_t sub_1D9E9CB7C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 56);
  v9 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v9;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_1D9E9CCB8;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000013, 0x80000001D9F49110, sub_1D9E9D028, v3, AssociatedTypeWitness);
}

uint64_t sub_1D9E9CCB8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9E9CDF4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D9E9CDF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9E9CE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[0] = a3;
  v19[1] = a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v12 = sub_1D9F2B30C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  (*(v13 + 16))(v19 - v14, a1, v12);
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a6;
  *(v17 + 5) = a7;
  (*(v13 + 32))(&v17[v16], v15, v12);
  (*(a6 + 8))(v19[0], 0, sub_1D9E9D0FC, v17, a5, a7, a4, a6);
}

uint64_t sub_1D9E9D074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v7 = sub_1D9F2B30C();
  return sub_1D9E9D1E4(a1, v7);
}

uint64_t sub_1D9E9D0FC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v7 = *(sub_1D9F2B30C() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1D9E9D074(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_1D9E9D1E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9F2BB5C();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_1D9F2B2EC();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_1D9F2B2FC();
  }
}

VisualActionPredictionSupport::Workflow_optional __swiftcall Workflow.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D9E9D504()
{
  result = qword_1ECB74508;
  if (!qword_1ECB74508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74508);
  }

  return result;
}

unint64_t sub_1D9E9D568()
{
  result = qword_1EE0F2398[0];
  if (!qword_1EE0F2398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F2398);
  }

  return result;
}

id sub_1D9E9D5BC()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_1EE0F1C60 = result;
  return result;
}

uint64_t (*sub_1D9E9D5FC())(void)
{
  result = sub_1D9E9D61C();
  qword_1ECB74510 = result;
  return result;
}

uint64_t (*sub_1D9E9D7D4(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void)))(void)
{
  v9 = sub_1D9F2AC4C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssetManager();
  v13 = sub_1D9E9E63C(a1, a2);
  if (v4)
  {
    return a4;
  }

  v42 = v10;
  v43 = a3;
  v44 = a4;
  v45 = 0;
  if (v14)
  {
    v15 = v14;
    v16 = v13;
    v17 = [objc_opt_self() defaultManager];
    v41 = v16;
    v18 = sub_1D9F2B11C();
    v19 = [v17 fileExistsAtPath_];

    if (v19)
    {
      if (qword_1EE0F12C8 != -1)
      {
        swift_once();
      }

      v20 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v20, qword_1EE0F12D0);

      v21 = sub_1D9F2AE6C();
      v22 = sub_1D9F2B45C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v46 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1D9E71CA4(a1, a2, &v46);
        _os_log_impl(&dword_1D9E39000, v21, v22, "Asset with name: %s is on Trial. Retrieving asset from Trial path", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1DA744270](v24, -1, -1);
        MEMORY[0x1DA744270](v23, -1, -1);
      }

      v25 = v43;
      a4 = v44;
      v26 = MEMORY[0x1DA743BB0]();
      v27 = v45;
      v28 = sub_1D9E9DE9C(v41, v15, v25, a4);
      if (!v27)
      {
        a4 = v28;
      }

      objc_autoreleasePoolPop(v26);

      return a4;
    }
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v31 = sub_1D9F2B11C();
  v32 = sub_1D9F2B11C();
  v33 = [v30 URLForResource:v31 withExtension:v32];

  if (v33)
  {
    sub_1D9F2AC1C();

    a4 = sub_1D9F2AC2C();
    v35 = v34;
    v36 = MEMORY[0x1DA743BB0]();
    v37 = v45;
    v38 = sub_1D9E9DE9C(a4, v35, v43, v44);
    if (!v37)
    {
      a4 = v38;
    }

    objc_autoreleasePoolPop(v36);

    (*(v42 + 8))(v12, v9);
  }

  else
  {
    sub_1D9E9E788();
    a4 = swift_allocError();
    swift_willThrow();
  }

  return a4;
}

uint64_t (*sub_1D9E9DC40())(void)
{
  result = sub_1D9E9DC60();
  qword_1EE0F1C50 = result;
  return result;
}

uint64_t sub_1D9E9DE3C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1D9E9DE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  v7 = sub_1D9F2B11C();
  v19[0] = 0;
  v8 = [v6 dictionaryWithPath:v7 error:v19];

  v9 = v19[0];
  if (v8)
  {
    v10 = sub_1D9F2B09C();
    v11 = v9;

    v12 = a3(v10);

    if (v12)
    {
      return v12;
    }

    else
    {
      if (qword_1EE0F12C8 != -1)
      {
        swift_once();
      }

      v15 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v15, qword_1EE0F12D0);
      v16 = sub_1D9F2AE6C();
      v17 = sub_1D9F2B43C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1D9E39000, v16, v17, "Failed to cast dictionary to expected type", v18, 2u);
        MEMORY[0x1DA744270](v18, -1, -1);
      }

      return a4(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v14 = v19[0];
    sub_1D9F2AB7C();

    return swift_willThrow();
  }
}

unint64_t sub_1D9E9E0A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74538, &unk_1D9F38F20);
    v2 = sub_1D9F2B7AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_1D9E722B0(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_1D9E3CA7C(v22, v21);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73470, &qword_1D9F2FAD8);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1D9EEA3F4(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1D9E9E308(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74520, &qword_1D9F38F08);
    v2 = sub_1D9F2B7AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_1D9E722B0(*(a1 + 56) + 32 * v12, v31);
        *&v30 = v14;
        *(&v30 + 1) = v15;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v16 = v30;
        sub_1D9E3CA7C(v29, &v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74528, &qword_1D9F38F10);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1D9E3CA7C(v22, v24);
        sub_1D9E3CA7C(v24, v25);
        v26 = v16;
        sub_1D9E3CA7C(v25, v27);
        v17 = v26;
        sub_1D9E3CA7C(v27, v28);
        sub_1D9E3CA7C(v28, &v26);
        result = sub_1D9EEA3F4(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1D9E3CA7C(&v26, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_1D9E3CA7C(&v26, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_24;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      memset(v22, 0, sizeof(v22));
      sub_1D9E51FE8(v22, &qword_1ECB74530, &qword_1D9F38F18);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_1D9E9E63C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE0F1C58 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0F1C60;
  v3 = sub_1D9F2B11C();
  v4 = sub_1D9F2B11C();
  v5 = [v2 levelForFactor:v3 withNamespaceName:v4];

  if (!v5)
  {
    return 0;
  }

  result = [v5 fileValue];
  if (result)
  {
    v7 = result;
    v8 = [result path];

    if (v8)
    {
      v9 = sub_1D9F2B12C();

      return v9;
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9E9E788()
{
  result = qword_1ECB74518;
  if (!qword_1ECB74518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74518);
  }

  return result;
}

unint64_t sub_1D9E9E7F0()
{
  result = qword_1ECB74540;
  if (!qword_1ECB74540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74540);
  }

  return result;
}

VisualActionPredictionSupport::Identification::Kind_optional __swiftcall Identification.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9F2B7BC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Identification.Kind.rawValue.getter()
{
  v1 = 0x72656B636F4CLL;
  if (*v0 != 1)
  {
    v1 = 0x676E696B726150;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1768319319;
  }
}

uint64_t sub_1D9E9E900(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x72656B636F4CLL;
  if (v2 != 1)
  {
    v4 = 0x676E696B726150;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1768319319;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656B636F4CLL;
  if (*a2 != 1)
  {
    v8 = 0x676E696B726150;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1768319319;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9F2BA1C();
  }

  return v11 & 1;
}

uint64_t sub_1D9E9E9F4()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E9EA8C(uint64_t a1)
{
  sub_1D9F2B18C();
}

uint64_t sub_1D9E9EB10()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

void sub_1D9E9EBB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x72656B636F4CLL;
  if (v2 != 1)
  {
    v5 = 0x676E696B726150;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1768319319;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Identification.accountName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Identification.accountName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Identification.accountPassword.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Identification.accountPassword.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Identification.itemNumber.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Identification.itemNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void __swiftcall Identification.init(kind:accountName:accountPassword:itemNumber:)(VisualActionPredictionSupport::Identification *__return_ptr retstr, VisualActionPredictionSupport::Identification::Kind kind, Swift::String_optional accountName, Swift::String_optional accountPassword, Swift::String_optional itemNumber)
{
  retstr->kind = *kind;
  retstr->accountName = accountName;
  retstr->accountPassword = accountPassword;
  retstr->itemNumber = itemNumber;
}

uint64_t sub_1D9E9EEB0()
{
  v1 = 1684957547;
  v2 = 0x50746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0x626D754E6D657469;
  }

  if (*v0)
  {
    v1 = 0x4E746E756F636361;
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

uint64_t sub_1D9E9EF3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E9FD54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E9EF64(uint64_t a1)
{
  v2 = sub_1D9E9F94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E9EFA0(uint64_t a1)
{
  v2 = sub_1D9E9F94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Identification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74548, &qword_1D9F38FF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v13[4] = *(v1 + 2);
  v13[5] = v9;
  v10 = *(v1 + 3);
  v13[2] = *(v1 + 4);
  v13[3] = v10;
  v11 = *(v1 + 5);
  v13[0] = *(v1 + 6);
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E9F94C();
  sub_1D9F2BB8C();
  v18 = v8;
  v17 = 0;
  sub_1D9E9F9A0();
  sub_1D9F2B9AC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v16 = 1;
  sub_1D9F2B90C();
  v15 = 2;
  sub_1D9F2B90C();
  v14 = 3;
  sub_1D9F2B90C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Identification.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  sub_1D9F2B18C();

  if (v2)
  {
    sub_1D9F2BB1C();
    sub_1D9F2B18C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D9F2BB1C();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D9F2BB1C();
  sub_1D9F2B18C();
  if (!v4)
  {
    return sub_1D9F2BB1C();
  }

LABEL_4:
  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t Identification.hashValue.getter()
{
  v3[72] = *v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 8);
  v5 = v1;
  v6 = *(v0 + 40);
  sub_1D9F2BAFC();
  Identification.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t Identification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74560, &qword_1D9F38FF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E9F94C();
  sub_1D9F2BB7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v29 = 0;
    sub_1D9E9F9F4();
    sub_1D9F2B89C();
    v9 = v30;
    v28 = 1;
    v10 = sub_1D9F2B7FC();
    v13 = v12;
    v24 = v9;
    v25 = v10;
    v27 = 2;
    v14 = sub_1D9F2B7FC();
    v16 = v15;
    v23 = v14;
    v26 = 3;
    v17 = sub_1D9F2B7FC();
    v19 = v18;
    v20 = *(v6 + 8);
    v22 = v17;
    v20(v8, v5);
    *a2 = v24;
    *(a2 + 8) = v25;
    *(a2 + 16) = v13;
    v21 = v22;
    *(a2 + 24) = v23;
    *(a2 + 32) = v16;
    *(a2 + 40) = v21;
    *(a2 + 48) = v19;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D9E9F67C()
{
  v3[72] = *v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 8);
  v5 = v1;
  v6 = *(v0 + 40);
  sub_1D9F2BAFC();
  Identification.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E9F6E0()
{
  v3[72] = *v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 8);
  v5 = v1;
  v6 = *(v0 + 40);
  sub_1D9F2BAFC();
  Identification.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport14IdentificationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  v21 = *(a1 + 5);
  v22 = *(a1 + 3);
  v24 = *(a1 + 6);
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v20 = *(a2 + 40);
  v23 = *(a2 + 48);
  v10 = 0xE600000000000000;
  v11 = 0x72656B636F4CLL;
  if (v2 != 1)
  {
    v11 = 0x676E696B726150;
    v10 = 0xE700000000000000;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1768319319;
  }

  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14 = 0xE600000000000000;
  v15 = 0x72656B636F4CLL;
  if (*a2 != 1)
  {
    v15 = 0x676E696B726150;
    v14 = 0xE700000000000000;
  }

  if (*a2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1768319319;
  }

  if (*a2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_1D9F2BA1C();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v6 || (v3 != v7 || v4 != v6) && (sub_1D9F2BA1C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8 || (v22 != v9 || v5 != v8) && (sub_1D9F2BA1C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v24)
  {
    if (v23 && (v21 == v20 && v24 == v23 || (sub_1D9F2BA1C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v23)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D9E9F94C()
{
  result = qword_1ECB74550;
  if (!qword_1ECB74550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74550);
  }

  return result;
}

unint64_t sub_1D9E9F9A0()
{
  result = qword_1ECB74558;
  if (!qword_1ECB74558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74558);
  }

  return result;
}

unint64_t sub_1D9E9F9F4()
{
  result = qword_1ECB74568;
  if (!qword_1ECB74568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74568);
  }

  return result;
}

unint64_t sub_1D9E9FA4C()
{
  result = qword_1ECB74570;
  if (!qword_1ECB74570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74570);
  }

  return result;
}

unint64_t sub_1D9E9FAA4()
{
  result = qword_1ECB74578;
  if (!qword_1ECB74578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74580, &qword_1D9F390A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74578);
  }

  return result;
}

unint64_t sub_1D9E9FB0C()
{
  result = qword_1ECB74588;
  if (!qword_1ECB74588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74588);
  }

  return result;
}

uint64_t sub_1D9E9FB60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D9E9FBBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1D9E9FC50()
{
  result = qword_1ECB74590;
  if (!qword_1ECB74590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74590);
  }

  return result;
}

unint64_t sub_1D9E9FCA8()
{
  result = qword_1ECB74598;
  if (!qword_1ECB74598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74598);
  }

  return result;
}

unint64_t sub_1D9E9FD00()
{
  result = qword_1ECB745A0;
  if (!qword_1ECB745A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745A0);
  }

  return result;
}

uint64_t sub_1D9E9FD54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E746E756F636361 && a2 == 0xEB00000000656D61 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746E756F636361 && a2 == 0xEF64726F77737361 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x626D754E6D657469 && a2 == 0xEA00000000007265)
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

unint64_t sub_1D9E9FECC()
{
  result = qword_1ECB745A8;
  if (!qword_1ECB745A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745A8);
  }

  return result;
}

BOOL static TimeoutPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D9E9FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_1D9EA0028(uint64_t a1)
{
  v2 = sub_1D9EA05E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA0064(uint64_t a1)
{
  v2 = sub_1D9EA05E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA00A0()
{
  if (*v0)
  {
    return 0x7265746661;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t sub_1D9EA00CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726576656ELL && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
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

uint64_t sub_1D9EA01A0(uint64_t a1)
{
  v2 = sub_1D9EA058C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA01DC(uint64_t a1)
{
  v2 = sub_1D9EA058C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA0218(uint64_t a1)
{
  v2 = sub_1D9EA0634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA0254(uint64_t a1)
{
  v2 = sub_1D9EA0634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeoutPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745B0, &qword_1D9F393E0);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745B8, &qword_1D9F393E8);
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745C0, &qword_1D9F393F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA058C();
  sub_1D9F2BB8C();
  if (v12)
  {
    v22 = 0;
    sub_1D9EA0634();
    sub_1D9F2B8FC();
    (*(v17 + 8))(v7, v18);
  }

  else
  {
    v23 = 1;
    sub_1D9EA05E0();
    v14 = v19;
    sub_1D9F2B8FC();
    v15 = v21;
    sub_1D9F2B97C();
    (*(v20 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1D9EA058C()
{
  result = qword_1EE0F2FA8;
  if (!qword_1EE0F2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2FA8);
  }

  return result;
}

unint64_t sub_1D9EA05E0()
{
  result = qword_1EE0F2F90;
  if (!qword_1EE0F2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F90);
  }

  return result;
}

unint64_t sub_1D9EA0634()
{
  result = qword_1ECB745C8;
  if (!qword_1ECB745C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745C8);
  }

  return result;
}

uint64_t TimeoutPolicy.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x1DA7438F0](0);
  }

  v2 = *v0;
  MEMORY[0x1DA7438F0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1DA743920](v3);
}

uint64_t TimeoutPolicy.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D9F2BAFC();
  if (v2)
  {
    MEMORY[0x1DA7438F0](0);
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA743920](v3);
  }

  return sub_1D9F2BB4C();
}

uint64_t TimeoutPolicy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745D0, &qword_1D9F393F8);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745D8, &qword_1D9F39400);
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E0, &qword_1D9F39408);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D9EA058C();
  v13 = v36;
  sub_1D9F2BB7C();
  if (!v13)
  {
    v31 = v5;
    v36 = v9;
    v14 = v35;
    v15 = sub_1D9F2B8DC();
    v16 = (2 * *(v15 + 16)) | 1;
    v39 = v15;
    v40 = v15 + 32;
    v41 = 0;
    v42 = v16;
    v17 = sub_1D9E4618C();
    v18 = v8;
    if (v17 == 2 || v41 != v42 >> 1)
    {
      v22 = sub_1D9F2B6BC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v24 = &type metadata for TimeoutPolicy;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = v17;
      if (v17)
      {
        v38 = 1;
        sub_1D9EA05E0();
        v20 = v4;
        sub_1D9F2B7DC();
        v21 = v36;
        v27 = v14;
        v28 = v32;
        sub_1D9F2B86C();
        v30 = v29;
        (*(v34 + 8))(v20, v28);
        (*(v21 + 8))(v11, v18);
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0;
        sub_1D9EA0634();
        sub_1D9F2B7DC();
        v26 = v36;
        v27 = v14;
        (*(v33 + 8))(v7, v31);
        (*(v26 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v30 = 0;
      }

      *v27 = v30;
      *(v27 + 8) = (v19 & 1) == 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D9EA0C78()
{
  if (v0[1])
  {
    return MEMORY[0x1DA7438F0](0);
  }

  v2 = *v0;
  MEMORY[0x1DA7438F0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1DA743920](v3);
}

uint64_t sub_1D9EA0CC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D9F2BAFC();
  if (v2)
  {
    MEMORY[0x1DA7438F0](0);
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA743920](v3);
  }

  return sub_1D9F2BB4C();
}

BOOL sub_1D9EA0D34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t TimeoutPolicy.makeWatchdogTimer(identifier:leeway:strict:qualityOfService:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, double a5)
{
  v43 = a4;
  v42 = a3;
  v46 = a2;
  v8 = sub_1D9F2AFFC();
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D9F2B4CC();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9F2AF7C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v38 - v16);
  v18 = type metadata accessor for WatchdogTimer.Configuration(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = 0;
  if (*(v5 + 8))
  {
    return v21;
  }

  v22 = *v5;
  type metadata accessor for WatchdogTimer(0);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FE0, &unk_1D9F3E4F0);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 16) = 0;
  *(v23 + v24) = v25;
  *(v25 + 40) = 0;
  v50 = 0xD00000000000003CLL;
  v51 = 0x80000001D9F491E0;
  result = MEMORY[0x1DA742F90](a1, v46);
  v27 = v22 * 1000000000.0;
  if (COERCE__INT64(fabs(v22 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v46 = v50;
  v40 = v8;
  v41 = v51;
  *v17 = v27;
  v28 = *MEMORY[0x1E69E7F28];
  v29 = *(v12 + 104);
  result = v29(v17, v28, v11);
  v30 = a5 * 1000000000.0;
  if (COERCE__INT64(fabs(a5 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v30 < 9.22337204e18)
  {
    v39 = v12;
    *v15 = v30;
    v29(v15, v28, v11);
    if (v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E8, &qword_1D9F3E500);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D9F2F8F0;
      sub_1D9F2B4BC();
      v50 = v31;
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    sub_1D9EA1330();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FF0, &unk_1D9F39410);
    sub_1D9EA1388();
    sub_1D9F2B5FC();
    v32 = v40;
    v33 = v44;
    v34 = v45;
    v38 = v23;
    if (v43 <= 16)
    {
      if (v43 == -1)
      {
        v35 = v15;
        sub_1D9F2AFDC();
        goto LABEL_23;
      }

      if (v43 == 9)
      {
        v35 = v15;
        sub_1D9F2AF9C();
        goto LABEL_23;
      }
    }

    else
    {
      switch(v43)
      {
        case 17:
          v35 = v15;
          sub_1D9F2AFEC();
          goto LABEL_23;
        case 25:
          v35 = v15;
          sub_1D9F2AFBC();
          goto LABEL_23;
        case 33:
          v35 = v15;
          sub_1D9F2AFCC();
LABEL_23:
          v36 = v41;
          *v20 = v46;
          v20[1] = v36;
          v37 = *(v39 + 32);
          v37(v20 + v18[5], v17, v11);
          v37(v20 + v18[6], v35, v11);
          (*(v47 + 32))(v20 + v18[7], v48, v49);
          (*(v34 + 32))(v20 + v18[8], v33, v32);
          v21 = v38;
          sub_1D9EA13EC(v20, v38 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
          return v21;
      }
    }

    v35 = v15;
    sub_1D9F2AFAC();
    goto LABEL_23;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1D9EA1330()
{
  result = qword_1EE0F10E8;
  if (!qword_1EE0F10E8)
  {
    sub_1D9F2B4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F10E8);
  }

  return result;
}

unint64_t sub_1D9EA1388()
{
  result = qword_1EE0F1100;
  if (!qword_1EE0F1100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB74FF0, &unk_1D9F39410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1100);
  }

  return result;
}

uint64_t sub_1D9EA13EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchdogTimer.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9EA1454()
{
  result = qword_1ECB745F0;
  if (!qword_1ECB745F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeoutPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeoutPolicy(uint64_t result, int a2, int a3)
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

uint64_t sub_1D9EA14F8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9EA1514(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1D9EA1578()
{
  result = qword_1ECB745F8;
  if (!qword_1ECB745F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB745F8);
  }

  return result;
}

unint64_t sub_1D9EA15D0()
{
  result = qword_1ECB74600;
  if (!qword_1ECB74600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74600);
  }

  return result;
}

unint64_t sub_1D9EA1628()
{
  result = qword_1EE0F2F70;
  if (!qword_1EE0F2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F70);
  }

  return result;
}

unint64_t sub_1D9EA1680()
{
  result = qword_1EE0F2F78;
  if (!qword_1EE0F2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F78);
  }

  return result;
}

unint64_t sub_1D9EA16D8()
{
  result = qword_1EE0F2F80;
  if (!qword_1EE0F2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F80);
  }

  return result;
}

unint64_t sub_1D9EA1730()
{
  result = qword_1EE0F2F88;
  if (!qword_1EE0F2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F88);
  }

  return result;
}

unint64_t sub_1D9EA1788()
{
  result = qword_1EE0F2F98;
  if (!qword_1EE0F2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2F98);
  }

  return result;
}

unint64_t sub_1D9EA17E0()
{
  result = qword_1EE0F2FA0;
  if (!qword_1EE0F2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2FA0);
  }

  return result;
}

uint64_t sub_1D9EA1834@<X0>(__CVBuffer *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v65 = *MEMORY[0x1E69E9840];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  Width = CVPixelBufferGetWidth(v4);
  Height = CVPixelBufferGetHeight(v4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v4);
  DataSize = CVPixelBufferGetDataSize(v4);
  IsPlanar = CVPixelBufferIsPlanar(v4);
  if (IsPlanar)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(v4);
    if ((PlaneCount & 0x8000000000000000) == 0)
    {
      v11 = PlaneCount;
      v55 = BytesPerRow;
      v56 = Height;
      v57 = Width;
      v58 = a3;
      v54 = PixelFormatType;
      if (PlaneCount)
      {
        v53 = a2;
        PixelFormatType = 0;
        v12 = MEMORY[0x1E69E7CC0];
        v62 = v4;
        while (1)
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v4, PixelFormatType);
          if (!BaseAddressOfPlane)
          {
            break;
          }

          v14 = BaseAddressOfPlane;
          v15 = v11;
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v4, PixelFormatType);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v4, PixelFormatType);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v4, PixelFormatType);
          v19 = HeightOfPlane * BytesPerRowOfPlane;
          if ((HeightOfPlane * BytesPerRowOfPlane) >> 64 != (HeightOfPlane * BytesPerRowOfPlane) >> 63)
          {
            __break(1u);
            goto LABEL_37;
          }

          v20 = BytesPerRowOfPlane;
          if (v19)
          {
            if (v19 <= 14)
            {
              *(&__dst + 6) = 0;
              *&__dst = 0;
              BYTE14(__dst) = HeightOfPlane * BytesPerRowOfPlane;
              memcpy(&__dst, v14, v19);
              v63 = __dst;
              v23 = v61 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
              v61 = v23;
            }

            else
            {
              sub_1D9F2AAAC();
              swift_allocObject();
              v21 = sub_1D9F2AA6C();
              v22 = v21;
              if (v19 >= 0x7FFFFFFF)
              {
                sub_1D9F2AC6C();
                v24 = swift_allocObject();
                *(v24 + 16) = 0;
                *(v24 + 24) = v19;
                v63 = v24;
                v23 = v22 | 0x8000000000000000;
              }

              else
              {
                v63 = v19 << 32;
                v23 = v21 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v63 = 0;
            v23 = 0xC000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1D9F0C470(0, *(v12 + 16) + 1, 1, v12);
          }

          v26 = *(v12 + 16);
          v25 = *(v12 + 24);
          if (v26 >= v25 >> 1)
          {
            v12 = sub_1D9F0C470((v25 > 1), v26 + 1, 1, v12);
          }

          *(v12 + 16) = v26 + 1;
          v27 = (v12 + 48 * v26);
          v27[4] = PixelFormatType;
          v27[5] = WidthOfPlane;
          v27[6] = HeightOfPlane;
          v27[7] = v20;
          v4 = v62;
          v27[8] = v63;
          v27[9] = v23;
          ++PixelFormatType;
          v11 = v15;
          if (v15 == PixelFormatType)
          {
            goto LABEL_24;
          }
        }

        if (qword_1ECB72A78 != -1)
        {
          goto LABEL_39;
        }

        goto LABEL_27;
      }

      v12 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v29 = 0x2000000000000000;
      LODWORD(PixelFormatType) = v54;
LABEL_25:
      *v58 = v57;
      *(v58 + 8) = v56;
      *(v58 + 16) = PixelFormatType;
      *(v58 + 24) = v55;
      *(v58 + 32) = DataSize;
      *(v58 + 40) = IsPlanar != 0;
      *(v58 + 48) = v12;
      *(v58 + 56) = v29;
      return CVPixelBufferUnlockBaseAddress(v4, 1uLL);
    }

LABEL_37:
    __break(1u);
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(v4);
    if (!BaseAddress)
    {
      if (qword_1ECB72A78 != -1)
      {
        swift_once();
      }

      v41 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v41, qword_1ECB738F8);
      v42 = v4;
      v43 = sub_1D9F2AE6C();
      v44 = sub_1D9F2B43C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = a2;
        v47 = PixelFormatType;
        PixelFormatType = swift_slowAlloc();
        *&__dst = PixelFormatType;
        *v45 = 136315138;
        type metadata accessor for CVBuffer(0);
        v48 = v42;
        v49 = sub_1D9F2B13C();
        v51 = sub_1D9E71CA4(v49, v50, &__dst);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_1D9E39000, v43, v44, "Failed to get base address from pixel buffer %s.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(PixelFormatType);
        v52 = PixelFormatType;
        LODWORD(PixelFormatType) = v47;
        a2 = v46;
        MEMORY[0x1DA744270](v52, -1, -1);
        MEMORY[0x1DA744270](v45, -1, -1);
      }

      *a2 = PixelFormatType | 0x4000000000000000;
      a2[1] = 0;
      *&__dst = PixelFormatType | 0x4000000000000000;
      *(&__dst + 1) = 0;
      goto LABEL_35;
    }

    v57 = Width;
    v58 = a3;
    v55 = BytesPerRow;
    v56 = Height;
    if ((Height * BytesPerRow) >> 64 == (Height * BytesPerRow) >> 63)
    {
      v12 = sub_1D9F1C6D8(BaseAddress, Height * BytesPerRow);
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_27:
  v31 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v31, qword_1ECB738F8);
  v32 = v4;
  v33 = sub_1D9F2AE6C();
  v34 = sub_1D9F2B43C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&__dst = v36;
    *v35 = 134218242;
    *(v35 + 4) = PixelFormatType;
    *(v35 + 12) = 2080;
    type metadata accessor for CVBuffer(0);
    v37 = v32;
    v38 = sub_1D9F2B13C();
    v40 = sub_1D9E71CA4(v38, v39, &__dst);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_1D9E39000, v33, v34, "Failed to get base address of plane %ld from pixel buffer %s.", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1DA744270](v36, -1, -1);
    MEMORY[0x1DA744270](v35, -1, -1);
  }

  *v53 = v54 | 0x4000000000000000;
  v53[1] = PixelFormatType;
  *&__dst = v54 | 0x4000000000000000;
  *(&__dst + 1) = PixelFormatType;
LABEL_35:
  sub_1D9E8EE20();
  swift_willThrowTypedImpl();
  return CVPixelBufferUnlockBaseAddress(v4, 1uLL);
}

uint64_t sub_1D9EA1E74()
{
  if (*v0)
  {
    return 0x646E49656E616C70;
  }

  else
  {
    return 0x726F466C65786970;
  }
}

uint64_t sub_1D9EA1EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E49656E616C70 && a2 == 0xEA00000000007865)
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

uint64_t sub_1D9EA1FAC(uint64_t a1)
{
  v2 = sub_1D9EA46FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA1FE8(uint64_t a1)
{
  v2 = sub_1D9EA46FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA2024(uint64_t a1)
{
  v2 = sub_1D9EA46A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA2060(uint64_t a1)
{
  v2 = sub_1D9EA46A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9EA209C()
{
  v1 = *v0;
  v2 = 0xD000000000000019;
  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD00000000000001FLL;
  if (v1 == 1)
  {
    v3 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9EA2140@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EA5C74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EA2168(uint64_t a1)
{
  v2 = sub_1D9EA4654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA21A4(uint64_t a1)
{
  v2 = sub_1D9EA4654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA21E0(uint64_t a1)
{
  v2 = sub_1D9EA484C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA221C(uint64_t a1)
{
  v2 = sub_1D9EA484C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA2258(uint64_t a1)
{
  v2 = sub_1D9EA47F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA2294(uint64_t a1)
{
  v2 = sub_1D9EA47F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA22D0(uint64_t a1)
{
  v2 = sub_1D9EA4750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA230C(uint64_t a1)
{
  v2 = sub_1D9EA4750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EA2348(uint64_t a1)
{
  v2 = sub_1D9EA47A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA2384(uint64_t a1)
{
  v2 = sub_1D9EA47A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageProcessing.Failure.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74608, &qword_1D9F39870);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74610, &qword_1D9F39878);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74618, &qword_1D9F39880);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74620, &qword_1D9F39888);
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74628, &qword_1D9F39890);
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74630, &qword_1D9F39898);
  v34 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74638, &qword_1D9F398A0);
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v22 = *v2;
  v21 = v2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA4654();
  sub_1D9F2BB8C();
  if (!(v22 >> 62))
  {
    v55 = 3;
    sub_1D9EA4750();
    v24 = v50;
    sub_1D9F2B8FC();
    v27 = v45;
    sub_1D9F2B9BC();
    (*(v44 + 8))(v10, v27);
    return (*(v49 + 8))(v20, v24);
  }

  if (v22 >> 62 == 1)
  {
    v58 = 4;
    sub_1D9EA46FC();
    v23 = v46;
    v24 = v50;
    sub_1D9F2B8FC();
    v57 = 0;
    v25 = v48;
    v26 = v51;
    sub_1D9F2B9CC();
    if (!v26)
    {
      v56 = 1;
      sub_1D9F2B99C();
    }

    (*(v47 + 8))(v23, v25);
    return (*(v49 + 8))(v20, v24);
  }

  if (v22 > 0x8000000000000001)
  {
    if (v22 ^ 0x8000000000000002 | v21)
    {
      v59 = 5;
      sub_1D9EA46A8();
      v30 = v41;
      v31 = v50;
      sub_1D9F2B8FC();
      v33 = v42;
      v32 = v43;
    }

    else
    {
      v54 = 2;
      sub_1D9EA47A4();
      v30 = v38;
      v31 = v50;
      sub_1D9F2B8FC();
      v33 = v39;
      v32 = v40;
    }
  }

  else
  {
    if (!(v22 ^ 0x8000000000000000 | v21))
    {
      v52 = 0;
      sub_1D9EA484C();
      v28 = v50;
      sub_1D9F2B8FC();
      (*(v34 + 8))(v17, v15);
      return (*(v49 + 8))(v20, v28);
    }

    v53 = 1;
    sub_1D9EA47F8();
    v30 = v35;
    v31 = v50;
    sub_1D9F2B8FC();
    v33 = v36;
    v32 = v37;
  }

  (*(v33 + 8))(v30, v32);
  return (*(v49 + 8))(v20, v31);
}

uint64_t ImageProcessing.Failure.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = v0[1];
    if (v2 == 1)
    {
      MEMORY[0x1DA7438F0](4);
      sub_1D9F2BB2C();
      v4 = v3;
    }

    else if (v1 > 0x8000000000000001)
    {
      if (v1 ^ 0x8000000000000002 | v3)
      {
        v4 = 5;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (v1 ^ 0x8000000000000000 | v3) != 0;
    }

    return MEMORY[0x1DA7438F0](v4);
  }

  else
  {
    MEMORY[0x1DA7438F0](3);
    return sub_1D9F2BB2C();
  }
}

uint64_t ImageProcessing.Failure.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      MEMORY[0x1DA7438F0](4);
      sub_1D9F2BB2C();
      v3 = v2;
    }

    else if (v1 > 0x8000000000000001)
    {
      if (v1 ^ 0x8000000000000002 | v2)
      {
        v3 = 5;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = (v1 ^ 0x8000000000000000 | v2) != 0;
    }

    MEMORY[0x1DA7438F0](v3);
  }

  else
  {
    MEMORY[0x1DA7438F0](3);
    sub_1D9F2BB2C();
  }

  return sub_1D9F2BB4C();
}

uint64_t ImageProcessing.Failure.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74678, &qword_1D9F398A8);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v53 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74680, &qword_1D9F398B0);
  v66 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v69 = &v53 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74688, &qword_1D9F398B8);
  v62 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v68 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74690, &qword_1D9F398C0);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74698, &qword_1D9F398C8);
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746A0, &qword_1D9F398D0);
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746A8, &unk_1D9F398D8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D9EA4654();
  v20 = v72;
  sub_1D9F2BB7C();
  if (!v20)
  {
    v21 = v14;
    v53 = v12;
    v54 = v11;
    v23 = v68;
    v22 = v69;
    v72 = v16;
    v24 = v70;
    v25 = v71;
    v55 = v15;
    v26 = sub_1D9F2B8DC();
    v27 = (2 * *(v26 + 16)) | 1;
    v74 = v26;
    v75 = v26 + 32;
    v76 = 0;
    v77 = v27;
    v28 = sub_1D9E416AC();
    if (v28 == 6 || v76 != v77 >> 1)
    {
      v34 = sub_1D9F2B6BC();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v36 = &type metadata for ImageProcessing.Failure;
      v37 = v55;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v72 + 8))(v18, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28 > 2u)
      {
        if (v28 == 3)
        {
          v78 = 3;
          sub_1D9EA4750();
          v43 = v55;
          sub_1D9F2B7DC();
          v44 = v72;
          v45 = v57;
          v49 = sub_1D9F2B8AC();
          (*(v62 + 8))(v23, v45);
          (*(v44 + 8))(v18, v43);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = v49;
        }

        else
        {
          v39 = v72;
          v40 = v55;
          if (v28 == 4)
          {
            v78 = 4;
            sub_1D9EA46FC();
            sub_1D9F2B7DC();
            v78 = 0;
            v41 = v63;
            v50 = sub_1D9F2B8BC();
            v78 = 1;
            v51 = sub_1D9F2B88C();
            v52 = v22;
            v32 = v51;
            (*(v66 + 8))(v52, v41);
            (*(v39 + 8))(v18, v40);
            swift_unknownObjectRelease();
            v33 = v50 | 0x4000000000000000;
            v25 = v71;
          }

          else
          {
            v78 = 5;
            sub_1D9EA46A8();
            sub_1D9F2B7DC();
            (*(v64 + 8))(v24, v65);
            (*(v39 + 8))(v18, v40);
            swift_unknownObjectRelease();
            v32 = 0;
            v33 = 0x8000000000000003;
          }
        }
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          v78 = 1;
          sub_1D9EA47F8();
          v29 = v54;
          v30 = v55;
          sub_1D9F2B7DC();
          v31 = v72;
          (*(v58 + 8))(v29, v59);
          (*(v31 + 8))(v18, v30);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = 0x8000000000000001;
        }

        else
        {
          v78 = 2;
          sub_1D9EA47A4();
          v46 = v67;
          v47 = v55;
          sub_1D9F2B7DC();
          v48 = v72;
          (*(v60 + 8))(v46, v61);
          (*(v48 + 8))(v18, v47);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = 0x8000000000000002;
        }
      }

      else
      {
        v78 = 0;
        sub_1D9EA484C();
        v42 = v55;
        sub_1D9F2B7DC();
        (*(v56 + 8))(v21, v53);
        (*(v72 + 8))(v18, v42);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0x8000000000000000;
      }

      *v25 = v33;
      v25[1] = v32;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_1D9EA3654()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = v0[1];
    if (v2 == 1)
    {
      MEMORY[0x1DA7438F0](4);
      sub_1D9F2BB2C();
      v4 = v3;
    }

    else if (v1 > 0x8000000000000001)
    {
      if (v1 ^ 0x8000000000000002 | v3)
      {
        v4 = 5;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (v1 ^ 0x8000000000000000 | v3) != 0;
    }

    return MEMORY[0x1DA7438F0](v4);
  }

  else
  {
    MEMORY[0x1DA7438F0](3);
    return sub_1D9F2BB2C();
  }
}

uint64_t sub_1D9EA3714()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      MEMORY[0x1DA7438F0](4);
      sub_1D9F2BB2C();
      v3 = v2;
    }

    else if (v1 > 0x8000000000000001)
    {
      if (v1 ^ 0x8000000000000002 | v2)
      {
        v3 = 5;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = (v1 ^ 0x8000000000000000 | v2) != 0;
    }

    MEMORY[0x1DA7438F0](v3);
  }

  else
  {
    MEMORY[0x1DA7438F0](3);
    sub_1D9F2BB2C();
  }

  return sub_1D9F2BB4C();
}

NSObject *_s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(void *a1, __int128 *a2)
{
  v4 = IOSurfaceLookupFromXPCObject(a1);
  if (v4)
  {
    v5 = v4;
    v6 = _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer8backedBySo11CVBufferRefaSo09IOSurfaceM0a_tAC7FailureOYKFZ(v4, &v11);

    if (v2)
    {
      *a2 = v11;
    }
  }

  else
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v7, qword_1ECB738F8);
    v6 = sub_1D9F2AE6C();
    v8 = sub_1D9F2B43C();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D9E39000, v6, v8, "Failed to lookup for IOSurface from XPC object.", v9, 2u);
      MEMORY[0x1DA744270](v9, -1, -1);
    }

    *a2 = xmmword_1D9F39800;
    v11 = xmmword_1D9F39800;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
  }

  return v6;
}

CVPixelBufferRef _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer8backedBySo11CVBufferRefaSo09IOSurfaceM0a_tAC7FailureOYKFZ(__IOSurface *a1, void *a2)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut[0] = 0;
  v4 = *MEMORY[0x1E695E480];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746B0, &qword_1D9F398E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9F2F8F0;
  v6 = *MEMORY[0x1E69660D8];
  *(inited + 32) = *MEMORY[0x1E69660D8];
  v7 = v6;
  *(inited + 40) = sub_1D9EA48A0(MEMORY[0x1E69E7CC0]);
  sub_1D9EA5758(inited);
  swift_setDeallocating();
  sub_1D9EA5850(inited + 32);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746C0, &qword_1D9F398F8);
  sub_1D9EA58B8();
  v8 = sub_1D9F2B08C();

  v9 = CVPixelBufferCreateWithIOSurface(v4, a1, v8, pixelBufferOut);

  if (v9)
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v10 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v10, qword_1ECB738F8);
    v11 = a1;
    v12 = sub_1D9F2AE6C();
    v13 = sub_1D9F2B43C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      type metadata accessor for IOSurfaceRef(0);
      v16 = v11;
      v17 = sub_1D9F2B13C();
      v19 = sub_1D9E71CA4(v17, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1D9E39000, v12, v13, "Failed to create CVPixelBuffer backed by IOSurface %s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1DA744270](v15, -1, -1);
      MEMORY[0x1DA744270](v14, -1, -1);
    }

    *a2 = v9;
    a2[1] = 0;
    v25 = v9;
    v26 = 0;
    sub_1D9E8EE20();
    return swift_willThrowTypedImpl();
  }

  result = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v21 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v21, qword_1ECB738F8);
    v22 = sub_1D9F2AE6C();
    v23 = sub_1D9F2B43C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D9E39000, v22, v23, "Unmanaged CVPixelBuffer returned from CVPixelBufferCreateWithIOSurface() is nil.", v24, 2u);
      MEMORY[0x1DA744270](v24, -1, -1);
    }

    *a2 = 0;
    a2[1] = 0;
    sub_1D9E8EE20();
    v25 = 0;
    v26 = 0;
    return swift_willThrowTypedImpl();
  }

  return result;
}

IOSurfaceRef _s29VisualActionPredictionSupport15ImageProcessingO12getIOSurface7backingSo0H3RefaSo08CVBufferJ0a_tAC7FailureOYKFZ(__CVBuffer *a1, _OWORD *a2)
{
  IOSurface = CVPixelBufferGetIOSurface(a1);
  v5 = IOSurface;
  if (IOSurface)
  {
    v6 = IOSurface;
  }

  else
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v7, qword_1ECB738F8);
    v8 = a1;
    v9 = sub_1D9F2AE6C();
    v10 = sub_1D9F2B43C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v18 = v12;
      *v11 = 136315138;
      type metadata accessor for CVBuffer(0);
      v13 = v8;
      v14 = sub_1D9F2B13C();
      v16 = sub_1D9E71CA4(v14, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1D9E39000, v9, v10, "Failed to get IOSurface backing CVPixelBuffer %s.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1DA744270](v12, -1, -1);
      MEMORY[0x1DA744270](v11, -1, -1);
    }

    *a2 = xmmword_1D9F39810;
    v18 = xmmword_1D9F39810;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
  }

  return v5;
}

__IOSurface *_s29VisualActionPredictionSupport15ImageProcessingO12getXPCObject4fromSo13OS_xpc_object_pSo11CVBufferRefa_tAC7FailureOYKFZ(__CVBuffer *a1, _OWORD *a2)
{
  result = _s29VisualActionPredictionSupport15ImageProcessingO12getIOSurface7backingSo0H3RefaSo08CVBufferJ0a_tAC7FailureOYKFZ(a1, &v7);
  if (v2)
  {
    *a2 = v7;
  }

  else
  {
    v5 = result;
    XPCObject = IOSurfaceCreateXPCObject(result);

    return XPCObject;
  }

  return result;
}

void sub_1D9EA3F08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1DA744270);
  }
}

__CVBuffer *static ImageProcessing.makePixelBuffer(from:)(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v5 = CGImageGetWidth(a1);
  v6 = CGImageGetHeight(a1);
  v7 = sub_1D9EA5E70(v5, v6, 0x42475241u, 1, 1, 1);
  v8 = v7;
  if (!v1)
  {
    CVPixelBufferLockBaseAddress(v7, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v8);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v12 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);

    if (v12)
    {
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      v15.size.width = Width;
      v15.size.height = Height;
      CGContextClearRect(v12, v15);
      sub_1D9F2B40C();

      CVPixelBufferUnlockBaseAddress(v8, 0);
    }

    else
    {
      sub_1D9E8EE20();
      swift_allocError();
      *v13 = xmmword_1D9F39820;
      swift_willThrow();
      CVPixelBufferUnlockBaseAddress(v8, 0);
    }
  }

  return v8;
}

size_t static ImageProcessing.makeColorFilledPixelBuffer(width:height:redChannel:greenChannel:blueChannel:alphaChannel:)(size_t a1, size_t a2, char a3, char a4, char a5, char a6)
{
  v13 = sub_1D9EA5E70(a1, a2, 0x42475241u, 1, 1, 1);
  v14 = v13;
  if (v6)
  {
    return v14;
  }

  CVPixelBufferLockBaseAddress(v13, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v14);
  if (!BaseAddress)
  {
    sub_1D9E8EE20();
    swift_allocError();
    *v26 = xmmword_1D9F39830;
    swift_willThrow();
    CVPixelBufferUnlockBaseAddress(v14, 0);

    return v14;
  }

  v17 = BaseAddress;
  result = CVPixelBufferGetBytesPerRow(v14);
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a2)
  {
LABEL_19:
    CVPixelBufferUnlockBaseAddress(v14, 0);
    return v14;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    while (!a1)
    {
LABEL_8:
      if (++v18 == a2)
      {
        goto LABEL_19;
      }
    }

    v19 = v18 * result;
    if ((v18 * result) >> 64 == (v18 * result) >> 63)
    {
      v20 = 0;
      v21 = 0x2000000000000000;
      v22 = a1;
      while (v21)
      {
        v23 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_22;
        }

        v17[v23] = a5;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_23;
        }

        v17[v23 + 1] = a4;
        if (__OFADD__(v23, 2))
        {
          goto LABEL_24;
        }

        v17[v23 + 2] = a3;
        v24 = __OFADD__(v23, 3);
        v25 = v23 + 3;
        if (v24)
        {
          goto LABEL_25;
        }

        v17[v25] = a6;
        --v21;
        v20 += 4;
        if (!--v22)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_1D9EA4260(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return &v19;
    }

    sub_1D9E4015C(v3, v2);
    v19 = v3;
    v20 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1D9F39840;
    sub_1D9E4015C(0, 0xC000000000000000);
    sub_1D9F2AC5C();
    v7 = v20;
    v8 = *(v19 + 16);
    v9 = *(v19 + 24);
    result = sub_1D9F2AA7C();
    if (!result)
    {
      __break(1u);
      goto LABEL_28;
    }

    v10 = result;
    v11 = sub_1D9F2AA9C();
    v12 = v8 - v11;
    if (!__OFSUB__(v8, v11))
    {
      if (!__OFSUB__(v9, v8))
      {
        sub_1D9F2AA8C();
        result = (v10 + v12);
        *a1 = v19;
        a1[1] = v7 | 0x8000000000000000;
        return result;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v4)
  {
    sub_1D9E4015C(*a1, v2);
    LOWORD(v20) = v2;
    BYTE2(v20) = BYTE2(v2);
    BYTE3(v20) = BYTE3(v2);
    BYTE4(v20) = BYTE4(v2);
    BYTE5(v20) = BYTE5(v2);
    result = &v19;
    v6 = v20 | ((WORD2(v20) | (BYTE6(v2) << 16)) << 32);
LABEL_20:
    *a1 = v3;
    a1[1] = v6;
    return result;
  }

  v13 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1D9E4015C(v3, v2);
  *a1 = xmmword_1D9F39840;
  sub_1D9E4015C(0, 0xC000000000000000);
  v14 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v14 < v3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (sub_1D9F2AA7C() && __OFSUB__(v3, sub_1D9F2AA9C()))
    {
LABEL_26:
      __break(1u);
    }

    sub_1D9F2AAAC();
    swift_allocObject();
    v15 = sub_1D9F2AA5C();

    v13 = v15;
  }

  if (v14 < v3)
  {
    goto LABEL_22;
  }

  result = sub_1D9F2AA7C();
  if (result)
  {
    v16 = result;
    v17 = sub_1D9F2AA9C();
    v18 = v3 - v17;
    if (!__OFSUB__(v3, v17))
    {
      sub_1D9F2AA8C();

      result = (v16 + v18);
      v6 = v13 | 0x4000000000000000;
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL _s29VisualActionPredictionSupport15ImageProcessingO7FailureO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      return v2 == v3;
    }

    return 0;
  }

  v5 = a1[1];
  v6 = a2[1];
  if (v4 != 1)
  {
    if (v2 > 0x8000000000000001)
    {
      if (v2 ^ 0x8000000000000002 | v5)
      {
        if (v3 >> 62 == 2 && v3 == 0x8000000000000003 && !v6)
        {
          return 1;
        }
      }

      else if (v3 >> 62 == 2 && v3 == 0x8000000000000002 && !v6)
      {
        return 1;
      }
    }

    else if (v2 ^ 0x8000000000000000 | v5)
    {
      if (v3 >> 62 == 2 && v3 == 0x8000000000000001 && !v6)
      {
        return 1;
      }
    }

    else if (v3 >> 62 == 2 && v3 == 0x8000000000000000 && !v6)
    {
      return 1;
    }

    return 0;
  }

  if (v3 >> 62 != 1)
  {
    return 0;
  }

  return v2 == v3 && v5 == v6;
}

unint64_t sub_1D9EA4654()
{
  result = qword_1ECB74640;
  if (!qword_1ECB74640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74640);
  }

  return result;
}

unint64_t sub_1D9EA46A8()
{
  result = qword_1ECB74648;
  if (!qword_1ECB74648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74648);
  }

  return result;
}

unint64_t sub_1D9EA46FC()
{
  result = qword_1ECB74650;
  if (!qword_1ECB74650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74650);
  }

  return result;
}

unint64_t sub_1D9EA4750()
{
  result = qword_1ECB74658;
  if (!qword_1ECB74658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74658);
  }

  return result;
}

unint64_t sub_1D9EA47A4()
{
  result = qword_1ECB74660;
  if (!qword_1ECB74660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74660);
  }

  return result;
}

unint64_t sub_1D9EA47F8()
{
  result = qword_1ECB74668;
  if (!qword_1ECB74668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74668);
  }

  return result;
}

unint64_t sub_1D9EA484C()
{
  result = qword_1ECB74670;
  if (!qword_1ECB74670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74670);
  }

  return result;
}

unint64_t sub_1D9EA48A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74780, &qword_1D9F3A128);
    v3 = sub_1D9F2B7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D9E51E70(v4, v13, &qword_1ECB74788, &unk_1D9F3A130);
      result = sub_1D9EEA3B0(v13);
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
      result = sub_1D9E3CA7C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9EA49DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747A8, &unk_1D9F3A160);
    v3 = sub_1D9F2B7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D9E51E70(v4, &v11, &qword_1ECB747A0, &qword_1D9F3A158);
      v5 = v11;
      result = sub_1D9EEA2FC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D9E3CA7C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

__CVBuffer *sub_1D9EA4B04(__int128 *a1)
{
  v120 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v116 = *a1;
  v117 = v1;
  v2 = a1[3];
  v118 = a1[2];
  v119 = v2;
  v115 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74798, &qword_1D9F3A150);
  inited = swift_initStackObject();
  v4 = *MEMORY[0x1E6966208];
  *(inited + 32) = *MEMORY[0x1E6966208];
  *(inited + 16) = xmmword_1D9F39850;
  v5 = MEMORY[0x1E69E6530];
  v6 = *(&v116 + 1);
  v101 = v116;
  *(inited + 40) = v116;
  v7 = *MEMORY[0x1E69660B8];
  *(inited + 64) = v5;
  *(inited + 72) = v7;
  v100 = v6;
  *(inited + 80) = v6;
  v8 = *MEMORY[0x1E6966130];
  *(inited + 104) = v5;
  *(inited + 112) = v8;
  v9 = MEMORY[0x1E69E7668];
  pixelFormatType = v117;
  *(inited + 120) = v117;
  v10 = *MEMORY[0x1E6966020];
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  numberOfPlanes = *(&v117 + 1);
  *(inited + 160) = *(&v117 + 1);
  v11 = *MEMORY[0x1E69660D0];
  *(inited + 184) = v5;
  *(inited + 192) = v11;
  v12 = MEMORY[0x1E69E6370];
  v13 = 1;
  *(inited + 200) = 1;
  v14 = *MEMORY[0x1E69660D8];
  *(inited + 224) = v12;
  *(inited + 232) = v14;
  v15 = v4;
  v16 = v7;
  v17 = v8;
  v18 = v10;
  v19 = v11;
  v20 = v14;
  v21 = sub_1D9EA48A0(MEMORY[0x1E69E7CC0]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746C0, &qword_1D9F398F8);
  v23 = MEMORY[0x1E6966100];
  *(inited + 240) = v21;
  v24 = *v23;
  *(inited + 264) = v22;
  *(inited + 272) = v24;
  *(inited + 304) = v12;
  *(inited + 280) = 1;
  v25 = v24;
  sub_1D9EA49DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747A0, &qword_1D9F3A158);
  swift_arrayDestroy();
  v26 = v119;
  if ((*(&v119 + 1) & 0x2000000000000000) == 0)
  {
    v27 = *(&v119 + 1) >> 62;
    if ((*(&v119 + 1) >> 62) <= 1)
    {
      if (!v27)
      {
        goto LABEL_49;
      }

      if (!__OFSUB__(DWORD1(v119), v119))
      {
        sub_1D9EA6B38(&v116, &v111);
        goto LABEL_49;
      }

      goto LABEL_71;
    }

    if (v27 != 2)
    {
LABEL_49:
      v56 = swift_slowAlloc();
LABEL_50:
      v74 = v56;
      sub_1D9F2ACAC();
      v75 = *MEMORY[0x1E695E480];
      type metadata accessor for CFString(0);
      sub_1D9EA58B8();
      v76 = sub_1D9F2B08C();

      v77 = CVPixelBufferCreateWithBytes(v75, v101, v100, pixelFormatType, v74, numberOfPlanes, sub_1D9EA3F08, 0, v76, &v115);

      if (v77)
      {
        MEMORY[0x1DA744270](v74, -1, -1);
        if (qword_1ECB72A78 != -1)
        {
          swift_once();
        }

        v78 = sub_1D9F2AE8C();
        v65 = __swift_project_value_buffer(v78, qword_1ECB738F8);
        sub_1D9EA6B38(&v116, &v111);
        v79 = sub_1D9F2AE6C();
        v80 = sub_1D9F2B43C();
        sub_1D9EA6B94(&v116);
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v110 = v82;
          *v81 = 136315138;
          v103 = v116;
          v105 = v117;
          v107 = v118;
          v109 = v119;
          sub_1D9EA6B38(&v116, &v111);
          v83 = ImageBuffer.description.getter();
          v85 = v84;
          v111 = v103;
          v112 = v105;
          v113 = v107;
          v114 = v109;
          sub_1D9EA6B94(&v111);
          v65 = sub_1D9E71CA4(v83, v85, &v110);

          *(v81 + 4) = v65;
          _os_log_impl(&dword_1D9E39000, v79, v80, "Failed to create CVPixelBuffer from ImageBuffer %s.", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x1DA744270](v82, -1, -1);
          MEMORY[0x1DA744270](v81, -1, -1);
        }

        sub_1D9E8EE20();
        swift_allocError();
        *v86 = v77;
        v86[1] = 0;
      }

      else
      {
        if (v115)
        {
          v65 = v115;
          sub_1D9EA6B94(&v116);

          return v65;
        }

        MEMORY[0x1DA744270](v74, -1, -1);
        if (qword_1ECB72A78 != -1)
        {
          swift_once();
        }

        v92 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v92, qword_1ECB738F8);
        v93 = sub_1D9F2AE6C();
        v65 = sub_1D9F2B43C();
        if (os_log_type_enabled(v93, v65))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_1D9E39000, v93, v65, "CVPixelBuffer returned from CVPixelBufferCreateWithBytes() is nil.", v94, 2u);
          MEMORY[0x1DA744270](v94, -1, -1);
        }

        sub_1D9E8EE20();
        swift_allocError();
        *v95 = 0;
        v95[1] = 0;
      }

      swift_willThrow();
      sub_1D9EA6B94(&v116);
      goto LABEL_57;
    }

    if (__OFSUB__(*(v119 + 24), *(v119 + 16)))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    sub_1D9EA6B38(&v116, &v111);
    v56 = swift_slowAlloc();
    if (!__OFSUB__(v26[3], v26[2]))
    {
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_28;
  }

  v28 = *(v119 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  numberOfPlanes = v28;
  if (!v28)
  {
LABEL_28:
    v43 = v13;
    v36 = v13;
    v97 = v13;
    goto LABEL_29;
  }

  sub_1D9EA6B38(&v116, &v111);
  *&v111 = v13;
  sub_1D9E9480C(0, v28, 0);
  v29 = v111;
  v30 = *(v111 + 16);
  v31 = v26 + 5;
  v32 = v28;
  do
  {
    v34 = *v31;
    v31 += 6;
    v33 = v34;
    *&v111 = v29;
    v35 = *(v29 + 24);
    if (v30 >= v35 >> 1)
    {
      sub_1D9E9480C((v35 > 1), v30 + 1, 1);
      v29 = v111;
    }

    *(v29 + 16) = v30 + 1;
    *(v29 + 8 * v30++ + 32) = v33;
    --v32;
  }

  while (v32);
  v97 = v29;
  *&v111 = v13;
  sub_1D9E9480C(0, v28, 0);
  v36 = v111;
  v37 = *(v111 + 16);
  v96 = v26;
  v38 = v26 + 6;
  v39 = v28;
  do
  {
    v41 = *v38;
    v38 += 6;
    v40 = v41;
    *&v111 = v36;
    v42 = *(v36 + 3);
    if (v37 >= v42 >> 1)
    {
      sub_1D9E9480C((v42 > 1), v37 + 1, 1);
      v36 = v111;
    }

    *(v36 + 2) = v37 + 1;
    *&v36[8 * v37++ + 32] = v40;
    --v39;
  }

  while (v39);
  *&v111 = v13;
  sub_1D9E9480C(0, v28, 0);
  v43 = v111;
  v44 = *(v111 + 16);
  v45 = v96 + 7;
  v46 = v28;
  do
  {
    v48 = *v45;
    v45 += 6;
    v47 = v48;
    *&v111 = v43;
    v49 = *(v43 + 3);
    if (v44 >= v49 >> 1)
    {
      sub_1D9E9480C((v49 > 1), v44 + 1, 1);
      v43 = v111;
    }

    *(v43 + 2) = v44 + 1;
    *&v43[8 * v44++ + 32] = v47;
    --v46;
  }

  while (v46);
  v50 = v28;
  sub_1D9E947EC(0, v28, 0);
  v51 = v96 + 9;
  do
  {
    v52 = *v51;
    *&v111 = *(v51 - 1);
    *(&v111 + 1) = v52;
    sub_1D9E400F4(v111, v52);
    v53 = sub_1D9EA4260(&v111);
    sub_1D9E4015C(v111, *(&v111 + 1));
    v55 = *(v13 + 16);
    v54 = *(v13 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_1D9E947EC((v54 > 1), v55 + 1, 1);
    }

    v51 += 6;
    *(v13 + 16) = v55 + 1;
    *(v13 + 8 * v55 + 32) = v53;
    --v50;
  }

  while (v50);
  sub_1D9EA6B94(&v116);
LABEL_29:
  type metadata accessor for CFString(0);
  sub_1D9EA58B8();
  pixelBufferAttributes = sub_1D9F2B08C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1D9F0C694(0, *(v13 + 16), 0, v13);
  }

  v58 = MEMORY[0x1E695E480];

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v59 = v97;
  }

  else
  {
    v59 = sub_1D9F0C590(0, *(v97 + 16), 0, v97);
  }

  v60 = *v58;
  planeWidth = (v59 + 32);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1D9F0C590(0, *(v36 + 2), 0, v36);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1D9F0C590(0, *(v43 + 2), 0, v43);
  }

  v62 = v118;

  v63 = CVPixelBufferCreateWithPlanarBytes(v60, v101, v100, pixelFormatType, 0, v62, numberOfPlanes, (v13 + 32), planeWidth, v36 + 4, v43 + 4, 0, 0, pixelBufferAttributes, &v115);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  if (v63)
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v64 = sub_1D9F2AE8C();
    v65 = __swift_project_value_buffer(v64, qword_1ECB738F8);
    sub_1D9EA6B38(&v116, &v111);
    v66 = sub_1D9F2AE6C();
    v67 = sub_1D9F2B43C();
    sub_1D9EA6B94(&v116);
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v110 = v69;
      *v68 = 136315138;
      v102 = v116;
      v104 = v117;
      v106 = v118;
      v108 = v119;
      sub_1D9EA6B38(&v116, &v111);
      v70 = ImageBuffer.description.getter();
      v72 = v71;
      v111 = v102;
      v112 = v104;
      v113 = v106;
      v114 = v108;
      sub_1D9EA6B94(&v111);
      v65 = sub_1D9E71CA4(v70, v72, &v110);

      *(v68 + 4) = v65;
      _os_log_impl(&dword_1D9E39000, v66, v67, "Failed to create CVPixelBuffer from ImageBuffer %s.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x1DA744270](v69, -1, -1);
      MEMORY[0x1DA744270](v68, -1, -1);
    }

    sub_1D9E8EE20();
    swift_allocError();
    *v73 = v63;
    v73[1] = 0;
    goto LABEL_44;
  }

  if (!v115)
  {
    if (qword_1ECB72A78 == -1)
    {
LABEL_62:
      v88 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v88, qword_1ECB738F8);
      v89 = sub_1D9F2AE6C();
      v65 = sub_1D9F2B43C();
      if (os_log_type_enabled(v89, v65))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1D9E39000, v89, v65, "CVPixelBuffer returned from CVPixelBufferCreateWithPlanarBytes() is nil.", v90, 2u);
        MEMORY[0x1DA744270](v90, -1, -1);
      }

      sub_1D9E8EE20();
      swift_allocError();
      *v91 = 0;
      v91[1] = 0;
LABEL_44:
      swift_willThrow();
LABEL_57:

      return v65;
    }

LABEL_72:
    swift_once();
    goto LABEL_62;
  }

  v65 = v115;

  return v65;
}

unint64_t sub_1D9EA5758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74778, &qword_1D9F3A120);
    v3 = sub_1D9F2B7AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D9EEA2FC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D9EA5850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB746B8, &qword_1D9F398F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9EA58B8()
{
  result = qword_1ECB72B70;
  if (!qword_1ECB72B70)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72B70);
  }

  return result;
}

unint64_t sub_1D9EA5910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74538, &unk_1D9F38F20);
    v3 = sub_1D9F2B7AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D9EEA3F4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9EA5A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74520, &qword_1D9F38F08);
    v3 = sub_1D9F2B7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D9E51E70(v4, &v13, &qword_1ECB74790, &unk_1D9F3A140);
      v5 = v13;
      v6 = v14;
      result = sub_1D9EEA3F4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D9E3CA7C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9EA5B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74770, &qword_1D9F3A118);
    v3 = sub_1D9F2B7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D9E51E70(v4, &v13, &qword_1ECB74760, &qword_1D9F3A108);
      v5 = v13;
      v6 = v14;
      result = sub_1D9EEA3F4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D9E3CA7C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D9EA5C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001BLL && 0x80000001D9F49220 == a2;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9F49240 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D9F49260 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9F49280 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9F492A0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9F492C0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

CVPixelBufferRef sub_1D9EA5E70(size_t a1, size_t a2, OSType a3, char a4, char a5, char a6)
{
  v52 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74758, &qword_1D9F3A100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9F39860;
  *(inited + 32) = sub_1D9F2B12C();
  v11 = MEMORY[0x1E69E6530];
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v12;
  *(inited + 48) = a1;
  *(inited + 80) = sub_1D9F2B12C();
  *(inited + 88) = v13;
  *(inited + 120) = v11;
  *(inited + 96) = a2;
  *(inited + 128) = sub_1D9F2B12C();
  *(inited + 136) = v14;
  *(inited + 168) = MEMORY[0x1E69E7668];
  *(inited + 144) = a3;
  sub_1D9EA5B44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74760, &qword_1D9F3A108);
  swift_arrayDestroy();
  if (a4)
  {
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1D9F39860;
    *(v15 + 32) = sub_1D9F2B12C();
    *(v15 + 72) = v11;
    *(v15 + 40) = v16;
    *(v15 + 48) = a1;
    *(v15 + 80) = sub_1D9F2B12C();
    *(v15 + 88) = v17;
    *(v15 + 120) = v11;
    *(v15 + 96) = a2;
    *(v15 + 128) = sub_1D9F2B12C();
    *(v15 + 136) = v18;
    *(v15 + 168) = MEMORY[0x1E69E7668];
    *(v15 + 144) = a3;
    v19 = sub_1D9EA5B44(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    v20 = sub_1D9F2B12C();
    v22 = v21;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74768, &qword_1D9F3A110);
    pixelBufferOut[0] = v19;
    sub_1D9E3CA7C(pixelBufferOut, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9EAFF24(v49, v20, v22, isUniquelyReferenced_nonNull_native);
  }

  v24 = MEMORY[0x1E69E6370];
  if (a5)
  {
    v25 = sub_1D9F2B12C();
    v27 = v26;
    v51 = v24;
    LOBYTE(pixelBufferOut[0]) = 1;
    sub_1D9E3CA7C(pixelBufferOut, v49);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9EAFF24(v49, v25, v27, v28);
  }

  if (a6)
  {
    v29 = sub_1D9F2B12C();
    v31 = v30;
    v51 = v24;
    LOBYTE(pixelBufferOut[0]) = 1;
    sub_1D9E3CA7C(pixelBufferOut, v49);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9EAFF24(v49, v29, v31, v32);

    v33 = sub_1D9F2B12C();
    v35 = v34;
    v51 = v24;
    LOBYTE(pixelBufferOut[0]) = 1;
    sub_1D9E3CA7C(pixelBufferOut, v49);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9EAFF24(v49, v33, v35, v36);
  }

  pixelBufferOut[0] = 0;
  v37 = *MEMORY[0x1E695E480];
  v38 = sub_1D9F2B08C();

  v39 = CVPixelBufferCreate(v37, a1, a2, a3, v38, pixelBufferOut);

  v40 = pixelBufferOut[0];
  if (v39 || !pixelBufferOut[0])
  {
    if (qword_1ECB72A78 != -1)
    {
      swift_once();
    }

    v41 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v41, qword_1ECB738F8);
    v42 = sub_1D9F2AE6C();
    v43 = sub_1D9F2B43C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 67109120;
      *(v44 + 4) = v39;
      _os_log_impl(&dword_1D9E39000, v42, v43, "Failed to create pixel buffer %d", v44, 8u);
      MEMORY[0x1DA744270](v44, -1, -1);
    }

    sub_1D9E8EE20();
    swift_allocError();
    *v45 = v39;
    v45[1] = 0;
    swift_willThrow();
  }

  return v40;
}

unint64_t sub_1D9EA639C()
{
  result = qword_1ECB746C8;
  if (!qword_1ECB746C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageProcessing.Failure(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageProcessing.Failure(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 2) << 32;
      *(result + 8) = 0;
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

unint64_t sub_1D9EA6494(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

unint64_t *sub_1D9EA64BC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
    result[1] = 0;
  }

  return result;
}

unint64_t sub_1D9EA6564()
{
  result = qword_1ECB746D0;
  if (!qword_1ECB746D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746D0);
  }

  return result;
}

unint64_t sub_1D9EA65BC()
{
  result = qword_1ECB746D8;
  if (!qword_1ECB746D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746D8);
  }

  return result;
}

unint64_t sub_1D9EA6614()
{
  result = qword_1ECB746E0;
  if (!qword_1ECB746E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746E0);
  }

  return result;
}

unint64_t sub_1D9EA666C()
{
  result = qword_1ECB746E8;
  if (!qword_1ECB746E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746E8);
  }

  return result;
}

unint64_t sub_1D9EA66C4()
{
  result = qword_1ECB746F0;
  if (!qword_1ECB746F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746F0);
  }

  return result;
}

unint64_t sub_1D9EA671C()
{
  result = qword_1ECB746F8;
  if (!qword_1ECB746F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB746F8);
  }

  return result;
}

unint64_t sub_1D9EA6774()
{
  result = qword_1ECB74700;
  if (!qword_1ECB74700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74700);
  }

  return result;
}

unint64_t sub_1D9EA67CC()
{
  result = qword_1ECB74708;
  if (!qword_1ECB74708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74708);
  }

  return result;
}

unint64_t sub_1D9EA6824()
{
  result = qword_1ECB74710;
  if (!qword_1ECB74710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74710);
  }

  return result;
}

unint64_t sub_1D9EA687C()
{
  result = qword_1ECB74718;
  if (!qword_1ECB74718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74718);
  }

  return result;
}

unint64_t sub_1D9EA68D4()
{
  result = qword_1ECB74720;
  if (!qword_1ECB74720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74720);
  }

  return result;
}

unint64_t sub_1D9EA692C()
{
  result = qword_1ECB74728;
  if (!qword_1ECB74728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74728);
  }

  return result;
}

unint64_t sub_1D9EA6984()
{
  result = qword_1ECB74730;
  if (!qword_1ECB74730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74730);
  }

  return result;
}

unint64_t sub_1D9EA69DC()
{
  result = qword_1ECB74738;
  if (!qword_1ECB74738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74738);
  }

  return result;
}

unint64_t sub_1D9EA6A34()
{
  result = qword_1ECB74740;
  if (!qword_1ECB74740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74740);
  }

  return result;
}

unint64_t sub_1D9EA6A8C()
{
  result = qword_1ECB74748;
  if (!qword_1ECB74748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74748);
  }

  return result;
}

unint64_t sub_1D9EA6AE4()
{
  result = qword_1ECB74750;
  if (!qword_1ECB74750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74750);
  }

  return result;
}

uint64_t Album.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Album.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Album.artistName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Album.artistName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Album.adamID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Album.adamID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall Album.init(title:artistName:adamID:)(VisualActionPredictionSupport::Album *__return_ptr retstr, Swift::String title, Swift::String artistName, Swift::String adamID)
{
  retstr->title = title;
  retstr->artistName = artistName;
  retstr->adamID = adamID;
}

uint64_t static Album.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D9F2BA1C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1D9F2BA1C();
}

uint64_t sub_1D9EA6E88()
{
  v1 = 0x614E747369747261;
  if (*v0 != 1)
  {
    v1 = 0x44496D616461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D9EA6EE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EA76B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EA6F08(uint64_t a1)
{
  v2 = sub_1D9EA7144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA6F44(uint64_t a1)
{
  v2 = sub_1D9EA7144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Album.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747B0, &qword_1D9F3A170);
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
  sub_1D9EA7144();
  sub_1D9F2BB8C();
  v14 = 0;
  v9 = v11[5];
  sub_1D9F2B95C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1D9F2B95C();
  v12 = 2;
  sub_1D9F2B95C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9EA7144()
{
  result = qword_1ECB747B8;
  if (!qword_1ECB747B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747B8);
  }

  return result;
}

uint64_t Album.hash(into:)(uint64_t a1)
{
  sub_1D9F2B18C();
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t Album.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t Album.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747C0, &qword_1D9F3A178);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA7144();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1D9F2B84C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1D9F2B84C();
  v21 = v12;
  v23 = 2;
  v13 = sub_1D9F2B84C();
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

unint64_t sub_1D9EA7534()
{
  result = qword_1ECB747C8;
  if (!qword_1ECB747C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747C8);
  }

  return result;
}

unint64_t sub_1D9EA75AC()
{
  result = qword_1ECB747D0;
  if (!qword_1ECB747D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747D0);
  }

  return result;
}

unint64_t sub_1D9EA7604()
{
  result = qword_1ECB747D8;
  if (!qword_1ECB747D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747D8);
  }

  return result;
}

unint64_t sub_1D9EA765C()
{
  result = qword_1ECB747E0;
  if (!qword_1ECB747E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747E0);
  }

  return result;
}

uint64_t sub_1D9EA76B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000)
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

uint64_t MapsPointOfInterest.mapItemIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MapsPointOfInterest.mapItemIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

VisualActionPredictionSupport::MapsPointOfInterest __swiftcall MapsPointOfInterest.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

VisualActionPredictionSupport::MapsPointOfInterest __swiftcall MapsPointOfInterest.init(mapItemIdentifier:)(Swift::String mapItemIdentifier)
{
  object = mapItemIdentifier._object;
  countAndFlagsBits = mapItemIdentifier._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.mapItemIdentifier.value._object = v6;
  result.mapItemIdentifier.value._countAndFlagsBits = v5;
  return result;
}

uint64_t static MapsPointOfInterest.== infix(_:_:)(uint64_t *a1, void *a2)
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

uint64_t sub_1D9EA790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D9F492E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D9EA79A0(uint64_t a1)
{
  v2 = sub_1D9EA7B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA79DC(uint64_t a1)
{
  v2 = sub_1D9EA7B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsPointOfInterest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747E8, &qword_1D9F3A3D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA7B54();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9EA7B54()
{
  result = qword_1ECB747F0;
  if (!qword_1ECB747F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB747F0);
  }

  return result;
}

uint64_t MapsPointOfInterest.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t MapsPointOfInterest.hashValue.getter()
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

uint64_t MapsPointOfInterest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747F8, &qword_1D9F3A3D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA7B54();
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

uint64_t sub_1D9EA7E1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB747E8, &qword_1D9F3A3D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA7B54();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D9EA7F58()
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

uint64_t sub_1D9EA7FC8(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t sub_1D9EA8040()
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

unint64_t sub_1D9EA80B0()
{
  result = qword_1ECB74800;
  if (!qword_1ECB74800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74800);
  }

  return result;
}

uint64_t sub_1D9EA8104(uint64_t *a1, void *a2)
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

unint64_t sub_1D9EA8184()
{
  result = qword_1ECB74808;
  if (!qword_1ECB74808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74808);
  }

  return result;
}

unint64_t sub_1D9EA81DC()
{
  result = qword_1ECB74810;
  if (!qword_1ECB74810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74810);
  }

  return result;
}

unint64_t sub_1D9EA8234()
{
  result = qword_1ECB74818;
  if (!qword_1ECB74818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74818);
  }

  return result;
}

uint64_t PhysicalValue.unit.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PhysicalValue.unit.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

VisualActionPredictionSupport::PhysicalValue __swiftcall PhysicalValue.init(value:unit:)(Swift::Double value, Swift::String unit)
{
  *v2 = value;
  *(v2 + 8) = unit;
  result.unit = unit;
  result.value = value;
  return result;
}

uint64_t static PhysicalValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

uint64_t sub_1D9EA8394()
{
  if (*v0)
  {
    return 1953066613;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D9EA83C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
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

uint64_t sub_1D9EA849C(uint64_t a1)
{
  v2 = sub_1D9EA86B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EA84D8(uint64_t a1)
{
  v2 = sub_1D9EA86B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhysicalValue.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74820, &qword_1D9F3A620);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA86B0();
  sub_1D9F2BB8C();
  v11 = 0;
  sub_1D9F2B97C();
  if (!v2)
  {
    v10 = 1;
    sub_1D9F2B95C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D9EA86B0()
{
  result = qword_1ECB74828;
  if (!qword_1ECB74828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74828);
  }

  return result;
}

uint64_t PhysicalValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1DA743920](*&v2);

  return sub_1D9F2B18C();
}