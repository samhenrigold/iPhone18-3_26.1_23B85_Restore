uint64_t sub_1E4779934@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B858, &qword_1E487A898);
  MEMORY[0x1EEE9AC00](v19);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B860, &qword_1E487A8A0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B868, &qword_1E487A8A8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B870, &qword_1E487A8B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(sub_1E47747B4() + 16);

  if (v12 || (v13 = *(sub_1E4774A4C() + 16), , v13) || (v14 = *(sub_1E4774D18() + 16), , v14 != 1))
  {
    sub_1E4776F78(v2);
    sub_1E4773850(v2, v5, &qword_1ECF7B858, &qword_1E487A898);
    swift_storeEnumTagMultiPayload();
    sub_1E4779C7C();
    sub_1E4779F28();
    sub_1E487803C();
    v15 = v2;
    v16 = &qword_1ECF7B858;
    v17 = &qword_1E487A898;
  }

  else
  {
    sub_1E4775FBC(v8);
    sub_1E4773850(v8, v5, &qword_1ECF7B868, &qword_1E487A8A8);
    swift_storeEnumTagMultiPayload();
    sub_1E4779C7C();
    sub_1E4779F28();
    sub_1E487803C();
    v15 = v8;
    v16 = &qword_1ECF7B868;
    v17 = &qword_1E487A8A8;
  }

  sub_1E47738B8(v15, v16, v17);
  sub_1E477372C(v11, v20, &qword_1ECF7B870, &qword_1E487A8B0);
}

unint64_t sub_1E4779C7C()
{
  result = qword_1EE2B11D0;
  if (!qword_1EE2B11D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B868, &qword_1E487A8A8);
    sub_1E477A00C(&qword_1EE2B12B0, &qword_1ECF7B888, &qword_1E487A8D0, sub_1E4779D60);
    sub_1E477A00C(&qword_1EE2B12E0, &qword_1ECF7B8B8, &qword_1E487A900, sub_1E4779E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11D0);
  }

  return result;
}

uint64_t sub_1E4779D90(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0, MEMORY[0x1E697F938]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4779E70()
{
  result = qword_1EE2B1488;
  if (!qword_1EE2B1488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B8A0, &qword_1E487A8E8);
    sub_1E4773680(&qword_1EE2B0FB0, &qword_1ECF7B8A8, &unk_1E487A8F0, MEMORY[0x1E6981800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1488);
  }

  return result;
}

unint64_t sub_1E4779F28()
{
  result = qword_1EE2B11C8;
  if (!qword_1EE2B11C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B858, &qword_1E487A898);
    sub_1E477A00C(&qword_1EE2B12A0, &qword_1ECF7B8C0, &qword_1E487A908, sub_1E477A0C0);
    sub_1E477A00C(&qword_1EE2B12C0, &qword_1ECF7B8F0, &qword_1E487A938, sub_1E477A0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11C8);
  }

  return result;
}

uint64_t sub_1E477A00C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E477AB7C(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E477A150(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1E477A1D4()
{
  result = qword_1EE2B1598;
  if (!qword_1EE2B1598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B8E0, &qword_1E487A928);
    v3 = sub_1E4773680(&qword_1EE2B1650, &qword_1ECF7B8E8, &qword_1E487A930, MEMORY[0x1E697BF78]);
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1598);
  }

  return result;
}

unint64_t sub_1E477A28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B2330[0];
  if (!qword_1EE2B2330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B2330);
  }

  return result;
}

unint64_t sub_1E477A2E0()
{
  result = qword_1EE2B1148;
  if (!qword_1EE2B1148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B870, &qword_1E487A8B0);
    sub_1E4779C7C();
    sub_1E4779F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1148);
  }

  return result;
}

unint64_t sub_1E477A374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B5A40;
  if (!qword_1EE2B5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A40);
  }

  return result;
}

uint64_t sub_1E477A3C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_1E477A3D8(uint64_t a1)
{
  v2 = *(sub_1E47747B4() + 16);

  if (v2 || (v3 = *(sub_1E4774A4C() + 16), , v3) || (v4 = *(sub_1E4774D18() + 16), , v5 = 1.0, v4 != 1))
  {
    v6 = *(sub_1E4775E6C() + 112);

    v5 = fmax(v6, 1.0);
  }

  v7 = sub_1E4773DE4();
  sub_1E487201C(v7, a1);
  v9 = v8;

  v10 = v5 * v9;
  v11 = *(sub_1E4775E6C() + 48);

  return v10 + v11;
}

uint64_t sub_1E477A484(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_1E477A490()
{
  result = qword_1EE2B4740[0];
  if (!qword_1EE2B4740[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E4773680(&qword_1EE2B5A48, &qword_1ECF7B938, &qword_1E487AB40, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B4740);
  }

  return result;
}

uint64_t sub_1E477A548(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_1E4862224(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1E485807C(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1E485807C((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_1E477A6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for NarrowAllDayView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = sub_1E487732C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E487894C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_1E477A484(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v14 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1E487893C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E477AA20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NarrowAllDayView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E477AAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E477AB1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E477AB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E477ABC4()
{
  result = qword_1EE2B1198;
  if (!qword_1EE2B1198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA00, &unk_1E487AC30);
    sub_1E4773680(&qword_1EE2B1068, &qword_1ECF7B880, &unk_1E487A8C0, MEMORY[0x1E697CD08]);
    sub_1E477A2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1198);
  }

  return result;
}

void sub_1E477AC80()
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE2BAF40;
  v1 = sub_1E48771EC();
  v3 = v2;

  qword_1EE2BAF18 = v1;
  unk_1EE2BAF20 = v3;
}

void sub_1E477AD50()
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE2BAF40;
  v1 = sub_1E48771EC();
  v3 = v2;

  qword_1EE2BAF28 = v1;
  unk_1EE2BAF30 = v3;
}

uint64_t CalendarNextEventComplication.body.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA08, &qword_1E487AC50);
  v39 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v37 - v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA10, &qword_1E487AC58);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA18, &unk_1E487AC60);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v37 - v7;
  v8 = type metadata accessor for EventKitDataSource();
  v9 = swift_allocObject();
  v10 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (!v10)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  }

  type metadata accessor for NextEventComplicationConfigurationIntent();
  *(v9 + 16) = v10;
  v51 = v8;
  v52 = &off_1F5E7D4F8;
  v48 = v9;
  type metadata accessor for ListTimeline();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(&v48, v8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v11[5] = v8;
  v11[6] = &off_1F5E7D4F8;
  v11[2] = v16;
  v17 = MEMORY[0x1E69E7CC0];
  v11[7] = MEMORY[0x1E69E7CC0];
  v11[8] = v17;
  __swift_destroy_boxed_opaque_existential_1(&v48);
  v48 = v11;
  type metadata accessor for CalendarNextEventComplication.WidgetView(0);
  v18 = sub_1E477CE64(qword_1EE2B4530, type metadata accessor for CalendarNextEventComplication.WidgetView, &unk_1E487ACF4);
  sub_1E477B6B8(v18, v19, v20);
  sub_1E487898C();
  if (qword_1EE2B4490 != -1)
  {
    swift_once();
  }

  v48 = qword_1EE2BAF18;
  v49 = unk_1EE2BAF20;
  v38 = sub_1E4773680(&qword_1EE2B0E50, &qword_1ECF7BA08, &qword_1E487AC50, MEMORY[0x1E69859E0]);
  v23 = sub_1E477A374(v38, v21, v22);
  sub_1E487800C();
  (*(v39 + 8))(v3, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v24 = sub_1E487894C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E487AC40;
  v29 = v28 + v27;
  v30 = v5;
  v31 = *(v25 + 104);
  v31(v29, *MEMORY[0x1E6985808], v24);
  v31(v29 + v26, *MEMORY[0x1E6985820], v24);
  v31(v29 + 2 * v26, *MEMORY[0x1E6985830], v24);
  v48 = v1;
  v49 = MEMORY[0x1E69E6158];
  v50 = v38;
  v51 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v41;
  v33 = v42;
  sub_1E4877FFC();

  (*(v40 + 8))(v30, v33);
  if (qword_1EE2B4498 != -1)
  {
    swift_once();
  }

  v48 = qword_1EE2BAF28;
  v49 = unk_1EE2BAF30;
  v46 = v33;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v44;
  sub_1E4877FEC();
  return (*(v43 + 8))(v34, v35);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
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

uint64_t sub_1E477B568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E477CEAC(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for CalendarNextEventComplication.WidgetView(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for CalendarNextEventComplication.WidgetView(uint64_t a1)
{
  result = qword_1EE2B4520;
  if (!qword_1EE2B4520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E477B6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B1E98[0];
  if (!qword_1EE2B1E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B1E98);
  }

  return result;
}

uint64_t sub_1E477B728@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  Event = type metadata accessor for CalendarNextEventComplication.WidgetView(0);
  sub_1E4773850(v1 + *(Event + 20), v9, &qword_1ECF7B7D8, &qword_1E487A630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487894C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E477B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v84 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA38, &qword_1E487AD88);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v66 - v2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA40, &qword_1E487AD90);
  MEMORY[0x1EEE9AC00](v83);
  v70 = &v66 - v3;
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  MEMORY[0x1EEE9AC00](EventContentView);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for CircularNextEventContentView(0);
  MEMORY[0x1EEE9AC00](v74);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA48, &qword_1E487AD98);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v66 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA50, &qword_1E487ADA0);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v66 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA58, &qword_1E487ADA8);
  MEMORY[0x1EEE9AC00](v81);
  v75 = &v66 - v10;
  v11 = sub_1E48782AC();
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for InlineNextEventContentView(0);
  MEMORY[0x1EEE9AC00](v72);
  v15 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1E487894C();
  v76 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v66 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA60, &unk_1E487ADB0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v79 = &v66 - v23;
  sub_1E4878D2C();
  v78 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = v77;
  sub_1E477B728(v21);
  v25 = (*(v76 + 88))(v21, v16);
  if (v25 == *MEMORY[0x1E6985820])
  {
    v26 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v27 = *(v26 + 20);
    v28 = sub_1E487732C();
    (*(*(v28 - 8) + 16))(v7, v24 + v27, v28);
    v29 = *(v24 + *(v26 + 24));
    KeyPath = swift_getKeyPath();
    v31 = v74;
    *&v7[*(v74 + 24)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v32 = swift_getKeyPath();
    *&v7[v31[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v7[v31[5]] = v29;
    v33 = &v7[v31[7]];
    *v33 = v32;
    v33[8] = 0;
    sub_1E477CEAC(v7, v73, type metadata accessor for CircularNextEventContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CE64(&qword_1EE2B21F8, type metadata accessor for InlineNextEventContentView, &unk_1E4880D7C);
    sub_1E477CE64(qword_1EE2B1FE8, type metadata accessor for CircularNextEventContentView, &unk_1E4883270);

    v34 = v75;
    sub_1E487803C();
    sub_1E4773850(v34, v82, &qword_1ECF7BA58, &qword_1E487ADA8);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB94();
    sub_1E477CC80();
    v35 = v79;
    sub_1E487803C();
    sub_1E47738B8(v34, &qword_1ECF7BA58, &qword_1E487ADA8);
    v36 = type metadata accessor for CircularNextEventContentView;
    v37 = v7;
LABEL_11:
    sub_1E477CE04(v37, v36);
    sub_1E477CD3C(v35, v84);
  }

  if (v25 == *MEMORY[0x1E6985830])
  {
    v38 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v39 = *(v38 + 20);
    v40 = sub_1E487732C();
    (*(*(v40 - 8) + 16))(v5, v24 + v39, v40);
    v41 = *(v24 + *(v38 + 24));
    v42 = swift_getKeyPath();
    v43 = EventContentView;
    *&v5[*(EventContentView + 32)] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v5[v43[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v44 = swift_getKeyPath();
    *&v5[v43[5]] = v41;
    v45 = &v5[v43[6]];
    v46 = qword_1EE2B1B70;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = *&byte_1EE2BAD48;
    v86[2] = xmmword_1EE2BAD38;
    v86[3] = *&byte_1EE2BAD48;
    v48 = qword_1EE2BAD58;
    v87 = qword_1EE2BAD58;
    v50 = xmmword_1EE2BAD18;
    v49 = xmmword_1EE2BAD28;
    v86[0] = xmmword_1EE2BAD18;
    v86[1] = xmmword_1EE2BAD28;
    *(v45 + 2) = xmmword_1EE2BAD38;
    *(v45 + 3) = v47;
    *(v45 + 8) = v48;
    *v45 = v50;
    *(v45 + 1) = v49;
    v5[v43[7]] = 0;
    v51 = &v5[v43[10]];
    *v51 = v44;
    v51[8] = 0;
    sub_1E477CEAC(v5, v69, type metadata accessor for RectangularNextEventContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB38(v86, v85);
    sub_1E477CE64(&qword_1EE2B1B68, type metadata accessor for RectangularNextEventContentView, &unk_1E487C0D0);
    v52 = v70;
    sub_1E487803C();
    sub_1E4773850(v52, v82, &qword_1ECF7BA40, &qword_1E487AD90);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB94();
    sub_1E477CC80();
    v35 = v79;
    sub_1E487803C();
    sub_1E47738B8(v52, &qword_1ECF7BA40, &qword_1E487AD90);
    v36 = type metadata accessor for RectangularNextEventContentView;
    v37 = v5;
    goto LABEL_11;
  }

  if (v25 == *MEMORY[0x1E6985808])
  {
    v53 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v54 = *(v53 + 20);
    v55 = v72;
    v56 = *(v72 + 20);
    v57 = sub_1E487732C();
    (*(*(v57 - 8) + 16))(v15 + v56, v24 + v54, v57);
    v58 = *(v24 + *(v53 + 24));

    sub_1E48782BC();
    v59 = v66;
    (*(v66 + 104))(v13, *MEMORY[0x1E6980EA0], v11);
    v60 = sub_1E48782CC();

    (*(v59 + 8))(v13, v11);
    *v15 = v60;
    v61 = v55[9];
    *(v15 + v61) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v62 = v55[10];
    *(v15 + v62) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *(v15 + v55[6]) = v58;
    *(v15 + v55[7]) = 0;
    *(v15 + v55[8]) = 0;
    sub_1E477CEAC(v15, v73, type metadata accessor for InlineNextEventContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CE64(&qword_1EE2B21F8, type metadata accessor for InlineNextEventContentView, &unk_1E4880D7C);
    sub_1E477CE64(qword_1EE2B1FE8, type metadata accessor for CircularNextEventContentView, &unk_1E4883270);
    v63 = v75;
    sub_1E487803C();
    sub_1E4773850(v63, v82, &qword_1ECF7BA58, &qword_1E487ADA8);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB94();
    sub_1E477CC80();
    v35 = v79;
    sub_1E487803C();
    sub_1E47738B8(v63, &qword_1ECF7BA58, &qword_1E487ADA8);
    v36 = type metadata accessor for InlineNextEventContentView;
    v37 = v15;
    goto LABEL_11;
  }

  *&v86[0] = 0;
  *(&v86[0] + 1) = 0xE000000000000000;
  sub_1E4878F9C();
  MEMORY[0x1E69192D0](0xD00000000000001BLL, 0x80000001E48A64A0);
  sub_1E477B728(v19);
  sub_1E477CE64(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
  v65 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v65);

  (*(v76 + 8))(v19, v16);
  MEMORY[0x1E69192D0](0xD00000000000001CLL, 0x80000001E48A64C0);
  result = sub_1E487903C();
  __break(1u);
  return result;
}

uint64_t sub_1E477C798@<X0>(uint64_t a1@<X8>)
{
  sub_1E477B930(v1, a1);
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA28, &qword_1E487AD78) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80);
  result = sub_1E4877A7C();
  *v4 = KeyPath;
  return result;
}

uint64_t getEnumTagSinglePayload for CalendarNextEventComplication(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CalendarNextEventComplication(_WORD *result, int a2, int a3)
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

void sub_1E477C934(uint64_t a1)
{
  type metadata accessor for CalendarEventsTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_1E477C9B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E477C9B8(uint64_t a1)
{
  if (!qword_1EE2B1690)
  {
    sub_1E487894C();
    v1 = sub_1E4877B4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2B1690);
    }
  }
}

uint64_t sub_1E477CA2C()
{
  sub_1E4877E9C();
  sub_1E477CE64(&qword_1EE2B1280, MEMORY[0x1E6985528], MEMORY[0x1E6985518]);
  sub_1E4877F2C();
  return v1;
}

void *sub_1E477CAA8@<X0>(_BYTE *a1@<X8>)
{
  sub_1E4877E9C();
  sub_1E477CE64(&qword_1EE2B1280, MEMORY[0x1E6985528], MEMORY[0x1E6985518]);
  result = sub_1E4877F2C();
  *a1 = v3;
  return result;
}

unint64_t sub_1E477CB94()
{
  result = qword_1EE2B1260;
  if (!qword_1EE2B1260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA58, &qword_1E487ADA8);
    sub_1E477CE64(&qword_1EE2B21F8, type metadata accessor for InlineNextEventContentView, &unk_1E4880D7C);
    sub_1E477CE64(qword_1EE2B1FE8, type metadata accessor for CircularNextEventContentView, &unk_1E4883270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1260);
  }

  return result;
}

unint64_t sub_1E477CC80()
{
  result = qword_1EE2B1250;
  if (!qword_1EE2B1250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA40, &qword_1E487AD90);
    sub_1E477CE64(&qword_1EE2B1B68, type metadata accessor for RectangularNextEventContentView, &unk_1E487C0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1250);
  }

  return result;
}

uint64_t sub_1E477CD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA60, &unk_1E487ADB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E477CDAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4877EAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E477CE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E477CE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E477CEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E477CF14()
{
  result = qword_1EE2B14F0;
  if (!qword_1EE2B14F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA28, &qword_1E487AD78);
    sub_1E477CFCC();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14F0);
  }

  return result;
}

unint64_t sub_1E477CFCC()
{
  result = qword_1EE2B1040;
  if (!qword_1EE2B1040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA68, &qword_1E487AE88);
    sub_1E477D050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1040);
  }

  return result;
}

unint64_t sub_1E477D050()
{
  result = qword_1EE2B1168;
  if (!qword_1EE2B1168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA60, &unk_1E487ADB0);
    sub_1E477CB94();
    sub_1E477CC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1168);
  }

  return result;
}

uint64_t type metadata accessor for EventBackgroundView(uint64_t a1)
{
  result = qword_1EE2B2DD0;
  if (!qword_1EE2B2DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E477D150(uint64_t a1)
{
  sub_1E477D38C(319, &qword_1EE2B48A8, type metadata accessor for Event, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E477D33C();
    if (v2 <= 0x3F)
    {
      sub_1E477D38C(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E477D38C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E477D38C(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            sub_1E477D38C(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E477D33C()
{
  if (!qword_1EE2B16B0)
  {
    v0 = sub_1E4877B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B16B0);
    }
  }
}

void sub_1E477D38C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for EventBackgroundView.DisplayOpacity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventBackgroundView.DisplayOpacity(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E477D550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7BA70;
  if (!qword_1ECF7BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BA70);
  }

  return result;
}

double sub_1E477D5A4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for EventBackgroundView(0) + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  v8 = sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v10[1];
}

uint64_t sub_1E477D700@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for EventBackgroundView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E477D908@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for EventBackgroundView(0);
  sub_1E4773850(v1 + *(v10 + 36), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E477DB10@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for EventBackgroundView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E477DD18()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for EventBackgroundView(0) + 44));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E477DE9C@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA78, &qword_1E487AF90);
  v105 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v103 = &v96 - v2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA80, &qword_1E487AF98);
  MEMORY[0x1EEE9AC00](v116);
  v122 = &v96 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA88, &qword_1E487AFA0);
  MEMORY[0x1EEE9AC00](v115);
  v97 = &v96 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA90, &qword_1E487AFA8);
  v100 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v99 = &v96 - v5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA98, &qword_1E487AFB0);
  MEMORY[0x1EEE9AC00](v130);
  v121 = &v96 - v6;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAA0, &qword_1E487AFB8);
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v96 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAA8, &qword_1E487AFC0);
  v106 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v104 = &v96 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAB0, &qword_1E487AFC8);
  MEMORY[0x1EEE9AC00](v114);
  v120 = &v96 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAB8, &qword_1E487AFD0);
  MEMORY[0x1EEE9AC00](v113);
  v98 = &v96 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAC0, &qword_1E487AFD8);
  v102 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v101 = &v96 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAC8, &qword_1E487AFE0);
  MEMORY[0x1EEE9AC00](v127);
  v119 = &v96 - v12;
  v112 = sub_1E487893C();
  v111 = *(v112 - 8);
  v13 = MEMORY[0x1EEE9AC00](v112);
  v110 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v96 - v15;
  v108 = sub_1E487875C();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E4877B3C();
  v125 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAD0, &qword_1E487AFE8);
  v131 = *(v21 - 8);
  v132 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v96 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v96 - v24;
  v26 = type metadata accessor for Event(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4773850(v1, v25, &qword_1ECF7B950, &unk_1E487AE90);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1E47738B8(v25, &qword_1ECF7B950, &unk_1E487AE90);
    v30 = 1;
    v31 = v133;
  }

  else
  {
    sub_1E4770850(v25, v29);
    v32 = v29[*(v26 + 56)];
    v33 = v29;
    if ((v32 - 1) > 1)
    {
      v38 = v126;
      if (v29[*(v26 + 48)] == 1)
      {
        v39 = *MEMORY[0x1E697F470];
        v40 = sub_1E4877F7C();
        v41 = v97;
        (*(*(v40 - 8) + 104))(v97, v39, v40);
        sub_1E477D700(v20);
        v42 = sub_1E476E19C(v29, v20);
        (*(v125 + 8))(v20, v18);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAF8, &qword_1E487B010);
        *(v41 + *(v43 + 52)) = v42;
        *(v41 + *(v43 + 56)) = 256;
        v44 = sub_1E477F15C();
        v45 = v115;
        *(v41 + *(v115 + 36)) = v44;
        v46 = sub_1E477F53C();
        v47 = v99;
        sub_1E48784AC();
        sub_1E47738B8(v41, &qword_1ECF7BA88, &qword_1E487AFA0);
        v48 = v100;
        v49 = v118;
        (*(v100 + 16))(v122, v47, v118);
        swift_storeEnumTagMultiPayload();
        *&v136 = v45;
        *(&v136 + 1) = v46;
        swift_getOpaqueTypeConformance2();
        v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAD8, &unk_1E487AFF0);
        v51 = sub_1E477F3CC();
        *&v136 = v50;
        *(&v136 + 1) = v51;
        swift_getOpaqueTypeConformance2();
        v83 = v121;
        sub_1E487803C();
        (*(v48 + 8))(v47, v49);
      }

      else
      {
        sub_1E477D700(v20);
        v73 = sub_1E476E19C(v29, v20);
        (*(v125 + 8))(v20, v18);
        v74 = sub_1E477F15C();
        v75 = *(sub_1E477DD18() + 56);

        v76 = *(v1 + *(type metadata accessor for EventBackgroundView(0) + 20));
        *&v134 = v73;
        WORD4(v134) = 256;
        *v135 = v74;
        *&v135[8] = v75;
        *&v135[16] = v76;
        *&v135[24] = 256;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAD8, &unk_1E487AFF0);
        v78 = sub_1E477F3CC();
        v125 = v29;
        v79 = v103;
        sub_1E48784AC();
        v136 = v134;
        *v137 = *v135;
        *&v137[10] = *&v135[10];
        sub_1E47738B8(&v136, &qword_1ECF7BAD8, &unk_1E487AFF0);
        v80 = v105;
        v81 = v124;
        (*(v105 + 16))(v122, v79, v124);
        swift_storeEnumTagMultiPayload();
        v82 = sub_1E477F53C();
        *&v134 = v115;
        *(&v134 + 1) = v82;
        swift_getOpaqueTypeConformance2();
        *&v134 = v77;
        *(&v134 + 1) = v78;
        swift_getOpaqueTypeConformance2();
        v83 = v121;
        sub_1E487803C();
        v84 = v79;
        v33 = v125;
        (*(v80 + 8))(v84, v81);
      }

      v85 = &qword_1ECF7BA98;
      v86 = &qword_1E487AFB0;
      sub_1E4773850(v83, v129, &qword_1ECF7BA98, &qword_1E487AFB0);
      swift_storeEnumTagMultiPayload();
      sub_1E477F5F4();
      sub_1E477F8E8();
      sub_1E487803C();
    }

    else
    {
      sub_1E477D5A4();
      sub_1E477D700(v20);
      v34 = (v125 + 8);
      LODWORD(v124) = v32;
      if (v32 == 2)
      {
        v35 = sub_1E476F76C(v29, v20);
        v36 = *v34;
        (*v34)(v20, v18);
        sub_1E477D700(v20);
        v37 = sub_1E476FE00(v29, v20);
      }

      else
      {
        v35 = sub_1E47711F0(v20);
        v36 = *v34;
        (*v34)(v20, v18);
        sub_1E477D700(v20);
        v37 = sub_1E4771208(v20);
      }

      v52 = v37;
      v36(v20, v18);
      CUIKCreateStripedImage();
      sub_1E487873C();

      v53 = v107;
      v54 = v108;
      (*(v107 + 104))(v17, *MEMORY[0x1E6981628], v108);
      v125 = sub_1E487878C();

      (*(v53 + 8))(v17, v54);
      v55 = v109;
      sub_1E477DB10(v109);
      v56 = v110;
      sub_1E487891C();
      v57 = sub_1E48788FC();
      v58 = *(v111 + 8);
      v59 = v56;
      v60 = v112;
      v58(v59, v112);
      v58(v55, v60);
      if (v57)
      {
        v61 = 0.15;
      }

      else
      {
        v61 = *MEMORY[0x1E6993338];
      }

      v33 = v29;
      v83 = v119;
      if (v29[*(v26 + 48)] == 1)
      {
        v62 = v113;
        v63 = v98;
        v64 = &v98[*(v113 + 36)];
        v65 = *MEMORY[0x1E697F470];
        v66 = sub_1E4877F7C();
        (*(*(v66 - 8) + 104))(v64, v65, v66);
        *&v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB08, &qword_1E487B020) + 36)] = 256;
        *v63 = v125;
        *(v63 + 8) = v61;
        v67 = sub_1E477F6F4();

        v68 = v101;
        sub_1E48784AC();
        sub_1E47738B8(v63, &qword_1ECF7BAB8, &qword_1E487AFD0);
        v69 = v102;
        v70 = v117;
        (*(v102 + 16))(v120, v68, v117);
        swift_storeEnumTagMultiPayload();
        *&v136 = v62;
        *(&v136 + 1) = v67;
        swift_getOpaqueTypeConformance2();
        v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB10, &unk_1E487B028);
        v72 = sub_1E477F830();
        *&v136 = v71;
        *(&v136 + 1) = v72;
        swift_getOpaqueTypeConformance2();
        sub_1E487803C();
        (*(v69 + 8))(v68, v70);
      }

      else
      {
        v87 = *(sub_1E477DD18() + 56);

        v88 = *(v1 + *(type metadata accessor for EventBackgroundView(0) + 20));
        *&v136 = v125;
        *(&v136 + 1) = v61;
        *v137 = v87;
        *&v137[8] = v88;
        *&v137[16] = 256;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB10, &unk_1E487B028);
        v90 = sub_1E477F830();
        v91 = v104;
        sub_1E48784AC();
        v92 = v106;
        v93 = v123;
        (*(v106 + 16))(v120, v91, v123);
        swift_storeEnumTagMultiPayload();
        v94 = sub_1E477F6F4();
        *&v136 = v113;
        *(&v136 + 1) = v94;
        swift_getOpaqueTypeConformance2();
        *&v136 = v89;
        *(&v136 + 1) = v90;
        swift_getOpaqueTypeConformance2();
        sub_1E487803C();
        (*(v92 + 8))(v91, v93);
      }

      v38 = v126;
      v85 = &qword_1ECF7BAC8;
      v86 = &qword_1E487AFE0;
      sub_1E4773850(v83, v129, &qword_1ECF7BAC8, &qword_1E487AFE0);
      swift_storeEnumTagMultiPayload();
      sub_1E477F5F4();
      sub_1E477F8E8();
      sub_1E487803C();
    }

    sub_1E47738B8(v83, v85, v86);
    sub_1E47710AC(v33);
    v31 = v133;
    sub_1E475EF10(v38, v133);
    v30 = 0;
  }

  return (*(v131 + 56))(v31, v30, 1, v132);
}

