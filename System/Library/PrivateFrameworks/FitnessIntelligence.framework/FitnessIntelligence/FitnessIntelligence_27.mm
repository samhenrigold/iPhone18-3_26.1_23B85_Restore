uint64_t DeviceInferenceAvailability.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4C0B7B0(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C0AFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v18 = a3;
  v19 = a4;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2;
  sub_1B4C0B7B0(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17DAC();
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v12 = v11[5];
  sub_1B4C0B544(a1 + v12);
  sub_1B4C0B60C(v10, a1 + v12);
  v13 = *(v8 + 56);
  v13(a1 + v12, 0, 1, v7);
  v22 = v18;
  sub_1B4D17DAC();
  v14 = v11[6];
  sub_1B4C0B544(a1 + v14);
  sub_1B4C0B60C(v10, a1 + v14);
  v13(a1 + v14, 0, 1, v7);
  v21 = v19;
  sub_1B4D17DAC();
  v15 = v11[7];
  sub_1B4C0B544(a1 + v15);
  sub_1B4C0B60C(v10, a1 + v15);
  v13(a1 + v15, 0, 1, v7);
  v20 = v24;
  sub_1B4D17DAC();
  v16 = v11[8];
  sub_1B4C0B544(a1 + v16);
  sub_1B4C0B60C(v10, a1 + v16);
  return (v13)(a1 + v16, 0, 1, v7);
}

_OWORD *sub_1B4C0B270(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v11[0] = *v1;
  v11[1] = v7;
  v8 = sub_1B4C0B860();
  v9 = v11;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4C0B7B0(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
    v9 = sub_1B4D17D6C();
    sub_1B4C0B5AC(v6, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  }

  return v9;
}

double sub_1B4C0B3B8@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_1B4B2A134(a2, a3, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_1B4C0B3F4()
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4C0B7B0(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C0B4D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C0B544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C0B5AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C0B60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C0B7B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4C0B80C()
{
  result = qword_1EB8AC6B0;
  if (!qword_1EB8AC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6B0);
  }

  return result;
}

unint64_t sub_1B4C0B860()
{
  result = qword_1EB8AC6B8;
  if (!qword_1EB8AC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6B8);
  }

  return result;
}

unint64_t sub_1B4C0B8B4()
{
  result = qword_1EB8AC6C0;
  if (!qword_1EB8AC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6C0);
  }

  return result;
}

uint64_t MonthOfYear.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4D1796C();
  __swift_project_value_buffer(v8, qword_1EDC3CE48);
  (*(v5 + 104))(v7, *MEMORY[0x1E6969A78], v4);
  v9 = sub_1B4D1795C();
  (*(v5 + 8))(v7, v4);
  if ((v9 - 13) >= 0xFFFFFFFFFFFFFFF4)
  {
    v14 = byte_1F2CB8190[v9 + 31];
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B4D17F6C();
    __swift_project_value_buffer(v10, qword_1EDC3CED0);
    v11 = sub_1B4D17F5C();
    v12 = sub_1B4D1871C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v9;
      _os_log_impl(&dword_1B4953000, v11, v12, "Invalid month of year: %ld.", v13, 0xCu);
      MEMORY[0x1B8C7DDA0](v13, -1, -1);
    }

    v14 = 12;
  }

  v15 = sub_1B4D1777C();
  result = (*(*(v15 - 8) + 8))(a1, v15);
  *a2 = v14;
  return result;
}

FitnessIntelligence::MonthOfYear_optional __swiftcall MonthOfYear.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MonthOfYear.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x7265626F74636FLL;
    v8 = 0x7265626D65766F6ELL;
    if (v1 != 10)
    {
      v8 = 0x7265626D65636564;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 2037151082;
    v10 = 0x747375677561;
    if (v1 != 7)
    {
      v10 = 0x65626D6574706573;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x797261756E616ALL;
    v3 = 0x6C69727061;
    v4 = 7954797;
    if (v1 != 4)
    {
      v4 = 1701737834;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x7972617572626566;
    if (v1 != 1)
    {
      v5 = 0x686372616DLL;
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
}

uint64_t sub_1B4C0BD68()
{
  v0 = MonthOfYear.rawValue.getter();
  v2 = v1;
  if (v0 == MonthOfYear.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4C0BE04()
{
  sub_1B4D18E8C();
  MonthOfYear.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0BE6C(uint64_t a1)
{
  MonthOfYear.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4C0BED0(uint64_t a1)
{
  sub_1B4D18E8C();
  MonthOfYear.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0BF40@<X0>(uint64_t *a1@<X8>)
{
  result = MonthOfYear.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B4C0BF7C()
{
  result = qword_1EB8AC6C8;
  if (!qword_1EB8AC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6C8);
  }

  return result;
}

unint64_t sub_1B4C0BFD4()
{
  result = qword_1EB8AC6D0;
  if (!qword_1EB8AC6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC6D8, &qword_1B4D3CC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6D0);
  }

  return result;
}

uint64_t HighestDailyStepCountAnniversaryFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4C0C0C8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0C13C(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0C190@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t HighestDailyStepCountAnniversaryFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for HighestDailyStepCountAnniversaryFact(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1BE00;
  v20 = *v0;
  v7 = sub_1B4D18D5C();
  v9 = v8;
  *(v6 + 32) = 0x756F635F70657473;
  *(v6 + 40) = 0xEA0000000000746ELL;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v6 + 48) = sub_1B4993DFC;
  *(v6 + 56) = v10;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  v20 = *(v1 + *(v3 + 32));
  v11 = sub_1B4D18D5C();
  v13 = v12;
  *(v6 + 80) = 0x67615F7372616579;
  *(v6 + 88) = 0xE90000000000006FLL;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  *(v6 + 96) = sub_1B4994004;
  *(v6 + 104) = v14;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  sub_1B4BD2288(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1B4C0C564(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B4C0C5C8;
  *(v17 + 24) = v16;
  *(v6 + 128) = 0x7261655F65746164;
  *(v6 + 136) = 0xEB0000000064656ELL;
  *(v6 + 144) = sub_1B4AF87E4;
  *(v6 + 152) = v17;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  return v6;
}

uint64_t sub_1B4C0C48C(uint64_t a1)
{
  type metadata accessor for HighestDailyStepCountAnniversaryFact(0);
  v2 = sub_1B4D11F8C();
  [v2 setDateStyle_];

  v3 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
  [*(a1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
  v4 = *(a1 + v3);
  v5 = sub_1B4D1771C();
  v6 = [v4 stringFromDate_];

  v7 = sub_1B4D1818C();
  return v7;
}

uint64_t sub_1B4C0C564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighestDailyStepCountAnniversaryFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C0C5C8(uint64_t a1)
{
  type metadata accessor for HighestDailyStepCountAnniversaryFact(0);

  return sub_1B4C0C48C(a1);
}

unint64_t sub_1B4C0C63C()
{
  result = qword_1EB8AC6E0;
  if (!qword_1EB8AC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6E0);
  }

  return result;
}

unint64_t sub_1B4C0C694()
{
  result = qword_1EB8AC6E8;
  if (!qword_1EB8AC6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC6F0, &qword_1B4D3CD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6E8);
  }

  return result;
}

unint64_t sub_1B4C0C6FC()
{
  result = qword_1EB8AC6F8;
  if (!qword_1EB8AC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6F8);
  }

  return result;
}

unint64_t sub_1B4C0C754()
{
  result = qword_1EB8AC700;
  if (!qword_1EB8AC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC700);
  }

  return result;
}

unint64_t sub_1B4C0C7A8(uint64_t a1)
{
  result = sub_1B4C0C7D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C0C7D0()
{
  result = qword_1EB8AC708;
  if (!qword_1EB8AC708)
  {
    type metadata accessor for HighestDailyStepCountAnniversaryFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC708);
  }

  return result;
}

BOOL Apple_Fitness_Intelligence_WorkoutRecord.hasFitnessPlusCatalogWorkout.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4974FBC(v0 + *(v4 + 44), v3, &qword_1EB8A6A28, &qword_1B4D20160);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A6A28, &qword_1B4D20160);
  return v6;
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.fitnessPlusCatalogWorkout.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4974FBC(v1 + *(v6 + 44), v5, &qword_1EB8A6A28, &qword_1B4D20160);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6A28, &qword_1B4D20160);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.fitnessPlusCatalogWorkout.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
  sub_1B4975024(v1 + v3, &qword_1EB8A6A28, &qword_1B4D20160);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_ActivitySummaryContext.todayRing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  sub_1B4D17BBC();
  v9 = *(v7 + 20);
  if (qword_1EB8A64F8 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_1EB8AC7F8;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummaryContext.todayRing.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.trainingLoadDay.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4974FBC(v1 + *(Context + 20), v5, &qword_1EB8AA510, &unk_1B4D3CDD0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  *a1 = 0;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8AA510, &unk_1B4D3CDD0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.trainingLoadDay.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  sub_1B4975024(v2 + v4, &qword_1EB8AA510, &unk_1B4D3CDD0);
  sub_1B4C2FF48(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.workoutType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A7CB8, &unk_1B4D20170);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7CB8, &unk_1B4D20170);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.workoutType.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A7CB8, &unk_1B4D20170);
  sub_1B4C2FF48(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.displayName.getter(double a1)
{
  v2 = (v1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.activeCompetitionUuid.getter(double a1)
{
  v2 = (v1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.displayName.setter(uint64_t a1, uint64_t a2, double a3)
{
  v6 = (v3 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.activeCompetitionUuid.setter(uint64_t a1, uint64_t a2, double a3)
{
  v6 = (v3 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.cacheIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

BOOL Apple_Fitness_Intelligence_ActivitySummary.hasPausedInterval.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8AB768, &unk_1B4D3CDE0);
  return v7;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.pausedInterval.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  }

  *a1 = 0;
  a1[1] = 0;
  sub_1B4D17BBC();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8AB768, &unk_1B4D3CDE0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.isPaused.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v2 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  return *(v1 + v2);
}

BOOL sub_1B4C0D8D8(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 8) & 1) == 0;
}

double sub_1B4C0D960(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  result = *v3;
  if (*(v3 + 8))
  {
    return 0.0;
  }

  return result;
}

BOOL Apple_Fitness_Intelligence_ActivitySummary.hasActivityMoveMode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20)) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.activityMoveMode.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20)) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode);
  swift_beginAccess();
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

BOOL Apple_Fitness_Intelligence_ActivitySummary.hasIsWheelchairUser.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v2 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.isWheelchairUser.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v2 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.cacheIndex.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C3D764(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.pausedInterval.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v10 = sub_1B4C3D764(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v12, &qword_1EB8AB768, &unk_1B4D3CDE0);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.isPaused.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C3D764(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  result = swift_beginAccess();
  *(v6 + v8) = a1 & 1;
  return result;
}

uint64_t sub_1B4C0E06C(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C3D764(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = v8 + *a1;
  result = swift_beginAccess();
  *v10 = a2;
  *(v10 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.activityMoveMode.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C3D764(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  result = swift_beginAccess();
  *v8 = a1;
  *(v8 + 4) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.isWheelchairUser.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C3D764(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  result = swift_beginAccess();
  *(v6 + v8) = a1 & 1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.workoutPropertiesQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8A6668, &qword_1B4D1A658);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v10;
  sub_1B4D17BBC();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = *(v8 + 32);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.ringsPropertiesQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8A6680, &unk_1B4D2FD90);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v10;
  sub_1B4D17BBC();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = *(v8 + 32);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8ABC28, &qword_1B4D38428);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  *a1 = 0u;
  a1[1] = 0u;
  sub_1B4D17BBC();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.workoutPropertiesQuery.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C24944(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8A6668, &qword_1B4D1A658);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.ringsPropertiesQuery.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C24944(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8A6680, &unk_1B4D2FD90);
  return swift_endAccess();
}

uint64_t sub_1B4C0EC34(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v8 = sub_1B4C24944(v8);
    *(v4 + v6) = v8;
  }

  v9 = v8 + *a1;
  result = swift_beginAccess();
  *v9 = a2;
  *(v9 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.location.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C24944(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8ABC28, &qword_1B4D38428);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.earnedDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  }

  return result;
}

uint64_t sub_1B4C0F034(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double Apple_Fitness_Intelligence_AwardsContext.Award.valueDouble.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1B4C0F140(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 48));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double Apple_Fitness_Intelligence_AwardsContext.Award.goalDouble.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 44);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1B4C0F21C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.earnedDateComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.valueDouble.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_1B4C0F380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.goalDouble.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_1B4C0F41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 48));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1B4C0F480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 52));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.type.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return sub_1B4C0F574;
}

uint64_t sub_1B4C0F5A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C24944(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8A6668, &qword_1B4D1A658);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.workoutPropertiesQuery.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A6668, &qword_1B4D1A658);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v19;
    sub_1B4D17BBC();
    v20 = *(v9 + 28);
    v21 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    v22 = *(v9 + 32);
    v23 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
    (*(*(v23 - 8) + 56))(&v14[v22], 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6668, &qword_1B4D1A658);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  return sub_1B4C0FA74;
}

void sub_1B4C0FA74(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C24944(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8A6668, &qword_1B4D1A658);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C24944(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8A6668, &qword_1B4D1A658);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.hasWorkoutPropertiesQuery.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8A6668, &qword_1B4D1A658);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8A6668, &qword_1B4D1A658);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.clearWorkoutPropertiesQuery()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C24944(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8A6668, &qword_1B4D1A658);
  swift_endAccess();
}

uint64_t sub_1B4C0FF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C24944(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8A6680, &unk_1B4D2FD90);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.ringsPropertiesQuery.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A6680, &unk_1B4D2FD90);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v19;
    sub_1B4D17BBC();
    v20 = *(v9 + 28);
    v21 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    v22 = *(v9 + 32);
    v23 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
    (*(*(v23 - 8) + 56))(&v14[v22], 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6680, &unk_1B4D2FD90);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  return sub_1B4C103FC;
}