double sub_1E477F15C()
{
  v1 = sub_1E4877CCC();
  v22 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = sub_1E487893C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = v0;
  sub_1E477DB10((&v21 - v12));
  sub_1E487891C();
  v15 = sub_1E48788FC();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  if (v15)
  {
    return 0.15;
  }

  sub_1E477D908(v6);
  sub_1E4877CAC();
  sub_1E477F9E8();
  v18 = sub_1E4878EAC();
  v19 = *(v22 + 8);
  v19(v4, v1);
  v19(v6, v1);
  if (v18)
  {
    return 0.3;
  }

  v20 = type metadata accessor for EventBackgroundView(0);
  result = 0.5;
  if (*(v14 + *(v20 + 24)))
  {
    return 1.0;
  }

  return result;
}

unint64_t sub_1E477F3CC()
{
  result = qword_1EE2B1420;
  if (!qword_1EE2B1420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAD8, &unk_1E487AFF0);
    sub_1E477F484();
    sub_1E4773680(&qword_1EE2B1668, &qword_1ECF7BAF0, &qword_1E487B008, MEMORY[0x1E697DDA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1420);
  }

  return result;
}

unint64_t sub_1E477F484()
{
  result = qword_1EE2B15A0;
  if (!qword_1EE2B15A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAE0, &unk_1E48803E0);
    sub_1E4773680(&qword_1EE2B16C8, &qword_1ECF7BAE8, &qword_1E487B000, MEMORY[0x1E697DB70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15A0);
  }

  return result;
}

unint64_t sub_1E477F53C()
{
  result = qword_1EE2B15A8;
  if (!qword_1EE2B15A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA88, &qword_1E487AFA0);
    sub_1E4773680(&unk_1EE2B16D8, &qword_1ECF7BAF8, &qword_1E487B010, MEMORY[0x1E697DB70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15A8);
  }

  return result;
}

unint64_t sub_1E477F5F4()
{
  result = qword_1EE2B1188;
  if (!qword_1EE2B1188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAC8, &qword_1E487AFE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAB8, &qword_1E487AFD0);
    sub_1E477F6F4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB10, &unk_1E487B028);
    sub_1E477F830();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1188);
  }

  return result;
}

unint64_t sub_1E477F6F4()
{
  result = qword_1EE2B13B0;
  if (!qword_1EE2B13B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAB8, &qword_1E487AFD0);
    sub_1E477F7AC();
    sub_1E4773680(&qword_1EE2B1660, &qword_1ECF7BB08, &qword_1E487B020, MEMORY[0x1E697DDA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13B0);
  }

  return result;
}

unint64_t sub_1E477F7AC()
{
  result = qword_1EE2B14E8;
  if (!qword_1EE2B14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB00, &qword_1E487B018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14E8);
  }

  return result;
}

unint64_t sub_1E477F830()
{
  result = qword_1EE2B13B8;
  if (!qword_1EE2B13B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB10, &unk_1E487B028);
    sub_1E477F7AC();
    sub_1E4773680(&qword_1EE2B1668, &qword_1ECF7BAF0, &qword_1E487B008, MEMORY[0x1E697DDA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13B8);
  }

  return result;
}

unint64_t sub_1E477F8E8()
{
  result = qword_1EE2B1190;
  if (!qword_1EE2B1190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA98, &qword_1E487AFB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA88, &qword_1E487AFA0);
    sub_1E477F53C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAD8, &unk_1E487AFF0);
    sub_1E477F3CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1190);
  }

  return result;
}

unint64_t sub_1E477F9E8()
{
  result = qword_1EE2B5A60;
  if (!qword_1EE2B5A60)
  {
    sub_1E4877CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A60);
  }

  return result;
}

unint64_t sub_1E477FA40()
{
  result = qword_1EE2B1138;
  if (!qword_1EE2B1138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB18, &qword_1E487B038);
    sub_1E477FAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1138);
  }

  return result;
}

unint64_t sub_1E477FAC4()
{
  result = qword_1EE2B1140;
  if (!qword_1EE2B1140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAD0, &qword_1E487AFE8);
    sub_1E477F5F4();
    sub_1E477F8E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1140);
  }

  return result;
}

uint64_t type metadata accessor for Location(uint64_t a1)
{
  result = qword_1EE2B17A8;
  if (!qword_1EE2B17A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E477FBC4(uint64_t a1)
{
  sub_1E487719C();
  if (v1 <= 0x3F)
  {
    sub_1E477FC48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E477FC48()
{
  if (!qword_1EE2B0E20)
  {
    v0 = sub_1E4878E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B0E20);
    }
  }
}

uint64_t sub_1E477FC98(uint64_t a1)
{
  sub_1E487914C();
  sub_1E487719C();
  sub_1E477FFDC(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E4878AAC();
  if (*(v1 + *(a1 + 20) + 8))
  {
    sub_1E487916C();
    sub_1E4878C0C();
  }

  else
  {
    sub_1E487916C();
  }

  return sub_1E487917C();
}

uint64_t sub_1E477FD6C(uint64_t a1, uint64_t a2)
{
  sub_1E487719C();
  sub_1E477FFDC(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E4878AAC();
  if (!*(v2 + *(a2 + 20) + 8))
  {
    return sub_1E487916C();
  }

  sub_1E487916C();

  return sub_1E4878C0C();
}

uint64_t sub_1E477FE40(uint64_t a1, uint64_t a2)
{
  sub_1E487914C();
  sub_1E487719C();
  sub_1E477FFDC(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E4878AAC();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_1E487916C();
    sub_1E4878C0C();
  }

  else
  {
    sub_1E487916C();
  }

  return sub_1E487917C();
}

uint64_t sub_1E477FF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E487715C())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_1E48790EC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E477FFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NarrowEventTitleText(uint64_t a1)
{
  result = qword_1EE2B5608;
  if (!qword_1EE2B5608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4780098(uint64_t a1)
{
  type metadata accessor for Event(319);
  if (v1 <= 0x3F)
  {
    sub_1E4780174(319, &qword_1EE2B0DA0, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      sub_1E4780174(319, &qword_1EE2B1060, MEMORY[0x1E69815B8]);
      if (v3 <= 0x3F)
      {
        sub_1E47801C0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E4780174(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E4878E5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E47801C0(uint64_t a1)
{
  if (!qword_1EE2B1688)
  {
    sub_1E4877B3C();
    v1 = sub_1E4877B4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2B1688);
    }
  }
}

uint64_t sub_1E4780234@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowEventTitleText(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E478043C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v81 = sub_1E4877B3C();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = (&v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = sub_1E487846C();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB30, &qword_1E487B130);
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v78 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB38, &qword_1E487B138);
  MEMORY[0x1EEE9AC00](v82);
  v91 = &v78 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB40, &qword_1E487B140);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v78 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB48, &qword_1E487B148);
  MEMORY[0x1EEE9AC00](v93);
  v83 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB50, &qword_1E487B150);
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v95 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v78 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v89 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v78 - v23;
  sub_1E4878D2C();
  v85 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = *(a1 + *(type metadata accessor for Event(0) + 56));
  v99 = a1;
  if (v24 == 1)
  {
    v25 = sub_1E487874C();
    v26 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v28 = *MEMORY[0x1E69816D0];
    v29 = sub_1E487877C();
    v30 = v26 + v27;
    v31 = v99;
    (*(*(v29 - 8) + 104))(v30, v28, v29);
    *v26 = swift_getKeyPath();
    *v19 = v25;
    v32 = *(v31 + *(type metadata accessor for NarrowEventTitleText(0) + 20));
    KeyPath = swift_getKeyPath();
    v34 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v34 = KeyPath;
    v34[1] = v32;

    v35 = sub_1E487864C();
    v36 = swift_getKeyPath();
    v37 = (v19 + *(v16 + 36));
    *v37 = v36;
    v37[1] = v35;
    v38 = v100;
    sub_1E47811C4(v19, v100);
    (*(v17 + 56))(v38, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v100, 1, 1, v16);
  }

  v101 = sub_1E47CC708();
  v102 = v39;
  sub_1E477A374(v101, v39, v40);
  v41 = sub_1E487848C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = swift_getKeyPath();
  v101 = v41;
  v102 = v43;
  v103 = v45 & 1;
  v104 = v47;
  v105 = v48;
  v106 = 0;
  sub_1E487845C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB58, &unk_1E487F1D0);
  sub_1E4780E40();
  v49 = v99;
  sub_1E487853C();
  (*(v84 + 8))(v5, v86);
  sub_1E477A3C8(v41, v43, v45 & 1);

  v50 = type metadata accessor for NarrowEventTitleText(0);
  v51 = *(v49 + v50[5]);
  v52 = swift_getKeyPath();
  v53 = v91;
  (*(v87 + 32))(v91, v8, v88);
  v54 = (v53 + *(v82 + 36));
  *v54 = v52;
  v54[1] = v51;
  v55 = *(v49 + v50[7]);

  v56 = v55;
  if (!v55)
  {
    v57 = v79;
    sub_1E4780234(v79);
    v56 = sub_1E476EA20(v49, v57);
    (*(v80 + 8))(v57, v81);
  }

  v58 = swift_getKeyPath();
  v59 = v92;
  sub_1E477372C(v53, v92, &qword_1ECF7BB38, &qword_1E487B138);
  v60 = (v59 + *(v90 + 36));
  *v60 = v58;
  v60[1] = v56;
  v61 = v49 + v50[6];
  v62 = *v61;
  v63 = *(v61 + 8);
  v64 = swift_getKeyPath();
  v65 = v83;
  sub_1E477372C(v59, v83, &qword_1ECF7BB40, &qword_1E487B140);
  v66 = v65 + *(v93 + 36);
  *v66 = v64;
  *(v66 + 8) = v62;
  *(v66 + 16) = v63;
  sub_1E4780EF8();

  v67 = v94;
  sub_1E487855C();
  sub_1E475F38C(v65);
  v68 = v100;
  v69 = v89;
  sub_1E4773850(v100, v89, &qword_1ECF7B9D0, &qword_1E487AC00);
  v71 = v95;
  v70 = v96;
  v72 = *(v96 + 16);
  v73 = v97;
  v72(v95, v67, v97);
  v74 = v98;
  sub_1E4773850(v69, v98, &qword_1ECF7B9D0, &qword_1E487AC00);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB78, &qword_1E487B240);
  v72((v74 + *(v75 + 48)), v71, v73);
  v76 = *(v70 + 8);
  v76(v67, v73);
  sub_1E478115C(v68);
  v76(v71, v73);
  sub_1E478115C(v69);
}

uint64_t sub_1E4780DEC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4877F4C();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB28, &qword_1E487B128);
  return sub_1E478043C(v2, a2 + *(v4 + 44));
}

unint64_t sub_1E4780E40()
{
  result = qword_1EE2B1568;
  if (!qword_1EE2B1568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB58, &unk_1E487F1D0);
    sub_1E4773680(&qword_1EE2B10C0, &qword_1ECF7BB60, &qword_1E487B190, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1568);
  }

  return result;
}

unint64_t sub_1E4780EF8()
{
  result = qword_1EE2B1318;
  if (!qword_1EE2B1318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB48, &qword_1E487B148);
    sub_1E4780FB0();
    sub_1E4773680(&qword_1EE2B5A48, &qword_1ECF7B938, &qword_1E487AB40, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1318);
  }

  return result;
}

unint64_t sub_1E4780FB0()
{
  result = qword_1EE2B13E8;
  if (!qword_1EE2B13E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB40, &qword_1E487B140);
    sub_1E4781068();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13E8);
  }

  return result;
}

unint64_t sub_1E4781068()
{
  result = qword_1EE2B1540;
  if (!qword_1EE2B1540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB38, &qword_1E487B138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB58, &unk_1E487F1D0);
    sub_1E4780E40();
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A50, &qword_1ECF7BB68, &qword_1E487C5A0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1540);
  }

  return result;
}

uint64_t sub_1E478115C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E47811C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E478127C(uint64_t a1)
{
  sub_1E4771D30();
  if (v1 <= 0x3F)
  {
    sub_1E487736C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E478138C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47813C4(uint64_t a1)
{
  type metadata accessor for ColorBarView.Styling(319);
  if (v1 <= 0x3F)
  {
    sub_1E4781498(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
    if (v2 <= 0x3F)
    {
      sub_1E4781498(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4781498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E4781514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1E487736C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_1E4781588()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 16) & 1) == 0)
  {
    return *(v0 + 8);
  }

  v5 = (v0 + *(type metadata accessor for ColorBarView(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 64);

  return v10;
}

double sub_1E47816FC()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    v5 = (v0 + *(type metadata accessor for ColorBarView(0) + 24));
    v6 = *v5;
    v7 = *(v5 + 8);

    if ((v7 & 1) == 0)
    {
      v8 = sub_1E4878DDC();
      v9 = sub_1E48780FC();
      sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1E4877F0C();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v6 = v12[1];
    }

    v10 = *(v6 + 64);
  }

  else
  {
    v10 = *(v0 + 8);
  }

  return v10 * 0.5;
}

uint64_t sub_1E4781874@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for ColorBarView(0);
  sub_1E4773850(v1 + *(v10 + 20), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1E4781A7C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorBarView(0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E4877CCC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  sub_1E4781874((&v28 - v11));
  sub_1E4877CAC();
  sub_1E4782894(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v13 = sub_1E4878EAC();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if (v13 & 1) != 0 && (*(v2 + 48))
  {
    v15 = 0.16;
  }

  else
  {
    v15 = 1.0;
  }

  sub_1E47828DC(v2, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v17 = swift_allocObject();
  sub_1E4782940(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  sub_1E4781588();
  sub_1E487889C();
  sub_1E4877BCC();
  v18 = v31;
  v19 = v33;
  v20 = v35;
  v21 = v36;
  v30 = v32;
  v29 = v34;
  LOBYTE(v16) = sub_1E487819C();
  sub_1E4877B0C();
  v22 = v30;
  v23 = v29;
  *a1 = sub_1E47829A4;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v22;
  *(a1 + 32) = v19;
  *(a1 + 40) = v23;
  *(a1 + 48) = v20;
  *(a1 + 56) = v21;
  *(a1 + 64) = v16;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  *(a1 + 96) = v27;
  *(a1 + 104) = 0;
}

uint64_t sub_1E4781D6C(uint64_t a1, double *a2, double a3)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_1E4877FAC();
  v9 = 0;
  sub_1E4781F4C(a2, __src, a3);
  memcpy(__dst, __src, 0x12AuLL);
  memcpy(v11, __src, 0x12AuLL);
  sub_1E4773850(__dst, v7, &qword_1ECF7BBA0, &qword_1E487B3F8);
  sub_1E47738B8(v11, &qword_1ECF7BBA0, &qword_1E487B3F8);
  memcpy(&v8[7], __dst, 0x12AuLL);
  v7[0] = v5;
  v7[1] = 0;
  LOBYTE(v7[2]) = v9;
  memcpy(&v7[2] + 1, v8, 0x131uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBA8, &qword_1E487B400);
  sub_1E4773680(&qword_1EE2B0EE0, &qword_1ECF7BBA8, &qword_1E487B400, MEMORY[0x1E6981868]);
  sub_1E48784AC();
  memcpy(__src, v7, 0x142uLL);
  sub_1E47738B8(__src, &qword_1ECF7BBA8, &qword_1E487B400);
}

uint64_t sub_1E4781F4C@<X0>(double *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  sub_1E4781588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBB0, &qword_1E487B408);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E487A7F0;
  *(v5 + 32) = 0;
  v6 = sub_1E4781588();
  *(v5 + 40) = v6 + v6;
  sub_1E4877BEC();
  v7 = a1[4];
  sub_1E47816FC();
  sub_1E4877B5C();
  v8 = *(&v83 + 1);
  v26 = v83;
  v9 = v84;
  v10 = v85;

  v11 = sub_1E487889C();
  v25 = v12;
  sub_1E4781588();
  sub_1E487889C();
  sub_1E4877BCC();
  v13 = sub_1E47816FC();
  v14 = *(a1 + 3);
  sub_1E4781588();
  sub_1E4877B5C();
  v15 = v86;
  v23 = HIDWORD(v86);
  v24 = DWORD2(v86);
  v22 = v87;
  v16 = v88;

  v17 = sub_1E487889C();
  v21 = v18;
  sub_1E4781588();
  sub_1E4877BEC();
  sub_1E487889C();
  sub_1E4877BCC();
  v19 = sub_1E47816FC();
  v36[0] = v83;
  v36[1] = v84;
  *&v37 = v85;
  *(&v37 + 1) = v4;
  LOWORD(v38) = 256;
  *(&v38 + 1) = v11;
  *&v39 = v25;
  *(&v39 + 1) = a3;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  *&v43 = v13;
  *(&v43 + 1) = v14 & 1;
  __src[7] = v35;
  __src[8] = v43;
  __src[5] = v33;
  __src[6] = v34;
  __src[0] = v83;
  __src[1] = v84;
  __src[3] = v38;
  __src[4] = v39;
  __src[2] = v37;
  v45[0] = v86;
  v45[1] = v87;
  *&v46 = v88;
  *(&v46 + 1) = v4;
  LOWORD(v47) = 256;
  *(&v47 + 1) = v17;
  *&v48 = v21;
  v49 = v30;
  v50 = v31;
  v51 = v32;
  *(&v48 + 1) = a3;
  *&v52 = v19;
  *(&v52 + 1) = v14 | (v7 > 0.0);
  *(&__src[16] + 8) = v32;
  *(&__src[17] + 8) = v52;
  *(&__src[10] + 8) = v87;
  *(&__src[13] + 8) = v48;
  *(&__src[12] + 8) = v47;
  v44 = 256;
  LOWORD(__src[9]) = 256;
  v53 = 256;
  *(&__src[11] + 8) = v46;
  WORD4(__src[18]) = 256;
  *(&__src[9] + 8) = v86;
  *(&__src[14] + 8) = v30;
  *(&__src[15] + 8) = v31;
  memcpy(a2, __src, 0x12AuLL);
  v54 = v15;
  v55 = v24;
  v56 = v23;
  v57 = v22;
  v58 = v16;
  v59 = v4;
  v60 = 256;
  v61 = v17;
  v62 = v21;
  v63 = a3;
  v64 = v30;
  v65 = v31;
  v66 = v32;
  v67 = v19;
  v68 = v14 | (v7 > 0.0);
  v69 = 256;
  sub_1E4773850(v36, v70, &qword_1ECF7BBB8, &qword_1E487B410);
  sub_1E4773850(v45, v70, &qword_1ECF7BBB8, &qword_1E487B410);
  sub_1E47738B8(&v54, &qword_1ECF7BBB8, &qword_1E487B410);
  v70[0] = __PAIR128__(v8, v26);
  v70[1] = v9;
  v71 = v10;
  v72 = v4;
  v73 = 256;
  v74 = v11;
  v75 = v25;
  v77 = v33;
  v78 = v34;
  v79 = v35;
  v76 = a3;
  v80 = v13;
  v81 = v14 & 1;
  v82 = 256;
  sub_1E47738B8(v70, &qword_1ECF7BBB8, &qword_1E487B410);
}

double sub_1E4782498@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1E487835C();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMaxY(v15);
  sub_1E487833C();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMidX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  sub_1E487834C();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t (*sub_1E4782598(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E4877AEC();
  return sub_1E4782620;
}

void sub_1E4782620(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E478266C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4782E34(a1, a2, a3);

  return MEMORY[0x1EEDE4448](a1, a2, a3, v6);
}

uint64_t sub_1E47826D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4782E34(a1, a2, a3);

  return MEMORY[0x1EEDE43E8](a1, a2, a3, v6);
}

uint64_t sub_1E4782734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E4782E34(a1, a2, a3);

  return MEMORY[0x1EEDE4408](a1, v4);
}

uint64_t sub_1E47827A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E487814C();
  sub_1E4877B0C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB88, &qword_1E487B3D8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB90, &qword_1E487B3E0) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB98, &unk_1E487B3E8);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1E4782894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47828DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorBarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4782940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorBarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47829A4(uint64_t a1)
{
  v3 = *(type metadata accessor for ColorBarView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E4781D6C(a1, (v1 + v4), v5);
}

unint64_t sub_1E4782A60()
{
  result = qword_1EE2B1428;
  if (!qword_1EE2B1428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB98, &unk_1E487B3E8);
    sub_1E4782AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1428);
  }

  return result;
}

unint64_t sub_1E4782AEC()
{
  result = qword_1EE2B15B0;
  if (!qword_1EE2B15B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB90, &qword_1E487B3E0);
    sub_1E4773680(&qword_1EE2B1100, &qword_1ECF7BB88, &qword_1E487B3D8, MEMORY[0x1E697FDF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15B0);
  }

  return result;
}

unint64_t sub_1E4782BA4()
{
  result = qword_1EE2B1408;
  if (!qword_1EE2B1408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BBC0, &qword_1E487B428);
    sub_1E4782C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1408);
  }

  return result;
}

unint64_t sub_1E4782C30()
{
  result = qword_1EE2B1580;
  if (!qword_1EE2B1580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BBC8, &qword_1E487B430);
    sub_1E4773680(&qword_1EE2B1630, &qword_1ECF7BBD0, &qword_1E487B438, MEMORY[0x1E697E370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1580);
  }

  return result;
}

unint64_t sub_1E4782D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7BBE8;
  if (!qword_1ECF7BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BBE8);
  }

  return result;
}

unint64_t sub_1E4782D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B3D30[0];
  if (!qword_1EE2B3D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B3D30);
  }

  return result;
}

unint64_t sub_1E4782DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B3D28;
  if (!qword_1EE2B3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B3D28);
  }

  return result;
}

unint64_t sub_1E4782E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7BBF0;
  if (!qword_1ECF7BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BBF0);
  }

  return result;
}