void sub_1B4C103FC(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C24944(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8A6680, &unk_1B4D2FD90);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C24944(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8A6680, &unk_1B4D2FD90);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.hasRingsPropertiesQuery.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8A6680, &unk_1B4D2FD90);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8A6680, &unk_1B4D2FD90);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.clearRingsPropertiesQuery()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C24944(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8A6680, &unk_1B4D2FD90);
  swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.currentDate.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1096C;
}

uint64_t sub_1B4C109A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X4>, double *a4@<X8>)
{
  v5 = *(a1 + *(a2(0) + 20)) + *a3;
  result = swift_beginAccess();
  v7 = *v5;
  if (*(v5 + 8))
  {
    v7 = 0.0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1B4C10A24(uint64_t *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v11 = sub_1B4C24944(v11);
    *(a2 + v9) = v11;
  }

  v12 = v11 + *a6;
  result = swift_beginAccess();
  *v12 = v8;
  *(v12 + 8) = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.dateIntervalStart.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C10B8C;
}

void sub_1B4C10B98(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C24944(v9);
    *(v11 + v10) = v9;
  }

  v12 = v9 + *a3;
  swift_beginAccess();
  *v12 = v5;
  *(v12 + 8) = 0;

  free(v4);
}

uint64_t sub_1B4C10CA0(void *a1, double a2)
{
  v4 = v2;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C24944(v7);
    *(v4 + v5) = v7;
  }

  v8 = v7 + *a1;
  result = swift_beginAccess();
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.dateIntervalEnd.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C10E00;
}

uint64_t sub_1B4C10E38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C24944(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8ABC28, &qword_1B4D38428);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  *a1 = 0u;
  a1[1] = 0u;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.location.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ABC28, &qword_1B4D38428);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ABC28, &qword_1B4D38428);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  return sub_1B4C112BC;
}

void sub_1B4C112BC(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C24944(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8ABC28, &qword_1B4D38428);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C24944(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8ABC28, &qword_1B4D38428);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.hasLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8ABC28, &qword_1B4D38428);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8ABC28, &qword_1B4D38428);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.clearLocation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C24944(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8ABC28, &qword_1B4D38428);
  swift_endAccess();
}

uint64_t sub_1B4C117AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C41D9C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest.queryDescriptor.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v5[2] = Descriptor;
  v10 = *(Descriptor - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Descriptor) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(Descriptor + 20);
    if (qword_1EB8A64A8 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8AC728;
    v18 = v16(v8, 1, Descriptor);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  return sub_1B4C41EB4;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  Request = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  sub_1B4D17BBC();
  v4 = *(Request + 24);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v6 = *(*(Descriptor - 8) + 56);

  return v6(&a1[v4], 1, 1, Descriptor);
}

uint64_t sub_1B4C11C68@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = a1(0, v6);
  sub_1B4974FBC(v2 + *(v9 + 24), v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v11 = *(*(Descriptor - 8) + 48);
  if (v11(v8, 1, Descriptor) != 1)
  {
    return sub_1B4C2FF48(v8, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  sub_1B4D17BBC();
  v12 = *(Descriptor + 20);
  if (qword_1EB8A64A8 != -1)
  {
    swift_once();
  }

  *(a2 + v12) = qword_1EB8AC728;
  v13 = v11(v8, 1, Descriptor);

  if (v13 != 1)
  {
    return sub_1B4975024(v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  }

  return result;
}

uint64_t sub_1B4C11E18@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, double)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = a2(0, v7);
  sub_1B4974FBC(a1 + *(v10 + 24), v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v12 = *(*(Descriptor - 8) + 48);
  if (v12(v9, 1, Descriptor) != 1)
  {
    return sub_1B4C2FF48(v9, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  sub_1B4D17BBC();
  v13 = *(Descriptor + 20);
  if (qword_1EB8A64A8 != -1)
  {
    swift_once();
  }

  *(a3 + v13) = qword_1EB8AC728;
  v14 = v12(v9, 1, Descriptor);

  if (v14 != 1)
  {
    return sub_1B4975024(v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  }

  return result;
}

uint64_t sub_1B4C11FCC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, double))
{
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v10 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  v13 = *((a6)(0) + 24);
  sub_1B4975024(a2 + v13, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  sub_1B4C2FF48(v12, a2 + v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  return (*(v10 + 56))(a2 + v13, 0, 1, Descriptor);
}

uint64_t sub_1B4C12120(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  sub_1B4975024(v2 + v4, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  sub_1B4C2FF48(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v6 = *(*(Descriptor - 8) + 56);

  return v6(v2 + v4, 0, 1, Descriptor);
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryResult.queryDescriptor.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v5[2] = Descriptor;
  v10 = *(Descriptor - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Descriptor) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(Descriptor + 20);
    if (qword_1EB8A64A8 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8AC728;
    v18 = v16(v8, 1, Descriptor);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  return sub_1B4C12434;
}

BOOL sub_1B4C12488(uint64_t (*a1)(void, double))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0, v4);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v9 = (*(*(Descriptor - 8) + 48))(v6, 1, Descriptor) != 1;
  sub_1B4975024(v6, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  return v9;
}

uint64_t sub_1B4C125A4(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 24);
  sub_1B4975024(v1 + v2, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v4 = *(*(Descriptor - 8) + 56);

  return v4(v1 + v2, 1, 1, Descriptor);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.component.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  }

  sub_1B4D17BBC();
  v9 = *(v7 + 20);
  if (qword_1EB8A64D8 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_1EB8AC7A8;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  }

  return result;
}

uint64_t sub_1B4C127E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(a1 + *(v7 + 28), v6, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  }

  sub_1B4D17BBC();
  v10 = *(v8 + 20);
  if (qword_1EB8A64D8 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_1EB8AC7A8;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  }

  return result;
}

uint64_t sub_1B4C1298C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  sub_1B4C2FF48(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.component.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  sub_1B4C2FF48(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t sub_1B4C12BB0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  sub_1B4D17BBC();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryResult.component.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(v9 + 20);
    if (qword_1EB8A64D8 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8AC7A8;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAA0, &unk_1B4D3CE00);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  }

  return sub_1B4C12E90;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A6670, &unk_1B4D2FDA0);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v8 = *(*(Metrics - 8) + 48);
  if (v8(v5, 1, Metrics) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, Metrics);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  return result;
}

uint64_t sub_1B4C130A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A6670, &unk_1B4D2FDA0);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v9 = *(*(Metrics - 8) + 48);
  if (v9(v6, 1, Metrics) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, Metrics);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  return result;
}

uint64_t sub_1B4C13208(uint64_t a1, uint64_t a2)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4C2FF48(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  return (*(v5 + 56))(a2 + v8, 0, 1, Metrics);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.metrics.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 32);
  sub_1B4975024(v2 + v4, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4C2FF48(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v6 = *(*(Metrics - 8) + 56);

  return v6(v2 + v4, 0, 1, Metrics);
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryResult.metrics.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5[2] = Metrics;
  v10 = *(Metrics - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Metrics) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, Metrics) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  return sub_1B4C1360C;
}

uint64_t sub_1B4C136D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4C13774(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4D17BBC();
  v4 = v3[6];
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  (*(*(Descriptor - 8) + 56))(&a1[v4], 1, 1, Descriptor);
  v6 = v3[7];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v3[8];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v10 = *(*(Metrics - 8) + 56);

  return v10(&a1[v8], 1, 1, Metrics);
}

uint64_t sub_1B4C13A28@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1(0) + 20));
  result = swift_beginAccess();
  v6 = *(v4 + 24);
  *a2 = *(v4 + 16);
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1B4C13A8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(uint64_t))
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *((a5)(0, a2, a3, a4) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a2 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a6(0);
    swift_allocObject();
    v14 = a7(v14);
    *(a2 + v12) = v14;
  }

  result = swift_beginAccess();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  return result;
}