uint64_t type metadata accessor for ExtraLargeSpatialContentView(uint64_t a1)
{
  result = qword_1EE2B1F30;
  if (!qword_1EE2B1F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4782F00(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47830AC(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E47830AC(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E478305C();
        if (v4 <= 0x3F)
        {
          sub_1E47830AC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E478305C()
{
  if (!qword_1EE2B1670)
  {
    v0 = sub_1E4877B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B1670);
    }
  }
}

void sub_1E47830AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E478312C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ExtraLargeSpatialContentView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E4783284()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ExtraLargeSpatialContentView(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E47833D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MultiDaySpatialView(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC00, &qword_1E487B5C0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_1E487732C();
  (*(*(v10 - 8) + 16))(v6, v1, v10);
  v11 = *(v1 + *(type metadata accessor for ExtraLargeSpatialContentView(0) + 20));
  *&v6[v4[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *&v6[v4[7]] = v11;
  *&v6[v4[8]] = 4;
  v6[v4[9]] = 1;
  v13 = &v6[v4[11]];
  *v13 = KeyPath;
  v13[8] = 0;

  v14 = sub_1E487813C();
  if (sub_1E478312C())
  {
    sub_1E4783284();
  }

  sub_1E4877B0C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1E47836C4(v6, v9);
  v23 = &v9[*(v7 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = *MEMORY[0x1E697F638];
  v25 = sub_1E4877F9C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(a1, v24, v25);
  (*(v26 + 56))(a1, 0, 1, v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC08, &qword_1E487FE80);
  sub_1E4783728(v9, a1 + *(v27 + 36));
  *(a1 + *(v27 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E47836C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiDaySpatialView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4783728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC00, &qword_1E487B5C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4783798()
{
  result = qword_1ECF7BC18;
  if (!qword_1ECF7BC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BC08, &qword_1E487FE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BC18);
  }

  return result;
}

void sub_1E4783844(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47889A4(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E47889A4(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E47889A4(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E47839BC@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for MultiDaySpatialView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1E4783BC4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for MultiDaySpatialView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 32);

  return v10;
}

uint64_t sub_1E4783D28()
{
  v4 = sub_1E487753C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DayEvents(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MultiDaySpatialView(0);
  v13 = *(v1 + *(v12 + 20));
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v1 + *(v12 + 24));
  v2 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  sub_1E4784E18(v13 + v2, v11, type metadata accessor for DayEvents);
  sub_1E47839BC(v7);
  v9 = sub_1E4842D5C(v1, v11, v7);
  v0 = *(v5 + 8);
  v0(v7, v4);
  sub_1E4788C7C(v11, type metadata accessor for DayEvents);
  v11 = *(v9 + 16);

  if (__OFSUB__(v3, v11))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = sub_1E47F8C54(v3 - v11, v13, v13 + v2, *(v13 + 16) != 0, (2 * *(v13 + 16)) | 1);
  v9 = v14;
  v2 = v15;
  v3 = v16;
  if ((v16 & 1) == 0)
  {

LABEL_5:
    sub_1E4860ED0(v11, v9, v2, v3);
    v18 = v17;
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v24 = v4;
  sub_1E487910C();
  swift_unknownObjectRetain_n();

  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_16;
  }

  if (v20 != (v3 >> 1) - v2)
  {
LABEL_17:
    swift_unknownObjectRelease();
    v4 = v24;
    goto LABEL_5;
  }

  v18 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v4 = v24;
  if (!v18)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_13:
  sub_1E47839BC(v7);
  v21 = sub_1E483F168(v18, v7);

  v0(v7, v4);
  return v21;
}

void sub_1E478403C()
{
  v1 = sub_1E487753C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DayEvents(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MultiDaySpatialView(0);
  v10 = *(v0 + *(v9 + 20));
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v11 = v9;
  sub_1E4784E18(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v8, type metadata accessor for DayEvents);
  sub_1E47839BC(v4);
  v12 = sub_1E4842D5C(v0, v8, v4);
  (*(v2 + 8))(v4, v1);
  sub_1E4788C7C(v8, type metadata accessor for DayEvents);
  v13 = *(v12 + 16);

  v14 = *(v0 + *(v11 + 24));
  if (v13 != v14)
  {
    sub_1E4783BC4();
  }

  if (v13 == 1 && *(v0 + *(v11 + 28)) == 1 && __OFSUB__(v14, 1))
  {
    goto LABEL_10;
  }
}

uint64_t sub_1E4784270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1E4783BC4();
  *a3 = sub_1E4877F6C();
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC20, &qword_1E487B6F0);
  sub_1E4784364(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_1E4784364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v65 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC28, &qword_1E487B6F8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = v59 - v7;
  v8 = sub_1E487753C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DayEvents(0);
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC30, &qword_1E487B700);
  v61 = *(v67 - 8);
  v15 = MEMORY[0x1EEE9AC00](v67);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v59 - v18;
  sub_1E4878D2C();
  v63 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = sub_1E487732C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v59[1] = v21 + 16;
  v22(v19, a1, v20);
  result = type metadata accessor for MultiDaySpatialView(0);
  v24 = *(a1 + *(result + 20));
  if (*(v24 + 16))
  {
    v25 = result;
    v59[0] = v22;
    sub_1E4784E18(v24 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v14, type metadata accessor for DayEvents);
    sub_1E47839BC(v11);
    v26 = sub_1E4842D5C(a1, v14, v11);
    (*(v9 + 8))(v11, v8);
    sub_1E4788C7C(v14, type metadata accessor for DayEvents);
    v27 = *(a1 + *(v25 + 24));
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v30 = type metadata accessor for DayGroup(0);
    *&v19[v30[5]] = v26;
    v19[v30[6]] = 0;
    v31 = v30[7];
    LODWORD(v60) = v27 > 2;
    v19[v31] = v60;
    *&v19[v30[8]] = v27;
    v32 = &v19[v30[9]];
    *v32 = KeyPath;
    v32[8] = 0;
    v33 = &v19[v30[10]];
    *v33 = v29;
    v33[8] = 0;
    v34 = &v19[v30[11]];
    *&v69 = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC38, &qword_1E487B760);
    sub_1E48787FC();
    v35 = *(&v72 + 1);
    *v34 = v72;
    *(v34 + 1) = v35;
    v36 = &v19[v30[12]];
    *&v69 = 0;
    sub_1E48787FC();
    v37 = *(&v72 + 1);
    *v36 = v72;
    *(v36 + 1) = v37;
    sub_1E4877BEC();
    sub_1E478403C();
    sub_1E487889C();
    v38 = 1;
    sub_1E4877BCC();
    v39 = v67;
    v40 = &v19[*(v67 + 36)];
    v41 = v70;
    *v40 = v69;
    *(v40 + 1) = v41;
    *(v40 + 2) = v71;
    v42 = *(sub_1E4783D28() + 16);

    if (v42)
    {
      (v59[0])(v17, a1, v20);
      v43 = sub_1E4783D28();
      v44 = *(sub_1E4783D28() + 16);

      v45 = swift_getKeyPath();
      v46 = swift_getKeyPath();
      *&v17[v30[5]] = v43;
      v17[v30[6]] = 1;
      v17[v30[7]] = v60;
      *&v17[v30[8]] = v44;
      v39 = v67;
      v47 = &v17[v30[9]];
      *v47 = v45;
      v47[8] = 0;
      v48 = &v17[v30[10]];
      *v48 = v46;
      v48[8] = 0;
      v49 = &v17[v30[11]];
      v68 = MEMORY[0x1E69E7CC8];
      sub_1E48787FC();
      v50 = *(&v72 + 1);
      *v49 = v72;
      *(v49 + 1) = v50;
      v51 = &v17[v30[12]];
      v68 = 0;
      sub_1E48787FC();
      v52 = *(&v72 + 1);
      *v51 = v72;
      *(v51 + 1) = v52;
      sub_1E4877BEC();
      sub_1E4783BC4();
      sub_1E4877BEC();
      sub_1E478403C();
      sub_1E487889C();
      sub_1E4877BCC();
      v53 = &v17[*(v39 + 36)];
      v54 = v73;
      *v53 = v72;
      *(v53 + 1) = v54;
      *(v53 + 2) = v74;
      v55 = v64;
      sub_1E477372C(v17, v64, &qword_1ECF7BC30, &qword_1E487B700);
      v38 = 0;
    }

    else
    {
      v55 = v64;
    }

    (*(v61 + 56))(v55, v38, 1, v39);
    sub_1E4773850(v19, v17, &qword_1ECF7BC30, &qword_1E487B700);
    v56 = v66;
    sub_1E4773850(v55, v66, &qword_1ECF7BC28, &qword_1E487B6F8);
    v57 = v65;
    sub_1E4773850(v17, v65, &qword_1ECF7BC30, &qword_1E487B700);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC40, &qword_1E487B768);
    sub_1E4773850(v56, v57 + *(v58 + 48), &qword_1ECF7BC28, &qword_1E487B6F8);
    sub_1E47738B8(v55, &qword_1ECF7BC28, &qword_1E487B6F8);
    sub_1E47738B8(v19, &qword_1ECF7BC30, &qword_1E487B700);
    sub_1E47738B8(v56, &qword_1ECF7BC28, &qword_1E487B6F8);
    sub_1E47738B8(v17, &qword_1ECF7BC30, &qword_1E487B700);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1E4784B28()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for DayGroup(0) + 36));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  v8 = sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v10[1];
}

uint64_t sub_1E4784C84@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1E4784E18(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MultiDaySpatialView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1E4788B44(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for MultiDaySpatialView);
  *a2 = sub_1E4784D98;
  a2[1] = v7;
  return result;
}

uint64_t sub_1E4784D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultiDaySpatialView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4784270(a1, v6, a2);
}

uint64_t sub_1E4784E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1E4784E80()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for DayGroup(0) + 40));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 32);

  return v10;
}

uint64_t sub_1E4784FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC70, &qword_1E487B850);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v39[0] = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC78, &qword_1E487B858);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC80, &qword_1E487B860);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v40 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v39 - v17;
  sub_1E4878D2C();
  v39[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v18 = sub_1E4877F6C();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC88, &qword_1E487B868);
  sub_1E478543C(a1, &v18[*(v19 + 44)]);
  v20 = sub_1E487816C();
  sub_1E4877B0C();
  v21 = &v18[*(v14 + 36)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  *v13 = sub_1E4877F6C();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC90, &qword_1E487B870);
  sub_1E4785F24(a1, &v13[*(v26 + 44)]);
  v27 = sub_1E487816C();
  sub_1E4877B0C();
  v28 = &v13[*(v8 + 36)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  *v7 = sub_1E4877F6C();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC98, &qword_1E487B878);
  sub_1E478729C(a1, &v7[*(v33 + 44)]);
  v34 = v40;
  sub_1E4773850(v18, v40, &qword_1ECF7BC80, &qword_1E487B860);
  sub_1E4773850(v13, v11, &qword_1ECF7BC78, &qword_1E487B858);
  v35 = v39[0];
  sub_1E4773850(v7, v39[0], &qword_1ECF7BC70, &qword_1E487B850);
  v36 = v41;
  sub_1E4773850(v34, v41, &qword_1ECF7BC80, &qword_1E487B860);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCA0, &qword_1E487B880);
  sub_1E4773850(v11, v36 + *(v37 + 48), &qword_1ECF7BC78, &qword_1E487B858);
  sub_1E4773850(v35, v36 + *(v37 + 64), &qword_1ECF7BC70, &qword_1E487B850);
  sub_1E47738B8(v7, &qword_1ECF7BC70, &qword_1E487B850);
  sub_1E47738B8(v13, &qword_1ECF7BC78, &qword_1E487B858);
  sub_1E47738B8(v18, &qword_1ECF7BC80, &qword_1E487B860);
  sub_1E47738B8(v35, &qword_1ECF7BC70, &qword_1E487B850);
  sub_1E47738B8(v11, &qword_1ECF7BC78, &qword_1E487B858);
  sub_1E47738B8(v34, &qword_1ECF7BC80, &qword_1E487B860);
}

uint64_t sub_1E478543C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD80, &qword_1E487BA78);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v22 - v8);
  sub_1E4878D2C();
  v26 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for DayGroup(0);
  if (*(a1 + v10[6]) == 1 && *(*(a1 + v10[5]) + 16) >= 2uLL)
  {
    v11 = (a1 + v10[12]);
    v12 = *v11;
    v13 = v11[1];
    v31 = v12;
    v32 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
    sub_1E487880C();
    sub_1E487889C();
    sub_1E4877BCC();
    v24 = 0;
    v25 = v31;
    v14 = v36;
    v22 = v35;
    v23 = v33;
    v30 = 0;
    v29 = v32;
    v28 = v34;
    v15 = v32;
    v16 = v34;
    LOBYTE(v27) = 0;
  }

  else
  {
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 0;
    v24 = 1;
  }

  v17 = sub_1E4877F5C();
  v18 = sub_1E4784E80();
  *v9 = v17;
  v9[1] = v18;
  *(v9 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD88, &qword_1E487BA80);
  sub_1E4785718(a1);
  sub_1E4773850(v9, v7, &qword_1ECF7BD80, &qword_1E487BA78);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v25;
  *(a2 + 24) = v15;
  v19 = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v16;
  *(a2 + 48) = v19;
  *(a2 + 56) = v14;
  *(a2 + 64) = v24;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD90, &qword_1E487BA88);
  sub_1E4773850(v7, a2 + *(v20 + 48), &qword_1ECF7BD80, &qword_1E487BA78);
  sub_1E47738B8(v9, &qword_1ECF7BD80, &qword_1E487BA78);
  sub_1E47738B8(v7, &qword_1ECF7BD80, &qword_1E487BA78);
}

uint64_t sub_1E4785718(uint64_t a1)
{
  v2 = type metadata accessor for DayGroup(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *(v2 + 20));
  v11[1] = sub_1E4788220(0, *(v6 + 16), v6);
  swift_getKeyPath();
  sub_1E4784E18(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DayGroup);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1E4788B44(v5, v8 + v7, type metadata accessor for DayGroup);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E4789258;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC8, &qword_1E487B8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD98, &qword_1E487BA90);
  sub_1E4773680(&qword_1EE2B0DB8, &qword_1ECF7BCC8, &qword_1E487B8C8, MEMORY[0x1E69E6338]);
  sub_1E4788F70(&qword_1EE2B1438, &qword_1ECF7BD98, &qword_1E487BA90, sub_1E47892DC);
  sub_1E487885C();
}

uint64_t sub_1E47859CC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a2;
  v44[2] = a4;
  v6 = sub_1E48782AC();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E487732C();
  v11 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SpatialHeaderView(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDA0, &qword_1E487BA98);
  MEMORY[0x1EEE9AC00](v47);
  v18 = v44 - v17;
  sub_1E4878D2C();
  v44[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v11 + 16))(v13, a3, v51);
  v19 = v45;
  v45 = v10;
  sub_1E4784E18(v19, v10, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
  v20 = type metadata accessor for DayGroup(0);
  v21 = (a3 + v20[11]);
  v23 = *v21;
  v22 = v21[1];
  *&v53 = v23;
  *(&v53 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD18, &qword_1E487B918);
  sub_1E487880C();
  v24 = v52;
  v25 = *(v52 + 16);
  v50 = a1;
  v26 = a3;
  if (v25 && (v27 = sub_1E481DD30(a1), (v28 & 1) != 0))
  {
    v29 = 0;
    v30 = *(*(v24 + 56) + 8 * v27);
  }

  else
  {
    v30 = 0;
    v29 = 1;
  }

  v31 = *(v26 + v20[7]);
  (*(v11 + 32))(v16, v13, v51);
  sub_1E4788B44(v45, &v16[v14[5]], type metadata accessor for TimeScalingEngine.SpatialViewParameters);
  v32 = &v16[v14[6]];
  *v32 = v30;
  v32[8] = v29;
  v16[v14[7]] = v31;
  v33 = v14[8];
  sub_1E48782DC();
  v35 = v48;
  v34 = v49;
  v36 = v46;
  (*(v48 + 104))(v46, *MEMORY[0x1E6980EA0], v49);
  sub_1E48782CC();

  (*(v35 + 8))(v36, v34);
  v37 = sub_1E48781FC();

  *&v16[v33] = v37;
  sub_1E487889C();
  sub_1E4877CEC();
  result = sub_1E4788B44(v16, v18, type metadata accessor for SpatialHeaderView);
  v39 = &v18[*(v47 + 36)];
  v40 = v54;
  *v39 = v53;
  *(v39 + 1) = v40;
  v41 = v59;
  v42 = v57;
  *(v39 + 5) = v58;
  *(v39 + 6) = v41;
  v43 = v56;
  *(v39 + 2) = v55;
  *(v39 + 3) = v43;
  *(v39 + 4) = v42;
  if (__OFSUB__(*(v26 + v20[8]), v50))
  {
    __break(1u);
  }

  else
  {
    sub_1E47892DC();
    sub_1E48785BC();
    sub_1E47738B8(v18, &qword_1ECF7BDA0, &qword_1E487BA98);
  }

  return result;
}

uint64_t sub_1E4785F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD30, &unk_1E487B990);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&KeyPath - v6);
  v8 = type metadata accessor for DayGroup(0);
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = v9;
  v49 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD38, &qword_1E48827C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &KeyPath - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD40, &qword_1E487B9A0);
  v13 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v15 = &KeyPath - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD48, &qword_1E487B9A8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &KeyPath - v20;
  sub_1E4878D2C();
  v51 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(v8 + 24)) == 1 && (v22 = *(a1 + *(v8 + 20)), *(v22 + 16) >= 2uLL))
  {
    v23 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
    v24 = *(v23 - 8);
    v23 -= 8;
    v25 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v26 = *(v25 + *(v23 + 28));
    v45 = *(v25 + *(v23 + 32));
    v46 = v26;
    KeyPath = swift_getKeyPath();
    v27 = swift_getKeyPath();
    v28 = type metadata accessor for TimelineHoursView(0);
    *&v15[v28[7]] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v15[v28[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v29 = v45;
    *v15 = v46;
    *(v15 + 1) = v29;
    *(v15 + 2) = KeyPath;
    v15[24] = 0;
    v30 = v28[9];
    v31 = sub_1E487821C();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    sub_1E487828C();
    sub_1E47738B8(v12, &qword_1ECF7BD38, &qword_1E48827C0);
    v32 = sub_1E48781FC();

    *&v15[v30] = v32;
    v33 = v49;
    sub_1E4784E18(a1, v49, type metadata accessor for DayGroup);
    v34 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v35 = swift_allocObject();
    sub_1E4788B44(v33, v35 + v34, type metadata accessor for DayGroup);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1E4788E18;
    *(v36 + 24) = v35;
    v37 = v50;
    v38 = &v15[*(v50 + 36)];
    *v38 = sub_1E4872280;
    *(v38 + 1) = 0;
    *(v38 + 2) = sub_1E4788E90;
    *(v38 + 3) = v36;
    sub_1E477372C(v15, v21, &qword_1ECF7BD40, &qword_1E487B9A0);
    (*(v13 + 56))(v21, 0, 1, v37);
  }

  else
  {
    (*(v13 + 56))(v21, 1, 1, v50);
  }

  v39 = sub_1E4784E80();
  *v7 = sub_1E4877F6C();
  v7[1] = v39;
  *(v7 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD50, &qword_1E487B9B0);
  sub_1E4786660(a1);
  sub_1E4773850(v21, v19, &qword_1ECF7BD48, &qword_1E487B9A8);
  v40 = v53;
  sub_1E4773850(v7, v53, &qword_1ECF7BD30, &unk_1E487B990);
  v41 = v52;
  sub_1E4773850(v19, v52, &qword_1ECF7BD48, &qword_1E487B9A8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD58, &qword_1E487B9B8);
  sub_1E4773850(v40, v41 + *(v42 + 48), &qword_1ECF7BD30, &unk_1E487B990);
  sub_1E47738B8(v7, &qword_1ECF7BD30, &unk_1E487B990);
  sub_1E47738B8(v21, &qword_1ECF7BD48, &qword_1E487B9A8);
  sub_1E47738B8(v40, &qword_1ECF7BD30, &unk_1E487B990);
  sub_1E47738B8(v19, &qword_1ECF7BD48, &qword_1E487B9A8);
}

uint64_t sub_1E47865D8(uint64_t a1, double a2)
{
  sub_1E4784B28();
  type metadata accessor for DayGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
  return sub_1E487881C();
}

uint64_t sub_1E4786660(uint64_t a1)
{
  v2 = type metadata accessor for DayGroup(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *(v2 + 20));
  v11[1] = sub_1E4788220(0, *(v6 + 16), v6);
  swift_getKeyPath();
  sub_1E4784E18(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DayGroup);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1E4788B44(v5, v8 + v7, type metadata accessor for DayGroup);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E4788EBC;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC8, &qword_1E487B8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD60, &qword_1E487BA58);
  sub_1E4773680(&qword_1EE2B0DB8, &qword_1ECF7BCC8, &qword_1E487B8C8, MEMORY[0x1E69E6338]);
  sub_1E4788F70(&qword_1EE2B1338, &qword_1ECF7BD60, &qword_1E487BA58, sub_1E4789024);
  sub_1E487885C();
}

uint64_t sub_1E4786914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a1;
  v48[2] = a4;
  v59 = type metadata accessor for DayGroup(0);
  v53 = *(v59 - 1);
  MEMORY[0x1EEE9AC00](v59);
  v54 = v6;
  v56 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DayEvents(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E487732C();
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SpatialDayView(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD70, &qword_1E487BA68);
  MEMORY[0x1EEE9AC00](v51);
  v52 = v48 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD68, &qword_1E487BA60);
  MEMORY[0x1EEE9AC00](v55);
  v18 = v48 - v17;
  sub_1E4878D2C();
  v48[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v10 + 16))(v12, a3, v58);
  v50 = v9;
  sub_1E4784E18(a2, v9, type metadata accessor for DayEvents);
  v19 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
  v20 = *(a2 + *(v19 + 20));
  v21 = *(a2 + *(v19 + 24));
  v22 = *(a3 + v59[6]);
  v23 = a3;
  v24 = 1;
  if (v22)
  {
    v24 = *(*(v23 + v59[5]) + 16) < 2uLL && v57 == 0;
  }

  v49 = v23;
  *&v15[v13[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *&v15[v13[11]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v27 = swift_getKeyPath();
  (*(v10 + 32))(v15, v12, v58);
  sub_1E4788B44(v50, &v15[v13[5]], type metadata accessor for DayEvents);
  *&v15[v13[6]] = v20;
  *&v15[v13[7]] = v21;
  v15[v13[8]] = v24;
  v28 = &v15[v13[10]];
  *v28 = KeyPath;
  v28[8] = 0;
  v29 = &v15[v13[12]];
  *v29 = v27;
  v29[8] = 0;
  v30 = &v15[v13[13]];
  type metadata accessor for CGRect(0);
  v60 = 0u;
  v61 = 0u;
  sub_1E48787FC();
  v31 = v64;
  v32 = v63;
  *v30 = v62;
  *(v30 + 1) = v32;
  *(v30 + 4) = v31;
  v33 = &v15[v13[14]];
  *&v60 = 0;
  sub_1E48787FC();
  v34 = *(&v62 + 1);
  *v33 = v62;
  *(v33 + 1) = v34;
  sub_1E48783CC();
  v35 = v49;
  v36 = v56;
  sub_1E4784E18(v49, v56, type metadata accessor for DayGroup);
  v37 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v38 = (v54 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_1E4788B44(v36, v39 + v37, type metadata accessor for DayGroup);
  v40 = v57;
  *(v39 + v38) = v57;
  v41 = v52;
  sub_1E4788B44(v15, v52, type metadata accessor for SpatialDayView);
  v42 = (v41 + *(v51 + 36));
  *v42 = sub_1E4789198;
  v42[1] = v39;
  sub_1E487889C();
  sub_1E4877CEC();
  result = sub_1E477372C(v41, v18, &qword_1ECF7BD70, &qword_1E487BA68);
  v44 = &v18[*(v55 + 36)];
  v45 = v63;
  *v44 = v62;
  *(v44 + 1) = v45;
  v46 = v68;
  *(v44 + 5) = v67;
  *(v44 + 6) = v46;
  v47 = v66;
  *(v44 + 3) = v65;
  *(v44 + 4) = v47;
  *(v44 + 2) = v64;
  if (__OFSUB__(*(v35 + v59[8]), v40))
  {
    __break(1u);
  }

  else
  {
    sub_1E4789024();
    sub_1E48785BC();
    sub_1E47738B8(v18, &qword_1ECF7BD68, &qword_1E487BA60);
  }

  return result;
}

uint64_t sub_1E4787038(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v8[2] = a2;
  v8[3] = v5;
  v8[4] = a3;
  sub_1E4822780(sub_1E4789234, v8, "CalendarWidget/MultidaySpatialView.swift", 40, 2u, 162);
}

uint64_t sub_1E4787144(uint64_t a1, uint64_t a2, double a3)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_1E4784B28();
  v6 = round(v5 * a3) / v5;
  type metadata accessor for DayGroup(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD18, &qword_1E487B918);
  sub_1E487880C();
  sub_1E47880D4(a2, v6);
  sub_1E487881C();
}

uint64_t sub_1E478729C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCA8, &qword_1E487B888);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v21 - v8);
  sub_1E4878D2C();
  v25 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for DayGroup(0);
  if (*(a1 + v10[6]) == 1 && *(*(a1 + v10[5]) + 16) >= 2uLL)
  {
    v11 = (a1 + v10[12]);
    v12 = *v11;
    v13 = v11[1];
    v30 = v12;
    v31 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
    sub_1E487880C();
    sub_1E487889C();
    sub_1E4877BCC();
    v23 = 0;
    v24 = v30;
    v22 = v32;
    v15 = v34;
    v14 = v35;
    v29 = 0;
    v28 = v31;
    v27 = v33;
    v16 = v31;
    v17 = v33;
    LOBYTE(v26) = 0;
  }

  else
  {
    v24 = 0;
    v22 = 0;
    v15 = 0;
    v14 = 0;
    v17 = 0;
    v16 = 0;
    v23 = 1;
  }

  v18 = sub_1E4784E80();
  *v9 = sub_1E4877F6C();
  v9[1] = v18;
  *(v9 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCB0, &qword_1E487B890);
  sub_1E4787584(a1);
  sub_1E4773850(v9, v7, &qword_1ECF7BCA8, &qword_1E487B888);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v24;
  *(a2 + 24) = v16;
  *(a2 + 32) = v22;
  *(a2 + 40) = v17;
  *(a2 + 48) = v15;
  *(a2 + 56) = v14;
  *(a2 + 64) = v23;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCB8, &qword_1E487B898);
  sub_1E4773850(v7, a2 + *(v19 + 48), &qword_1ECF7BCA8, &qword_1E487B888);
  sub_1E47738B8(v9, &qword_1ECF7BCA8, &qword_1E487B888);
  sub_1E47738B8(v7, &qword_1ECF7BCA8, &qword_1E487B888);
}

uint64_t sub_1E4787584(uint64_t a1)
{
  v2 = type metadata accessor for DayGroup(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *(v2 + 20));
  v11[1] = sub_1E4788220(0, *(v6 + 16), v6);
  swift_getKeyPath();
  sub_1E4784E18(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DayGroup);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1E4788B44(v5, v8 + v7, type metadata accessor for DayGroup);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E4788BAC;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC8, &qword_1E487B8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCD0, &qword_1E487B8D0);
  sub_1E4773680(&qword_1EE2B0DB8, &qword_1ECF7BCC8, &qword_1E487B8C8, MEMORY[0x1E69E6338]);
  sub_1E4788F70(&qword_1EE2B1348, &qword_1ECF7BCD0, &qword_1E487B8D0, sub_1E4788BC4);
  sub_1E487885C();
}

uint64_t sub_1E4787838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCE0, &qword_1E487B8E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCD8, &qword_1E487B8D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v8 = sub_1E4877FBC();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCF0, &qword_1E487B8F0);
  sub_1E4787AB4(a2, a3, a1, &v8[*(v12 + 44)]);
  sub_1E487889C();
  sub_1E4877CEC();
  sub_1E477372C(v8, v11, &qword_1ECF7BCE0, &qword_1E487B8E0);
  v13 = &v11[*(v9 + 36)];
  v14 = v18[5];
  *(v13 + 4) = v18[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v18[6];
  v15 = v18[1];
  *v13 = v18[0];
  *(v13 + 1) = v15;
  v16 = v18[3];
  *(v13 + 2) = v18[2];
  *(v13 + 3) = v16;
  result = type metadata accessor for DayGroup(0);
  if (__OFSUB__(*(a3 + *(result + 32)), a1))
  {
    __break(1u);
  }

  else
  {
    sub_1E4788BC4();
    sub_1E48785BC();
    sub_1E47738B8(v11, &qword_1ECF7BCD8, &qword_1E487B8D8);
  }

  return result;
}