uint64_t sub_1B4C13B8C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    swift_allocObject();
    v12 = a4(v12);
    *(v7 + v10) = v12;
  }

  result = swift_beginAccess();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.type.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return sub_1B4C13CF4;
}

void sub_1B4C13D20(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 84);
  v9 = *(*a1 + 88);
  v10 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v6 + 84);
    v14 = *(v6 + 88);
    a3(0);
    swift_allocObject();
    v12 = a4(v12);
    *(v14 + v13) = v12;
  }

  swift_beginAccess();
  *(v12 + 16) = v7;
  *(v12 + 24) = v10;

  free(v6);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.activitySharingContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  }

  return result;
}

uint64_t sub_1B4C13F94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  }

  return result;
}

uint64_t sub_1B4C14120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.activitySharingContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  return swift_endAccess();
}

uint64_t sub_1B4C14498@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.activitySharingContext.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  return sub_1B4C1473C;
}

void sub_1B4C1473C(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasActivitySharingContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearActivitySharingContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.activitySummaryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  sub_1B4D17BBC();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  }

  return result;
}

uint64_t sub_1B4C14DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  sub_1B4D17BBC();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  }

  return result;
}

uint64_t sub_1B4C14F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.activitySummaryContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.activitySummaryContext.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  return sub_1B4C15588;
}

void sub_1B4C15588(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasActivitySummaryContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearActivitySummaryContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.ringsProperties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8A6678, &qword_1B4D3CE20);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  return result;
}

uint64_t sub_1B4C15BC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A6678, &qword_1B4D3CE20);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  return result;
}

uint64_t sub_1B4C15D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8A6678, &qword_1B4D3CE20);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.ringsProperties.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8A6678, &qword_1B4D3CE20);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.ringsProperties.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A6678, &qword_1B4D3CE20);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6678, &qword_1B4D3CE20);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  return sub_1B4C16318;
}

void sub_1B4C16318(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8A6678, &qword_1B4D3CE20);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8A6678, &qword_1B4D3CE20);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasRingsProperties.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8A6678, &qword_1B4D3CE20);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8A6678, &qword_1B4D3CE20);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearRingsProperties()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8A6678, &qword_1B4D3CE20);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.weeklySummaryContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v10;
  sub_1B4D17BBC();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  }

  return result;
}

uint64_t sub_1B4C16954@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v11;
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  }

  return result;
}

uint64_t sub_1B4C16AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.weeklySummaryContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_WeeklySummaryContext.init()@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.weeklySummaryContext.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    v14[1] = v19;
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  return sub_1B4C170DC;
}

void sub_1B4C170DC(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasWeeklySummaryContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearWeeklySummaryContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.trainingLoadContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v9 = *(*(Context - 8) + 48);
  if (v9(v5, 1, Context) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  sub_1B4D17BBC();
  v10 = *(Context + 20);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, Context);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  }

  return result;
}

uint64_t sub_1B4C1774C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v10 = *(*(Context - 8) + 48);
  if (v10(v6, 1, Context) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  sub_1B4D17BBC();
  v11 = *(Context + 20);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v6, 1, Context);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  }

  return result;
}

uint64_t sub_1B4C1790C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v8 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  (*(v8 + 56))(v6, 0, 1, Context);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.trainingLoadContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  (*(*(Context - 8) + 56))(v6, 0, 1, Context);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  return swift_endAccess();
}

uint64_t sub_1B4C17C98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_1B4D17BBC();
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.trainingLoadContext.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  *(v5 + 96) = Context;
  v10 = *(Context - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, Context) == 1)
  {
    sub_1B4D17BBC();
    v19 = *(Context + 20);
    v20 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, Context) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  return sub_1B4C17FBC;
}

void sub_1B4C17FBC(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasTrainingLoadContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v7 = (*(*(Context - 8) + 48))(v3, 1, Context) != 1;
  sub_1B4975024(v3, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearTrainingLoadContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  (*(*(Context - 8) + 56))(v4, 1, 1, Context);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.vitalsContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  sub_1B4D17BBC();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  }

  return result;
}

uint64_t sub_1B4C1862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  sub_1B4D17BBC();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  }

  return result;
}

uint64_t sub_1B4C187EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.vitalsContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.vitalsContext.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  return sub_1B4C18E08;
}

void sub_1B4C18E08(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasVitalsContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearVitalsContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.awardsContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  v10 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v10;
  sub_1B4D17BBC();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ACB00, &unk_1B4D3CE40);
  }

  return result;
}

uint64_t sub_1B4C19448@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  v11 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v11;
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACB00, &unk_1B4D3CE40);
  }

  return result;
}

uint64_t sub_1B4C195D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8ACB00, &unk_1B4D3CE40);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.awardsContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8ACB00, &unk_1B4D3CE40);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  a1[1] = 0;
  a1[2] = 0;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.awardsContext.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    v14[1] = 0;
    v14[2] = 0;
    *v14 = v19;
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACB00, &unk_1B4D3CE40);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  return sub_1B4C19BDC;
}

void sub_1B4C19BDC(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8ACB00, &unk_1B4D3CE40);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8ACB00, &unk_1B4D3CE40);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasAwardsContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8ACB00, &unk_1B4D3CE40);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearAwardsContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8ACB00, &unk_1B4D3CE40);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.workoutProperties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  return result;
}

uint64_t sub_1B4C1A21C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  return result;
}

uint64_t sub_1B4C1A3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8A6660, &unk_1B4D2FDB0);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.workoutProperties.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8A6660, &unk_1B4D2FDB0);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.workoutProperties.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6660, &unk_1B4D2FDB0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  return sub_1B4C1A96C;
}

void sub_1B4C1A96C(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8A6660, &unk_1B4D2FDB0);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8A6660, &unk_1B4D2FDB0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasWorkoutProperties.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8A6660, &unk_1B4D2FDB0);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearWorkoutProperties()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8A6660, &unk_1B4D2FDB0);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.workoutWeekContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ACB18, &qword_1B4D3CE50);
  }

  return result;
}

uint64_t sub_1B4C1AFA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACB18, &qword_1B4D3CE50);
  }

  return result;
}

uint64_t sub_1B4C1B134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8ACB18, &qword_1B4D3CE50);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.workoutWeekContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8ACB18, &qword_1B4D3CE50);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.workoutWeekContext.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACB18, &qword_1B4D3CE50);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  return sub_1B4C1B708;
}

void sub_1B4C1B708(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8ACB18, &qword_1B4D3CE50);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8ACB18, &qword_1B4D3CE50);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasWorkoutWeekContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8ACB18, &qword_1B4D3CE50);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearWorkoutWeekContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8ACB18, &qword_1B4D3CE50);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.locationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  sub_1B4D17BBC();
  v10 = v8[5];
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = (a1 + v8[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v8[8]);
  *v14 = 0;
  v14[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ACB28, &unk_1B4D3CE58);
  }

  return result;
}

uint64_t sub_1B4C1BD9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4C29188(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8ACB28, &unk_1B4D3CE58);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.locationContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4C2FF48(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8ACB28, &unk_1B4D3CE58);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_LocationContext.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v4 = v3[5];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = (a2 + v3[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v3[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v3[8]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.locationContext.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = v9[5];
    v20 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = (v14 + v9[6]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[7]);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v14 + v9[8]);
    *v23 = 0;
    v23[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACB28, &unk_1B4D3CE58);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  return sub_1B4C1C450;
}

void sub_1B4C1C450(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8ACB28, &unk_1B4D3CE58);
    swift_endAccess();
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4C29188(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4C2FF48(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8ACB28, &unk_1B4D3CE58);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasLocationContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B4974FBC(v4 + v5, v3, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1B4975024(v3, &qword_1EB8ACB28, &unk_1B4D3CE58);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearLocationContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C29188(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v9, &qword_1EB8ACB28, &unk_1B4D3CE58);
  swift_endAccess();
}

unint64_t Apple_Fitness_Intelligence_FitnessContextComponent.ComponentType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xA;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B4C1C960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C41D48();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutActivityType.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C1CAD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C3D764(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.cacheIndex.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 16);
  return sub_1B4C1CC18;
}

void sub_1B4C1CC18(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v10 = sub_1B4C3D764(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;

  free(v2);
}

uint64_t sub_1B4C1CCEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  }

  *a2 = 0;
  a2[1] = 0;
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8AB768, &unk_1B4D3CDE0);
  }

  return result;
}

uint64_t sub_1B4C1CE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v14 = sub_1B4C3D764(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_1B4C2FF48(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v15, &qword_1EB8AB768, &unk_1B4D3CDE0);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_ActivitySummary.pausedInterval.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AB768, &unk_1B4D3CDE0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  }

  return sub_1B4C1D2BC;
}

void sub_1B4C1D2BC(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4C3DE94(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();
      v10 = sub_1B4C3D764(v7);

      *(v9 + v8) = v10;
      v7 = v10;
    }

    v12 = *(v3 + 112);
    v11 = *(v3 + 120);
    v13 = *(v3 + 96);
    v14 = *(v3 + 104);
    v16 = *(v3 + 80);
    v15 = *(v3 + 88);
    sub_1B4C2FF48(v12, v16, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    (*(v14 + 56))(v16, 0, 1, v13);
    v17 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
    swift_beginAccess();
    sub_1B49A205C(v16, v7 + v17, &qword_1EB8AB768, &unk_1B4D3CDE0);
    swift_endAccess();
    sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  }

  else
  {
    v18 = *(v3 + 72);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v18 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v3 + 128);
      v22 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();
      v23 = sub_1B4C3D764(v20);

      *(v22 + v21) = v23;
      v20 = v23;
    }

    v12 = *(v3 + 112);
    v11 = *(v3 + 120);
    v24 = *(v3 + 96);
    v25 = *(v3 + 104);
    v16 = *(v3 + 80);
    v15 = *(v3 + 88);
    sub_1B4C2FF48(v11, v16, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    (*(v25 + 56))(v16, 0, 1, v24);
    v26 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
    swift_beginAccess();
    sub_1B49A205C(v16, v20 + v26, &qword_1EB8AB768, &unk_1B4D3CDE0);
    swift_endAccess();
  }

  free(v11);
  free(v12);
  free(v15);
  free(v16);

  free(v3);
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySummary.clearPausedInterval()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v8 = sub_1B4C3D764(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B49A205C(v4, v7 + v10, &qword_1EB8AB768, &unk_1B4D3CDE0);
  swift_endAccess();
}

void (*Apple_Fitness_Intelligence_ActivitySummary.moveGoal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1D734;
}

uint64_t sub_1B4C1D74C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v11 = sub_1B4C3D764(v10);

    *(a2 + v8) = v11;
    v10 = v11;
  }

  v12 = v10 + *a5;
  result = swift_beginAccess();
  *v12 = v7;
  *(v12 + 8) = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.moveProgress.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1D8BC;
}

void sub_1B4C1D8C8(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v12 = sub_1B4C3D764(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = v9 + *a3;
  swift_beginAccess();
  *v13 = v5;
  *(v13 + 8) = 0;

  free(v4);
}

uint64_t sub_1B4C1D9B8(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C3D764(v6);

    *(v3 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + *a1;
  result = swift_beginAccess();
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.moveMinutesGoal.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DB34;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.moveMinutesProgress.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DC14;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.exerciseGoal.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DCE8;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.exerciseProgress.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DDBC;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.standGoal.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DE90;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.standProgress.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DF64;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.stepCount.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1E038;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.flightCount.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1E10C;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.distance.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1E1E0;
}

uint64_t sub_1B4C1E1F8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20)) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 4))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1B4C1E268(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C3D764(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  result = swift_beginAccess();
  *v8 = v3;
  *(v8 + 4) = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.activityMoveMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1B4C1E3D4;
}

void sub_1B4C1E3D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v10 = sub_1B4C3D764(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = v7 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  *v11 = v3;
  *(v11 + 4) = 0;

  free(v2);
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySummary.clearActivityMoveMode()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v5 = sub_1B4C3D764(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = v4 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  *v6 = 0;
  *(v6 + 4) = 1;
}

uint64_t sub_1B4C1E564(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C3D764(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  result = swift_beginAccess();
  *(v6 + v8) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.isWheelchairUser.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1B4C1E6BC;
}

void sub_1B4C1E6BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v10 = sub_1B4C3D764(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  *(v7 + v11) = v5;

  free(v2);
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySummary.clearIsWheelchairUser()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v5 = sub_1B4C3D764(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

uint64_t sub_1B4C1E838(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4C3D764(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  result = swift_beginAccess();
  *(v6 + v8) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.isPaused.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1B4C1E98C;
}

void sub_1B4C1E98C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v10 = sub_1B4C3D764(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  *(v7 + v11) = v5;

  free(v2);
}

double sub_1B4C1EB74@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v6;
  a2[1] = v7;

  return result;
}

uint64_t sub_1B4C1EBD8(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));

  *v5 = v4;
  v5[1] = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySharingContext.Friend.displayName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySharingContext.Friend.clearDisplayName()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));

  *v1 = 0;
  v1[1] = 0;
}

void (*Apple_Fitness_Intelligence_ActivitySharingContext.Friend.fullName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

void (*Apple_Fitness_Intelligence_ActivitySharingContext.Friend.timeZoneIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 52);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.workouts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.activitySummaries.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

double sub_1B4C1EFCC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4C1F030(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySharingContext.Friend.activeCompetitionUuid.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySharingContext.Friend.clearActiveCompetitionUuid()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  result = sub_1B4D17BBC();
  v5 = (a1 + v3[11]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v3[12]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v3[13]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v3[14]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_1B4C1F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4974FBC(a1 + *(v7 + 28), v6, &qword_1EB8A7CB8, &unk_1B4D20170);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  }

  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7CB8, &unk_1B4D20170);
  }

  return result;
}