uint64_t sub_1E4787AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v34 = a2;
  v35 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCF8, &qword_1E487B8F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD00, &qword_1E487B900);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD08, &qword_1E487B908);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v33 - v16;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(*(a1 + *(type metadata accessor for TimeScalingEngine.SpatialViewParameters(0) + 28)) + 16))
  {
    *v7 = sub_1E4877F6C();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD10, &qword_1E487B910);
    sub_1E4787E40(a1, &v7[*(v18 + 44)]);
    v19 = sub_1E487817C();
    v20 = (v34 + *(type metadata accessor for DayGroup(0) + 44));
    v22 = *v20;
    v21 = v20[1];
    v37 = v22;
    v38 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD18, &qword_1E487B918);
    sub_1E487880C();
    if (*(v36 + 16))
    {
      sub_1E481DD30(v33);
    }

    sub_1E4877B0C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_1E477372C(v7, v12, &qword_1ECF7BCF8, &qword_1E487B8F8);
    v31 = &v12[*(v8 + 36)];
    *v31 = v19;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    sub_1E477372C(v12, v14, &qword_1ECF7BD00, &qword_1E487B900);
    sub_1E477372C(v14, v17, &qword_1ECF7BD00, &qword_1E487B900);
    (*(v9 + 56))(v17, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v17, 1, 1, v8);
  }

  sub_1E477372C(v17, v35, &qword_1ECF7BD08, &qword_1E487B908);
}

uint64_t sub_1E4787E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NarrowXMoreView(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a1 + *(type metadata accessor for TimeScalingEngine.SpatialViewParameters(0) + 28));
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  *&v9[*(v4 + 32)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v9 = v10;
  v9[8] = 0;
  *(v9 + 2) = KeyPath;
  v9[24] = 0;
  *(v9 + 4) = v12;
  v9[40] = 0;
  sub_1E4784E18(v9, v7, type metadata accessor for NarrowXMoreView);
  sub_1E4784E18(v7, a2, type metadata accessor for NarrowXMoreView);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD20, &qword_1E487B980) + 48);
  *v13 = 0;
  *(v13 + 8) = 0;

  sub_1E4788C7C(v9, type metadata accessor for NarrowXMoreView);
  sub_1E4788C7C(v7, type metadata accessor for NarrowXMoreView);
}

uint64_t sub_1E4788058@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4877FAC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC68, &qword_1E487B848);
  return sub_1E4784FE4(v2, a2 + *(v4 + 44));
}

unint64_t sub_1E47880D4(uint64_t a1, double a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  result = sub_1E481DD30(a1);
  v11 = v8[2];
  v12 = __OFADD__(v11, (v10 ^ 1) & 1);
  v13 = v11 + ((v10 ^ 1) & 1);
  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v13)
  {
    sub_1E48612C0(v13, isUniquelyReferenced_nonNull_native);
    result = sub_1E481DD30(a1);
    if ((v3 & 1) == (v14 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1E487912C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = result;
    sub_1E4861C50();
    result = v18;
    v15 = v8;
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v15 = v8;
  if (v3)
  {
LABEL_7:
    v16 = v15[7];
    v17 = *(v16 + 8 * result);
    *(v16 + 8 * result) = a2;
LABEL_12:
    *v4 = v15;
    return v17;
  }

LABEL_10:
  v15[(result >> 6) + 8] |= 1 << result;
  *(v15[6] + 8 * result) = a1;
  *(v15[7] + 8 * result) = a2;
  v19 = v15[2];
  v20 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    v17 = 0;
    v15[2] = v20;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_1E4788220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCE8, &qword_1E487B8E8);
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v66 - v12);
  result = MEMORY[0x1EEE9AC00](v11);
  v72 = &v66 - v15;
  v16 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v17 = *(a3 + 16);
  if (v17 >= v16)
  {
    v18 = a2 - a1;
  }

  else
  {
    v18 = *(a3 + 16);
  }

  v74 = a1;
  v69 = v13;
  if (!v18)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (v18 <= 0)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_15:

LABEL_16:
    v23 = *(v77 + 80);
    v24 = v21[3];

    if ((v16 & 0x8000000000000000) == 0)
    {
      v67 = (v23 + 32) & ~v23;
      v68 = v23;
      v25 = v21 + v67;
      v26 = v24 >> 1;
      v71 = a3;
      v73 = a2;
      v75 = v17;
      if (!v18)
      {
        v38 = a2;
        v39 = v74;
        v40 = v74;
        if (v74 != a2)
        {
          goto LABEL_32;
        }

LABEL_27:
        v41 = v21;
LABEL_28:
        v42 = v41[3];
        if (v42 >= 2)
        {
          v43 = v42 >> 1;
          v44 = __OFSUB__(v43, v26);
          v45 = v43 - v26;
          if (v44)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v41[2] = v45;
        }

        return v41;
      }

      v27 = v74;
      if (a2 >= v74)
      {
        v28 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
        v29 = 0;
        v30 = *(v28 - 8);
        result = (v28 - 8);
        v31 = v30;
        v32 = a3 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
        v26 -= v18;
        v33 = v27 - a2;
        do
        {
          if (!(v33 + v29))
          {
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v34 = v74 + v29;
          if (v74 + v29 >= v73)
          {
            goto LABEL_65;
          }

          if (v75 == v29)
          {
            goto LABEL_66;
          }

          v35 = v29 + 1;
          v36 = v32 + *(v31 + 72) * v29;
          v37 = *(v76 + 48);
          *v10 = v34;
          sub_1E4784E18(v36, v10 + v37, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
          result = sub_1E477372C(v10, v25, &qword_1ECF7BCE8, &qword_1E487B8E8);
          v25 += *(v77 + 72);
          v29 = v35;
        }

        while (v18 != v35);
        v38 = v73;
        v39 = v74;
        v40 = v74 + v35;
        v13 = v69;
        if (v74 + v35 == v73)
        {
          goto LABEL_27;
        }

LABEL_32:
        if (v38 >= v39)
        {
          v46 = v38;
          if (v40 > v38)
          {
            v38 = v40;
          }

          v70 = v38;
          v47 = v40;
          while (1)
          {
            if (v40 < v39)
            {
              goto LABEL_67;
            }

            if (v70 == v47)
            {
              goto LABEL_68;
            }

            if (v75 == v18)
            {
              goto LABEL_27;
            }

            if (v18 >= v75)
            {
              goto LABEL_69;
            }

            v48 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
            v50 = *(v48 - 8);
            result = (v48 - 8);
            v49 = v50;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_70;
            }

            v51 = v71 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v18;
            v52 = *(v76 + 48);
            *v13 = v47;
            sub_1E4784E18(v51, v13 + v52, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
            result = sub_1E477372C(v13, v72, &qword_1ECF7BCE8, &qword_1E487B8E8);
            if (v26)
            {
              v41 = v21;
              v44 = __OFSUB__(v26--, 1);
              if (v44)
              {
                goto LABEL_63;
              }

              goto LABEL_37;
            }

            v53 = v21[3];
            if (((v53 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_71;
            }

            v54 = v53 & 0xFFFFFFFFFFFFFFFELL;
            if (v54 <= 1)
            {
              v55 = 1;
            }

            else
            {
              v55 = v54;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD28, &qword_1E487B988);
            v56 = *(v77 + 72);
            v57 = v67;
            v41 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v41);
            if (!v56)
            {
              goto LABEL_72;
            }

            v58 = result - v57;
            if ((result - v57) == 0x8000000000000000 && v56 == -1)
            {
              goto LABEL_73;
            }

            v60 = v58 / v56;
            v41[2] = v55;
            v41[3] = 2 * (v58 / v56);
            v61 = v41 + v57;
            v62 = v21[3] >> 1;
            v63 = v62 * v56;
            v13 = v69;
            if (v21[2])
            {
              break;
            }

LABEL_61:
            v25 = &v61[v63];
            v65 = (v60 & 0x7FFFFFFFFFFFFFFFLL) - v62;

            v46 = v73;
            v39 = v74;
            v44 = __OFSUB__(v65, 1);
            v26 = v65 - 1;
            if (v44)
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

LABEL_37:
            ++v47;
            result = sub_1E477372C(v72, v25, &qword_1ECF7BCE8, &qword_1E487B8E8);
            v25 += *(v77 + 72);
            ++v18;
            v21 = v41;
            if (v46 == v47)
            {
              goto LABEL_28;
            }
          }

          if (v41 < v21 || v61 >= v21 + v57 + v63)
          {
            v64 = v63;
            swift_arrayInitWithTakeFrontToBack();
LABEL_59:
            v63 = v64;
          }

          else if (v41 != v21)
          {
            v64 = v63;
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_59;
          }

          v21[2] = 0;
          goto LABEL_61;
        }

        goto LABEL_77;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD28, &qword_1E487B988);
  v19 = *(v77 + 72);
  v20 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (v19)
  {
    if ((result - v20) == 0x8000000000000000 && v19 == -1)
    {
      goto LABEL_80;
    }

    v21[2] = v18;
    v21[3] = 2 * ((result - v20) / v19);
    v13 = v69;
    goto LABEL_15;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

void sub_1E478880C(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47889A4(319, &qword_1ECF7BC48, type metadata accessor for TimeScalingEngine.SpatialViewParameters, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E4788A6C(319, &qword_1EE2B16B0, MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E47889A4(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E4788A08(319);
          if (v5 <= 0x3F)
          {
            sub_1E4788A6C(319, &unk_1ECF7C830, MEMORY[0x1E6981788]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E47889A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E4788A08(uint64_t a1)
{
  if (!qword_1ECF7BC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BC38, &qword_1E487B760);
    v1 = sub_1E487882C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF7BC50);
    }
  }
}

void sub_1E4788A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7DE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E4788AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7BC60;
  if (!qword_1ECF7BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BC60);
  }

  return result;
}

uint64_t sub_1E4788B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4788BC4()
{
  result = qword_1EE2B1460;
  if (!qword_1EE2B1460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BCD8, &qword_1E487B8D8);
    sub_1E4773680(&qword_1EE2B0F28, &qword_1ECF7BCE0, &qword_1E487B8E0, MEMORY[0x1E6981868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1460);
  }

  return result;
}

uint64_t sub_1E4788C7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_23Tm()
{
  v1 = (type metadata accessor for DayGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1E487732C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  sub_1E477A484(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4788E18(double a1)
{
  v3 = *(type metadata accessor for DayGroup(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E47865D8(v4, a1);
}

uint64_t sub_1E4788ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DayGroup(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1E4788F70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E4789398(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4789024()
{
  result = qword_1EE2B1440;
  if (!qword_1EE2B1440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BD68, &qword_1E487BA60);
    sub_1E47890B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1440);
  }

  return result;
}

unint64_t sub_1E47890B0()
{
  result = qword_1EE2B15D0;
  if (!qword_1EE2B15D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BD70, &qword_1E487BA68);
    sub_1E4789398(&qword_1EE2B3C48, type metadata accessor for SpatialDayView, &unk_1E487E5B0);
    sub_1E4773680(&qword_1EE2B10D0, &qword_1ECF7BD78, &qword_1E487BA70, MEMORY[0x1E6980618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15D0);
  }

  return result;
}

uint64_t sub_1E4789198(uint64_t *a1)
{
  v3 = *(type metadata accessor for DayGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E4787038(a1, v1 + v4, v5);
}

uint64_t sub_1E4789274(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCE8, &qword_1E487B8E8);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_1E47892DC()
{
  result = qword_1EE2B15C8;
  if (!qword_1EE2B15C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BDA0, &qword_1E487BA98);
    sub_1E4789398(qword_1EE2B3528, type metadata accessor for SpatialHeaderView, &unk_1E487A54C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15C8);
  }

  return result;
}

uint64_t sub_1E4789398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PlatterView(uint64_t a1)
{
  result = qword_1ECF7BDB0;
  if (!qword_1ECF7BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4789460(uint64_t a1)
{
  sub_1E4789590(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
  if (v1 <= 0x3F)
  {
    sub_1E4789590(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
    if (v2 <= 0x3F)
    {
      sub_1E4789590(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Event(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E4789590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E4789600@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877F1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1E4773850(v2, &v15 - v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E4789800()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PlatterView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E4789950@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for PlatterView(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4789B58@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDC8, &qword_1E487BB30);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v44 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDD0, &qword_1E487BB38);
  v5 = MEMORY[0x1EEE9AC00](v48);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v44 - v7;
  sub_1E4878D2C();
  v51 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = sub_1E4877F6C();
  v54 = 0;
  sub_1E478A0F0(&v70);
  v63 = *&v71[112];
  v64 = *&v71[128];
  v59 = *&v71[48];
  v60 = *&v71[64];
  v61 = *&v71[80];
  v62 = *&v71[96];
  v55 = v70;
  v56 = *v71;
  v57 = *&v71[16];
  v58 = *&v71[32];
  v66[8] = *&v71[112];
  v66[9] = *&v71[128];
  v66[4] = *&v71[48];
  v66[5] = *&v71[64];
  v66[6] = *&v71[80];
  v66[7] = *&v71[96];
  v66[0] = v70;
  v66[1] = *v71;
  v65 = v71[144];
  v67 = v71[144];
  v66[2] = *&v71[16];
  v66[3] = *&v71[32];
  sub_1E4773850(&v55, &v68, &qword_1ECF7BDD8, &qword_1E487BB40);
  sub_1E47738B8(v66, &qword_1ECF7BDD8, &qword_1E487BB40);
  *&v53[119] = v62;
  *&v53[135] = v63;
  *&v53[151] = v64;
  *&v53[55] = v58;
  *&v53[71] = v59;
  *&v53[87] = v60;
  *&v53[103] = v61;
  *&v53[7] = v55;
  *&v53[23] = v56;
  v53[167] = v65;
  *&v53[39] = v57;
  v45 = v54;
  *v4 = sub_1E4877F6C();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDE0, &qword_1E487BB48);
  sub_1E478ADF8(a1, &v4[*(v8 + 44)]);
  v9 = a1 + *(type metadata accessor for PlatterView(0) + 28);
  v10 = type metadata accessor for Event(0);
  *&v70 = sub_1E47CC9E8(*(v9 + *(v10 + 56)));
  *(&v70 + 1) = v11;
  sub_1E477A374(v70, v11, v12);
  v13 = sub_1E487848C();
  v14 = v4;
  v44 = a1;
  v16 = v15;
  v18 = v17;
  sub_1E478B7C0();
  v19 = v52;
  sub_1E487857C();
  sub_1E477A3C8(v13, v16, v18 & 1);

  sub_1E47738B8(v14, &qword_1ECF7BDC8, &qword_1E487BB30);
  LOBYTE(v14) = sub_1E487813C();
  sub_1E4877B0C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE00, &qword_1E487BB58) + 36);
  *v28 = v14;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  LOBYTE(v14) = sub_1E487816C();
  sub_1E4877B0C();
  v29 = v19 + *(v48 + 36);
  *v29 = v14;
  *(v29 + 8) = v30;
  *(v29 + 16) = v31;
  *(v29 + 24) = v32;
  *(v29 + 32) = v33;
  *(v29 + 40) = 0;
  v34 = v50;
  sub_1E4773850(v19, v50, &qword_1ECF7BDD0, &qword_1E487BB38);
  *(&v69[7] + 1) = *&v53[112];
  *(&v69[8] + 1) = *&v53[128];
  *(&v69[9] + 1) = *&v53[144];
  *(&v69[3] + 1) = *&v53[48];
  *(&v69[4] + 1) = *&v53[64];
  *(&v69[5] + 1) = *&v53[80];
  *(&v69[6] + 1) = *&v53[96];
  *(v69 + 1) = *v53;
  v35 = v47;
  v68 = v47;
  LOBYTE(v19) = v45;
  LOBYTE(v69[0]) = v45;
  *(&v69[10] + 1) = *&v53[160];
  *(&v69[1] + 1) = *&v53[16];
  *(&v69[2] + 1) = *&v53[32];
  v36 = v69[8];
  v37 = v49;
  v49[8] = v69[7];
  v37[9] = v36;
  v37[10] = v69[9];
  *(v37 + 169) = *(&v69[9] + 9);
  v38 = v69[4];
  v37[4] = v69[3];
  v37[5] = v38;
  v39 = v69[6];
  v37[6] = v69[5];
  v37[7] = v39;
  v40 = v69[0];
  *v37 = v68;
  v37[1] = v40;
  v41 = v69[2];
  v37[2] = v69[1];
  v37[3] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE08, &qword_1E487BB60);
  sub_1E4773850(v34, v37 + *(v42 + 48), &qword_1ECF7BDD0, &qword_1E487BB38);
  sub_1E4773850(&v68, &v70, &qword_1ECF7BE10, &qword_1E487BB68);
  sub_1E47738B8(v52, &qword_1ECF7BDD0, &qword_1E487BB38);
  sub_1E47738B8(v34, &qword_1ECF7BDD0, &qword_1E487BB38);
  *&v71[113] = *&v53[112];
  *&v71[129] = *&v53[128];
  *&v71[145] = *&v53[144];
  *&v71[49] = *&v53[48];
  *&v71[65] = *&v53[64];
  *&v71[81] = *&v53[80];
  *&v71[97] = *&v53[96];
  *&v71[1] = *v53;
  *&v71[17] = *&v53[16];
  v70 = v35;
  v71[0] = v19;
  v72 = *&v53[160];
  *&v71[33] = *&v53[32];
  sub_1E47738B8(&v70, &qword_1ECF7BE10, &qword_1E487BB68);
}

uint64_t sub_1E478A0F0@<X0>(uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1E478A4F8();
  sub_1E477A374(v2, v3, v4);
  v5 = sub_1E487848C();
  v7 = v6;
  v9 = v8;
  type metadata accessor for PlatterView(0);
  v10 = sub_1E487842C();
  v12 = v11;
  v14 = v13;
  sub_1E477A3C8(v5, v7, v9 & 1);

  v15 = sub_1E487840C();
  v41 = v16;
  LOBYTE(v5) = v17;
  v19 = v18;
  sub_1E477A3C8(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v21 = sub_1E487813C();
  sub_1E4877B0C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v43[0] = 0;
  LOBYTE(v12) = sub_1E487815C();
  sub_1E4877B0C();
  *&v49 = v15;
  *(&v49 + 1) = v41;
  LOBYTE(v50) = v5 & 1;
  *(&v50 + 1) = *v46;
  DWORD1(v50) = *&v46[3];
  *(&v50 + 1) = v19;
  *&v51 = KeyPath;
  *(&v51 + 1) = 1;
  LOBYTE(v52) = 0;
  DWORD1(v52) = *&v45[3];
  v30 = *v45;
  *(&v52 + 1) = *v45;
  BYTE8(v52) = v21;
  HIDWORD(v52) = *&v44[3];
  *(&v52 + 9) = *v44;
  *&v53 = v23;
  *(&v53 + 1) = v25;
  *&v54 = v27;
  *(&v54 + 1) = v29;
  LOBYTE(v55) = 0;
  DWORD1(v55) = *&v48[3];
  *(&v55 + 1) = *v48;
  BYTE8(v55) = v12;
  HIDWORD(v55) = *&v47[3];
  *(&v55 + 9) = *v47;
  *&v56 = v31;
  *(&v56 + 1) = v32;
  *&v57 = v33;
  *(&v57 + 1) = v34;
  v58 = 0;
  LOBYTE(v68) = 0;
  v66 = v56;
  v67 = v57;
  v65 = v55;
  v59 = v49;
  v60 = v50;
  v63 = v53;
  v64 = v54;
  v61 = v51;
  v62 = v52;
  v43[152] = 0;
  v35 = v56;
  *(a2 + 96) = v55;
  *(a2 + 112) = v35;
  *(a2 + 128) = v67;
  v36 = v68;
  v37 = v62;
  *(a2 + 32) = v61;
  *(a2 + 48) = v37;
  v38 = v64;
  *(a2 + 64) = v63;
  *(a2 + 80) = v38;
  v39 = v60;
  *a2 = v59;
  *(a2 + 16) = v39;
  *(a2 + 144) = v36;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v69[0] = v15;
  v69[1] = v41;
  v70 = v5 & 1;
  *v71 = *v46;
  *&v71[3] = *&v46[3];
  v72 = v19;
  v73 = KeyPath;
  v74 = 1;
  v75 = 0;
  *v76 = v30;
  *&v76[3] = *&v45[3];
  v77 = v21;
  *&v78[3] = *&v44[3];
  *v78 = *v44;
  v79 = v23;
  v80 = v25;
  v81 = v27;
  v82 = v29;
  v83 = 0;
  *v84 = *v48;
  *&v84[3] = *&v48[3];
  v85 = v12;
  *v86 = *v47;
  *&v86[3] = *&v47[3];
  v87 = v31;
  v88 = v32;
  v89 = v33;
  v90 = v34;
  v91 = 0;
  sub_1E4773850(&v49, v43, &qword_1ECF7BE50, &qword_1E487BC60);
  sub_1E47738B8(v69, &qword_1ECF7BE50, &qword_1E487BC60);
}

uint64_t sub_1E478A4F8()
{
  v1 = v0;
  v2 = sub_1E487751C();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v81 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1E487732C();
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487744C();
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v78[1] = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4878B8C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78[0] = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = v78 - v10;
  v89 = sub_1E487757C();
  v11 = *(v89 - 1);
  MEMORY[0x1EEE9AC00](v89);
  v13 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487753C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = (v78 - v19);
  v21 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E4789600(v20);
  v22 = sub_1E487748C();
  v23 = *(v15 + 8);
  v23(v20, v14);
  [v21 setCalendar_];

  sub_1E4789600(v20);
  sub_1E487750C();
  v23(v20, v14);
  v24 = sub_1E487756C();
  (*(v11 + 8))(v13, v89);
  v89 = v21;
  [v21 setTimeZone_];

  v25 = v14;
  v26 = v86;
  v27 = v1;
  sub_1E4789600(v18);
  v28 = v85;
  sub_1E48774EC();
  v29 = v18;
  v30 = v87;
  v88 = v25;
  v31 = v23;
  v23(v29, v25);
  v32 = 0;
  if ((*(v26 + 48))(v28, 1, v30) != 1)
  {
    v32 = sub_1E48773DC();
    (*(v26 + 8))(v28, v30);
  }

  [v89 setLocale_];

  v33 = v27 + *(type metadata accessor for PlatterView(0) + 28);
  if (*(v33 + *(type metadata accessor for Event(0) + 48)) == 1 && (sub_1E4789600(v20), v34 = sub_1E48774CC(), v31(v20, v88), (v34 & 1) == 0))
  {
    v50 = sub_1E4878B9C();
    v51 = v89;
    [v89 setLocalizedDateFormatFromTemplate_];

    v52 = sub_1E48772BC();
    v53 = [v51 stringFromDate_];

    v54 = sub_1E4878BDC();
    v56 = v55;

    v90 = v54;
    v91 = v56;
    sub_1E477A374(v57, v58, v59);
    v60 = MEMORY[0x1E69E6158];
    v61 = sub_1E4878E8C();
    v63 = v62;

    v64 = sub_1E48772BC();
    v65 = [v51 stringFromDate_];

    v66 = sub_1E4878BDC();
    v68 = v67;

    v90 = v66;
    v91 = v68;
    v69 = sub_1E4878E8C();
    v71 = v70;

    sub_1E4878B0C();
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    v72 = qword_1EE2BAF40;
    sub_1E48773EC();
    sub_1E4878BEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1E487A7F0;
    *(v73 + 56) = v60;
    v76 = sub_1E478B950(v73, v74, v75);
    *(v73 + 32) = v61;
    *(v73 + 40) = v63;
    *(v73 + 96) = v60;
    *(v73 + 104) = v76;
    *(v73 + 64) = v76;
    *(v73 + 72) = v69;
    *(v73 + 80) = v71;
    v49 = sub_1E4878BAC();
  }

  else
  {
    sub_1E4789600(v20);
    v35 = v79;
    sub_1E487730C();
    v37 = v83;
    v36 = v84;
    v38 = v81;
    (*(v83 + 104))(v81, *MEMORY[0x1E6969A68], v84);
    sub_1E48774DC();
    (*(v37 + 8))(v38, v36);
    (*(v80 + 8))(v35, v82);
    v31(v20, v88);
    v39 = sub_1E4878B9C();
    v40 = v89;
    [v89 setLocalizedDateFormatFromTemplate_];

    v41 = sub_1E48772BC();
    v42 = [v40 stringFromDate_];

    v43 = sub_1E4878BDC();
    v45 = v44;

    v90 = v43;
    v91 = v45;
    sub_1E477A374(v46, v47, v48);
    v49 = sub_1E4878E8C();
  }

  return v49;
}

uint64_t sub_1E478ADF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE18, &qword_1E487BB70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_1E4877F6C();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE20, &qword_1E487BB78);
  sub_1E478AFB8(a1, &v9[*(v10 + 44)]);
  sub_1E4773850(v9, v7, &qword_1ECF7BE18, &qword_1E487BB70);
  sub_1E4773850(v7, a2, &qword_1ECF7BE18, &qword_1E487BB70);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE28, &qword_1E487BB80) + 48);
  *v11 = 0;
  *(v11 + 8) = 0;
  sub_1E47738B8(v9, &qword_1ECF7BE18, &qword_1E487BB70);
  sub_1E47738B8(v7, &qword_1ECF7BE18, &qword_1E487BB70);
}

uint64_t sub_1E478AFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE30, &qword_1E487BB88);
  v3 = MEMORY[0x1EEE9AC00](v33);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = sub_1E4877B3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ColorBarView(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  sub_1E4878D2C();
  v32 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(type metadata accessor for PlatterView(0) + 28);
  sub_1E4789950(v10);
  v18 = sub_1E4770A7C(a1 + v17, v10);
  (*(v8 + 8))(v10, v7);
  type metadata accessor for ColorBarView.Styling(0);
  sub_1E487735C();
  v16[48] = 1;
  *v16 = v18;
  *(v16 + 1) = 0x4008000000000000;
  v16[16] = 0;
  *(v16 + 3) = 3;
  *(v16 + 2) = xmmword_1E487BAB0;
  *&v16[*(v11 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v20 = &v16[*(v11 + 24)];
  *v20 = KeyPath;
  v20[8] = 0;
  *v6 = sub_1E4877FBC();
  *(v6 + 1) = 0x3FF0000000000000;
  v6[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE38, &qword_1E487BBE8);
  sub_1E478B3E8(a1, &v6[*(v21 + 44)]);
  v22 = sub_1E487818C();
  sub_1E4789800();

  sub_1E4877B0C();
  v23 = &v6[*(v33 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_1E478B878(v16, v14, type metadata accessor for ColorBarView);
  v28 = v35;
  sub_1E4773850(v6, v35, &qword_1ECF7BE30, &qword_1E487BB88);
  v29 = v34;
  sub_1E478B878(v14, v34, type metadata accessor for ColorBarView);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE40, &qword_1E487BBF0);
  sub_1E4773850(v28, v29 + *(v30 + 48), &qword_1ECF7BE30, &qword_1E487BB88);
  sub_1E47738B8(v6, &qword_1ECF7BE30, &qword_1E487BB88);
  sub_1E478B8F0(v16, type metadata accessor for ColorBarView);
  sub_1E47738B8(v28, &qword_1ECF7BE30, &qword_1E487BB88);
  sub_1E478B8F0(v14, type metadata accessor for ColorBarView);
}

uint64_t sub_1E478B3E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v40 = type metadata accessor for PlatterEventTimeText(0);
  v3 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v34 - v5;
  sub_1E4878D2C();
  v42 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for PlatterView(0);
  v38 = v6[7];
  v44 = sub_1E47CC708();
  v45 = v7;
  sub_1E477A374(v44, v7, v8);
  v9 = sub_1E487848C();
  v11 = v10;
  v13 = v12;
  v14 = sub_1E487842C();
  v16 = v15;
  v18 = v17;
  sub_1E477A3C8(v9, v11, v13 & 1);

  v34 = *(a1 + v6[12]);
  v19 = v34;
  v20 = sub_1E48783FC();
  v35 = v21;
  v36 = v22;
  v37 = v23;
  sub_1E477A3C8(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v25 = v41;
  sub_1E478B878(a1 + v38, v41, type metadata accessor for Event);
  v26 = *(a1 + v6[10]);
  v27 = swift_getKeyPath();
  v28 = v40;
  *(v25 + *(v40 + 28)) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  *(v25 + *(v28 + 20)) = v26;
  *(v25 + *(v28 + 24)) = v19;
  v29 = v43;
  sub_1E478B878(v25, v43, type metadata accessor for PlatterEventTimeText);
  v30 = v39;
  v31 = v35;
  *v39 = v20;
  v30[1] = v31;
  LOBYTE(v28) = v36 & 1;
  *(v30 + 16) = v36 & 1;
  v30[3] = v37;
  v30[4] = KeyPath;
  v30[5] = 1;
  *(v30 + 48) = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE48, &qword_1E487BC58);
  sub_1E478B878(v29, v30 + *(v32 + 48), type metadata accessor for PlatterEventTimeText);

  sub_1E478B8E0(v20, v31, v28);

  sub_1E478B8F0(v25, type metadata accessor for PlatterEventTimeText);
  sub_1E478B8F0(v29, type metadata accessor for PlatterEventTimeText);
  sub_1E477A3C8(v20, v31, v28);
}

uint64_t sub_1E478B76C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4877FAC();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDC0, &qword_1E487BB28);
  return sub_1E4789B58(v2, (a2 + *(v4 + 44)));
}

unint64_t sub_1E478B7C0()
{
  result = qword_1ECF7BDE8;
  if (!qword_1ECF7BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BDC8, &qword_1E487BB30);
    v3 = sub_1E4773680(&qword_1ECF7BDF0, &qword_1ECF7BDF8, &qword_1E487BB50, MEMORY[0x1E6981800]);
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BDE8);
  }

  return result;
}

uint64_t sub_1E478B878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E478B8E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E478B8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E478B950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B46F8;
  if (!qword_1EE2B46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B46F8);
  }

  return result;
}

uint64_t sub_1E478B9A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  sub_1E4878A3C();
  if ((*(v3 + 88))(v8, v2) == *MEMORY[0x1E69857E0])
  {
    type metadata accessor for FakeEvents();
    v9 = sub_1E480446C();
    sub_1E4806788(a1);
    v10 = type metadata accessor for CalendarEventsTimelineEntry(0);
    result = sub_1E4806788(a1 + v10[5]);
    *(a1 + v10[6]) = v9;
    *(a1 + v10[7]) = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1E4878F9C();

    v13 = 0xD00000000000001BLL;
    v14 = 0x80000001E48A64A0;
    sub_1E4878A3C();
    sub_1E478E7C4(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v12 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v12);

    (*(v3 + 8))(v6, v2);
    MEMORY[0x1E69192D0](0xD000000000000010, 0x80000001E48A67E0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

id sub_1E478BC18(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v67 = a5;
  v60 = a4;
  v61 = a3;
  *&v66 = a1;
  v5 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487894C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487732C();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (!result)
  {
    goto LABEL_10;
  }

  v17 = result;
  sub_1E48772FC();

  v18 = [objc_opt_self() shared];
  v57 = [v18 stopTimeDemoModeActive];

  sub_1E4878A3C();
  v62 = *(v8 + 8);
  v62(v10, v7);
  v63 = sub_1E4878DEC();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E487AC40;
  sub_1E478E7C4(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v64 = v11;
  v20 = sub_1E48790CC();
  v22 = v21;
  v23 = MEMORY[0x1E69E6158];
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_1E478B950(v20, v21, v24);
  v26 = MEMORY[0x1E69E6530];
  v27 = MEMORY[0x1E69E65A8];
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  *(v19 + 96) = v26;
  *(v19 + 104) = v27;
  *(v19 + 64) = v25;
  *(v19 + 72) = 8;
  sub_1E4878A3C();
  sub_1E478E7C4(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
  v28 = sub_1E48790CC();
  v30 = v29;
  v62(v10, v7);
  *(v19 + 136) = v23;
  *(v19 + 144) = v25;
  v62 = v25;
  v31 = v15;
  *(v19 + 112) = v28;
  *(v19 + 120) = v30;
  sub_1E478E80C();
  v32 = sub_1E4878E4C();
  sub_1E4877AAC(v63, &dword_1E475C000, v32, "Snapshot entry requested for list widget with start date: %{public}@, daysInEntry: %d, family: %{public}@", 105, 2, v19);

  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  v33 = v66;
  v34 = v67;
  sub_1E48587DC(v15, v66, v67, v35);
  v36 = [v33 mirrorCalendarApp];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 BOOLValue];
  }

  else
  {
    v38 = 0;
  }

  v39 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  v66 = xmmword_1E487A7E0;
  *(v41 + 16) = xmmword_1E487A7E0;
  v42 = v64;
  (*(v39 + 16))(v41 + v40, v31, v64);
  v43 = v34[8];

  v44 = sub_1E47A5614(v41, v43, 8, v38);

  swift_setDeallocating();
  v45 = *(v39 + 8);
  v45(v41 + v40, v42);
  result = swift_deallocClassInstance();
  if (!v44[2])
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v46 = v59;
  sub_1E478E8E4(v44 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v59, type metadata accessor for CalendarEventsTimelineEntry);

  if (v57)
  {
    v47 = v55;
    sub_1E487731C();
    (*(v39 + 40))(v46, v47, v42);
  }

  v48 = sub_1E4878DBC();
  v49 = swift_allocObject();
  *(v49 + 16) = v66;
  v50 = CalendarEventsTimelineEntry.description.getter();
  v51 = v62;
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = v51;
  *(v49 + 32) = v50;
  *(v49 + 40) = v52;
  v53 = sub_1E4878E4C();
  sub_1E4877AAC(v48, &dword_1E475C000, v53, "Calling current entry completion for list widget with entry: %{public}@", 71, 2, v49);

  v61(v46);
  v45(v31, v42);
  return sub_1E478E94C(v46, type metadata accessor for CalendarEventsTimelineEntry);
}

id sub_1E478C288(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v102 = a5;
  v93 = a4;
  v90 = a2;
  v91 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEC8, &unk_1E487BF70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v78 - v8;
  v100 = sub_1E487894C();
  v10 = *(v100 - 8);
  v11 = MEMORY[0x1EEE9AC00](v100);
  v101 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v78 - v13;
  v15 = sub_1E48789CC();
  v95 = *(v15 - 8);
  v96 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v94 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v78 - v18;
  v103 = sub_1E487732C();
  v92 = *(v103 - 8);
  v20 = MEMORY[0x1EEE9AC00](v103);
  v78 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v78 - v22;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v25 = result;
    v88 = v6;
    v99 = v23;
    sub_1E48772FC();

    v26 = [objc_opt_self() shared];
    v27 = [v26 stopTimeDemoModeActive];

    sub_1E48789AC();
    v83 = v27;
    v89 = a3;
    v86 = v9;
    v87 = v7;
    v85 = v19;
    if (v27)
    {
      v28 = v94;
      sub_1E48789BC();
      v30 = v95;
      v29 = v96;
      (*(v95 + 8))(v19, v96);
      (*(v30 + 32))(v19, v28, v29);
      v31 = 1;
    }

    else
    {
      v31 = 20;
    }

    v98 = v31;
    sub_1E4878A3C();
    v32 = *(v10 + 8);
    v97 = v10 + 8;
    v33 = v100;
    v32(v14, v100);
    v79 = sub_1E4878DEC();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1E487BC70;
    sub_1E478E7C4(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v35 = v99;
    v36 = sub_1E48790CC();
    v38 = v37;
    v39 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1E478B950(v36, v37, v40);
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    v42 = MEMORY[0x1E69E6530];
    v43 = MEMORY[0x1E69E65A8];
    *(v34 + 96) = MEMORY[0x1E69E6530];
    *(v34 + 104) = v43;
    v44 = v98;
    *(v34 + 64) = v41;
    *(v34 + 72) = v44;
    *(v34 + 136) = v42;
    *(v34 + 144) = v43;
    *(v34 + 112) = 8;
    sub_1E4878A3C();
    sub_1E478E7C4(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v45 = sub_1E48790CC();
    v47 = v46;
    v80 = v32;
    v32(v14, v33);
    *(v34 + 176) = v39;
    *(v34 + 184) = v41;
    v84 = v41;
    *(v34 + 152) = v45;
    *(v34 + 160) = v47;
    v48 = v35;
    v81 = sub_1E478E80C();
    v49 = sub_1E4878E4C();
    sub_1E4877AAC(v79, &dword_1E475C000, v49, "Timeline entries requested for list widget with start date: %{public}@, limit: %d, daysPerEntry: %d, family: %{public}@", 119, 2, v34);

    sub_1E4878A3C();
    [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
    v50 = v35;
    v51 = v91;
    sub_1E48587DC(v50, v91, v102, v52);

    v54 = sub_1E47A6300(v53, v48, v98);

    v55 = [v51 mirrorCalendarApp];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 BOOLValue];
    }

    else
    {
      v57 = 0;
    }

    v58 = v86;
    v59 = v92;
    v60 = v102[8];

    v61 = sub_1E47A5614(v54, v60, 8, v57);

    v80(v101, v100);
    v62 = v103;
    if (v83)
    {
      v63 = v78;
      v64 = sub_1E487731C();
      MEMORY[0x1EEE9AC00](v64);
      *(&v78 - 2) = v63;
      v65 = sub_1E48566E0(sub_1E478E858, (&v78 - 4), v61);

      (*(v59 + 8))(v63, v62);
      v61 = v65;
    }

    v66 = v59;
    v67 = sub_1E4878DEC();
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1E487A7F0;
    v69 = v61[2];
    *(v68 + 56) = MEMORY[0x1E69E6530];
    *(v68 + 64) = MEMORY[0x1E69E65A8];
    *(v68 + 32) = v69;
    type metadata accessor for CalendarEventsTimelineEntry(0);

    v70 = sub_1E4878E9C();
    v72 = v71;

    v73 = v84;
    *(v68 + 96) = MEMORY[0x1E69E6158];
    *(v68 + 104) = v73;
    *(v68 + 72) = v70;
    *(v68 + 80) = v72;
    v74 = sub_1E4878E4C();
    sub_1E4877AAC(v67, &dword_1E475C000, v74, "Calling timeline entries completion for list widget with %d entries: (first 3) %{public}@", 89, 2, v68);

    v75 = v95;
    v76 = v85;
    v77 = v96;
    (*(v95 + 16))(v94, v85, v96);
    sub_1E478E7C4(qword_1EE2B45D0, type metadata accessor for CalendarEventsTimelineEntry, &protocol conformance descriptor for CalendarEventsTimelineEntry);
    sub_1E4878A5C();
    v89(v58);
    (*(v87 + 8))(v58, v88);
    (*(v75 + 8))(v76, v77);
    return (*(v66 + 8))(v99, v103);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E478CBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E478CC5C;

  return MEMORY[0x1EEDE8548](a1, a2, a3);
}

uint64_t sub_1E478CC5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E478CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E478EC70;

  return MEMORY[0x1EEDE8558](a1, a2, a3);
}

uint64_t CalendarListWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE70, &qword_1E487BCD0);
  v44 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v42 - v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE78, &qword_1E487BCD8);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v42 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE80, &qword_1E487BCE0);
  v46 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v43 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE88, &qword_1E487BCE8);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - v8;
  v9 = type metadata accessor for EventKitDataSource();
  v10 = swift_allocObject();
  v11 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (!v11)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  }

  type metadata accessor for EKUICalendarsIntent();
  *(v10 + 16) = v11;
  v58 = v9;
  v59 = &off_1F5E7D4F8;
  v55 = v10;
  type metadata accessor for ListTimeline();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(&v55, v9);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v12[5] = v9;
  v12[6] = &off_1F5E7D4F8;
  v12[2] = v17;
  v18 = MEMORY[0x1E69E7CC0];
  v12[7] = MEMORY[0x1E69E7CC0];
  v12[8] = v18;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  v55 = v12;
  type metadata accessor for CalendarListWidget.WidgetView(0);
  v41 = sub_1E478E7C4(qword_1EE2B43D0, type metadata accessor for CalendarListWidget.WidgetView, &unk_1E487BE30);
  sub_1E478D700(v41, v19, v20);
  sub_1E487898C();
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v55 = sub_1E48771EC();
  v56 = v21;
  v22 = sub_1E4773680(&qword_1EE2B0E60, &qword_1ECF7BE70, &qword_1E487BCD0, MEMORY[0x1E69859E0]);
  v25 = sub_1E477A374(v22, v23, v24);
  v26 = v5;
  v27 = MEMORY[0x1E69E6158];
  sub_1E487800C();

  (*(v44 + 8))(v3, v1);
  v55 = v1;
  v56 = v27;
  v57 = v22;
  v58 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v43;
  v30 = v47;
  sub_1E487801C();
  (*(v45 + 8))(v26, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v31 = sub_1E487894C();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1E487A7E0;
  (*(v32 + 104))(v34 + v33, *MEMORY[0x1E69857E0], v31);
  v55 = v30;
  v56 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v37 = v48;
  v36 = v49;
  sub_1E4877FFC();

  (*(v46 + 8))(v29, v36);
  v55 = sub_1E48771EC();
  v56 = v38;
  v53 = v36;
  v54 = v35;
  swift_getOpaqueTypeConformance2();
  v39 = v51;
  sub_1E4877FEC();

  return (*(v50 + 8))(v37, v39);
}

uint64_t sub_1E478D5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E478E8E4(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for CalendarListWidget.WidgetView(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for CalendarListWidget.WidgetView(uint64_t a1)
{
  result = qword_1EE2B43C0;
  if (!qword_1EE2B43C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E478D700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B22C0;
  if (!qword_1EE2B22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B22C0);
  }

  return result;
}

uint64_t sub_1E478D754@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CalendarListWidget.WidgetView(0);
  sub_1E478E754(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487894C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E478D944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1E48782AC();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = sub_1E48780DC();
  v5 = *(v33[0] - 8);
  MEMORY[0x1EEE9AC00](v33[0]);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE90, &unk_1E487BE80);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  sub_1E478DDC4(v2, v33 - v9);
  sub_1E48780CC();
  sub_1E487889C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE98, &qword_1E487C870);
  sub_1E478E558();
  sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870, MEMORY[0x1E697DB70]);
  v11 = v37;
  sub_1E487859C();
  (*(v5 + 8))(v7, v33[0]);
  sub_1E478E698(v10);
  KeyPath = swift_getKeyPath();
  v13 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEA8, &unk_1E487BEC8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80);
  sub_1E4877A7C();
  *v13 = KeyPath;
  v14 = swift_getKeyPath();
  LOBYTE(v13) = *(v33[1] + *(type metadata accessor for CalendarEventsTimelineEntry(0) + 28));
  v15 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEB0, &qword_1E487BF00) + 36);
  *v15 = v14;
  *(v15 + 8) = v13;
  sub_1E48782EC();
  v16 = *MEMORY[0x1E6980EA0];
  v17 = v34;
  v18 = v35;
  v19 = *(v35 + 104);
  v20 = v36;
  v19(v34, v16, v36);
  sub_1E48782CC();

  v21 = *(v18 + 8);
  v21(v17, v20);
  v22 = sub_1E48781FC();

  sub_1E48782EC();
  v19(v17, v16, v20);
  v23 = sub_1E48782CC();

  v21(v17, v20);
  type metadata accessor for ViewMetrics(0);
  v24 = swift_allocObject();
  sub_1E487758C();
  *(v24 + 16) = xmmword_1E487BC80;
  *(v24 + 32) = xmmword_1E487BC90;
  *(v24 + 48) = xmmword_1E487BCA0;
  *(v24 + 64) = xmmword_1E487BCB0;
  *(v24 + 112) = 0x3FF0000000000000;
  *(v24 + 120) = 1;
  *(v24 + 128) = v22;
  *(v24 + 136) = v23;
  *(v24 + 144) = 1;
  *(v24 + 146) = 1;
  __asm { FMOV            V1.2D, #3.0 }

  *(v24 + 80) = xmmword_1E487BCC0;
  *(v24 + 96) = _Q1;
  v30 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEB8, &qword_1E487BF30);
  v32 = (v37 + *(result + 36));
  *v32 = v30;
  v32[1] = v24;
  return result;
}

uint64_t sub_1E478DDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEC0, &qword_1E487BF38);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v23 - v3;
  v5 = type metadata accessor for LargeListContentView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E487894C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v24 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v23 - v12);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E478D754(v13);
  if ((*(v9 + 88))(v13, v8) == *MEMORY[0x1E69857E0])
  {
    v14 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v15 = *(v14 + 20);
    v16 = sub_1E487732C();
    (*(*(v16 - 8) + 16))(v7, a1 + v15, v16);
    v17 = *(a1 + *(v14 + 24));
    *&v7[v5[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v7[v5[5]] = v17;
    v19 = &v7[v5[7]];
    *v19 = KeyPath;
    v19[8] = 0;
    sub_1E478E8E4(v7, v4, type metadata accessor for LargeListContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E478E7C4(qword_1EE2B2AB8, type metadata accessor for LargeListContentView, &unk_1E48806E8);

    sub_1E487803C();
    sub_1E478E94C(v7, type metadata accessor for LargeListContentView);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1E4878F9C();

    v27 = 0xD00000000000001BLL;
    v28 = 0x80000001E48A64A0;
    v21 = v24;
    sub_1E478D754(v24);
    sub_1E478E7C4(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v22 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v22);

    (*(v9 + 8))(v21, v8);
    MEMORY[0x1E69192D0](0xD000000000000010, 0x80000001E48A67E0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E478E25C@<X0>(_WORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

void *sub_1E478E2EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1E478E700(a2, a3, a4);
  result = sub_1E4877F2C();
  *a1 = v6;
  return result;
}

uint64_t sub_1E478E3C8(uint64_t a1)
{
  v2 = sub_1E4877F9C();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4877DAC();
}

unint64_t sub_1E478E558()
{
  result = qword_1EE2B1058;
  if (!qword_1EE2B1058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE90, &unk_1E487BE80);
    sub_1E478E5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1058);
  }

  return result;
}

unint64_t sub_1E478E5DC()
{
  result = qword_1EE2B1248;
  if (!qword_1EE2B1248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BEA0, &qword_1E487BE90);
    sub_1E478E7C4(qword_1EE2B2AB8, type metadata accessor for LargeListContentView, &unk_1E48806E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1248);
  }

  return result;
}

uint64_t sub_1E478E698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE90, &unk_1E487BE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E478E700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B2140;
  if (!qword_1EE2B2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B2140);
  }

  return result;
}