uint64_t sub_1B4C1F498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A7CB8, &unk_1B4D20170);
  sub_1B4C2FF48(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_ActivitySharingContext.Workout.workoutType.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7CB8, &unk_1B4D20170);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 4) = 0;
    *(v14 + 8) = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7CB8, &unk_1B4D20170);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  }

  return sub_1B4C1F7E8;
}

BOOL sub_1B4C1F860(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4C1F998(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.init()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  sub_1B4D17BBC();
  v4 = *(v3 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1B4C1FB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4974FBC(a1 + *(v7 + 20), v6, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  sub_1B4D17BBC();
  v10 = *(v8 + 20);
  if (qword_1EB8A64F8 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_1EB8AC7F8;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  }

  return result;
}

uint64_t sub_1B4C1FD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  sub_1B4975024(a2 + v8, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  sub_1B4C2FF48(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_ActivitySummaryContext.todayRing.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(v9 + 20);
    if (qword_1EB8A64F8 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8AC7F8;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A9C38, &qword_1B4D2B6E0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  return sub_1B4C200C0;
}

uint64_t sub_1B4C20158@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4974FBC(a1 + *(Context + 20), v6, &qword_1EB8AA510, &unk_1B4D3CDD0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  *a2 = 0;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8AA510, &unk_1B4D3CDD0);
  }

  return result;
}

uint64_t sub_1B4C202B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  sub_1B4975024(a2 + v8, &qword_1EB8AA510, &unk_1B4D3CDD0);
  sub_1B4C2FF48(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_TrainingLoadContext.trainingLoadDay.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8AA510, &unk_1B4D3CDD0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AA510, &unk_1B4D3CDD0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  return sub_1B4C20638;
}

BOOL sub_1B4C206B0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4C207E8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.vitalsDay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  }

  return result;
}

uint64_t sub_1B4C20AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4974FBC(a1 + *(v7 + 20), v6, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  }

  return result;
}

uint64_t sub_1B4C20C10(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  sub_1B4975024(a2 + v9, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  return (*(v6 + 56))(a2 + v9, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.vitalsDay.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  sub_1B4975024(v2 + v4, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  sub_1B4C2FF48(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.VitalsDay.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_VitalsContext.vitalsDay.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AA6C8, &unk_1B4D2FC70);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  return sub_1B4C21050;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.earnedAchievements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B4C21330@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4C213CC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t Apple_Fitness_Intelligence_AwardsContext.Section.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Section.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B4C214F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E124();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.DateComponents.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.templateUniqueName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.templateUniqueName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B4C2170C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  }

  return result;
}

uint64_t sub_1B4C21870(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  return (*(v6 + 56))(a2 + v9, 0, 1, v5);
}

void (*Apple_Fitness_Intelligence_AwardsContext.Award.earnedDateComponents.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  return sub_1B4C21BBC;
}

BOOL sub_1B4C21C34(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4C21D6C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void Apple_Fitness_Intelligence_AwardsContext.Award.section.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.section.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AwardsContext.Award.valueDouble.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AwardsContext.Award.clearValueDouble()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

void (*Apple_Fitness_Intelligence_AwardsContext.Award.valueUnitString.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

uint64_t (*Apple_Fitness_Intelligence_AwardsContext.Award.goalDouble.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 44);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A3E3D4;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AwardsContext.Award.clearGoalDouble()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double sub_1B4C22090@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 48));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;

  return result;
}

uint64_t sub_1B4C220F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 48));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

void (*Apple_Fitness_Intelligence_AwardsContext.Award.goalUnitString.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A3E8AC;
}

uint64_t sub_1B4C22218(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 48));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

double sub_1B4C22258@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 52));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;

  return result;
}

uint64_t sub_1B4C222C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 52));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

void (*Apple_Fitness_Intelligence_AwardsContext.Award.externalIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 52);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

uint64_t sub_1B4C223E0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4D17BBC();
  v3 = v2[8];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + v2[10]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1 + v2[11];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v2[12]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v2[13]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.locationType.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.locationType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

double sub_1B4C226A0@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 40));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;

  return result;
}

uint64_t sub_1B4C22708(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 40));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

void (*Apple_Fitness_Intelligence_WorkoutRecord.catalogWorkoutIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

uint64_t sub_1B4C22828(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1B4C22868@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4974FBC(a1 + *(v7 + 44), v6, &qword_1EB8A6A28, &qword_1B4D20160);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = 0;
  a2[4] = 0xE000000000000000;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6A28, &qword_1B4D20160);
  }

  return result;
}

uint64_t sub_1B4C229DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
  sub_1B4975024(a2 + v8, &qword_1EB8A6A28, &qword_1B4D20160);
  sub_1B4C2FF48(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutRecord.fitnessPlusCatalogWorkout.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6A28, &qword_1B4D20160);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = MEMORY[0x1E69E7CC0];
    v14[3] = 0;
    v14[4] = 0xE000000000000000;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6A28, &qword_1B4D20160);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  }

  return sub_1B4C22D38;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutRecord.clearFitnessPlusCatalogWorkout()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
  sub_1B4975024(v0 + v1, &qword_1EB8A6A28, &qword_1B4D20160);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B4C22E18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4C22EB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4D17BBC();
  v3 = (a1 + *(v2 + 40));
  *v3 = 0;
  v3[1] = 0;
  v4 = *(v2 + 44);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_WeeklySummaryContext.previousWeekSummaries.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B4C23148@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4C231E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0) + 32);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.unknownFields.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0) + 32);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_LocationContext.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8ABC28, &qword_1B4D38428);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4C2FF48(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  *a1 = 0u;
  a1[1] = 0u;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  return result;
}

uint64_t sub_1B4C235DC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4974FBC(a1 + *(v7 + 20), v6, &qword_1EB8ABC28, &qword_1B4D38428);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  *a2 = 0u;
  a2[1] = 0u;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  return result;
}