uint64_t sub_1E478E754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E478E7C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E478E80C()
{
  result = qword_1EE2B46B8;
  if (!qword_1EE2B46B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2B46B8);
  }

  return result;
}

uint64_t sub_1E478E858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1E478E8E4(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  v5 = sub_1E487732C();
  return (*(*(v5 - 8) + 24))(a2, v4, v5);
}

uint64_t sub_1E478E8E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E478E94C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E478E9AC()
{
  result = qword_1EE2B1310;
  if (!qword_1EE2B1310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BEB8, &qword_1E487BF30);
    sub_1E478EA64();
    sub_1E4773680(&qword_1EE2B10C8, &qword_1ECF7BEE0, &unk_1E487BFC0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1310);
  }

  return result;
}

unint64_t sub_1E478EA64()
{
  result = qword_1EE2B13E0;
  if (!qword_1EE2B13E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BEB0, &qword_1E487BF00);
    sub_1E478EB1C();
    sub_1E4773680(&qword_1EE2B10B0, &qword_1ECF7BED8, &unk_1E4882140, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13E0);
  }

  return result;
}

unint64_t sub_1E478EB1C()
{
  result = qword_1EE2B1538;
  if (!qword_1EE2B1538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BEA8, &unk_1E487BEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE90, &unk_1E487BE80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE98, &qword_1E487C870);
    sub_1E478E558();
    sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870, MEMORY[0x1E697DB70]);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1538);
  }

  return result;
}

uint64_t sub_1E478EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E487802C();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E487803C();
}

uint64_t sub_1E478ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E487802C();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E487803C();
}

uint64_t sub_1E478EE64()
{
  v1 = v0;
  v2 = type metadata accessor for Event(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for RectangularNextEventContentViewModel(0);
  MEMORY[0x1EEE9AC00](EventContentViewModel);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4799530(v1, v8, type metadata accessor for RectangularNextEventContentViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF10, &qword_1E487C180);

    v11 = *&v8[*(v10 + 64)];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF18, &qword_1E487C188);

    sub_1E4799598(&v8[*(v12 + 64)], v5, type metadata accessor for Event);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
    v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E487A7E0;
    sub_1E4799598(v5, v11 + v13, type metadata accessor for Event);
  }

  v14 = sub_1E487719C();
  (*(*(v14 - 8) + 8))(v8, v14);
  return v11;
}

double sub_1E478F0A8()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E48782FC();
  v4 = *MEMORY[0x1E6980EA0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  v6 = sub_1E48782CC();

  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_1E48781EC();
  v5(v3, v4, v0);
  v8 = sub_1E48782CC();

  v7(v3, v0);
  *&xmmword_1EE2BAD18 = 0x4010000000000000;
  BYTE8(xmmword_1EE2BAD18) = 1;
  *(&xmmword_1EE2BAD18 + 9) = *v11;
  HIDWORD(xmmword_1EE2BAD18) = *&v11[3];
  result = 0.0;
  xmmword_1EE2BAD28 = xmmword_1E487BFD0;
  xmmword_1EE2BAD38 = xmmword_1E487BFE0;
  byte_1EE2BAD48 = 0;
  *algn_1EE2BAD49 = *&v10[2];
  dword_1EE2BAD4C = *&v10[5];
  qword_1EE2BAD50 = v6;
  qword_1EE2BAD58 = v8;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E478F28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E478F2D4(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

void sub_1E478F37C(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E4799BBC(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E4799BBC(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E4799BBC(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E478F528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7BEE8;
  if (!qword_1ECF7BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BEE8);
  }

  return result;
}

uint64_t sub_1E478F598@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 32), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E478F7A0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 36), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E478F9A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v51 = type metadata accessor for Event(0);
  v48 = *(v51 - 8);
  v3 = MEMORY[0x1EEE9AC00](v51);
  v49 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v46 - v5;
  v53 = sub_1E487753C();
  v6 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v8 = (v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  EventContentViewModel = type metadata accessor for RectangularNextEventContentViewModel(0);
  v10 = MEMORY[0x1EEE9AC00](EventContentViewModel - 8);
  v52 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v46 - v12;
  v14 = sub_1E4877CCC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v46 - v19;
  sub_1E478F7A0((v46 - v19));
  sub_1E4877CAC();
  sub_1E479978C(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v21 = sub_1E4878EAC();
  v22 = *(v15 + 8);
  v22(v18, v14);
  v22(v20, v14);
  if (v21)
  {
    v23 = sub_1E487725C();
    return (*(*(v23 - 8) + 56))(v54, 1, 1, v23);
  }

  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  v26 = *(v2 + EventContentView[7]);
  v27 = *(v2 + EventContentView[5]);
  v28 = type metadata accessor for Utils();
  sub_1E478F598(v8);
  v29 = *(v2 + EventContentView[6] + 56);
  v46[1] = v28;
  v47 = v27;
  sub_1E48595A8(v2, v27, v8, v29, v13);
  v30 = *(v6 + 8);
  v31 = v53;
  v30(v8);
  v32 = sub_1E478EE64();
  v33 = v13;
  if ((v26 & 1) == 0)
  {
    sub_1E476DFDC(v32, v54);
LABEL_11:

    v43 = type metadata accessor for RectangularNextEventContentViewModel;
    v44 = v33;
    return sub_1E4799600(v44, v43);
  }

  sub_1E4799600(v13, type metadata accessor for RectangularNextEventContentViewModel);
  v34 = *(v32 + 16);

  v35 = v34 == 1;
  v36 = v54;
  v37 = v31;
  if (!v35)
  {
LABEL_10:
    sub_1E478F598(v8);
    sub_1E48595A8(v2, v47, v8, v29, v33);
    (v30)(v8, v37);
    v45 = sub_1E478EE64();
    sub_1E476DFDC(v45, v36);
    goto LABEL_11;
  }

  sub_1E478F598(v8);
  v38 = v52;
  sub_1E48595A8(v2, v47, v8, v29, v52);
  (v30)(v8, v37);
  v39 = sub_1E478EE64();
  sub_1E4799600(v38, type metadata accessor for RectangularNextEventContentViewModel);
  if (!*(v39 + 16))
  {

    goto LABEL_10;
  }

  v40 = v49;
  sub_1E4799530(v39 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v49, type metadata accessor for Event);

  v41 = v40;
  v42 = v50;
  sub_1E4799598(v41, v50, type metadata accessor for Event);
  sub_1E4773850(v42 + *(v51 + 44), v36, &unk_1ECF7B688, &qword_1E487C160);
  v43 = type metadata accessor for Event;
  v44 = v42;
  return sub_1E4799600(v44, v43);
}

uint64_t sub_1E478FF44@<X0>(uint64_t a1@<X8>)
{
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  v30 = *(EventContentView - 8);
  MEMORY[0x1EEE9AC00](EventContentView);
  v31 = v4;
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E4877F1C();
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEF0, &qword_1E487C128);
  v11 = v10[9];
  v12 = *(EventContentView + 36);
  v33 = v1;
  sub_1E4773850(v1 + v12, v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    (*(*(v13 - 8) + 32))(a1 + v11, v9, v13);
  }

  else
  {
    v14 = sub_1E4878DDC();
    v15 = sub_1E48780FC();
    sub_1E4877AAC(v14, &dword_1E475C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v28 + 8))(v6, v29);
  }

  v16 = v32;
  v17 = (v33 + *(EventContentView + 24));
  v18 = v17[3];
  v37 = v17[2];
  v38 = v18;
  v39 = *(v17 + 8);
  v19 = v17[1];
  v35 = *v17;
  v36 = v19;
  sub_1E4799530(v33, v32, type metadata accessor for RectangularNextEventContentView);
  v20 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v21 = swift_allocObject();
  sub_1E4799598(v16, v21 + v20, type metadata accessor for RectangularNextEventContentView);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v22 = a1 + v10[10];
  v23 = v38;
  *(v22 + 32) = v37;
  *(v22 + 48) = v23;
  *(v22 + 64) = v39;
  v24 = v36;
  *v22 = v35;
  *(v22 + 16) = v24;
  v25 = (a1 + v10[11]);
  *v25 = sub_1E47994A0;
  v25[1] = v21;
  return sub_1E477CB38(&v35, v34);
}

uint64_t sub_1E47902EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v20 = &v19 - v4;
  v21 = sub_1E48780BC();
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEF8, &qword_1E487C168);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF00, &qword_1E487C170);
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - v12;
  *v10 = sub_1E4877FAC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF08, &qword_1E487C178);
  sub_1E47905FC(a1, &v10[*(v14 + 44)]);
  sub_1E48780AC();
  v15 = sub_1E4773680(&qword_1EE2B0EC8, &qword_1ECF7BEF8, &qword_1E487C168, MEMORY[0x1E6981868]);
  sub_1E48785AC();
  (*(v5 + 8))(v7, v21);
  sub_1E47738B8(v10, &qword_1ECF7BEF8, &qword_1E487C168);
  v16 = v20;
  sub_1E478F9A8(v20);
  v23 = v8;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  v17 = v19;
  sub_1E48784BC();
  sub_1E47738B8(v16, &unk_1ECF7B688, &qword_1E487C160);
  return (*(v11 + 8))(v13, v17);
}

uint64_t sub_1E47905FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF28, &qword_1E487C198);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_1E4877F6C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF30, &qword_1E487C1A0);
  sub_1E47907D0(a1, &v9[*(v10 + 44)]);
  v11 = *(a1 + *(type metadata accessor for RectangularNextEventContentView(0) + 24) + 48);
  sub_1E4773850(v9, v7, &qword_1ECF7BF28, &qword_1E487C198);
  sub_1E4773850(v7, a2, &qword_1ECF7BF28, &qword_1E487C198);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF38, &qword_1E487C1A8) + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 9) = v11;
  sub_1E47738B8(v9, &qword_1ECF7BF28, &qword_1E487C198);
  sub_1E47738B8(v7, &qword_1ECF7BF28, &qword_1E487C198);
}

uint64_t sub_1E47907D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v95 = a1;
  v93 = type metadata accessor for NoEventsView(0);
  MEMORY[0x1EEE9AC00](v93);
  v78 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContent = type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0);
  MEMORY[0x1EEE9AC00](EventContent);
  v79 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF40, &qword_1E487C1B0);
  MEMORY[0x1EEE9AC00](v87);
  v92 = &v76 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF48, &qword_1E487C1B8);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v76 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF50, &qword_1E487C1C0);
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v76 - v6;
  v81 = type metadata accessor for RectangularNextEventContentView.SingleEventView(0);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1E487719C();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v96 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487753C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  EventContentViewModel = type metadata accessor for RectangularNextEventContentViewModel(0);
  MEMORY[0x1EEE9AC00](EventContentViewModel);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF58, &qword_1E487C1C8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v76 - v21;
  sub_1E4878D2C();
  v88 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  v23 = v95;
  v24 = *(v95 + *(EventContentView + 20));
  type metadata accessor for Utils();
  sub_1E478F598(v14);
  v25 = v23 + *(EventContentView + 24);
  v26 = *(v25 + 56);
  sub_1E48595A8(v23, v24, v14, v26, v17);
  (*(v12 + 8))(v14, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v64 = *v17;
      v65 = sub_1E487732C();
      v66 = v78;
      (*(*(v65 - 8) + 16))(v78, v95, v65);
      v67 = *(v25 + 64);
      KeyPath = swift_getKeyPath();
      v69 = swift_getKeyPath();
      v70 = v93;
      *(v66 + *(v93 + 40)) = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      *(v66 + v70[11]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      *(v66 + v70[5]) = v64;
      *(v66 + v70[6]) = 0;
      *(v66 + v70[7]) = v26;
      *(v66 + v70[8]) = v67;
      v71 = v66 + v70[9];
      *v71 = KeyPath;
      *(v71 + 8) = 0;
      sub_1E4799530(v66, v92, type metadata accessor for NoEventsView);
      swift_storeEnumTagMultiPayload();
      sub_1E47996A0();
      sub_1E479978C(qword_1EE2B3DE0, type metadata accessor for NoEventsView, &unk_1E48830DC);

      v46 = v89;
      sub_1E487803C();
      sub_1E4799600(v66, type metadata accessor for NoEventsView);
      goto LABEL_9;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF10, &qword_1E487C180);
    v29 = &v17[*(v28 + 48)];
    v30 = *v29;
    v31 = v29[1];
    v32 = *&v17[*(v28 + 64)];
    v33 = v84;
    v34 = v96;
    v35 = v85;
    (*(v84 + 32))(v96, v17, v85);
    v36 = EventContent;
    v37 = v79;
    (*(v33 + 16))(&v79[*(EventContent + 28)], v34, v35);
    v38 = *(v25 + 48);
    v100 = *(v25 + 32);
    v101 = v38;
    v102 = *(v25 + 64);
    v39 = *(v25 + 16);
    v98 = *v25;
    v99 = v39;
    v40 = swift_getKeyPath();
    *(v37 + v36[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v37 = v40;
    *(v37 + 8) = 0;
    *(v37 + v36[6]) = v32;
    v41 = (v37 + v36[8]);
    *v41 = v30;
    v41[1] = v31;
    v42 = v37 + v36[9];
    v43 = v101;
    *(v42 + 32) = v100;
    *(v42 + 48) = v43;
    *(v42 + 64) = v102;
    v44 = v99;
    *v42 = v98;
    *(v42 + 16) = v44;
    sub_1E4799530(v37, v82, type metadata accessor for RectangularNextEventContentView.ConflictingEventsView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB38(&v98, v97);
    sub_1E479978C(qword_1EE2B1CA8, type metadata accessor for RectangularNextEventContentView.SingleEventView, &unk_1E487C3A8);
    sub_1E479978C(qword_1EE2B1D50, type metadata accessor for RectangularNextEventContentView.ConflictingEventsView, &unk_1E487C358);
    v45 = v86;
    sub_1E487803C();
    sub_1E4773850(v45, v92, &qword_1ECF7BF50, &qword_1E487C1C0);
    swift_storeEnumTagMultiPayload();
    sub_1E47996A0();
    sub_1E479978C(qword_1EE2B3DE0, type metadata accessor for NoEventsView, &unk_1E48830DC);
    v46 = v89;
    sub_1E487803C();
    sub_1E47738B8(v45, &qword_1ECF7BF50, &qword_1E487C1C0);
    v47 = type metadata accessor for RectangularNextEventContentView.ConflictingEventsView;
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF18, &qword_1E487C188);
    v49 = &v17[*(v48 + 48)];
    v50 = *v49;
    v51 = v49[1];
    v52 = *(v48 + 64);
    v33 = v84;
    v53 = v96;
    v35 = v85;
    (*(v84 + 32))(v96, v17, v85);
    v37 = v76;
    sub_1E4799598(&v17[v52], v76, type metadata accessor for Event);
    v54 = v81;
    v55 = v77;
    sub_1E4799530(v37, &v77[*(v81 + 24)], type metadata accessor for Event);
    (*(v33 + 16))(v55 + v54[7], v53, v35);
    v56 = *(v25 + 48);
    v100 = *(v25 + 32);
    v101 = v56;
    v102 = *(v25 + 64);
    v57 = *(v25 + 16);
    v98 = *v25;
    v99 = v57;
    v58 = swift_getKeyPath();
    *(v55 + v54[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v55 = v58;
    *(v55 + 8) = 0;
    v59 = (v55 + v54[8]);
    *v59 = v50;
    v59[1] = v51;
    v60 = v55 + v54[9];
    v61 = v101;
    *(v60 + 32) = v100;
    *(v60 + 48) = v61;
    *(v60 + 64) = v102;
    v62 = v99;
    *v60 = v98;
    *(v60 + 16) = v62;
    *(v55 + v54[10]) = 0;
    sub_1E4799530(v55, v82, type metadata accessor for RectangularNextEventContentView.SingleEventView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB38(&v98, v97);
    sub_1E479978C(qword_1EE2B1CA8, type metadata accessor for RectangularNextEventContentView.SingleEventView, &unk_1E487C3A8);
    sub_1E479978C(qword_1EE2B1D50, type metadata accessor for RectangularNextEventContentView.ConflictingEventsView, &unk_1E487C358);
    v63 = v86;
    sub_1E487803C();
    sub_1E4773850(v63, v92, &qword_1ECF7BF50, &qword_1E487C1C0);
    swift_storeEnumTagMultiPayload();
    sub_1E47996A0();
    sub_1E479978C(qword_1EE2B3DE0, type metadata accessor for NoEventsView, &unk_1E48830DC);
    v46 = v89;
    sub_1E487803C();
    sub_1E47738B8(v63, &qword_1ECF7BF50, &qword_1E487C1C0);
    sub_1E4799600(v55, type metadata accessor for RectangularNextEventContentView.SingleEventView);
    v47 = type metadata accessor for Event;
  }

  sub_1E4799600(v37, v47);
  (*(v33 + 8))(v96, v35);
LABEL_9:
  v72 = v90;
  sub_1E4773850(v46, v90, &qword_1ECF7BF58, &qword_1E487C1C8);
  v73 = v94;
  sub_1E4773850(v72, v94, &qword_1ECF7BF58, &qword_1E487C1C8);
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF60, &qword_1E487C238) + 48);
  *v74 = 0;
  *(v74 + 8) = 0;
  sub_1E47738B8(v46, &qword_1ECF7BF58, &qword_1E487C1C8);
  sub_1E47738B8(v72, &qword_1ECF7BF58, &qword_1E487C1C8);
}

uint64_t sub_1E47915D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = *(a1 + 16);
  v40 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v39 = &v38 - v8;
  v41 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4877CCC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C168, &qword_1E487C710);
  v47 = v3;
  v15 = sub_1E487804C();
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v38 - v16;
  sub_1E4877CAC();
  sub_1E479978C(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v17 = v2;
  v18 = sub_1E4878EAC();
  v19 = (*(v12 + 8))(v14, v11);
  v20 = v41;
  if (v18)
  {
    (*(v9 + 16))(v42, v17, v41);
    v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v22 = v21 + v10;
    v23 = (v21 + v10) & 0xFFFFFFFFFFFFFFF8;
    v40 = v15;
    v24 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v27 = *(v20 + 24);
    *(v26 + 16) = v47;
    *(v26 + 24) = v27;
    (*(v9 + 32))(v26 + v21, v42, v20);
    *(v26 + v22) = 0;
    v28 = v26 + v23;
    *(v28 + 8) = 0xD000000000000022;
    *(v28 + 16) = 0x80000001E48A6B20;
    v29 = (v26 + v24);
    v15 = v40;
    *v29 = 0xD000000000000022;
    v29[1] = 0x80000001E48A6B20;
    v30 = (v26 + v25);
    *v30 = 0xD000000000000022;
    v30[1] = 0x80000001E48A6B20;
    v48[0] = sub_1E479A8B0;
    v48[1] = v26;
    v31 = sub_1E4773680(&qword_1EE2B1620, &qword_1ECF7C168, &qword_1E487C710, MEMORY[0x1E697E370]);
    v32 = v44;
    sub_1E478EC74(v48, v43, v47, v31, v27);
  }

  else
  {
    (*(v17 + *(v41 + 44)))(v19);
    v27 = *(v20 + 24);
    v33 = v39;
    v34 = v47;
    sub_1E4822468();
    v35 = *(v40 + 8);
    v35(v6, v34);
    sub_1E4822468();
    v36 = sub_1E4773680(&qword_1EE2B1620, &qword_1ECF7C168, &qword_1E487C710, MEMORY[0x1E697E370]);
    v32 = v44;
    sub_1E478ED6C(v6, v43, v34, v36, v27);
    v35(v6, v34);
    v35(v33, v34);
  }

  v48[2] = sub_1E4773680(&qword_1EE2B1620, &qword_1ECF7C168, &qword_1E487C710, MEMORY[0x1E697E370]);
  v48[3] = v27;
  swift_getWitnessTable();
  sub_1E4822468();
  return (*(v45 + 8))(v32, v15);
}

uint64_t sub_1E4791B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a9 = sub_1E4877FAC();
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C170, &qword_1E487C718);
  sub_1E4791C64(a2, a3 & 1, a4, a5, a6, a7, a10, a9 + *(v16 + 44), a1, a11, a12);
}

uint64_t sub_1E4791C64@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + *(type metadata accessor for RectangularNextEventContentView.RedactionProvider(0, a11, a12, v16) + 40) + 24);
  *a9 = sub_1E4877F6C();
  *(a9 + 8) = v17;
  *(a9 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C178, &qword_1E487C720);
  sub_1E4791DA0(a2 & 1, a1, a3, a4, a5, a6, a8, a9 + *(v18 + 44), a10, a11, a12);
}

uint64_t sub_1E4791DA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v49 = a8;
  v50 = a3;
  v53 = a5;
  v54 = a6;
  v52 = a4;
  v57 = a9;
  v51 = a10;
  v14 = type metadata accessor for ColorBarView(0);
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ColorBarView.Styling(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C180, &qword_1E487C728);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v55 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  sub_1E4878D2C();
  v56 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = a11;
  if (a1)
  {
    v26 = sub_1E487863C();
    v28 = (a2 + *(type metadata accessor for RectangularNextEventContentView.RedactionProvider(0, a11, a12, v27) + 40));
    v46 = a11;
    v29 = v24;
    v30 = *v28;
    v31 = v28[4];
    sub_1E487735C();
    v19[48] = 0;
    *v19 = v26;
    *(v19 + 1) = v30;
    v24 = v29;
    v19[16] = 0;
    *(v19 + 3) = 3;
    *(v19 + 4) = 0;
    *(v19 + 5) = v31;
    KeyPath = swift_getKeyPath();
    v33 = v48;
    *&v16[*(v48 + 20)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v34 = swift_getKeyPath();
    sub_1E4799598(v19, v16, type metadata accessor for ColorBarView.Styling);
    v35 = &v16[*(v33 + 24)];
    *v35 = v34;
    v35[8] = 0;
    sub_1E4799598(v16, v29, type metadata accessor for ColorBarView);
    v36 = v33;
    v25 = v46;
    (*(v47 + 56))(v29, 0, 1, v36);
  }

  else
  {
    (*(v47 + 56))(v24, 1, 1, v48);
  }

  v37 = sub_1E4877FBC();
  v59 = 0;
  sub_1E47922A8(v63, v25, a12);
  memcpy(v60, v63, sizeof(v60));
  memcpy(v61, v63, sizeof(v61));
  sub_1E4773850(v60, v62, &qword_1ECF7C188, &qword_1E487C730);
  sub_1E47738B8(v61, &qword_1ECF7C188, &qword_1E487C730);
  memcpy(&v58[7], v60, 0x138uLL);
  v38 = v59;
  v39 = v55;
  sub_1E4773850(v24, v55, &qword_1ECF7C180, &qword_1E487C728);
  v40 = v57;
  sub_1E4773850(v39, v57, &qword_1ECF7C180, &qword_1E487C728);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C190, &qword_1E487C738);
  v42 = v24;
  v43 = *(v41 + 48);
  v62[0] = v37;
  v62[1] = 0;
  LOBYTE(v62[2]) = v38;
  memcpy(&v62[2] + 1, v58, 0x13FuLL);
  memcpy((v40 + v43), v62, 0x150uLL);
  v44 = v40 + *(v41 + 64);
  *v44 = 0;
  *(v44 + 8) = 0;
  sub_1E4773850(v62, v63, &qword_1ECF7C198, &qword_1E487C740);
  sub_1E47738B8(v42, &qword_1ECF7C180, &qword_1E487C728);
  v63[0] = v37;
  v63[1] = 0;
  LOBYTE(v63[2]) = v38;
  memcpy(&v63[2] + 1, v58, 0x13FuLL);
  sub_1E47738B8(v63, &qword_1ECF7C198, &qword_1E487C740);
  sub_1E47738B8(v39, &qword_1ECF7C180, &qword_1E487C728);
}

uint64_t sub_1E47922A8@<X0>(void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for RectangularNextEventContentView.RedactionProvider(0, a9, a10, v10);
  sub_1E47925A8(&v28);
  sub_1E47925A8(&v21);
  sub_1E4877BEC();
  sub_1E47925A8(&v14);
  v35[4] = v32;
  v35[5] = v33;
  v36 = v34;
  v35[0] = v28;
  v35[1] = v29;
  v35[2] = v30;
  v35[3] = v31;
  *__src = v28;
  *&__src[16] = v29;
  *&__src[32] = v30;
  *&__src[48] = v31;
  *&__src[64] = v32;
  *&__src[80] = v33;
  *&__src[96] = v34;
  v37[0] = v21;
  v37[1] = v22;
  v38 = v27;
  v37[4] = v25;
  v37[5] = v26;
  v37[2] = v23;
  v37[3] = v24;
  *&__src[120] = v22;
  *&__src[104] = v21;
  *&__src[136] = v23;
  *&__src[168] = v25;
  *&__src[152] = v24;
  *&__src[184] = v26;
  *&__src[200] = v27;
  v39[0] = v14;
  v39[1] = v15;
  v40 = v20;
  v39[4] = v18;
  v39[5] = v19;
  v39[2] = v16;
  v39[3] = v17;
  *&__src[208] = v14;
  *&__src[224] = v15;
  *&__src[304] = v20;
  *&__src[272] = v18;
  *&__src[288] = v19;
  *&__src[240] = v16;
  *&__src[256] = v17;
  memcpy(a8, __src, 0x138uLL);
  v41[4] = v18;
  v41[5] = v19;
  v42 = v20;
  v41[0] = v14;
  v41[1] = v15;
  v41[3] = v17;
  v41[2] = v16;
  sub_1E4773850(v35, v45, &qword_1ECF7C1A0, &qword_1E487C748);
  sub_1E4773850(v37, v45, &qword_1ECF7C1A0, &qword_1E487C748);
  sub_1E4773850(v39, v45, &qword_1ECF7C1A0, &qword_1E487C748);
  sub_1E47738B8(v41, &qword_1ECF7C1A0, &qword_1E487C748);
  v43[4] = v25;
  v43[5] = v26;
  v44 = v27;
  v43[0] = v21;
  v43[1] = v22;
  v43[3] = v24;
  v43[2] = v23;
  sub_1E47738B8(v43, &qword_1ECF7C1A0, &qword_1E487C748);
  v45[4] = v32;
  v45[5] = v33;
  v46 = v34;
  v45[0] = v28;
  v45[1] = v29;
  v45[2] = v30;
  v45[3] = v31;
  sub_1E47738B8(v45, &qword_1ECF7C1A0, &qword_1E487C748);
}

__n128 sub_1E47925A8@<Q0>(uint64_t a6@<X8>)
{

  v7 = sub_1E487842C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  KeyPath = swift_getKeyPath();
  sub_1E487889C();
  sub_1E4877BCC();
  *&v16[7] = v17;
  *&v16[23] = v18;
  *&v16[39] = v19;
  *(a6 + 65) = *&v16[16];
  result = *&v16[32];
  *(a6 + 81) = *&v16[32];
  *a6 = v7;
  *(a6 + 8) = v9;
  *(a6 + 16) = v11 & 1;
  *(a6 + 24) = v13;
  *(a6 + 32) = KeyPath;
  *(a6 + 40) = 1;
  *(a6 + 48) = 0;
  *(a6 + 49) = *v16;
  *(a6 + 96) = *(&v19 + 1);
  return result;
}

uint64_t sub_1E47926D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v175 = a2;
  v185 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF80, &qword_1E487C400);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v143 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF88, &qword_1E487C408);
  MEMORY[0x1EEE9AC00](v7);
  v145 = &v143 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF90, &qword_1E487C410);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v164 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v162 = (&v143 - v12);
  v13 = type metadata accessor for ColorBarView(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v163 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v161 = &v143 - v16;
  v17 = type metadata accessor for ColorBarView.Styling(0);
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF98, &qword_1E487C418);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v143 - v20;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFA0, &qword_1E487C420);
  MEMORY[0x1EEE9AC00](v165);
  v170 = &v143 - v22;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFA8, &qword_1E487C428);
  MEMORY[0x1EEE9AC00](v184);
  v166 = &v143 - v23;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFB0, &qword_1E487C430);
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v143 - v24;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFB8, &qword_1E487C438);
  MEMORY[0x1EEE9AC00](v182);
  v160 = &v143 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFC0, &qword_1E487C440);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v153 = (&v143 - v27);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFC8, &qword_1E487C448);
  v28 = MEMORY[0x1EEE9AC00](v151);
  v155 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v154 = &v143 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v158 = &v143 - v32;
  v150 = sub_1E487719C();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFD0, &qword_1E487C450);
  v156 = *(v157 - 8);
  v34 = MEMORY[0x1EEE9AC00](v157);
  v152 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v171 = &v143 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFD8, &qword_1E487C458);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v180 = &v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v143 - v40;
  v42 = sub_1E4878D2C();
  v179 = sub_1E4878D1C();
  v147 = v42;
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v187 = v41;
  EventContent = type metadata accessor for RectangularNextEventContentView.SingleEventView(0);
  v46 = EventContent;
  v47 = (a1 + *(EventContent + 32));
  v48 = v47[1];
  v169 = v6;
  v168 = v7;
  v167 = v4;
  v186 = v21;
  if (v48)
  {
    v143 = v17;
    v144 = v13;
    *&v192 = *v47;
    *(&v192 + 1) = v48;
    sub_1E477A374(EventContent, v44, v45);

    v49 = sub_1E487848C();
    v51 = v50;
    v53 = v52;
    v54 = sub_1E487842C();
    v56 = v55;
    v58 = v57;
    sub_1E477A3C8(v49, v51, v53 & 1);

    v146 = a1;
    if (sub_1E4794C88())
    {
      if (qword_1EE2B3C50 != -1)
      {
        swift_once();
      }
    }

    else
    {
      sub_1E48786FC();
    }

    v59 = sub_1E48783FC();
    v61 = v60;
    v63 = v62;
    v65 = v64;

    sub_1E477A3C8(v54, v56, v58 & 1);

    KeyPath = swift_getKeyPath();
    v178 = v59;
    v177 = v61;
    v173 = v63 & 1;
    sub_1E478B8E0(v59, v61, v63 & 1);
    v176 = v65;

    v174 = KeyPath;

    v172 = 1;
    a1 = v146;
    v21 = v186;
    v13 = v144;
  }

  else
  {
    v178 = 0;
    v177 = 0;
    v173 = 0;
    v176 = 0;
    v174 = 0;
    v172 = 0;
  }

  v67 = a1 + v46[6];
  if ((*(v67 + *(type metadata accessor for Event(0) + 56)) & 0xFE) == 6)
  {
    (*(v149 + 16))(v148, a1 + v46[7], v150);
    v68 = sub_1E487847C();
    v70 = v69;
    v72 = v71;
    v186 = (a1 + v46[9]);
    v73 = sub_1E487842C();
    v75 = v74;
    v76 = a1;
    v78 = v77;
    v80 = v79;
    sub_1E477A3C8(v68, v70, v72 & 1);

    v81 = swift_getKeyPath();
    sub_1E4794C88();
    v82 = swift_getKeyPath();
    v189 = v78 & 1;
    v188 = 0;
    *&v192 = v73;
    *(&v192 + 1) = v75;
    LOBYTE(v193) = v78 & 1;
    *(&v193 + 1) = v80;
    *&v194 = v81;
    *(&v194 + 1) = 1;
    LOBYTE(v195) = 0;
    v83 = v175;
    *(&v195 + 1) = v82;
    *&v196 = v175;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
    sub_1E479A240();
    v84 = v171;
    sub_1E48784AC();
    v190[2] = v194;
    v190[3] = v195;
    v191 = v196;
    v190[1] = v193;
    v190[0] = v192;
    sub_1E47738B8(v190, &qword_1ECF7C000, &unk_1E48825D0);
    v85 = sub_1E4877F6C();
    v86 = *(v186 + 3);
    v87 = v153;
    *v153 = v85;
    *(v87 + 8) = v86;
    *(v87 + 16) = 0;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C008, &qword_1E487C548);
    sub_1E4793B5C(v76, v83, (v87 + *(v88 + 44)));
    sub_1E4794C88();
    sub_1E487889C();
    sub_1E4877CEC();
    v89 = v154;
    sub_1E477372C(v87, v154, &qword_1ECF7BFC0, &qword_1E487C440);
    v90 = (v89 + *(v151 + 36));
    v91 = v195;
    v92 = v197;
    v93 = v198;
    v90[4] = v196;
    v90[5] = v92;
    v90[6] = v93;
    v94 = v193;
    v95 = v194;
    *v90 = v192;
    v90[1] = v94;
    v90[2] = v95;
    v90[3] = v91;
    v96 = v158;
    sub_1E477372C(v89, v158, &qword_1ECF7BFC8, &qword_1E487C448);
    v97 = v156;
    v98 = *(v156 + 16);
    v99 = v152;
    v100 = v157;
    v98(v152, v84, v157);
    v101 = v155;
    sub_1E4773850(v96, v155, &qword_1ECF7BFC8, &qword_1E487C448);
    v102 = v160;
    v98(v160, v99, v100);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C010, &qword_1E487C550);
    sub_1E4773850(v101, v102 + *(v103 + 48), &qword_1ECF7BFC8, &qword_1E487C448);
    sub_1E47738B8(v101, &qword_1ECF7BFC8, &qword_1E487C448);
    v104 = *(v97 + 8);
    v104(v99, v100);
    sub_1E4773850(v102, v183, &qword_1ECF7BFB8, &qword_1E487C438);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0E98, &qword_1ECF7BFB8, &qword_1E487C438, MEMORY[0x1E6981F50]);
    sub_1E479A114();
    v105 = v187;
    sub_1E487803C();
    sub_1E47738B8(v102, &qword_1ECF7BFB8, &qword_1E487C438);
    sub_1E47738B8(v96, &qword_1ECF7BFC8, &qword_1E487C448);
    v104(v171, v100);
  }

  else
  {
    v106 = sub_1E4877F5C();
    v107 = (a1 + v46[9]);
    v108 = v107[3];
    *v21 = v106;
    *(v21 + 1) = v108;
    v21[16] = 0;
    v171 = sub_1E4878D1C();
    sub_1E4878D0C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v109 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFE0, &qword_1E487C460) + 44)];
    v110 = *v107;
    v111 = v107[4];
    v112 = v159;
    sub_1E487735C();
    *(v112 + 48) = 1;
    v113 = v175;
    *v112 = v175;
    *(v112 + 8) = v110;
    *(v112 + 16) = 0;
    *(v112 + 24) = 3;
    *(v112 + 32) = 0;
    *(v112 + 40) = v111;
    v114 = v161;
    sub_1E4799530(v112, v161, type metadata accessor for ColorBarView.Styling);
    *(v114 + *(v13 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v115 = swift_getKeyPath();
    v116 = v114 + *(v13 + 24);
    *v116 = v115;
    *(v116 + 8) = 0;

    v117 = sub_1E4877FBC();
    v118 = v107[2];
    v119 = v162;
    *v162 = v117;
    *(v119 + 8) = v118;
    *(v119 + 16) = 0;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFE8, &qword_1E487C4C0);
    sub_1E47940FC(a1, v113, (v119 + *(v120 + 44)));
    v121 = v163;
    sub_1E4799530(v114, v163, type metadata accessor for ColorBarView);
    v122 = v164;
    sub_1E4773850(v119, v164, &qword_1ECF7BF90, &qword_1E487C410);
    sub_1E4799530(v121, v109, type metadata accessor for ColorBarView);
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFF0, &qword_1E487C4C8);
    sub_1E4773850(v122, v109 + *(v123 + 48), &qword_1ECF7BF90, &qword_1E487C410);
    sub_1E47738B8(v119, &qword_1ECF7BF90, &qword_1E487C410);
    sub_1E4799600(v114, type metadata accessor for ColorBarView);
    sub_1E4799600(v112, type metadata accessor for ColorBarView.Styling);
    sub_1E47738B8(v122, &qword_1ECF7BF90, &qword_1E487C410);
    sub_1E4799600(v121, type metadata accessor for ColorBarView);

    sub_1E4794C88();
    sub_1E487889C();
    sub_1E4877CEC();
    v124 = v170;
    sub_1E477372C(v186, v170, &qword_1ECF7BF98, &qword_1E487C418);
    v125 = (v124 + *(v165 + 36));
    v126 = v195;
    v127 = v197;
    v128 = v198;
    v125[4] = v196;
    v125[5] = v127;
    v125[6] = v128;
    v129 = v193;
    v130 = v194;
    *v125 = v192;
    v125[1] = v129;
    v125[2] = v130;
    v125[3] = v126;
    if (sub_1E4794C88())
    {
      sub_1E4773850(v124, v169, &qword_1ECF7BFA0, &qword_1E487C420);
      swift_storeEnumTagMultiPayload();
      sub_1E4799FD0();
      sub_1E479A05C();
      v131 = v166;
      sub_1E487803C();
    }

    else
    {
      v132 = v145;
      sub_1E4773850(v124, v145, &qword_1ECF7BFA0, &qword_1E487C420);
      sub_1E4773850(v132, v169, &qword_1ECF7BF88, &qword_1E487C408);
      swift_storeEnumTagMultiPayload();
      sub_1E4799FD0();
      sub_1E479A05C();
      v131 = v166;
      v124 = v170;
      sub_1E487803C();
      sub_1E47738B8(v132, &qword_1ECF7BF88, &qword_1E487C408);
    }

    v105 = v187;
    sub_1E47738B8(v124, &qword_1ECF7BFA0, &qword_1E487C420);
    sub_1E4773850(v131, v183, &qword_1ECF7BFA8, &qword_1E487C428);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0E98, &qword_1ECF7BFB8, &qword_1E487C438, MEMORY[0x1E6981F50]);
    sub_1E479A114();
    sub_1E487803C();
    sub_1E47738B8(v131, &qword_1ECF7BFA8, &qword_1E487C428);
  }

  v133 = v180;
  sub_1E4773850(v105, v180, &qword_1ECF7BFD8, &qword_1E487C458);
  v134 = v185;
  v135 = v178;
  v136 = v177;
  *v185 = v178;
  v134[1] = v136;
  v137 = v173;
  v138 = v176;
  v134[2] = v173;
  v134[3] = v138;
  v139 = v174;
  v140 = v172;
  v134[4] = v174;
  v134[5] = v140;
  *(v134 + 48) = 0;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFF8, &qword_1E487C4D0);
  sub_1E4773850(v133, v134 + *(v141 + 48), &qword_1ECF7BFD8, &qword_1E487C458);
  sub_1E479A1A0(v135, v136, v137, v138, v139);
  sub_1E479A1F0(v135, v136, v137, v138, v139);
  sub_1E47738B8(v187, &qword_1ECF7BFD8, &qword_1E487C458);
  sub_1E47738B8(v133, &qword_1ECF7BFD8, &qword_1E487C458);
  sub_1E479A1F0(v135, v136, v137, v138, v139);
}