uint64_t sub_1B4C23740(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 20);
  sub_1B4975024(a2 + v9, &qword_1EB8ABC28, &qword_1B4D38428);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  return (*(v6 + 56))(a2 + v9, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_LocationContext.location.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 20);
  sub_1B4975024(v2 + v4, &qword_1EB8ABC28, &qword_1B4D38428);
  sub_1B4C2FF48(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Apple_Fitness_Intelligence_LocationContext.location.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8ABC28, &qword_1B4D38428);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ABC28, &qword_1B4D38428);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  return sub_1B4C23B44;
}

void sub_1B4C23B80(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v10 = *a1;
  v11 = *(*a1 + 12);
  v12 = (*a1)[4];
  v13 = (*a1)[5];
  v14 = (*a1)[2];
  v15 = (*a1)[3];
  v16 = **a1;
  v18 = (*a1)[1];
  if (a2)
  {
    sub_1B4C3DE94(v13, v12, a6);
    sub_1B4975024(v16 + v11, a3, a4);
    sub_1B4C2FF48(v12, v16 + v11, a5);
    (*(v15 + 56))(v16 + v11, 0, 1, v14);
    sub_1B4C3DEFC(v13, a6);
  }

  else
  {
    sub_1B4975024(v16 + v11, a3, a4);
    sub_1B4C2FF48(v13, v16 + v11, a5);
    (*(v15 + 56))(v16 + v11, 0, 1, v14);
  }

  free(v13);
  free(v12);
  free(v18);

  free(v10);
}

uint64_t Apple_Fitness_Intelligence_LocationContext.country.getter(double a1)
{
  v2 = (v1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double sub_1B4C23D88@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v6;
  a2[1] = v7;

  return result;
}

uint64_t sub_1B4C23DEC(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));

  *v5 = v4;
  v5[1] = v3;
  return result;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.country.setter(uint64_t a1, uint64_t a2, double a3)
{
  v6 = (v3 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_LocationContext.country.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_LocationContext.clearCountry()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.name.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_1B4C23FF4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4C24058(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_LocationContext.name.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_LocationContext.clearName()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.locality.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_1B4C24260@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4C242C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.locality.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_LocationContext.locality.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_LocationContext.clearLocality()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_1B4C244B4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC710);
  __swift_project_value_buffer(v0, qword_1EB8AC710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D223F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "workoutPropertiesQuery";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ringsPropertiesQuery";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "currentDate";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "dateIntervalStart";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "dateIntervalEnd";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "location";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C247E0()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  result = (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  qword_1EB8AC728 = v0;
  return result;
}

uint64_t sub_1B4C24944(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v34 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  v35 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  v37 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  v17 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  swift_beginAccess();
  v18 = *(a1 + 16);
  LOBYTE(v16) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v18;
  *(v1 + 24) = v16;
  v19 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  v20 = v34;
  sub_1B4974FBC(a1 + v19, v34, &qword_1EB8A6668, &qword_1B4D1A658);
  swift_beginAccess();
  sub_1B49A205C(v20, v1 + v9, &qword_1EB8A6668, &qword_1B4D1A658);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  v22 = v36;
  sub_1B4974FBC(a1 + v21, v36, &qword_1EB8A6680, &unk_1B4D2FD90);
  v23 = v35;
  swift_beginAccess();
  sub_1B49A205C(v22, v1 + v23, &qword_1EB8A6680, &unk_1B4D2FD90);
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate);
  swift_beginAccess();
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  swift_beginAccess();
  *v13 = v25;
  *(v13 + 8) = v24;
  v26 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  swift_beginAccess();
  *v14 = v27;
  *(v14 + 8) = v26;
  v28 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  swift_beginAccess();
  *v15 = v29;
  *(v15 + 8) = v28;
  v30 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  v31 = v38;
  sub_1B4974FBC(a1 + v30, v38, &qword_1EB8ABC28, &qword_1B4D38428);

  v32 = v37;
  swift_beginAccess();
  sub_1B49A205C(v31, v1 + v32, &qword_1EB8ABC28, &qword_1B4D38428);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B4C24E20()
{
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location, &qword_1EB8ABC28, &qword_1B4D38428);

  return swift_deallocClassInstance();
}

uint64_t sub_1B4C24F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_1B4C2A1C0(a2, a1, a3, a4, sub_1B4C41D9C, &type metadata for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.QueryType);
            break;
          case 2:
            sub_1B4C250E4(a2, a1, a3, a4);
            break;
          case 3:
            sub_1B4C251C0(a2, a1, a3, a4);
            break;
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
LABEL_5:
          sub_1B4C306A0(v11, v12, v13, v14, v15);
          goto LABEL_6;
        }

        if (result == 7)
        {
          sub_1B4C2529C(a2, a1, a3, a4);
        }
      }

LABEL_6:
      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4C250E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  sub_1B4C3E0DC(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C251C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4C3E0DC(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C253B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (sub_1B4C41D9C(), result = sub_1B4D17DDC(), !v4))
  {
    result = sub_1B4C2550C(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1B4C25734(a1, a2, a3, a4);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate, 4);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart, 5);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd, 6);
      return sub_1B4C2595C(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B4C2550C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8A6668, &qword_1B4D1A658);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4C3E0DC(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
}

uint64_t sub_1B4C25734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8A6680, &unk_1B4D2FD90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4C3E0DC(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
}

uint64_t sub_1B4C2595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8ABC28, &qword_1B4D38428);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
}