uint64_t sub_1E4793B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C018, &qword_1E487C558);
  v52 = *(v53 - 8);
  v5 = MEMORY[0x1EEE9AC00](v53);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v46 - v7;
  sub_1E4878D2C();
  v51 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  EventContent = type metadata accessor for RectangularNextEventContentView.SingleEventView(0);
  type metadata accessor for Event(0);
  sub_1E4878BDC();
  v9 = sub_1E487874C();
  v54 = EventContent;
  sub_1E487822C();
  v10 = sub_1E487829C();
  KeyPath = swift_getKeyPath();
  sub_1E4794C88();
  v12 = swift_getKeyPath();
  v62 = v9;
  v63 = KeyPath;
  v64 = v10;
  v65 = v12;
  v66 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C020, &qword_1E487C590);
  sub_1E479A2F8();
  sub_1E48784AC();

  v62 = sub_1E47CC708();
  v63 = v13;
  sub_1E477A374(v62, v13, v14);
  v15 = sub_1E487848C();
  v17 = v16;
  v19 = v18;
  v20 = sub_1E487842C();
  v22 = v21;
  v24 = v23;
  sub_1E477A3C8(v15, v17, v19 & 1);

  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C68 != -1)
    {
      swift_once();
    }
  }

  v48 = sub_1E48783FC();
  v47 = v25;
  v27 = v26;
  v49 = v28;

  sub_1E477A3C8(v20, v22, v24 & 1);

  v29 = 1;
  if (!*(a1 + *(v54 + 32) + 8))
  {
    v29 = 2;
  }

  v54 = v29;
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v32 = v27 & 1;
  v75 = v32;
  v73 = 0;
  v33 = v52;
  v34 = *(v52 + 16);
  v35 = v55;
  v36 = v53;
  v34(v55, v56, v53);
  v37 = v50;
  v34(v50, v35, v36);
  v38 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C030, &qword_1E487C5D8) + 48)];
  v39 = v48;
  *&v57 = v48;
  v40 = v47;
  *(&v57 + 1) = v47;
  LOBYTE(v58) = v32;
  *(&v58 + 1) = *v74;
  DWORD1(v58) = *&v74[3];
  v41 = v49;
  *(&v58 + 1) = v49;
  *&v59 = v30;
  *(&v59 + 1) = v54;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = *v72;
  DWORD1(v60) = *&v72[3];
  *(&v60 + 1) = v31;
  v61 = 0xBFF0000000000000;
  *(v38 + 8) = 0xBFF0000000000000;
  v42 = v58;
  *v38 = v57;
  *(v38 + 1) = v42;
  v43 = v60;
  *(v38 + 2) = v59;
  *(v38 + 3) = v43;
  sub_1E4773850(&v57, &v62, &qword_1ECF7C038, &qword_1E487C5E0);
  v44 = *(v33 + 8);
  v44(v56, v36);
  v62 = v39;
  v63 = v40;
  LOBYTE(v64) = v32;
  *(&v64 + 1) = *v74;
  HIDWORD(v64) = *&v74[3];
  v65 = v41;
  v66 = v30;
  v67 = v54;
  v68 = 0;
  *v69 = *v72;
  *&v69[3] = *&v72[3];
  v70 = v31;
  v71 = 0xBFF0000000000000;
  sub_1E47738B8(&v62, &qword_1ECF7C038, &qword_1E487C5E0);
  v44(v55, v36);
}

uint64_t sub_1E47940FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v114 = a2;
  v112 = a3;
  v116 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for LocationView(0);
  v108 = *(v113 - 8);
  v5 = MEMORY[0x1EEE9AC00](v113);
  v101 = (&v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C040, &qword_1E487C5E8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v111 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v98 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v98 - v13;
  v14 = sub_1E487719C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFD0, &qword_1E487C450);
  v109 = *(v18 - 8);
  v110 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v117 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v98 - v21;
  sub_1E4878D2C();
  v107 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  EventContent = type metadata accessor for RectangularNextEventContentView.SingleEventView(0);
  (*(v15 + 16))(v17, a1 + EventContent[7], v14);
  v23 = sub_1E487847C();
  v25 = v24;
  v27 = v26;
  v28 = sub_1E487844C();
  v30 = v29;
  v120 = a1;
  v32 = v31;
  sub_1E477A3C8(v23, v25, v27 & 1);

  v115 = v120 + EventContent[6];
  LODWORD(v104) = *(v115 + *(v116 + 56)) - 3 < 2;
  v33 = sub_1E48783EC();
  v35 = v34;
  v37 = v36;
  sub_1E477A3C8(v28, v30, v32 & 1);

  v105 = EventContent;
  v103 = v120 + EventContent[9];
  v38 = sub_1E487842C();
  v40 = v39;
  LOBYTE(v28) = v41;
  v43 = v42;
  sub_1E477A3C8(v33, v35, v37 & 1);

  KeyPath = swift_getKeyPath();
  sub_1E4794C88();
  v45 = swift_getKeyPath();
  v138 = v28 & 1;
  v137 = 0;
  *&v130 = v38;
  *(&v130 + 1) = v40;
  LOBYTE(v131) = v28 & 1;
  *(&v131 + 1) = v43;
  *&v132 = KeyPath;
  *(&v132 + 1) = 1;
  LOBYTE(v133) = 0;
  *(&v133 + 1) = v45;
  v134 = v114;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
  sub_1E479A240();
  sub_1E48784AC();
  v135[1] = v131;
  v135[2] = v132;
  v135[3] = v133;
  v136 = v134;
  v135[0] = v130;
  sub_1E47738B8(v135, &qword_1ECF7C000, &unk_1E48825D0);
  *&v130 = sub_1E47CC708();
  *(&v130 + 1) = v46;
  sub_1E477A374(v130, v46, v47);
  v48 = sub_1E487848C();
  v50 = v49;
  LOBYTE(v40) = v51;
  v52 = sub_1E48783EC();
  v54 = v53;
  LOBYTE(v25) = v55;
  sub_1E477A3C8(v48, v50, v40 & 1);

  v99 = *(v103 + 64);
  v56 = sub_1E487842C();
  v58 = v57;
  v60 = v59;
  v61 = v120;
  sub_1E477A3C8(v52, v54, v25 & 1);

  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C68 != -1)
    {
      swift_once();
    }
  }

  v103 = sub_1E48783FC();
  v104 = v62;
  v114 = v63;
  v65 = v64;

  sub_1E477A3C8(v56, v58, v60 & 1);

  v66 = v115;
  v67 = v106;
  sub_1E4773850(v115 + *(v116 + 60), v106, &qword_1ECF7C048, &qword_1E487C5F0);
  v68 = type metadata accessor for Location(0);
  v69 = 1;
  v70 = (*(*(v68 - 8) + 48))(v67, 1, v68);
  sub_1E47738B8(v67, &qword_1ECF7C048, &qword_1E487C5F0);
  if (v70 == 1)
  {
    v71 = v105;
    if (*(v61 + *(v105 + 32) + 8))
    {
      v69 = 1;
    }

    else
    {
      v69 = 2;
    }

    v72 = v118;
    v73 = v113;
  }

  else
  {
    v72 = v118;
    v73 = v113;
    v71 = v105;
  }

  v106 = swift_getKeyPath();
  v105 = swift_getKeyPath();
  LODWORD(v113) = v65 & 1;
  v129 = v65 & 1;
  v127 = 0;
  v74 = *(v61 + *(v71 + 32) + 8);
  v116 = v69;
  if (v74)
  {
    v75 = 1;
  }

  else
  {
    sub_1E4799530(v66, v102, type metadata accessor for Event);
    v76 = v99;

    if (sub_1E4794C88())
    {
      if (qword_1EE2B3C50 != -1)
      {
        swift_once();
      }

      v77 = qword_1EE2B3C58;
    }

    else
    {
      v77 = sub_1E48786FC();
    }

    v78 = swift_getKeyPath();
    v79 = v101;
    *v101 = v78;
    *(v79 + 8) = 0;
    v80 = v73[11];
    *(v79 + v80) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    sub_1E4799598(v102, v79 + v73[5], type metadata accessor for Event);
    *(v79 + v73[6]) = v76;
    *(v79 + v73[7]) = 0;
    *(v79 + v73[8]) = v77;
    *(v79 + v73[9]) = 0;
    *(v79 + v73[10]) = 0;
    v81 = v100;
    sub_1E4799598(v79, v100, type metadata accessor for LocationView);
    sub_1E4799598(v81, v72, type metadata accessor for LocationView);
    v75 = 0;
  }

  (*(v108 + 56))(v72, v75, 1, v73);
  v83 = v109;
  v82 = v110;
  v84 = *(v109 + 16);
  v85 = v117;
  v84(v117, v119, v110);
  v86 = v111;
  sub_1E4773850(v72, v111, &qword_1ECF7C040, &qword_1E487C5E8);
  v87 = v112;
  v84(v112, v85, v82);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C050, &qword_1E487C5F8);
  v89 = &v87[*(v88 + 48)];
  v90 = v103;
  v91 = v104;
  *&v121 = v103;
  *(&v121 + 1) = v114;
  LOBYTE(v122) = v113;
  *(&v122 + 1) = *v128;
  DWORD1(v122) = *&v128[3];
  v92 = v105;
  v93 = v106;
  *(&v122 + 1) = v104;
  *&v123 = v106;
  *(&v123 + 1) = v116;
  LOBYTE(v124) = 0;
  *(&v124 + 1) = *v126;
  DWORD1(v124) = *&v126[3];
  *(&v124 + 1) = v105;
  v125 = 0xBFF0000000000000;
  *(v89 + 8) = 0xBFF0000000000000;
  v94 = v122;
  *v89 = v121;
  *(v89 + 1) = v94;
  v95 = v124;
  *(v89 + 2) = v123;
  *(v89 + 3) = v95;
  sub_1E4773850(v86, &v87[*(v88 + 64)], &qword_1ECF7C040, &qword_1E487C5E8);
  sub_1E4773850(&v121, &v130, &qword_1ECF7C038, &qword_1E487C5E0);
  sub_1E47738B8(v118, &qword_1ECF7C040, &qword_1E487C5E8);
  v96 = *(v83 + 8);
  v96(v119, v82);
  sub_1E47738B8(v86, &qword_1ECF7C040, &qword_1E487C5E8);
  *&v130 = v90;
  *(&v130 + 1) = v114;
  LOBYTE(v131) = v113;
  *(&v131 + 1) = *v128;
  DWORD1(v131) = *&v128[3];
  *(&v131 + 1) = v91;
  *&v132 = v93;
  *(&v132 + 1) = v116;
  LOBYTE(v133) = 0;
  *(&v133 + 1) = *v126;
  DWORD1(v133) = *&v126[3];
  *(&v133 + 1) = v92;
  v134 = 0xBFF0000000000000;
  sub_1E47738B8(&v130, &qword_1ECF7C038, &qword_1E487C5E0);
  v96(v117, v82);
}

uint64_t sub_1E4794C88()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    v6 = sub_1E4878DDC();
    v7 = sub_1E48780FC();
    sub_1E4877AAC(v6, &dword_1E475C000, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t sub_1E4794DD0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = sub_1E4877F1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = a1(0);
  sub_1E4773850(v2 + *(v12 + 20), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    v15 = sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC(v15, &dword_1E475C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1E4794FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4877B3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 24);
  sub_1E4794DD0(type metadata accessor for RectangularNextEventContentView.SingleEventView, v8);
  v10 = sub_1E4770A7C(v2 + v9, v8);
  (*(v6 + 8))(v8, v5);
  v11 = sub_1E4877FBC();
  v12 = *(v2 + *(a1 + 36) + 16);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF78, &qword_1E487C3F8);
  sub_1E47926D0(v2, v10, (a2 + *(v13 + 44)));
}

uint64_t sub_1E4795128()
{
  v1 = *(v0 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = type metadata accessor for Event(0);
    v4 = *(v3 - 8);
    v5 = v2 - 1;
    if (v2 == 1)
    {
      return 1;
    }

    v7 = v3;
    v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v9 = (v1 + *(v3 + 40) + v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(v4 + 72);
    v13 = v1 + v12 + v8;
    while (1)
    {
      v14 = (v13 + *(v7 + 40));
      v15 = v14[1];
      if (!v15 || v11 == 0)
      {
        break;
      }

      v17 = v10 == *v14 && v11 == v15;
      if (!v17 && (sub_1E48790EC() & 1) == 0)
      {
        break;
      }

      v13 += v12;
      if (!--v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1E4795224()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1E4877B3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Event(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1E4795128())
  {
    v13 = *(v0 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 24));
    if (*(v13 + 16))
    {
      sub_1E4799530(v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v12, type metadata accessor for Event);
      sub_1E4794DD0(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView, v8);
      v14 = sub_1E4770A7C(v12, v8);
      (*(v6 + 8))(v8, v5);
      sub_1E4799600(v12, type metadata accessor for Event);
      return v14;
    }
  }

  v15 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    v16 = sub_1E4878DDC();
    v17 = sub_1E48780FC();
    sub_1E4877AAC(v16, &dword_1E475C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v15, 0);
    (*(v2 + 8))(v4, v1);
    if (v19[15] != 1)
    {
      return 0;
    }
  }

  if (qword_1EE2B3C68 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE2B3C70;

  return v14;
}

uint64_t sub_1E4795568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = type metadata accessor for ColorBarView(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v52 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v50 - v8;
  v10 = sub_1E4877B3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4878D2C();
  v50[4] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = a2;
  sub_1E4794DD0(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView, v13);
  v15 = sub_1E4770A7C(a1, v13);
  v50[1] = a2;
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  v17 = (v14 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36));
  v18 = *v17;
  v50[2] = v17;
  v19 = v17[5];
  type metadata accessor for ColorBarView.Styling(0);

  sub_1E487735C();
  v9[48] = 1;
  v50[3] = v16;
  *v9 = v16;
  *(v9 + 1) = v18;
  v9[16] = 0;
  *(v9 + 3) = 3;
  *(v9 + 4) = 0;
  *(v9 + 5) = v19;
  *&v9[*(v5 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v21 = &v9[*(v5 + 24)];
  *v21 = KeyPath;
  v21[8] = 0;
  v53 = sub_1E47CC708();
  v54 = v22;
  sub_1E477A374(v53, v22, v23);
  v24 = sub_1E487848C();
  v26 = v25;
  LOBYTE(v18) = v27;
  type metadata accessor for Event(0);
  v28 = sub_1E48783EC();
  v30 = v29;
  v32 = v31;
  sub_1E477A3C8(v24, v26, v18 & 1);

  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C68 != -1)
    {
      swift_once();
    }
  }

  v33 = sub_1E48783FC();
  v35 = v34;
  v37 = v36;

  sub_1E477A3C8(v28, v30, v32 & 1);

  v38 = sub_1E487842C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1E477A3C8(v33, v35, v37 & 1);

  v45 = swift_getKeyPath();
  v46 = v52;
  sub_1E4799530(v9, v52, type metadata accessor for ColorBarView);
  v47 = v51;
  sub_1E4799530(v46, v51, type metadata accessor for ColorBarView);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C160, &qword_1E487C708) + 48);
  sub_1E478B8E0(v38, v40, v42 & 1);

  *v48 = v38;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42 & 1;
  *(v48 + 24) = v44;
  *(v48 + 32) = v45;
  *(v48 + 40) = 1;
  *(v48 + 48) = 0;
  sub_1E4799600(v9, type metadata accessor for ColorBarView);
  sub_1E477A3C8(v38, v40, v42 & 1);

  sub_1E4799600(v46, type metadata accessor for ColorBarView);
}

uint64_t sub_1E4795A68@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1E4877B3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4878D2C();
  v39 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for Event(0);
  sub_1E4878BDC();
  v38 = sub_1E487874C();
  type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0);
  sub_1E487822C();
  v37 = sub_1E487829C();
  KeyPath = swift_getKeyPath();
  sub_1E4794DD0(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView, v8);
  v35 = sub_1E4770A7C(a1, v8);
  (*(v6 + 8))(v8, v5);
  sub_1E4794C88();
  v34 = swift_getKeyPath();
  v40 = sub_1E47CC708();
  v41 = v9;
  sub_1E477A374(v40, v9, v10);
  v11 = sub_1E487848C();
  v13 = v12;
  v15 = v14;
  v16 = sub_1E487842C();
  v18 = v17;
  v20 = v19;
  sub_1E477A3C8(v11, v13, v15 & 1);

  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C68 != -1)
    {
      swift_once();
    }
  }

  v21 = sub_1E48783FC();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_1E477A3C8(v16, v18, v20 & 1);

  v28 = v25 & 1;
  LOBYTE(v40) = v25 & 1;
  v29 = v37;
  v31 = v35;
  v30 = KeyPath;
  *a3 = v38;
  *(a3 + 8) = v30;
  v32 = v34;
  *(a3 + 16) = v29;
  *(a3 + 24) = v32;
  *(a3 + 32) = v31;
  *(a3 + 40) = v21;
  *(a3 + 48) = v23;
  *(a3 + 56) = v28;
  *(a3 + 64) = v27;

  sub_1E478B8E0(v21, v23, v28);

  sub_1E477A3C8(v21, v23, v28);
}

uint64_t sub_1E4795E14(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C130, &qword_1E487C6D8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C138, &qword_1E487C6E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  if ((*(a1 + *(type metadata accessor for Event(0) + 56)) & 0xFE) == 6)
  {
    v9 = sub_1E4877F6C();
    v10 = *(v1 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36) + 24);
    v25 = 0;
    sub_1E4795A68(a1, &v19);
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = v23;
    v26 = v19;
    v31[1] = v20;
    v31[2] = v21;
    v31[3] = v22;
    v32 = v23;
    v31[0] = v19;
    sub_1E4773850(&v26, &v18, &qword_1ECF7C158, &qword_1E487C700);
    sub_1E47738B8(v31, &qword_1ECF7C158, &qword_1E487C700);
    *(v24 + 7) = v26;
    *(&v24[4] + 7) = v30;
    *(&v24[3] + 7) = v29;
    *(&v24[2] + 7) = v28;
    *(&v24[1] + 7) = v27;
    v11 = v24[0];
    *(v8 + 33) = v24[1];
    v12 = v24[3];
    *(v8 + 49) = v24[2];
    *(v8 + 65) = v12;
    *(v8 + 5) = *(&v24[3] + 15);
    v13 = v25;
    *v8 = v9;
    *(v8 + 1) = v10;
    v8[16] = v13;
    *(v8 + 17) = v11;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C148, &qword_1E487C6F0);
    sub_1E4773680(&qword_1EE2B0FE0, &qword_1ECF7C148, &qword_1E487C6F0, MEMORY[0x1E6981800]);
    sub_1E479A7F8();
    return sub_1E487803C();
  }

  else
  {
    v15 = *(v1 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36) + 24);
    *v5 = sub_1E4877F6C();
    *(v5 + 1) = v15;
    v5[16] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C140, &qword_1E487C6E8);
    sub_1E4795568(a1, v1, &v5[*(v16 + 44)]);
    sub_1E4773850(v5, v8, &qword_1ECF7C130, &qword_1E487C6D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C148, &qword_1E487C6F0);
    sub_1E4773680(&qword_1EE2B0FE0, &qword_1ECF7C148, &qword_1E487C6F0, MEMORY[0x1E6981800]);
    sub_1E479A7F8();
    sub_1E487803C();
    return sub_1E47738B8(v5, &qword_1ECF7C130, &qword_1E487C6D8);
  }
}

uint64_t sub_1E479619C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v38 = a3;
  v4 = type metadata accessor for Event(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v38 - v9;
  v11 = *(a1 + 16);
  v39 = a1;
  v42 = v11;
  if (v11)
  {
    v12 = *(v8 + 72);
    v13 = MEMORY[0x1E69E7CC0];
    v43 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = a1 + v43;
    v15 = v11;
    do
    {
      sub_1E4799530(v14, v10, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v16 = v10[*(v4 + 56)];

      if ((v16 & 0xFE) == 6)
      {
        sub_1E4799598(v10, v7, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44[0] = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v13 + 16) + 1, 1);
          v13 = v44[0];
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1E4858038((v18 > 1), v19 + 1, 1);
          v13 = v44[0];
        }

        *(v13 + 16) = v19 + 1;
        sub_1E4799598(v7, v13 + v43 + v19 * v12, type metadata accessor for Event);
      }

      else
      {
        sub_1E4799600(v10, type metadata accessor for Event);
      }

      v14 += v12;
      --v15;
    }

    while (v15);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v13 + 16);

  v21 = v42;
  v22 = v42 - v20;
  if (v41)
  {
    if (v42 != v20 || v20 == 0)
    {
      if (__OFADD__(v22, v20))
      {
        __break(1u);
      }

      else if (qword_1EE2B4848 == -1)
      {
        goto LABEL_25;
      }
    }

    else if (qword_1EE2B4848 == -1)
    {
LABEL_25:
      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E6530];
      *(v27 + 16) = xmmword_1E487A7E0;
      v29 = MEMORY[0x1E69E65A8];
      *(v27 + 56) = v28;
      *(v27 + 64) = v29;
      *(v27 + 32) = v21;
      v24 = sub_1E4878BAC();
      v26 = v30;

      goto LABEL_26;
    }

    swift_once();
    goto LABEL_25;
  }

  v24 = sub_1E486CDD0(v42 - v20, v20);
  v26 = v25;