BOOL sub_1B4C25BC8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v93 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v88 = (&v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0A8, &qword_1B4D3F8F8);
  MEMORY[0x1EEE9AC00](v90);
  v8 = &v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v89 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v85 - v12;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v97 = *(v13 - 8);
  v98 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF10, &unk_1B4D3F9A0);
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v85 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v85 - v19;
  v103 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v20 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v95 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF20, &qword_1B4D32548);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v85 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v101 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v85 - v28;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  v31 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v31 > 4)
    {
      if (v31 <= 6)
      {
        if (v31 == 5)
        {
          if (v30 != 5)
          {
            return 0;
          }
        }

        else if (v30 != 6)
        {
          return 0;
        }
      }

      else if (v31 == 7)
      {
        if (v30 != 7)
        {
          return 0;
        }
      }

      else if (v31 == 8)
      {
        if (v30 != 8)
        {
          return 0;
        }
      }

      else if (v30 != 9)
      {
        return 0;
      }
    }

    else if (v31 <= 1)
    {
      if (v31)
      {
        if (v30 != 1)
        {
          return 0;
        }
      }

      else if (v30)
      {
        return 0;
      }
    }

    else if (v31 == 2)
    {
      if (v30 != 2)
      {
        return 0;
      }
    }

    else if (v31 == 3)
    {
      if (v30 != 3)
      {
        return 0;
      }
    }

    else if (v30 != 4)
    {
      return 0;
    }
  }

  else if (v30 != v31)
  {
    return 0;
  }

  v86 = v5;
  v87 = v8;
  v92 = a2;
  v32 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  v33 = a1;
  sub_1B4974FBC(a1 + v32, v29, &qword_1EB8A6668, &qword_1B4D1A658);
  v34 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  v35 = v92;
  swift_beginAccess();
  v36 = *(v22 + 48);
  sub_1B4974FBC(v29, v24, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4974FBC(v35 + v34, &v24[v36], &qword_1EB8A6668, &qword_1B4D1A658);
  v37 = *(v20 + 48);
  v38 = v103;
  if (v37(v24, 1, v103) == 1)
  {

    sub_1B4975024(v29, &qword_1EB8A6668, &qword_1B4D1A658);
    if (v37(&v24[v36], 1, v38) == 1)
    {
      sub_1B4975024(v24, &qword_1EB8A6668, &qword_1B4D1A658);
      v39 = a1;
      v40 = v35;
      goto LABEL_21;
    }

LABEL_19:
    v42 = &qword_1EB8AAF20;
    v43 = &qword_1B4D32548;
    v44 = v24;
LABEL_33:
    sub_1B4975024(v44, v42, v43);
    goto LABEL_34;
  }

  v41 = v101;
  sub_1B4974FBC(v24, v101, &qword_1EB8A6668, &qword_1B4D1A658);
  if (v37(&v24[v36], 1, v38) == 1)
  {

    sub_1B4975024(v29, &qword_1EB8A6668, &qword_1B4D1A658);
    sub_1B4C3DEFC(v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    goto LABEL_19;
  }

  v45 = v95;
  sub_1B4C2FF48(&v24[v36], v95, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v39 = v33;

  v46 = static Apple_Fitness_Intelligence_WorkoutPropertiesQuery.== infix(_:_:)();
  sub_1B4C3DEFC(v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v47 = v41;
  v40 = v35;
  sub_1B4975024(v29, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4C3DEFC(v47, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4975024(v24, &qword_1EB8A6668, &qword_1B4D1A658);
  if ((v46 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  v48 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  v49 = v39;
  v50 = v102;
  sub_1B4974FBC(v39 + v48, v102, &qword_1EB8A6680, &unk_1B4D2FD90);
  v51 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  v52 = *(v96 + 48);
  v53 = v99;
  sub_1B4974FBC(v50, v99, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4974FBC(v40 + v51, v53 + v52, &qword_1EB8A6680, &unk_1B4D2FD90);
  v54 = v98;
  v55 = *(v97 + 48);
  v56 = v40;
  if (v55(v53, 1, v98) == 1)
  {
    sub_1B4975024(v50, &qword_1EB8A6680, &unk_1B4D2FD90);
    v57 = v55(v53 + v52, 1, v54);
    v58 = v49;
    v59 = v100;
    if (v57 == 1)
    {
      sub_1B4975024(v53, &qword_1EB8A6680, &unk_1B4D2FD90);
      goto LABEL_50;
    }

    goto LABEL_32;
  }

  v60 = v94;
  sub_1B4974FBC(v53, v94, &qword_1EB8A6680, &unk_1B4D2FD90);
  v61 = v55(v53 + v52, 1, v54);
  v59 = v100;
  if (v61 == 1)
  {
    sub_1B4975024(v102, &qword_1EB8A6680, &unk_1B4D2FD90);
    sub_1B4C3DEFC(v60, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
LABEL_32:
    v42 = &qword_1EB8AAF10;
    v43 = &unk_1B4D3F9A0;
    v44 = v53;
    goto LABEL_33;
  }

  v63 = v53 + v52;
  v64 = v91;
  sub_1B4C2FF48(v63, v91, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v65 = static Apple_Fitness_Intelligence_RingsPropertiesQuery.== infix(_:_:)();
  sub_1B4C3DEFC(v64, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4975024(v102, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4C3DEFC(v60, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v56 = v92;
  sub_1B4975024(v53, &qword_1EB8A6680, &unk_1B4D2FD90);
  v58 = v49;
  if ((v65 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_50:
  v66 = v58 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  swift_beginAccess();
  v67 = *v66;
  LOBYTE(v66) = *(v66 + 8);
  v68 = v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  swift_beginAccess();
  if (v66)
  {
    v69 = v93;
    if ((*(v68 + 8) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v69 = v93;
    if ((*(v68 + 8) & 1) != 0 || v67 != *v68)
    {
      goto LABEL_34;
    }
  }

  v70 = v58 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  swift_beginAccess();
  v71 = *v70;
  LOBYTE(v70) = *(v70 + 8);
  v72 = v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  swift_beginAccess();
  if (v70)
  {
    if ((*(v72 + 8) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((*(v72 + 8) & 1) != 0 || v71 != *v72)
  {
    goto LABEL_34;
  }

  v73 = v58 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  swift_beginAccess();
  v74 = *v73;
  LOBYTE(v73) = *(v73 + 8);
  v75 = v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  swift_beginAccess();
  if (v73)
  {
    if (*(v75 + 8))
    {
      goto LABEL_65;
    }

LABEL_34:

    return 0;
  }

  if ((*(v75 + 8) & 1) != 0 || v74 != *v75)
  {
    goto LABEL_34;
  }

LABEL_65:
  v76 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(v58 + v76, v59, &qword_1EB8ABC28, &qword_1B4D38428);
  v77 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  v78 = *(v90 + 48);
  v79 = v87;
  sub_1B4974FBC(v59, v87, &qword_1EB8ABC28, &qword_1B4D38428);
  sub_1B4974FBC(v92 + v77, v79 + v78, &qword_1EB8ABC28, &qword_1B4D38428);
  v80 = *(v69 + 48);
  v81 = v86;
  if (v80(v79, 1, v86) != 1)
  {
    v82 = v89;
    sub_1B4974FBC(v79, v89, &qword_1EB8ABC28, &qword_1B4D38428);
    if (v80(v79 + v78, 1, v81) == 1)
    {

      sub_1B4975024(v59, &qword_1EB8ABC28, &qword_1B4D38428);
      sub_1B4C3DEFC(v82, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      goto LABEL_70;
    }

    v83 = v88;
    sub_1B4C2FF48(v79 + v78, v88, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    v84 = _s19FitnessIntelligence06Apple_a1_B19_LocationCoordinateV2eeoiySbAC_ACtFZ_0(v82, v83);

    sub_1B4C3DEFC(v83, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    sub_1B4975024(v59, &qword_1EB8ABC28, &qword_1B4D38428);
    sub_1B4C3DEFC(v82, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    sub_1B4975024(v79, &qword_1EB8ABC28, &qword_1B4D38428);
    return (v84 & 1) != 0;
  }

  sub_1B4975024(v59, &qword_1EB8ABC28, &qword_1B4D38428);
  if (v80(v79 + v78, 1, v81) != 1)
  {
LABEL_70:
    sub_1B4975024(v79, &qword_1EB8AD0A8, &qword_1B4D3F8F8);
    return 0;
  }

  sub_1B4975024(v79, &qword_1EB8ABC28, &qword_1B4D38428);
  return 1;
}