LABEL_26:
  v44[0] = v24;
  v44[1] = v26;
  EventContent = type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0);
  v32 = v40;
  v33 = *(v40 + *(EventContent + 36) + 24);
  v34 = sub_1E4877F6C();
  v35 = v38;
  *v38 = v34;
  v35[1] = v33;
  *(v35 + 16) = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C108, &unk_1E487C6B0);
  sub_1E4796660(v39, v22, v32, v44, v35 + *(v36 + 44));
}

uint64_t sub_1E4796660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a4;
  v88 = a3;
  v79 = a2;
  v90 = a5;
  v85 = type metadata accessor for ConflictColorBarView(0);
  MEMORY[0x1EEE9AC00](v85);
  v81 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C110, &qword_1E487C6C0);
  MEMORY[0x1EEE9AC00](v83);
  v84 = (&v77 - v7);
  v93 = type metadata accessor for Event(0);
  v8 = *(v93 - 8);
  v9 = MEMORY[0x1EEE9AC00](v93);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v78 = &v77 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C118, &qword_1E487C6C8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v89 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v77 - v21;
  sub_1E4878D2C();
  v87 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(a1 + 16);
  v82 = a1;
  v77 = v8;
  if (v22)
  {
    v23 = *(v8 + 80);
    v24 = *(v8 + 72);
    v92 = (v23 + 32) & ~v23;
    v25 = a1 + v92;
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1E4799530(v25, v16, type metadata accessor for Event);
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v27 = v16[*(v93 + 56)];

      if ((v27 & 0xFE) == 6)
      {
        sub_1E4799598(v16, v11, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v26 + 16) + 1, 1);
          v26 = v94;
        }

        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1E4858038((v29 > 1), v30 + 1, 1);
          v26 = v94;
        }

        *(v26 + 16) = v30 + 1;
        sub_1E4799598(v11, v26 + v92 + v30 * v24, type metadata accessor for Event);
      }

      else
      {
        sub_1E4799600(v16, type metadata accessor for Event);
      }

      v25 += v24;
      --v22;
    }

    while (v22);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v26 + 16))
  {

    v33 = v88;
    v34 = v82;
    goto LABEL_20;
  }

  v31 = v78;
  sub_1E4799530(v26 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v78, type metadata accessor for Event);

  v32 = v80;
  sub_1E4799598(v31, v80, type metadata accessor for Event);
  v33 = v88;
  v34 = v82;
  if (v79)
  {
    sub_1E4799600(v32, type metadata accessor for Event);
LABEL_20:
    v35 = v33 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36);
    v36 = *v35 * 0.5;
    v37 = *(v35 + 40);
    KeyPath = swift_getKeyPath();
    v39 = v81;
    *v81 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v41 = v84;
    v40 = v85;
    *(v39 + *(v85 + 20)) = v34;
    *(v39 + *(v40 + 24)) = v36;
    *(v39 + *(v40 + 28)) = v37;
    sub_1E4799530(v39, v41, type metadata accessor for ConflictColorBarView);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C020, &qword_1E487C590);
    sub_1E479A2F8();
    sub_1E479978C(&qword_1ECF7C120, type metadata accessor for ConflictColorBarView, &unk_1E4882168);
    sub_1E487803C();
    v42 = type metadata accessor for ConflictColorBarView;
    v43 = v39;
    goto LABEL_26;
  }

  sub_1E4878BDC();
  v44 = sub_1E487874C();
  type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0);
  sub_1E487822C();
  v45 = sub_1E487829C();
  v46 = swift_getKeyPath();
  v47 = 0;
  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C50 != -1)
    {
      swift_once();
    }

    v47 = qword_1EE2B3C58;
  }

  v48 = swift_getKeyPath();
  v49 = v84;
  *v84 = v44;
  v49[1] = v46;
  v49[2] = v45;
  v49[3] = v48;
  v49[4] = v47;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C020, &qword_1E487C590);
  sub_1E479A2F8();
  sub_1E479978C(&qword_1ECF7C120, type metadata accessor for ConflictColorBarView, &unk_1E4882168);
  sub_1E487803C();
  v42 = type metadata accessor for Event;
  v43 = v32;
LABEL_26:
  v50 = sub_1E4799600(v43, v42);
  v51 = v86[1];
  v94 = *v86;
  v95 = v51;
  sub_1E477A374(v50, v52, v53);

  v54 = sub_1E487848C();
  v56 = v55;
  v58 = v57;
  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C50 != -1)
    {
      swift_once();
    }
  }

  v59 = sub_1E48783FC();
  v61 = v60;
  v63 = v62;

  sub_1E477A3C8(v54, v56, v58 & 1);

  type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0);
  v64 = sub_1E487842C();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_1E477A3C8(v59, v61, v63 & 1);

  v71 = swift_getKeyPath();
  v72 = v91;
  v73 = v89;
  sub_1E4773850(v91, v89, &qword_1ECF7C118, &qword_1E487C6C8);
  v74 = v90;
  sub_1E4773850(v73, v90, &qword_1ECF7C118, &qword_1E487C6C8);
  v75 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C128, &qword_1E487C6D0) + 48);
  sub_1E478B8E0(v64, v66, v68 & 1);

  sub_1E47738B8(v72, &qword_1ECF7C118, &qword_1E487C6C8);
  *v75 = v64;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68 & 1;
  *(v75 + 24) = v70;
  *(v75 + 32) = v71;
  *(v75 + 40) = 1;
  *(v75 + 48) = 0;
  sub_1E477A3C8(v64, v66, v68 & 1);

  sub_1E47738B8(v73, &qword_1ECF7C118, &qword_1E487C6C8);
}

uint64_t sub_1E4797034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v257 = a1;
  v231 = a2;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C060, &qword_1E487C608);
  MEMORY[0x1EEE9AC00](v215);
  v216 = &v198 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C068, &qword_1E487C610);
  MEMORY[0x1EEE9AC00](v3);
  v201 = &v198 - v4;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C070, &qword_1E487C618);
  MEMORY[0x1EEE9AC00](v206);
  v208 = &v198 - v5;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C078, &qword_1E487C620);
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v198 - v6;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C080, &qword_1E487C628);
  MEMORY[0x1EEE9AC00](v207);
  v204 = &v198 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C088, &qword_1E487C630);
  MEMORY[0x1EEE9AC00](v8);
  v212 = &v198 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C090, &qword_1E487C638);
  MEMORY[0x1EEE9AC00](v10);
  v210 = &v198 - v11;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C098, &qword_1E487C640);
  MEMORY[0x1EEE9AC00](v228);
  v214 = &v198 - v12;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0A0, &qword_1E487C648);
  MEMORY[0x1EEE9AC00](v224);
  v227 = &v198 - v13;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0A8, &qword_1E487C650);
  MEMORY[0x1EEE9AC00](v226);
  v219 = &v198 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0B0, &qword_1E487C658);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v220 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v218 = &v198 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v217 = &v198 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v222 = &v198 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v223 = &v198 - v24;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0B8, &qword_1E487C660);
  MEMORY[0x1EEE9AC00](v241);
  v225 = &v198 - v25;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0C0, &qword_1E487C668);
  MEMORY[0x1EEE9AC00](v238);
  v240 = &v198 - v26;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0C8, &qword_1E487C670);
  v27 = MEMORY[0x1EEE9AC00](v239);
  v211 = (&v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v27);
  v200 = &v198 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v199 = &v198 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v205 = (&v198 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v230 = (&v198 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0D0, &qword_1E487C678);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v250 = &v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v252 = &v198 - v39;
  v260 = type metadata accessor for Event(0);
  v40 = *(v260 - 8);
  v41 = MEMORY[0x1EEE9AC00](v260);
  v251 = &v198 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v198 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v258 = &v198 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v259 = &v198 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v229 = &v198 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v198 - v52;
  v262 = sub_1E487719C();
  v246 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v245 = &v198 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0D8, &qword_1E487C680);
  v237 = *(v55 - 8);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v249 = &v198 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v256 = &v198 - v58;
  sub_1E4878D2C();
  v236 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v253 = v45;
  v213 = v10;
  v247 = v55;
  EventContent = type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0);
  v62 = EventContent;
  v63 = v257;
  v64 = (v257 + *(EventContent + 32));
  v65 = v64[1];
  v221 = v8;
  v261 = v40;
  v254 = EventContent;
  v209 = v3;
  v244 = v65;
  if (!v65)
  {
    v255 = 0;
    v235 = 0;
    v233 = 0;
    v248 = 0;
    v234 = 0;
    v232 = 0;
    goto LABEL_10;
  }

  v263 = *v64;
  v264 = v65;
  sub_1E477A374(EventContent, v60, v61);

  v66 = sub_1E487848C();
  v68 = v67;
  v70 = v69;
  v71 = sub_1E487842C();
  v40 = v72;
  LOBYTE(v74) = v73;
  v255 = v75;
  sub_1E477A3C8(v66, v68, v70 & 1);

  if ((sub_1E4794C88() & 1) == 0)
  {
    sub_1E48786FC();
    goto LABEL_9;
  }

  if (qword_1EE2B3C50 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {

LABEL_9:
    v76 = sub_1E48783FC();
    v78 = v77;
    LODWORD(v248) = v79;
    v81 = v80;

    sub_1E477A3C8(v71, v40, v74 & 1);

    KeyPath = swift_getKeyPath();
    v255 = v76;
    v235 = v78;
    v233 = v248 & 1;
    sub_1E478B8E0(v76, v78, v233);
    v248 = v81;

    v234 = KeyPath;

    v232 = 1;
    v63 = v257;
    v40 = v261;
    v62 = v254;
LABEL_10:
    (*(v246 + 16))(v245, v63 + *(v62 + 28), v262);
    v245 = sub_1E487847C();
    v243 = v83;
    v242 = v84;
    v246 = v85;
    v86 = *(v63 + *(v62 + 24));
    v87 = *(v86 + 16);
    v262 = v86;
    if (v87)
    {
      v88 = 0;
      v71 = *(v260 + 56);
      v89 = v86 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v90 = v87 - 1;
      LOBYTE(v74) = MEMORY[0x1E69E85E0];
      while (v88 < *(v262 + 16))
      {
        sub_1E4799530(v89 + *(v40 + 72) * v88, v53, type metadata accessor for Event);
        sub_1E4878D1C();
        sub_1E4878D0C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v91 = *(v53 + v71);
        sub_1E4799600(v53, type metadata accessor for Event);

        if ((v91 - 3) <= 1)
        {
          v92 = v90 == v88++;
          v40 = v261;
          if (!v92)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_69;
    }

LABEL_18:
    v93 = v242;
    v94 = v245;
    v95 = v243;
    v96 = sub_1E48783EC();
    v98 = v97;
    v100 = v99;
    sub_1E477A3C8(v94, v95, v93 & 1);

    sub_1E4795224();
    v101 = sub_1E48783FC();
    v103 = v102;
    LOBYTE(v95) = v104;
    v246 = v105;

    sub_1E477A3C8(v96, v98, v100 & 1);

    v106 = sub_1E487842C();
    v108 = v107;
    LOBYTE(v94) = v109;
    v74 = v110;
    sub_1E477A3C8(v101, v103, v95 & 1);

    v111 = swift_getKeyPath();
    v263 = v106;
    v264 = v108;
    v265 = v94 & 1;
    v266 = v74;
    v267 = v111;
    v268 = 1;
    v269 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E477A490();
    sub_1E48784AC();
    sub_1E477A3C8(v106, v108, v94 & 1);

    if (v244)
    {
      v112 = v230;
      sub_1E479619C(v262, 0, v230);
      sub_1E4773850(v112, v240, &qword_1ECF7C0C8, &qword_1E487C670);
      swift_storeEnumTagMultiPayload();
      sub_1E479A688();
      sub_1E479A740();
      v53 = v252;
      sub_1E487803C();
      sub_1E47738B8(v112, &qword_1ECF7C0C8, &qword_1E487C670);
      v113 = v231;
      v114 = v247;
      goto LABEL_67;
    }

    v115 = v262;
    v71 = *(v262 + 16);
    v53 = v252;
    if (v71 == 2)
    {
      v116 = v252;
      v117 = v261;
      v118 = v262;
      v119 = v262 + ((*(v261 + 80) + 32) & ~*(v261 + 80));
      v120 = v229;
      sub_1E4799530(v119, v229, type metadata accessor for Event);
      v121 = v223;
      sub_1E4795E14(v120);
      result = sub_1E4799600(v120, type metadata accessor for Event);
      if (*(v118 + 16) >= 2uLL)
      {
        sub_1E4799530(v119 + *(v117 + 72), v120, type metadata accessor for Event);
        v123 = v222;
        sub_1E4795E14(v120);
        sub_1E4799600(v120, type metadata accessor for Event);
        v124 = v217;
        sub_1E4773850(v121, v217, &qword_1ECF7C0B0, &qword_1E487C658);
        v125 = v218;
        sub_1E4773850(v123, v218, &qword_1ECF7C0B0, &qword_1E487C658);
        v126 = v219;
        sub_1E4773850(v124, v219, &qword_1ECF7C0B0, &qword_1E487C658);
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C100, &qword_1E487C6A8);
        sub_1E4773850(v125, v126 + *(v127 + 48), &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E47738B8(v125, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E47738B8(v124, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E4773850(v126, v227, &qword_1ECF7C0A8, &qword_1E487C650);
        swift_storeEnumTagMultiPayload();
        sub_1E4773680(&qword_1EE2B0E80, &qword_1ECF7C0A8, &qword_1E487C650, MEMORY[0x1E6981F50]);
        sub_1E479A5D0();
        v128 = v225;
        sub_1E487803C();
        sub_1E47738B8(v126, &qword_1ECF7C0A8, &qword_1E487C650);
        sub_1E47738B8(v123, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E47738B8(v121, &qword_1ECF7C0B0, &qword_1E487C658);
        v113 = v231;
        v114 = v247;
        v53 = v116;
        goto LABEL_66;
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v40 = v261;
    if (!v71)
    {
      break;
    }

    v129 = 0;
    v254 = MEMORY[0x1E69E7CC0];
    v130 = v259;
    while (v129 < *(v115 + 16))
    {
      v131 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v53 = *(v40 + 72);
      sub_1E4799530(v115 + v131 + v53 * v129, v130, type metadata accessor for Event);
      sub_1E4878D1C();
      LOBYTE(v74) = sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v130 = v259;
      v132 = v259[*(v260 + 56)];

      if ((v132 & 0xFE) == 6)
      {
        sub_1E4799598(v130, v258, type metadata accessor for Event);
        v133 = v254;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v133;
        v263 = v133;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v133 + 16) + 1, 1);
          v135 = v263;
        }

        v136 = v135;
        v138 = *(v135 + 16);
        v137 = *(v135 + 24);
        v74 = v138 + 1;
        if (v138 >= v137 >> 1)
        {
          sub_1E4858038((v137 > 1), v138 + 1, 1);
          v136 = v263;
        }

        *(v136 + 16) = v74;
        v254 = v136;
        sub_1E4799598(v258, v136 + v131 + v138 * v53, type metadata accessor for Event);
      }

      else
      {
        sub_1E4799600(v130, type metadata accessor for Event);
      }

      v115 = v262;
      if (v71 == ++v129)
      {
        v259 = *(v262 + 16);
        if (v259)
        {
          v40 = 0;
          v139 = v262 + v131;
          v74 = MEMORY[0x1E69E7CC0];
          v71 = v253;
          while (v40 < *(v262 + 16))
          {
            sub_1E4799530(v139, v71, type metadata accessor for Event);
            sub_1E4878D1C();
            sub_1E4878D0C();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v71 = v253;
            v140 = v253[*(v260 + 56)];

            if ((v140 & 0xFE) == 6)
            {
              sub_1E4799600(v71, type metadata accessor for Event);
            }

            else
            {
              sub_1E4799598(v71, v251, type metadata accessor for Event);
              v141 = swift_isUniquelyReferenced_nonNull_native();
              v263 = v74;
              if ((v141 & 1) == 0)
              {
                sub_1E4858038(0, *(v74 + 16) + 1, 1);
                v74 = v263;
              }

              v143 = *(v74 + 16);
              v142 = *(v74 + 24);
              if (v143 >= v142 >> 1)
              {
                sub_1E4858038((v142 > 1), v143 + 1, 1);
                v74 = v263;
              }

              *(v74 + 16) = v143 + 1;
              sub_1E4799598(v251, v74 + v131 + v143 * v53, type metadata accessor for Event);
            }

            ++v40;
            v139 += v53;
            if (v259 == v40)
            {
              v53 = v252;
              v40 = v261;
              goto LABEL_52;
            }
          }

          goto LABEL_70;
        }

        v74 = MEMORY[0x1E69E7CC0];
        v53 = v252;
LABEL_52:
        v144 = v254;
        goto LABEL_53;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  v144 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v145 = v144;
  v146 = *(v144 + 16);
  v147 = v229;
  if (v146)
  {
    v148 = *(v74 + 16);
    if (v148)
    {
      if (v146 == 1)
      {
        sub_1E4799530(v145 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v229, type metadata accessor for Event);

        v149 = v223;
        sub_1E4795E14(v147);
        sub_1E4799600(v147, type metadata accessor for Event);
        v150 = v230;
        sub_1E479619C(v74, 0, v230);

        v151 = v222;
        sub_1E4773850(v149, v222, &qword_1ECF7C0B0, &qword_1E487C658);
        v152 = v205;
        sub_1E4773850(v150, v205, &qword_1ECF7C0C8, &qword_1E487C670);
        v153 = v212;
        sub_1E4773850(v151, v212, &qword_1ECF7C0B0, &qword_1E487C658);
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0E0, &qword_1E487C688);
        sub_1E4773850(v152, v153 + *(v154 + 48), &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v152, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v151, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E4773850(v153, v203, &qword_1ECF7C088, &qword_1E487C630);
        swift_storeEnumTagMultiPayload();
        v155 = MEMORY[0x1E6981F50];
        sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630, MEMORY[0x1E6981F50]);
        v156 = v204;
        sub_1E487803C();
        sub_1E4773850(v156, v208, &qword_1ECF7C080, &qword_1E487C628);
        swift_storeEnumTagMultiPayload();
        sub_1E479A520();
        sub_1E4773680(&qword_1EE2B0E88, &qword_1ECF7C068, &qword_1E487C610, v155);
        v157 = v210;
        sub_1E487803C();
        v158 = v214;
        v53 = v252;
        sub_1E47738B8(v156, &qword_1ECF7C080, &qword_1E487C628);
        sub_1E47738B8(v153, &qword_1ECF7C088, &qword_1E487C630);
        sub_1E47738B8(v150, &qword_1ECF7C0C8, &qword_1E487C670);
        v159 = v149;
        goto LABEL_62;
      }

      if (v148 == 1)
      {
        sub_1E4799530(v74 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v229, type metadata accessor for Event);

        v170 = v223;
        sub_1E4795E14(v147);
        sub_1E4799600(v147, type metadata accessor for Event);
        v171 = v230;
        sub_1E479619C(v145, 0, v230);

        v172 = v222;
        sub_1E4773850(v170, v222, &qword_1ECF7C0B0, &qword_1E487C658);
        v173 = v205;
        sub_1E4773850(v171, v205, &qword_1ECF7C0C8, &qword_1E487C670);
        v174 = v212;
        sub_1E4773850(v172, v212, &qword_1ECF7C0B0, &qword_1E487C658);
        v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0E0, &qword_1E487C688);
        sub_1E4773850(v173, v174 + *(v175 + 48), &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v173, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v172, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E4773850(v174, v203, &qword_1ECF7C088, &qword_1E487C630);
        swift_storeEnumTagMultiPayload();
        v176 = MEMORY[0x1E6981F50];
        sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630, MEMORY[0x1E6981F50]);
        v177 = v204;
        sub_1E487803C();
        sub_1E4773850(v177, v208, &qword_1ECF7C080, &qword_1E487C628);
        swift_storeEnumTagMultiPayload();
        sub_1E479A520();
        sub_1E4773680(&qword_1EE2B0E88, &qword_1ECF7C068, &qword_1E487C610, v176);
        v157 = v210;
        sub_1E487803C();
        v158 = v214;
        v53 = v252;
        sub_1E47738B8(v177, &qword_1ECF7C080, &qword_1E487C628);
        sub_1E47738B8(v174, &qword_1ECF7C088, &qword_1E487C630);
        sub_1E47738B8(v171, &qword_1ECF7C0C8, &qword_1E487C670);
        v159 = v170;
LABEL_62:
        sub_1E47738B8(v159, &qword_1ECF7C0B0, &qword_1E487C658);
        v113 = v231;
        v114 = v247;
      }

      else
      {
        v178 = v230;
        sub_1E479619C(v74, 0, v230);

        v179 = v205;
        sub_1E479619C(v145, 0, v205);

        v180 = v178;
        v181 = v199;
        sub_1E4773850(v180, v199, &qword_1ECF7C0C8, &qword_1E487C670);
        v182 = v200;
        sub_1E4773850(v179, v200, &qword_1ECF7C0C8, &qword_1E487C670);
        v183 = v201;
        sub_1E4773850(v181, v201, &qword_1ECF7C0C8, &qword_1E487C670);
        v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0F8, &qword_1E487C6A0);
        sub_1E4773850(v182, v183 + *(v184 + 48), &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v182, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v181, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E4773850(v183, v208, &qword_1ECF7C068, &qword_1E487C610);
        swift_storeEnumTagMultiPayload();
        sub_1E479A520();
        sub_1E4773680(&qword_1EE2B0E88, &qword_1ECF7C068, &qword_1E487C610, MEMORY[0x1E6981F50]);
        v157 = v210;
        sub_1E487803C();
        sub_1E47738B8(v183, &qword_1ECF7C068, &qword_1E487C610);
        sub_1E47738B8(v179, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v230, &qword_1ECF7C0C8, &qword_1E487C670);
        v113 = v231;
        v114 = v247;
        v158 = v214;
      }

      sub_1E4773850(v157, v216, &qword_1ECF7C090, &qword_1E487C638);
      swift_storeEnumTagMultiPayload();
      sub_1E479A468();
      sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630, MEMORY[0x1E6981F50]);
      sub_1E487803C();
      sub_1E47738B8(v157, &qword_1ECF7C090, &qword_1E487C638);
      v128 = v225;
LABEL_65:
      sub_1E4773850(v158, v227, &qword_1ECF7C098, &qword_1E487C640);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1EE2B0E80, &qword_1ECF7C0A8, &qword_1E487C650, MEMORY[0x1E6981F50]);
      sub_1E479A5D0();
      sub_1E487803C();
      sub_1E47738B8(v158, &qword_1ECF7C098, &qword_1E487C640);
LABEL_66:
      sub_1E4773850(v128, v240, &qword_1ECF7C0B8, &qword_1E487C660);
      swift_storeEnumTagMultiPayload();
      sub_1E479A688();
      sub_1E479A740();
      sub_1E487803C();
      sub_1E47738B8(v128, &qword_1ECF7C0B8, &qword_1E487C660);
LABEL_67:
      v185 = v237;
      v262 = *(v237 + 16);
      v186 = v249;
      (v262)(v249, v256, v114);
      sub_1E4773850(v53, v250, &qword_1ECF7C0D0, &qword_1E487C678);
      v187 = v235;
      *v113 = v255;
      *(v113 + 8) = v187;
      v188 = v233;
      v189 = v248;
      *(v113 + 16) = v233;
      *(v113 + 24) = v189;
      v190 = v234;
      v191 = v232;
      *(v113 + 32) = v234;
      *(v113 + 40) = v191;
      *(v113 + 48) = 0;
      v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0F0, &qword_1E487C698);
      (v262)(v113 + *(v192 + 48), v186, v114);
      v193 = v250;
      sub_1E4773850(v250, v113 + *(v192 + 64), &qword_1ECF7C0D0, &qword_1E487C678);
      v194 = v255;
      v195 = v248;
      sub_1E479A1A0(v255, v187, v188, v248, v190);
      sub_1E479A1F0(v194, v187, v188, v195, v190);
      sub_1E47738B8(v252, &qword_1ECF7C0D0, &qword_1E487C678);
      v196 = *(v185 + 8);
      v197 = v247;
      v196(v256, v247);
      sub_1E47738B8(v193, &qword_1ECF7C0D0, &qword_1E487C678);
      v196(v249, v197);
      sub_1E479A1F0(v255, v187, v188, v195, v190);
    }
  }

  v160 = v262;
  if (!*(v262 + 16))
  {
    goto LABEL_73;
  }

  v161 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  sub_1E4799530(v262 + v161, v147, type metadata accessor for Event);
  v162 = v220;
  sub_1E4795E14(v147);
  result = sub_1E4799600(v147, type metadata accessor for Event);
  v163 = *(v160 + 16);
  if (v163)
  {
    sub_1E4860F20(v160, v160 + v161, 1, (2 * v163) | 1);
    v164 = v211;
    sub_1E479619C(v165, 1, v211);

    v166 = v223;
    sub_1E4773850(v162, v223, &qword_1ECF7C0B0, &qword_1E487C658);
    v167 = v230;
    sub_1E4773850(v164, v230, &qword_1ECF7C0C8, &qword_1E487C670);
    v168 = v212;
    sub_1E4773850(v166, v212, &qword_1ECF7C0B0, &qword_1E487C658);
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0E0, &qword_1E487C688);
    sub_1E4773850(v167, v168 + *(v169 + 48), &qword_1ECF7C0C8, &qword_1E487C670);
    sub_1E47738B8(v167, &qword_1ECF7C0C8, &qword_1E487C670);
    sub_1E47738B8(v166, &qword_1ECF7C0B0, &qword_1E487C658);
    sub_1E4773850(v168, v216, &qword_1ECF7C088, &qword_1E487C630);
    swift_storeEnumTagMultiPayload();
    sub_1E479A468();
    sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630, MEMORY[0x1E6981F50]);
    v158 = v214;
    sub_1E487803C();
    sub_1E47738B8(v168, &qword_1ECF7C088, &qword_1E487C630);
    sub_1E47738B8(v164, &qword_1ECF7C0C8, &qword_1E487C670);
    sub_1E47738B8(v220, &qword_1ECF7C0B0, &qword_1E487C658);
    v113 = v231;
    v128 = v225;
    v114 = v247;
    v53 = v252;
    goto LABEL_65;
  }

LABEL_74:
  __break(1u);
  return result;
}