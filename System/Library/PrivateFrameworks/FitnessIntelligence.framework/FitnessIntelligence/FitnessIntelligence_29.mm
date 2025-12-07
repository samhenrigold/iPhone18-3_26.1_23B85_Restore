uint64_t sub_1B4C479F8(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4C48354(&qword_1EB8AD248, type metadata accessor for LocationContext, &protocol conformance descriptor for LocationContext);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4C48354(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);
    v1 = sub_1B4D17D6C();
    sub_1B4C47E70(v6, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  return v1;
}

uint64_t sub_1B4C47B78()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4C48354(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C47C38(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  sub_1B4D176DC();
  *a1 = v8;
  v9 = type metadata accessor for LocationCoordinate(0);
  a1[1] = *(a2 + *(v9 + 20));
  a1[2] = *(a2 + *(v9 + 24));
  sub_1B499221C();
  v10 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v12 = v11;
  result = (*(v5 + 8))(v7, v4);
  a1[3] = v12;
  return result;
}

uint64_t sub_1B4C47D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C47E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C47E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C47ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C47FE4(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4C48354(&qword_1EB8AA6E8, type metadata accessor for LocationCoordinate, &protocol conformance descriptor for LocationCoordinate);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4C48354(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
    v1 = sub_1B4D17D6C();
    sub_1B4C47E70(v6, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  return v1;
}

uint64_t sub_1B4C481F4()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  sub_1B4C48354(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C4829C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4D176CC();
  v6 = *(a1 + 16);
  v7 = *(a2 + 24);
  *(a3 + *(a2 + 20)) = *(a1 + 8);
  *(a3 + v7) = v6;
  sub_1B499221C();
  v8 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  return sub_1B4C47E70(a1, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
}

uint64_t sub_1B4C48354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unsigned int *FIWorkoutActivityType.init(_:)(unsigned int *result)
{
  v1 = *result;
  if ((v1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = *(v2 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD250, &unk_1B4D40410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    *(inited + 32) = sub_1B4D1818C();
    *(inited + 40) = v6;
    v7 = v2[2];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 48) = v7;
    sub_1B4C945C0(inited);
    swift_setDeallocating();
    sub_1B4C48620(inited + 32);
    v8 = sub_1B4D17FAC();

    v9 = [v3 initWithActivityTypeIdentifier:v1 isIndoor:v4 metadata:v8];

    sub_1B4C48688(v2);
    return v9;
  }

  return result;
}

uint64_t FIWorkoutActivityType.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  sub_1B4C486E4();
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C48584(uint64_t a1, id a2)
{
  result = [a2 identifier];
  if (result >> 31)
  {
    __break(1u);
    goto LABEL_6;
  }

  *a1 = result;
  *(a1 + 4) = [a2 isIndoor];
  result = [a2 location];
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result <= 0x7FFFFFFF)
  {
    *(a1 + 8) = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B4C48620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB120, &qword_1B4D32FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C48688(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4C486E4()
{
  result = qword_1EB8AB158;
  if (!qword_1EB8AB158)
  {
    type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB158);
  }

  return result;
}

void sub_1B4C48788(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v5 = objc_allocWithZone(MEMORY[0x1E696B038]);
  v6 = sub_1B4D1817C();
  v7 = [v5 initWithSymbol:v6 converter:v4];

  *a3 = v7;
}

void static DeviceInferenceAvailabilityStore.readAvailability(device:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1B4D1817C();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = v6;
    sub_1B4D1896C();

    *&v15[0] = 0xD00000000000001CLL;
    *(&v15[0] + 1) = 0x80000001B4D63E60;
    if (v3)
    {
      v8 = 0x6863746177;
    }

    else
    {
      v8 = 0x656E6F6870;
    }

    MEMORY[0x1B8C7C620](v8, 0xE500000000000000);

    v9 = sub_1B4D1817C();

    v10 = [v7 dataForKey_];

    if (v10)
    {
      v11 = sub_1B4D176BC();
      v13 = v12;

      sub_1B498FC0C(v11, v13);
      sub_1B4B2A134(v11, v13, v15);

      sub_1B49DDD2C(v11, v13);
      v14 = v15[1];
      *a2 = v15[0];
      *(a2 + 16) = v14;
      return;
    }
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

uint64_t static DeviceInferenceAvailabilityStore.writeAvailability(_:device:)(__int128 *a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = a1[1];
  v30 = *a1;
  v31 = v9;
  v10 = sub_1B4C0B860();
  result = (*(v10 + 32))(&type metadata for DeviceInferenceAvailability, v10);
  if (!v2)
  {
    sub_1B4C491D4();
    v12 = sub_1B4D17D6C();
    v14 = v13;
    sub_1B4C4922C(v7);
    v32 = 0;
    v15 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v16 = sub_1B4D1817C();
    v17 = [v15 initWithSuiteName_];

    v29 = v12;
    if (v17)
    {
      v18 = v17;
      v19 = 0x656E6F6870;
      v20 = sub_1B4D176AC();
      *&v30 = 0;
      *(&v30 + 1) = 0xE000000000000000;
      sub_1B4D1896C();

      *&v30 = 0xD00000000000001CLL;
      *(&v30 + 1) = 0x80000001B4D63E60;
      if (v8)
      {
        v19 = 0x6863746177;
      }

      MEMORY[0x1B8C7C620](v19, 0xE500000000000000);

      v21 = sub_1B4D1817C();

      [v18 setValue:v20 forKey:v21];
    }

    else if (v8)
    {
      v19 = 0x6863746177;
    }

    else
    {
      v19 = 0x656E6F6870;
    }

    v22 = sub_1B4D1817C();
    CFPreferencesAppSynchronize(v22);

    v23 = [objc_allocWithZone(NPSManagerBridge) init];
    v24 = sub_1B4D1817C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1B4D1896C();

    *&v30 = 0xD00000000000001CLL;
    *(&v30 + 1) = 0x80000001B4D63E60;
    MEMORY[0x1B8C7C620](v19, 0xE500000000000000);

    v26 = *(&v30 + 1);
    *(inited + 32) = v30;
    *(inited + 40) = v26;
    sub_1B49B554C(inited);
    swift_setDeallocating();
    sub_1B497CBA8(inited + 32);
    v27 = sub_1B4D185FC();

    [v23 synchronizeUserDefaultsDomain:v24 keys:v27];

    return sub_1B49DDD2C(v29, v14);
  }

  return result;
}

void static DeviceInferenceAvailabilityStore.deleteAvailability(device:)(unsigned __int8 *a1)
{
  v1 = 0x6863746177;
  v2 = *a1;
  v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v4 = sub_1B4D1817C();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    v6 = v5;
    sub_1B4D1896C();

    if (!v2)
    {
      v1 = 0x656E6F6870;
    }

    MEMORY[0x1B8C7C620](v1, 0xE500000000000000);

    v7 = sub_1B4D1817C();

    [v6 removeObjectForKey_];
  }

  else if (!v2)
  {
    v1 = 0x656E6F6870;
  }

  v8 = sub_1B4D1817C();
  CFPreferencesAppSynchronize(v8);

  v9 = [objc_allocWithZone(NPSManagerBridge) init];
  v10 = sub_1B4D1817C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  sub_1B4D1896C();

  MEMORY[0x1B8C7C620](v1, 0xE500000000000000);

  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x80000001B4D63E60;
  sub_1B49B554C(inited);
  swift_setDeallocating();
  sub_1B497CBA8(inited + 32);
  v12 = sub_1B4D185FC();

  [v9 synchronizeUserDefaultsDomain:v10 keys:v12];
}

unint64_t sub_1B4C491D4()
{
  result = qword_1EDC3B208[0];
  if (!qword_1EDC3B208[0])
  {
    type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC3B208);
  }

  return result;
}

uint64_t sub_1B4C4922C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4C49298(void *a1)
{
  a1[1] = sub_1B4C492D0();
  a1[2] = sub_1B4B72150();
  result = sub_1B4B71F14();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4C492D0()
{
  result = qword_1EB8AD260;
  if (!qword_1EB8AD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD260);
  }

  return result;
}

uint64_t sub_1B4C49324(uint64_t a1)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B4B71F14();
  v1 = sub_1B4D173BC();

  return v1;
}

uint64_t sub_1B4C493C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4B72150();
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);

  if (!v4)
  {
    *a4 = v9;
    *(a4 + 8) = v10;
  }

  return result;
}

id sub_1B4C49488(uint64_t a1)
{
  result = [type metadata accessor for UnitCount() baseUnit];
  qword_1EDC36E78 = result;
  return result;
}

id static UnitCount.count.getter()
{
  if (qword_1EDC36E70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC36E78;

  return v1;
}

id sub_1B4C495CC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v2 = objc_allocWithZone(v0);
  v3 = sub_1B4D1817C();
  v4 = [v2 initWithSymbol:v3 converter:v1];

  return v4;
}

id UnitCount.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UnitCount();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t PropertyRecordCheckpoint.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1B4D18B1C();

  if (v4 >= 3)
  {
    sub_1B4A2A970();
    swift_allocError();
    swift_willThrow();
    return sub_1B4C4984C(a1);
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    result = sub_1B4C4984C(a1);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v4;
  }

  return result;
}

uint64_t PropertyRecordCheckpoint.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  sub_1B4C49BEC(qword_1EDC3B590, &protocol conformance descriptor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C4984C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *PropertyRecordCheckpoint.init(startCacheIndex:endCacheIndex:snapshotPropertiesType:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  return result;
}

uint64_t sub_1B4C498EC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  a1[1] = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v5 = 0x74756F6B726F77;
    }

    else
    {
      v5 = 0x507373656E746966;
    }

    if (a4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB0000000073756CLL;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x73676E6972;
  }

  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1B4C4999C()
{
  type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  sub_1B4C49BEC(qword_1EDC3B590, &protocol conformance descriptor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
  return sub_1B4D17DAC();
}

uint64_t _s19FitnessIntelligence24PropertyRecordCheckpointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16);
    v5 = 0xE700000000000000;
    v6 = 0x74756F6B726F77;
    if (v4 != 1)
    {
      v6 = 0x507373656E746966;
      v5 = 0xEB0000000073756CLL;
    }

    if (*(a1 + 16))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x73676E6972;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = 0xE700000000000000;
    v10 = 0x74756F6B726F77;
    if (*(a2 + 16) != 1)
    {
      v10 = 0x507373656E746966;
      v9 = 0xEB0000000073756CLL;
    }

    if (*(a2 + 16))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x73676E6972;
    }

    if (*(a2 + 16))
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    if (v7 == v11 && v8 == v12)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1B4D18DCC();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1B4C49BEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PropertyRecordCheckpoint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PropertyRecordCheckpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1B4C49CDC()
{
  result = qword_1EB8AD268;
  if (!qword_1EB8AD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD268);
  }

  return result;
}

uint64_t sub_1B4C49D30(uint64_t a1)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  v3 = 0xE700000000000000;
  v4 = 0x74756F6B726F77;
  if (v2 != 1)
  {
    v4 = 0x507373656E746966;
    v3 = 0xEB0000000073756CLL;
  }

  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73676E6972;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

FitnessIntelligence::InferenceFeedback::Sentiment_optional __swiftcall InferenceFeedback.Sentiment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t InferenceFeedback.init(record:sentiment:userDescription:utteranceResult:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  sub_1B4C49EC4(a1, a6);
  v11 = type metadata accessor for InferenceFeedback(0);
  *(a6 + v11[5]) = v10;
  v12 = (a6 + v11[6]);
  *v12 = a3;
  v12[1] = a4;
  v13 = a6 + v11[7];

  return sub_1B498C368(a5, v13);
}

uint64_t sub_1B4C49EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for InferenceFeedback(uint64_t a1)
{
  result = qword_1EB8AD288;
  if (!qword_1EB8AD288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InferenceFeedback.Sentiment.id.getter()
{
  v1 = 0x657669746167656ELL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

uint64_t sub_1B4C49FD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x657669746167656ELL;
  if (v2 != 1)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6576697469736F70;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x657669746167656ELL;
  if (*a2 != 1)
  {
    v8 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697469736F70;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4C4A0D0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4A170(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C4A1FC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4A2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InferenceFeedback.sentiment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InferenceFeedback(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t InferenceFeedback.userDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for InferenceFeedback(0) + 24));

  return v1;
}

uint64_t InferenceFeedback.utteranceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InferenceFeedback(0) + 28);

  return sub_1B4C4A3DC(v3, a1);
}

uint64_t sub_1B4C4A3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4C4A450()
{
  result = qword_1EB8AD270;
  if (!qword_1EB8AD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD270);
  }

  return result;
}

unint64_t sub_1B4C4A4A8()
{
  result = qword_1EB8AD278;
  if (!qword_1EB8AD278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD280, &qword_1B4D406E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD278);
  }

  return result;
}

void sub_1B4C4A534(uint64_t a1)
{
  type metadata accessor for InferenceRecord(319);
  if (v1 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v2 <= 0x3F)
    {
      sub_1B49F03A4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t RingsBestMetricPropertyValue.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v16[1] = *a1;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD298, &unk_1B4D40780);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v12 = sub_1B4C4A72C();
  v13 = sub_1B498D2F0(sub_1B4C4A6F4, v15, v10, a2, v11, v12, MEMORY[0x1E69E7288], v16);
  sub_1B4C4A790(a1);

  if (!v6)
  {
    *a6 = v13;
  }

  return result;
}

void *sub_1B4C4A6F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4C4A7EC(a1, v3[2], v3[3], v3[4], v3[5], a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

unint64_t sub_1B4C4A72C()
{
  result = qword_1EB8AD2A0;
  if (!qword_1EB8AD2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD298, &unk_1B4D40780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2A0);
  }

  return result;
}

uint64_t sub_1B4C4A790(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B4C4A7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v30 = a5;
  v26[1] = a6;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B4D1880C();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v26 - v17;
  v19 = v32;
  result = sub_1B4C4B0F4(a1, v31);
  if (!v19)
  {
    v21 = v27;
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v22 = swift_dynamicCast();
    v23 = v28;
    v24 = *(v28 + 56);
    if (v22)
    {
      v24(v12, 0, 1, AssociatedTypeWitness);
      (*(v23 + 32))(v18, v12, AssociatedTypeWitness);
      (*(v23 + 16))(v15, v18, AssociatedTypeWitness);
      (*(v8 + 40))(v15, a2, v8);
      return (*(v23 + 8))(v18, AssociatedTypeWitness);
    }

    else
    {
      v24(v12, 1, 1, AssociatedTypeWitness);
      (*(v21 + 8))(v12, v10);
      sub_1B4C4B318();
      swift_allocError();
      *v25 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t RingsBestMetricPropertyValue.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  sub_1B4C4B2D0(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C4ABA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[2] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v8 = sub_1B4D184BC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1B498D2F0(sub_1B4C4B288, v14, v8, v9, v10, WitnessTable, MEMORY[0x1E69E7288], v15);

  if (!v6)
  {

    *a1 = v12;
  }

  return result;
}

uint64_t sub_1B4C4AD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  sub_1B4C4B2D0(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
  result = sub_1B4D17DAC();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_1B4C4AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  result = (*(v11 + 32))(a3, v11, v16);
  if (!v5)
  {
    v20 = v26;
    v21 = v27;
    (*(v27 + 16))(v14, v18, AssociatedTypeWitness);
    if (swift_dynamicCast())
    {
      v22 = *(v21 + 8);
      v22(v18, AssociatedTypeWitness);
      sub_1B4C4B36C(v20);
      sub_1B4C4B3D4(v10, v20);
      v23 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      (*(*(v23 - 8) + 56))(v20, 0, 1, v23);
    }

    else
    {
      sub_1B4C4B318();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
      v22 = *(v21 + 8);
      v22(v18, AssociatedTypeWitness);
    }

    return (v22)(v14, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1B4C4B0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1B4C4B438(a1, &v13 - v8);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  result = (*(*(v10 - 8) + 48))(v9, 1, v10);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_1B4C4B3D4(v9, v6);
    *(a2 + 24) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_1B4C4B3D4(v6, boxed_opaque_existential_1);
  }

  return result;
}

uint64_t sub_1B4C4B2D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4C4B318()
{
  result = qword_1EB8AD2A8;
  if (!qword_1EB8AD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2A8);
  }

  return result;
}

uint64_t sub_1B4C4B36C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C4B3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C4B438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4C4B4BC()
{
  result = qword_1EB8AD2B0;
  if (!qword_1EB8AD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2B0);
  }

  return result;
}

uint64_t RingStateFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4C4B590@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

unint64_t static RingStateFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v2 = sub_1B4D1777C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D0, &qword_1B4D2F400);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D8, &qword_1B4D2F408) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B4D1A800;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 80))(v9, v10);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 96))(v11, v12);
  sub_1B4D1770C();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v13 = sub_1B4C96394(v8);
  swift_setDeallocating();
  sub_1B4975024(v8 + v7, &qword_1EB8AA5D8, &qword_1B4D2F408);
  swift_deallocClassInstance();
  return v13;
}

uint64_t static RingStateFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B49C016C;

  return sub_1B4C4CFBC(a1);
}

uint64_t sub_1B4C4B8D8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v51 - v12;
  v60 = type metadata accessor for HKActivitySummaryRepresentable(0);
  MEMORY[0x1EEE9AC00](v60);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v51 - v16;
  v18 = type metadata accessor for RingProgressType(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  LOBYTE(a1) = *a1;
  v61 = a2;
  sub_1B4C4D9B8(a2, v14, type metadata accessor for HKActivitySummaryRepresentable);
  v63 = a1;
  sub_1B4B05EF8(v14, &v63, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1B4975024(v17, &qword_1EB8AA5C0, &unk_1B4D39040);
    v27 = type metadata accessor for RingStateFact(0);
    return (*(*(v27 - 8) + 56))(v62, 1, 1, v27);
  }

  else
  {
    sub_1B4C4DA9C(v17, v26, type metadata accessor for RingProgressType);
    sub_1B4C4D9B8(v26, v23, type metadata accessor for RingProgressType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
        v31 = v56;
        v32 = v52;
        (*(v56 + 32))(v52, &v23[*(v30 + 64)], v9);
        v33 = [objc_opt_self() minutes];
        v34 = v53;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v36 = v35;
        v37 = *(v31 + 8);
        v37(v34, v9);
        v37(v32, v9);
        v38 = v36 <= 30.0 && v36 >= 10.0;
        v37(&v23[*(v30 + 48)], v9);
        v37(v23, v9);
      }

      else
      {
        sub_1B4C4DA3C(v23, type metadata accessor for RingProgressType);
        v38 = 0;
      }

      v42 = v62;
    }

    else
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v40 = v57;
      v39 = v58;
      v41 = v54;
      (*(v57 + 32))(v54, &v23[*(v56 + 64)], v58);
      v42 = v62;
      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v43 = v55;
      sub_1B4D1745C();
      sub_1B4D1742C();
      v45 = v44;
      v46 = *(v40 + 8);
      v46(v43, v39);
      v46(v41, v39);
      v38 = v45 <= 100.0 && v45 >= 20.0;
      v46(&v23[*(v56 + 48)], v39);
      v46(v23, v39);
    }

    v48 = v60;
    v47 = v61;
    v49 = v59;
    sub_1B4C4DA9C(v26, v59, type metadata accessor for RingProgressType);
    LOBYTE(v47) = *(v47 + *(v48 + 76));
    sub_1B4C4DA9C(v49, v42, type metadata accessor for RingProgressType);
    v50 = type metadata accessor for RingStateFact(0);
    *(v42 + *(v50 + 20)) = v47 & 1;
    *(v42 + *(v50 + 24)) = v38;
    return (*(*(v50 - 8) + 56))(v42, 0, 1, v50);
  }
}

unint64_t RingStateFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v13 = *(v12 - 8);
  v61 = v12;
  v62 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RingStateFact(0);
  v63 = sub_1B4B0793C(*(v1 + *(v22 + 20)));
  v64 = v23;
  sub_1B4C4D9B8(v1, v21, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v60 = *(v36 + 48);
      v37 = v61;
      v38 = v62;
      (*(v62 + 32))(v18, &v21[*(v36 + 64)], v61);
      v39 = [objc_opt_self() minutes];
      sub_1B4D1745C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
      sub_1B4D18F8C();
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1B4D1B2D0;
      sub_1B4D18F4C();
      sub_1B4D18F5C();
      sub_1B4D18F6C();
      sub_1B4D18F7C();
      v41 = sub_1B4BCA7BC(v40);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v42 = sub_1B4D15F5C(v15, v41);
      v44 = v43;

      v45 = *(v38 + 8);
      v45(v15, v37);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1B4D1896C();

      v65 = 0x20657661682049;
      v66 = 0xE700000000000000;
      MEMORY[0x1B8C7C620](v42, v44);

      MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D63F00);
      MEMORY[0x1B8C7C620](v63, v64);

      MEMORY[0x1B8C7C620](0x2E7961646F7420, 0xE700000000000000);
      v31 = v65;
      v45(v18, v37);
      v45(&v21[v60], v37);
      v45(v21, v37);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v26 = v25[12];
      v59 = v25[20];
      v60 = v26;
      v27 = v25[24];
      v57 = v25[32];
      v58 = v27;
      v28 = v25[36];
      v29 = v25[44];
      v30 = v25[48];
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1B4D1896C();

      v65 = 0xD000000000000019;
      v66 = 0x80000001B4D63F20;
      MEMORY[0x1B8C7C620](v63, v64);

      MEMORY[0x1B8C7C620](0x2E7961646F7420, 0xE700000000000000);
      v31 = v65;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v33 = *(*(v32 - 8) + 8);
      v33(&v21[v30], v32);
      v33(&v21[v29], v32);
      v34 = v61;
      v35 = *(v62 + 8);
      v35(&v21[v28], v61);
      v35(&v21[v57], v34);
      sub_1B4975024(&v21[v58], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v21[v59], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v21[v60], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v21, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }

    else
    {

      sub_1B4C4DA3C(v21, type metadata accessor for RingProgressType);
      return 0;
    }
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
    v62 = *(v46 + 48);
    (*(v3 + 32))(v11, &v21[*(v46 + 64)], v2);
    v47 = v3;
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v48);
    v50 = v49;
    sub_1B4D1745C();
    v51 = sub_1B4D12160();
    v52 = sub_1B4D12A28(v5);
    v54 = v53;

    v55 = *(v47 + 8);
    v55(v5, v2);
    v55(v8, v2);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_1B4D1896C();

    v65 = 0x20657661682049;
    v66 = 0xE700000000000000;
    MEMORY[0x1B8C7C620](v52, v54);

    MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D63F00);
    MEMORY[0x1B8C7C620](v63, v64);

    MEMORY[0x1B8C7C620](0x2E7961646F7420, 0xE700000000000000);
    v31 = v65;
    v55(v11, v2);
    v55(&v21[v62], v2);
    v55(v21, v2);
  }

  return v31;
}

unint64_t sub_1B4C4C854(void *a1)
{
  v2 = sub_1B4D1777C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D0, &qword_1B4D2F400);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D8, &qword_1B4D2F408) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B4D1A800;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 80))(v9, v10);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 96))(v11, v12);
  sub_1B4D1770C();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v13 = sub_1B4C96394(v8);
  swift_setDeallocating();
  sub_1B4975024(v8 + v7, &qword_1EB8AA5D8, &qword_1B4D2F408);
  swift_deallocClassInstance();
  return v13;
}

uint64_t sub_1B4C4CA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B49C0344;

  return sub_1B4C4CFBC(a1);
}

uint64_t sub_1B4C4CB4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C4D9B8(a2, v5, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v16 = *(v44 + 48);
      v17 = *(v44 + 64);
      v18 = &qword_1EB8A6850;
      v19 = &unk_1B4D1BC10;
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v16 = *(v15 + 48);
      v17 = *(v15 + 64);
      v18 = &qword_1EB8A6868;
      v19 = &unk_1B4D1AB80;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    v46 = *(*(v45 - 8) + 8);
    v46(&v5[v17], v45);
    v46(&v5[v16], v45);
    v46(v5, v45);
    v47 = COERCE_DOUBLE(sub_1B4A612D4()) >= 1.0;
    if (v48)
    {
      return 2;
    }

    else
    {
      return v47;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = COERCE_DOUBLE(sub_1B4A61B14()) >= 1.0;
      if (v21)
      {
        v9 = 2;
      }

      else
      {
        v9 = v20;
      }

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v11 = *(v22 + 48);
      v12 = *(v22 + 64);
      v13 = &qword_1EB8A6850;
      v14 = &unk_1B4D1BC10;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v7 = COERCE_DOUBLE(sub_1B4A61EE8()) >= 1.0;
      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = v7;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v11 = *(v10 + 48);
      v12 = *(v10 + 64);
      v13 = &qword_1EB8A6870;
      v14 = &unk_1B4D1C2C0;
LABEL_14:
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      v24 = *(*(v23 - 8) + 8);
      v24(&v5[v12], v23);
      v24(&v5[v11], v23);
      v24(v5, v23);
      return v9;
    }

    v25 = sub_1B4A612D4();
    if (v26 & 1) != 0 || (v27 = *&v25, v28 = sub_1B4A61B14(), (v29) || (v30 = *&v28, v31 = COERCE_DOUBLE(sub_1B4A61EE8()), (v32))
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
      if (v27 >= 1.0 && v30 >= 1.0)
      {
        v9 = v31 >= 1.0;
      }
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v34 = v33[12];
    v50 = v33[20];
    v51 = v34;
    v35 = v33[24];
    v36 = v33[32];
    v37 = v33[36];
    v38 = v33[44];
    v39 = v33[48];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v41 = *(*(v40 - 8) + 8);
    v41(&v5[v39], v40);
    v41(&v5[v38], v40);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v43 = *(*(v42 - 8) + 8);
    v43(&v5[v37], v42);
    v43(&v5[v36], v42);
    sub_1B4975024(&v5[v35], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v5[v50], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v5[v51], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  return v9;
}

uint64_t sub_1B4C4CFBC(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for RingStateFact(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for RingProgressType(0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050);
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for ActivitySummaryContext(0);
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C4D250, 0, 0);
}

uint64_t sub_1B4C4D250()
{
  v43 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[2] = &type metadata for RingStateFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D8, &unk_1B4D1AAF0);
  v39 = sub_1B4D181CC();
  v41 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  (*(v6 + 8))(v39, v41, v1, v1, v5, v6);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4975024(v0[17], &qword_1EB8AA5C8, &qword_1B4D39050);
LABEL_7:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v8 = v0[20];
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];
  sub_1B4C4DA9C(v0[17], v8, type metadata accessor for ActivitySummaryContext);
  sub_1B4BB7B50(v8, v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = v0[12];
    sub_1B4C4DA3C(v0[20], type metadata accessor for ActivitySummaryContext);
    sub_1B4975024(v12, &qword_1EB8A6C98, &unk_1B4D2F3F0);
    goto LABEL_7;
  }

  v13 = v0[16];
  sub_1B4C4DA9C(v0[12], v13, type metadata accessor for HKActivitySummaryRepresentable);
  if (*(v13 + 25))
  {
    v14 = v0[16];
    sub_1B4C4DA3C(v0[20], type metadata accessor for ActivitySummaryContext);
    sub_1B4C4DA3C(v14, type metadata accessor for HKActivitySummaryRepresentable);
    goto LABEL_7;
  }

  v18 = v0[15];
  v19 = v0[8];
  v20 = v0[9];
  v21 = v0[7];
  v40 = MEMORY[0x1E69E7CC0];
  sub_1B4C4D9B8(v0[16], v18, type metadata accessor for HKActivitySummaryRepresentable);
  v42[0] = 3;
  sub_1B4B05EF8(v18, v42, v21);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_1B4975024(v0[7], &qword_1EB8AA5C0, &unk_1B4D39040);
  }

  else
  {
    v22 = v0[16];
    v23 = v0[11];
    sub_1B4C4DA9C(v0[7], v23, type metadata accessor for RingProgressType);
    v24 = sub_1B4C4CB4C(v22, v23);
    if (v24 == 2 || (v24 & 1) == 0)
    {
      sub_1B4C4DA3C(v0[11], type metadata accessor for RingProgressType);
    }

    else
    {
      v25 = v0[16];
      v26 = v0[13];
      v27 = v0[10];
      v28 = v0[6];
      v29 = v0[4];
      sub_1B4C4D9B8(v0[11], v27, type metadata accessor for RingProgressType);
      LOBYTE(v25) = *(v25 + *(v26 + 76));
      sub_1B4C4DA9C(v27, v28, type metadata accessor for RingProgressType);
      *(v28 + *(v29 + 20)) = v25 & 1;
      *(v28 + *(v29 + 24)) = 0;
      v30 = sub_1B4A1DA48(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v32 = v30[2];
      v31 = v30[3];
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1B4A1DA48((v31 > 1), v32 + 1, 1, v30);
      }

      v34 = v0[5];
      v33 = v0[6];
      sub_1B4C4DA3C(v0[11], type metadata accessor for RingProgressType);
      v30[2] = v32 + 1;
      sub_1B4C4DA9C(v33, v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32, type metadata accessor for RingStateFact);
      v40 = v30;
    }
  }

  v35 = v0[20];
  v36 = v0[16];
  v37 = swift_task_alloc();
  *(v37 + 16) = v36;
  v38 = sub_1B4AE0B18(sub_1B4C4DA20, v37, &unk_1F2CBD1F0);

  sub_1B4997618(v38);
  sub_1B4C4DA3C(v35, type metadata accessor for ActivitySummaryContext);
  v15 = v40;
  sub_1B4C4DA3C(v36, type metadata accessor for HKActivitySummaryRepresentable);
LABEL_8:

  v16 = v0[1];

  return v16(v15);
}

unint64_t sub_1B4C4D7CC()
{
  result = qword_1EB8AD2B8;
  if (!qword_1EB8AD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2B8);
  }

  return result;
}

unint64_t sub_1B4C4D820(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C4D850();
  result = sub_1B4C4D8A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C4D850()
{
  result = qword_1EB8AD2C0;
  if (!qword_1EB8AD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2C0);
  }

  return result;
}

unint64_t sub_1B4C4D8A4()
{
  result = qword_1EB8AD2C8;
  if (!qword_1EB8AD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2C8);
  }

  return result;
}

uint64_t sub_1B4C4D8FC(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C4D964(&qword_1EB8AD2D0, &protocol conformance descriptor for RingStateFact);
  result = sub_1B4C4D964(&qword_1EB8AD2D8, &protocol conformance descriptor for RingStateFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4C4D964(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RingStateFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C4D9B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C4DA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C4DA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static WorkoutFastestByDistancePropertyGenerator.from(_:for:)@<X0>(char *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v5 = sub_1B4D1777C();
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6820, &qword_1B4D2CA00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v37 - v9);
  v11 = type metadata accessor for LocalizedDate(0);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = *(a1 + 3);
  v16 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 56))(v15, v16);
  v18 = [v17 effectiveTypeIdentifier];

  v19 = *(a1 + 3);
  v20 = *(a1 + 4);
  v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
  v22 = sub_1B4C7AB18(v21, v19, v20);
  if (v14 || (v37 = v13, v38 = v11, v39 = v22, v25 = _s19FitnessIntelligence41WorkoutFastestByDistancePropertyGeneratorV7samples3for12activityTypeSaySo8HKSampleCGAA0C13Representable_p_So017HKWorkoutActivityL0VtFZ_0(a1, v18), v26 = sub_1B49E6974(v25), , !v26))
  {

LABEL_3:
    v24 = v42;
    *v42 = 0;
    v24[1] = 0;
    return result;
  }

  v28 = *(a1 + 3);
  v27 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v28);
  (*(v27 + 80))(v28, v27);
  static LocalizedDate.from(_:)(v7, v10);
  (*(v41 + 8))(v7, v5);
  if ((*(v40 + 48))(v10, 1, v38) == 1)
  {

    result = sub_1B4C4E7BC(v10);
    goto LABEL_3;
  }

  v29 = v37;
  sub_1B4AF497C(v10, v37);
  if (!v39[2])
  {
    goto LABEL_20;
  }

  if (v26 >> 62)
  {
    if (sub_1B4D18ABC())
    {
      goto LABEL_11;
    }

LABEL_20:

    result = sub_1B4AF49E0(v29);
    goto LABEL_3;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_11:
  v30 = _s19FitnessIntelligence41WorkoutFastestByDistancePropertyGeneratorV12smoothFactor3for4withSiSo21HKWorkoutActivityTypeV_SaySo16HKQuantitySampleCGtFZ_0(v18, v26);
  v31 = _s19FitnessIntelligence14WorkoutInsightV12bestDuration3for7samples12smoothFactor5limitSDyAA17DistanceReferenceOSayAA0L20SampleIntervalRecordVGGSayAJG_SaySo010HKQuantityN0CGS2itFZ_0(v39, v26, v30, 5);

  if (*(v31 + 16))
  {
    MEMORY[0x1EEE9AC00](v32);
    *(&v37 - 2) = a1;
    *(&v37 - 1) = v29;
    v33 = sub_1B4C4E46C(v31, sub_1B4C4EA18);

    if (*(v33 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A0, &qword_1B4D1ABB8);
      v34 = sub_1B4D18AEC();
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC8];
    }

    v43 = v34;
    sub_1B4C4E108(v33, 1, &v43);
    v36 = v42;
    *v42 = v43;
    v36[1] = 0;
  }

  else
  {

    v35 = v42;
    *v42 = 0;
    v35[1] = 0;
  }

  return sub_1B4AF49E0(v29);
}

void sub_1B4C4DF80(_BYTE *a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  v12 = MEMORY[0x1B8C7D560]();
  v14[2] = a5;
  v14[3] = a6;
  v13 = sub_1B49970B4(sub_1B4C4EAC0, v14, a4);
  objc_autoreleasePoolPop(v12);
  *a1 = v11;
  *a2 = v13;
}

void sub_1B4C4E018(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x1B8C7D560]();
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 24))(v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  sub_1B4C4EAE0(a3, a4 + *(v11 + 36), type metadata accessor for LocalizedDate);
  sub_1B4C4EAE0(a1, a4 + *(v11 + 40), type metadata accessor for DistanceSampleIntervalRecord);
  objc_autoreleasePoolPop(v8);
}

void sub_1B4C4E108(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1B49E9CA4(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4984F00(v15, v6 & 1);
    v10 = sub_1B49E9CA4(v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_1B4988F88();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v7 = *v6;
      v8 = *(v6 - 8);

      if (!v7)
      {
        goto LABEL_23;
      }

      v25 = *a3;
      v26 = sub_1B49E9CA4(v8);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1B4984F00(v30, 1);
        v26 = sub_1B49E9CA4(v8);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + v26) = v8;
      *(v32[7] + 8 * v26) = v7;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v24;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v24)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B4C4E46C(uint64_t a1, void (*a2)(char *, uint64_t *, char *, uint64_t))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF59C(0, v3, 0);
    v29 = v34;
    v5 = a1 + 64;
    result = sub_1B4D188DC();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v25 = v3;
    v26 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v28 = v7;
      v11 = *(*(a1 + 56) + 8 * v6);
      v30[0] = *(*(a1 + 48) + v6);
      v31 = v11;

      a2(v32, &v33, v30, v11);

      v12 = v32[0];
      v13 = v33;
      v14 = v29;
      v34 = v29;
      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1B4BCF59C((v15 > 1), v16 + 1, 1);
        v14 = v34;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v5 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v10);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v29 = v14;
      v8 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (a1 + 72 + 8 * v10);
        while (v21 < (v9 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1B497CD6C(v6, v26, 0);
            v9 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v6, v26, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v9;
      if (v28 + 1 == v25)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t _s19FitnessIntelligence41WorkoutFastestByDistancePropertyGeneratorV7samples3for12activityTypeSaySo8HKSampleCGAA0C13Representable_p_So017HKWorkoutActivityL0VtFZ_0(void *a1, uint64_t a2)
{
  switch(a2)
  {
    case 13:
      v2 = MEMORY[0x1E696BCC8];
      goto LABEL_7;
    case 37:
      v2 = MEMORY[0x1E696BCF8];
      goto LABEL_7;
    case 71:
      v2 = MEMORY[0x1E696BD00];
LABEL_7:
      v3 = a1[3];
      v4 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v3);
      sub_1B4C4EB48();
      v5 = MEMORY[0x1B8C7CB40](*v2);
      v6 = (*(v4 + 264))(v5, v3, v4);

      return v6;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B4C4E7BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6820, &qword_1B4D2CA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s19FitnessIntelligence41WorkoutFastestByDistancePropertyGeneratorV12smoothFactor3for4withSiSo21HKWorkoutActivityTypeV_SaySo16HKQuantitySampleCGtFZ_0(uint64_t a1, unint64_t a2)
{
  v18 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B4D18ABC())
  {
    v4 = 0;
    v5 = 0.0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8C7CD90](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 quantity];
      v10 = [objc_opt_self() meterUnit];
      [v9 doubleValueForUnit_];
      v12 = v11;

      v5 = v5 + v12;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v5 = 0.0;
LABEL_15:
  if (v18)
  {
    result = sub_1B4D18ABC();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v5 / result;
  if (v14 <= 0.0)
  {
    return 0;
  }

  v15 = 50.0;
  if (a1 == 13)
  {
    v15 = 100.0;
  }

  v16 = v15 / v14;
  if (*&v16 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v16 <= 1)
  {
    return 1;
  }

  else
  {
    return v16;
  }
}

unint64_t sub_1B4C4EA20(uint64_t a1)
{
  result = sub_1B4A2E518();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C4EA4C()
{
  result = qword_1EDC38290;
  if (!qword_1EDC38290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7960, &qword_1B4D409B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38290);
  }

  return result;
}

uint64_t sub_1B4C4EAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4C4EB48()
{
  result = qword_1EDC36DE8;
  if (!qword_1EDC36DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC36DE8);
  }

  return result;
}

uint64_t WorkoutSplitFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutSplitFact.TemplateString.rawValue.getter()
{
  v1 = 0xD00000000000004ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000068;
  }
}

uint64_t sub_1B4C4EC58(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000004ALL;
  v3 = *a1;
  v4 = "y split: <sub_templates>";
  if (v3 == 1)
  {
    v5 = 0xD00000000000004ALL;
  }

  else
  {
    v5 = 0xD000000000000061;
  }

  if (v3 == 1)
  {
    v6 = "y split: <sub_templates>";
  }

  else
  {
    v6 = "s workout: <sub_templates>";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000068;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ring_percentage>.";
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000061;
    v4 = "s workout: <sub_templates>";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000068;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ring_percentage>.";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4C4ED30()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4EDCC(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C4EE54(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4C4EEF8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000004ALL;
  v3 = "y split: <sub_templates>";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000061;
    v3 = "s workout: <sub_templates>";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000068;
    v4 = "ring_percentage>.";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_1B4C4EF64()
{
  v1 = MEMORY[0x1E69E7CC0];
  switch(*v0)
  {
    case 1:
    case 0xC:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A50;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:37 isIndoor:1];
      *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:37 isIndoor:0];
      *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:71 isIndoor:0];
      *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:0];
      *(v1 + 64) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:1];
      *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:1];
      *(v1 + 80) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:0];
      *(v1 + 88) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:70 isIndoor:0];
      *(v1 + 96) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:24 isIndoor:0];
      *(v1 + 104) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:1];
      v3 = 44;
      *(v1 + 112) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:44 isIndoor:1];
      *(v1 + 120) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:0];
      v2 = (v1 + 128);
      goto LABEL_3;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A40;
      v2 = (v1 + 32);
      v3 = 13;
      goto LABEL_3;
    case 7:
    case 0xD:
      return v1;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A10;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:1];
      *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:1];
      v3 = 44;
      *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:44 isIndoor:1];
      *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:0];
      v2 = (v1 + 64);
      goto LABEL_3;
    case 0xE:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A30;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:1];
      *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:0];
      *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:70 isIndoor:0];
      *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:24 isIndoor:0];
      *(v1 + 64) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:1];
      *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:1];
      v3 = 44;
      *(v1 + 80) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:44 isIndoor:1];
      *(v1 + 88) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:16 isIndoor:0];
      v2 = (v1 + 96);
      goto LABEL_3;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1B4D40A20;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:37 isIndoor:1];
      *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:37 isIndoor:0];
      *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:71 isIndoor:0];
      *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:13 isIndoor:0];
      *(v1 + 64) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:1];
      *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:52 isIndoor:0];
      *(v1 + 80) = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:70 isIndoor:0];
      v2 = (v1 + 88);
      v3 = 24;
LABEL_3:
      *v2 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v3 isIndoor:0];
      return v1;
  }
}

uint64_t WorkoutSplitFact.SubTemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 15;
  if (v2 < 0xF)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutSplitFact.SubTemplateString.rawValue.getter()
{
  result = 0xD000000000000053;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000003DLL;
      break;
    case 3:
      result = 0xD00000000000003FLL;
      break;
    case 4:
    case 6:
      result = 0xD000000000000058;
      break;
    case 5:
      result = 0xD000000000000056;
      break;
    case 7:
      result = 0xD000000000000030;
      break;
    case 8:
      result = 0xD0000000000000B6;
      break;
    case 9:
      result = 0xD00000000000009ALL;
      break;
    case 0xA:
      result = 0xD00000000000007FLL;
      break;
    case 0xB:
      result = 0xD000000000000080;
      break;
    case 0xC:
      result = 0xD000000000000068;
      break;
    case 0xD:
      result = 0xD000000000000033;
      break;
    case 0xE:
      result = 0xD000000000000043;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4C4F668()
{
  v0 = WorkoutSplitFact.SubTemplateString.rawValue.getter();
  v2 = v1;
  if (v0 == WorkoutSplitFact.SubTemplateString.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4C4F704()
{
  sub_1B4D18E8C();
  WorkoutSplitFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4F76C(uint64_t a1)
{
  WorkoutSplitFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4C4F7D0(uint64_t a1)
{
  sub_1B4D18E8C();
  WorkoutSplitFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4C4F840@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutSplitFact.SubTemplateString.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall WorkoutSplitFact.separator()()
{
  v0 = 10;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t WorkoutSplitFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutSplitFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D40A60;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  *(v4 + 32) = 0x6F5F7265626D756ELL;
  *(v4 + 40) = 0xEF74696C70735F66;
  *(v4 + 48) = sub_1B4C5010C;
  *(v4 + 56) = v6;
  *(v4 + 64) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v7 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  *(v4 + 80) = 0xD000000000000012;
  *(v4 + 88) = 0x80000001B4D62340;
  *(v4 + 96) = sub_1B4C503F0;
  *(v4 + 104) = v7;
  *(v4 + 112) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v8 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  *(v4 + 128) = 0xD000000000000018;
  *(v4 + 136) = 0x80000001B4D63F40;
  *(v4 + 144) = sub_1B4C506CC;
  *(v4 + 152) = v8;
  *(v4 + 160) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v9 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5);
  *(v4 + 176) = 0xD000000000000018;
  *(v4 + 184) = 0x80000001B4D63F60;
  *(v4 + 192) = sub_1B4C509D8;
  *(v4 + 200) = v9;
  *(v4 + 208) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v10 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v5);
  *(v4 + 224) = 0xD000000000000012;
  *(v4 + 232) = 0x80000001B4D62360;
  *(v4 + 240) = sub_1B4C50BCC;
  *(v4 + 248) = v10;
  *(v4 + 256) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v11 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v5);
  *(v4 + 272) = 0x657474616D726F66;
  *(v4 + 280) = 0xEF64656570735F64;
  *(v4 + 288) = sub_1B4C50F5C;
  *(v4 + 296) = v11;
  *(v4 + 304) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v12 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v5);
  strcpy((v4 + 320), "formatted_pace");
  *(v4 + 335) = -18;
  *(v4 + 336) = sub_1B4C5114C;
  *(v4 + 344) = v12;
  *(v4 + 352) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v13 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v5);
  *(v4 + 368) = 0xD000000000000018;
  *(v4 + 376) = 0x80000001B4D62380;
  *(v4 + 384) = sub_1B4C513C0;
  *(v4 + 392) = v13;
  *(v4 + 400) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v14 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v5);
  *(v4 + 416) = 0xD00000000000001ALL;
  *(v4 + 424) = 0x80000001B4D63F80;
  *(v4 + 432) = sub_1B4C51640;
  *(v4 + 440) = v14;
  *(v4 + 448) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v15 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v5);
  *(v4 + 464) = 0xD00000000000001CLL;
  *(v4 + 472) = 0x80000001B4D63FA0;
  *(v4 + 480) = sub_1B4C518C0;
  *(v4 + 488) = v15;
  *(v4 + 496) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v16 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v5);
  *(v4 + 512) = 0xD00000000000001DLL;
  *(v4 + 520) = 0x80000001B4D63FC0;
  *(v4 + 528) = sub_1B4C51B18;
  *(v4 + 536) = v16;
  *(v4 + 544) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v17 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v5);
  *(v4 + 560) = 0xD00000000000001ALL;
  *(v4 + 568) = 0x80000001B4D63FE0;
  *(v4 + 576) = sub_1B4C51B30;
  *(v4 + 584) = v17;
  *(v4 + 592) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v18 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v5);
  *(v4 + 608) = 0xD000000000000028;
  *(v4 + 616) = 0x80000001B4D64000;
  *(v4 + 624) = sub_1B4C51BF8;
  *(v4 + 632) = v18;
  *(v4 + 640) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v19 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v5);
  *(v4 + 656) = 0xD000000000000019;
  *(v4 + 664) = 0x80000001B4D64030;
  *(v4 + 672) = sub_1B4C51FD8;
  *(v4 + 680) = v19;
  *(v4 + 688) = 0u;
  sub_1B4C55414(v0, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSplitFact);
  v20 = swift_allocObject();
  sub_1B4C500A8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v5);
  *(v4 + 704) = 0x657474616D726F66;
  *(v4 + 712) = 0xEF7265776F705F64;
  *(v4 + 720) = sub_1B4C522C8;
  *(v4 + 728) = v20;
  *(v4 + 736) = 0u;
  return v4;
}

uint64_t sub_1B4C50014(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4D125A4();
  v3 = sub_1B4D1863C();
  v4 = [v2 stringFromNumber_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1B4D1818C();

  return v5;
}

uint64_t sub_1B4C500A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSplitFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C50124(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v10 + 28), v5, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v13 = sub_1B4BCA7BC(v12);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v14 = sub_1B4D15F5C(v9, v13);

    (*(v7 + 8))(v9, v6);
    return v14;
  }
}

uint64_t sub_1B4C50408(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v10 + 32), v5, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B4D1BE00;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    v13 = sub_1B49B5B70(v12);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v14 = sub_1B4D15F5C(v9, v13);

    (*(v7 + 8))(v9, v6);
    return v14;
  }
}

uint64_t sub_1B4C506E4(uint64_t a1, uint64_t *a2)
{
  v18[1] = a1;
  v3 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  v13 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v13 + 40), v8, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1B4C55414(a2 + *(v13 + 24), v5, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4C5547C(v5);
LABEL_7:
    v17 = sub_1B4D133E8(v12, *a2, 0, 1);
    (*(v10 + 8))(v12, v9);
    return v17;
  }

  v15 = v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48)];
  v16 = *(v10 + 8);
  v16(v5, v9);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  v17 = sub_1B4D133E8(v12, *a2, 2, 0);
  v16(v12, v9);
  return v17;
}

uint64_t sub_1B4C509F0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v10 + 36), v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_1B4D133E8(v9, *a2, 2, 0);
    (*(v7 + 8))(v9, v6);
    return v12;
  }
}

uint64_t sub_1B4C50BE4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v16 + 44), v8, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D1742C();
    v18 = *(v10 + 8);
    v18(v12, v9);
    v19 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v20 = sub_1B4D13D94(v5, *a2, 1);
    (*(v21 + 8))(v5, v22);
    v18(v15, v9);
    return v20;
  }
}

uint64_t sub_1B4C50F74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v10 + 44), v5, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_1B4D13AE8(v9, *a2, 2);
    (*(v7 + 8))(v9, v6);
    return v12;
  }
}

uint64_t sub_1B4C51164(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v13 + 52), v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    FIUnitManager.userMeasurementUnitForElevation()(v15);
    v17 = v16;
    sub_1B4D1745C();
    v18 = sub_1B4D12160();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v19 = sub_1B4D1878C();

    v20 = *(v7 + 8);
    v20(v9, v6);
    v20(v12, v6);
    return v19;
  }
}

uint64_t sub_1B4C513D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v13 + 60), v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v15 = sub_1B4D12160();
    if (qword_1EDC36DD8 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D14174(v9);
    v17 = v16;

    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    return v17;
  }
}

uint64_t sub_1B4C51658(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v13 + 64), v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v15 = sub_1B4D12160();
    if (qword_1EDC36DD8 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D14174(v9);
    v17 = v16;

    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    return v17;
  }
}

uint64_t sub_1B4C518D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v13 + 56), v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v15);
    v17 = v16;
    sub_1B4D1745C();
    v18 = sub_1B4D12160();
    v19 = sub_1B4D12A28(v9);

    v20 = *(v7 + 8);
    v20(v9, v6);
    v20(v12, v6);
    return v19;
  }
}

uint64_t sub_1B4C51B30()
{
  v1 = 0x74696C7073;
  v2 = *(type metadata accessor for WorkoutSplitFact(0) - 8);
  v3 = *(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  if ([v3 effectiveTypeIdentifier] != 37 && objc_msgSend(v3, sel_effectiveTypeIdentifier) != 71)
  {
    return 0x73736572676F7270;
  }

  return v1;
}

uint64_t sub_1B4C51C5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4C55414(v0 + *(v12 + 24), v11, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v11, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v14 = sub_1B4BCA7BC(v13);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v15 = sub_1B4D15F5C(v4, v14);

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    v15 = sub_1B4D133E8(v8, *v0, 2, 0);
    (*(v6 + 8))(v8, v5);
  }

  return v15;
}

uint64_t sub_1B4C51FD8()
{
  type metadata accessor for WorkoutSplitFact(0);
  if (FIPaceFormatForWorkoutActivityType() == 4)
  {
    return 0x6465657073;
  }

  else
  {
    return 1701011824;
  }
}

uint64_t sub_1B4C52054(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v13 + 48), v5, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v15 = sub_1B4D12160();
    v16 = [objc_opt_self() watts];
    sub_1B4D1745C();

    sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
    v17 = sub_1B4D1878C();

    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    return v17;
  }
}

uint64_t sub_1B4C522E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutSplitFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

id WorkoutSplitFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for WorkoutSplitFact(0) + 72));
  v4 = *v1;
  result = [*v1 effectiveTypeIdentifier];
  if (v3 == 1)
  {
    v6 = 2;
    if (result != 37)
    {
      result = [v4 effectiveTypeIdentifier];
      if (result == 71)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }
  }

  else if (result == 37)
  {
    v6 = 0;
  }

  else
  {
    result = [v4 effectiveTypeIdentifier];
    v6 = result != 71;
  }

  *a1 = v6;
  return result;
}

uint64_t WorkoutSplitFact.selectSubTemplates(formatter:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutSplitFact(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1B4C500A8(v7, v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B4C5374C;
  *(v10 + 24) = v9;
  v49[5] = sub_1B4C53764;
  v50[0] = v10;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v11 = swift_allocObject();
  sub_1B4C500A8(v7, v11 + v8);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B4C53798;
  *(v12 + 24) = v11;
  v50[1] = sub_1B4C554D8;
  v50[2] = v12;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v13 = swift_allocObject();
  sub_1B4C500A8(v7, v13 + v8);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B4C537B0;
  *(v14 + 24) = v13;
  v50[3] = sub_1B4C554D8;
  v50[4] = v14;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v15 = swift_allocObject();
  sub_1B4C500A8(v7, v15 + v8);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B4C537C8;
  *(v16 + 24) = v15;
  v50[5] = sub_1B4C554D8;
  v50[6] = v16;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v17 = swift_allocObject();
  sub_1B4C500A8(v7, v17 + v8);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B4C537E0;
  *(v18 + 24) = v17;
  v50[7] = sub_1B4C554D8;
  v50[8] = v18;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v19 = swift_allocObject();
  sub_1B4C500A8(v7, v19 + v8);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B4C5386C;
  *(v20 + 24) = v19;
  v50[9] = sub_1B4C554D8;
  v50[10] = v20;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v21 = swift_allocObject();
  sub_1B4C500A8(v7, v21 + v8);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B4C538F8;
  *(v22 + 24) = v21;
  v50[11] = sub_1B4C554D8;
  v50[12] = v22;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v23 = swift_allocObject();
  sub_1B4C500A8(v7, v23 + v8);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1B4C53994;
  *(v24 + 24) = v23;
  v50[13] = sub_1B4C554D8;
  v50[14] = v24;
  sub_1B4C55414(v2, v7, type metadata accessor for WorkoutSplitFact);
  v25 = swift_allocObject();
  sub_1B4C500A8(v7, v25 + v8);
  v26 = swift_allocObject();
  v27 = 0;
  *(v26 + 16) = sub_1B4C53EE8;
  *(v26 + 24) = v25;
  v50[15] = sub_1B4C554D8;
  v50[16] = v26;
  v28 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v29 = 9;
    if (v27 > 9)
    {
      v29 = v27;
    }

    v30 = -v29;
    v31 = &v50[2 * v27++];
    while (1)
    {
      if (v30 + v27 == 1)
      {
        __break(1u);
        goto LABEL_22;
      }

      v32 = *(v31 - 1);
      v51 = a1;

      v32(v49, &v51);
      v33 = *(v49[0] + 16);
      if (v33)
      {
        break;
      }

      ++v27;
      v31 += 2;
      if (v27 == 10)
      {
        v43 = v28;
LABEL_20:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD2E0, &qword_1B4D40A78);
        v44 = swift_arrayDestroy();
        MEMORY[0x1EEE9AC00](v44);
        *(&v46 - 2) = v2;
        return sub_1B499E6D0(sub_1B4C53F64, (&v46 - 4), v43);
      }
    }

    v48 = v2;
    v34 = *(v28 + 2);
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v47 = v49[0];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v37 = *(v28 + 3) >> 1, v43 = v28, v37 < v35))
    {
      if (v34 <= v35)
      {
        v38 = v34 + v33;
      }

      else
      {
        v38 = v34;
      }

      v43 = sub_1B4A1EC64(isUniquelyReferenced_nonNull_native, v38, 1, v28);
      v37 = *(v43 + 3) >> 1;
    }

    if (*(v47 + 16))
    {
      v39 = *(v43 + 2);
      v2 = v48;
      if (v37 - v39 >= v33)
      {
        memcpy(&v43[v39 + 32], (v47 + 32), v33);

        v40 = *(v43 + 2);
        v41 = __OFADD__(v40, v33);
        v42 = v40 + v33;
        if (!v41)
        {
          *(v43 + 2) = v42;

          v28 = v43;
          if (v27 != 9)
          {
            continue;
          }

          goto LABEL_20;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    break;
  }

  __break(1u);
  return result;
}

void *sub_1B4C52ADC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v10 + 44), v5, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_1B4D1742C();
  if (v11 <= 0.0)
  {
    (*(v7 + 8))(v9, v6);
    return MEMORY[0x1E69E7CC0];
  }

  v12 = FIPaceFormatForWorkoutActivityType();
  (*(v7 + 8))(v9, v6);
  if (v12 == 4)
  {
    return &unk_1F2CBD418;
  }

  else
  {
    return &unk_1F2CBD440;
  }
}

void *sub_1B4C52CE4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v10 + 48), v5, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1B4D1742C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    if (v13 <= 0.0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      return &unk_1F2CBD468;
    }
  }
}

void *sub_1B4C52EC4(uint64_t a1, id *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(a2 + *(v10 + 56), v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1B4D1742C();
    if (v11 > 0.0)
    {
      if (v12 = *a2, [*a2 effectiveTypeIdentifier] != 52) && objc_msgSend(v12, sel_effectiveTypeIdentifier) != 24 || (sub_1B4C5317C())
      {
        (*(v7 + 8))(v9, v6);
        return &unk_1F2CBD4E0;
      }
    }

    (*(v7 + 8))(v9, v6);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B4C530EC(char *a1, uint64_t *a2)
{
  v9 = *a1;
  v3 = sub_1B4C4EF64();
  v4 = *a2;
  v7[2] = &v8;
  v8 = v4;
  v5 = sub_1B49B17F4(sub_1B4C542E0, v7, v3);

  return v5 & 1;
}

uint64_t sub_1B4C5317C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(v0 + *(v18 + 28), v6, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v19 = *(v8 + 48);
  if (v19(v6, 1, v7) == 1)
  {
    v20 = v6;
LABEL_5:
    sub_1B4975024(v20, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    return 0;
  }

  v43 = v14;
  v21 = v17;
  v22 = *(v8 + 32);
  v44 = v21;
  v22();
  sub_1B4974FBC(v0 + *(v18 + 32), v3, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v19(v3, 1, v7) == 1)
  {
    (*(v8 + 8))(v44, v7);
    v20 = v3;
    goto LABEL_5;
  }

  (v22)(v43, v3, v7);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v24 = v45;
  sub_1B4D1744C();
  v25 = objc_opt_self();
  v26 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
  v27 = [v25 minutes];
  v28 = v46;
  sub_1B4D1745C();

  v31 = *(v8 + 8);
  v29 = v8 + 8;
  v30 = v31;
  v31(v24, v7);
  sub_1B4D1742C();
  v33 = v32;
  v34 = v32;
  v31(v28, v7);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = [v25 minutes];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v36 = v35;
  v37 = v35;
  v30(v28, v7);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v36 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = v33;
  v29 = v36;
  v27 = v36 / 40;
  v28 = v33 / 40;
  v25 = v28 < v27;
  if (qword_1EDC36EF8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v38 = sub_1B4D17F6C();
  __swift_project_value_buffer(v38, qword_1EDC36F00);
  v39 = sub_1B4D17F5C();
  v40 = sub_1B4D1873C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v28 < v27;
    v42 = swift_slowAlloc();
    *v42 = 67109888;
    *(v42 + 4) = v41;
    *(v42 + 8) = 2048;
    *(v42 + 10) = v26;
    *(v42 + 18) = 2048;
    *(v42 + 20) = v29;
    *(v42 + 28) = 2048;
    *(v42 + 30) = 40;
    _os_log_impl(&dword_1B4953000, v39, v40, "isTimeToSurfaceTotals %{BOOL}d, duration before %ld duration after %ld frequency %ld", v42, 0x26u);
    MEMORY[0x1B8C7DDA0](v42, -1, -1);
  }

  v30(v43, v7);
  v30(v44, v7);
  return v25;
}

uint64_t sub_1B4C53764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void *sub_1B4C537E0()
{
  v1 = type metadata accessor for WorkoutSplitFact(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + *(v1 + 68));
  if (v3 == 2 || (v3 & 1) == 0 || *(v2 + *(v1 + 72)) == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F2CBD490;
  }
}

void *sub_1B4C5386C()
{
  v1 = type metadata accessor for WorkoutSplitFact(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + *(v1 + 76));
  if (v3 == 2 || (v3 & 1) == 0 || *(v2 + *(v1 + 72)) == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F2CBD4B8;
  }
}

uint64_t sub_1B4C53910(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutSplitFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for WorkoutSplitFact(0);
  v2 = *(*(v1 - 1) + 80);
  v34 = *(*(v1 - 1) + 64);
  v35 = (v2 + 16) & ~v2;
  v36 = v0;
  v3 = v0 + v35;

  v4 = v1[6];
  type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1EB8A6850;
    v6 = &unk_1B4D1BC10;
  }

  else
  {
    v5 = &qword_1EB8A6830;
    v6 = &unk_1B4D1AB40;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  (*(*(v7 - 8) + 8))(v3 + v4, v7);
  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v12 = v1[8];
  if (!v11(v3 + v12, 1, v9))
  {
    (*(v10 + 8))(v3 + v12, v9);
  }

  v13 = v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!v16(v3 + v13, 1, v14))
  {
    (*(v15 + 8))(v3 + v13, v14);
  }

  v17 = v1[10];
  if (!v16(v3 + v17, 1, v14))
  {
    (*(v15 + 8))(v3 + v17, v14);
  }

  v18 = v1[11];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v3 + v18, 1, v19))
  {
    (*(v20 + 8))(v3 + v18, v19);
  }

  v21 = v1[12];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v3 + v21, v22);
  }

  v24 = v1[13];
  if (!v16(v3 + v24, 1, v14))
  {
    (*(v15 + 8))(v3 + v24, v14);
  }

  v25 = v1[14];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v3 + v25, 1, v26))
  {
    (*(v27 + 8))(v3 + v25, v26);
  }

  v28 = v1[15];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (!v31(v3 + v28, 1, v29))
  {
    (*(v30 + 8))(v3 + v28, v29);
  }

  v32 = v1[16];
  if (!v31(v3 + v32, 1, v29))
  {
    (*(v30 + 8))(v3 + v32, v29);
  }

  return MEMORY[0x1EEE6BDD0](v36, v35 + v34, v2 | 7);
}

unint64_t sub_1B4C53F88()
{
  result = qword_1EB8AD2E8;
  if (!qword_1EB8AD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD2E8);
  }

  return result;
}

unint64_t sub_1B4C54010()
{
  result = qword_1EB8AD300;
  if (!qword_1EB8AD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD300);
  }

  return result;
}

unint64_t sub_1B4C54098()
{
  result = qword_1EB8AD318;
  if (!qword_1EB8AD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD318);
  }

  return result;
}

unint64_t sub_1B4C540F0()
{
  result = qword_1EB8AD320;
  if (!qword_1EB8AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD320);
  }

  return result;
}

uint64_t sub_1B4C54144(uint64_t a1)
{
  result = sub_1B4C5427C(&qword_1EB8A7030, &protocol conformance descriptor for WorkoutSplitFact);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C5418C()
{
  result = qword_1EB8AD328;
  if (!qword_1EB8AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD328);
  }

  return result;
}

unint64_t sub_1B4C541E4()
{
  result = qword_1EB8AD330;
  if (!qword_1EB8AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD330);
  }

  return result;
}

uint64_t sub_1B4C54238(uint64_t a1)
{
  result = sub_1B4C5427C(&qword_1EB8AD338, &protocol conformance descriptor for WorkoutSplitFact);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4C5427C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutSplitFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1B4C54348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(v0 + *(v8 + 28), v3, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1B4975024(v3, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1B4D1742C();
    if (v10 <= 0.0)
    {
      (*(v5 + 8))(v7, v4);
      v9 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v9 = sub_1B4A1EC64(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1B4A1EC64((v11 > 1), v12 + 1, 1, v9);
      }

      (*(v5 + 8))(v7, v4);
      *(v9 + 2) = v12 + 1;
      v9[v12 + 32] = 0;
    }
  }

  v13 = *v0;
  if ([*v0 effectiveTypeIdentifier] != 37 && objc_msgSend(v13, sel_effectiveTypeIdentifier) != 71 && (objc_msgSend(v13, sel_effectiveTypeIdentifier) != 13 || objc_msgSend(v13, sel_isIndoor)) && objc_msgSend(v13, sel_effectiveTypeIdentifier) != 52 && objc_msgSend(v13, sel_effectiveTypeIdentifier) != 24 || (sub_1B4C5317C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1B4A1EC64(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v15 >= v14 >> 1)
    {
      v9 = sub_1B4A1EC64((v14 > 1), v15 + 1, 1, v9);
    }

    *(v9 + 2) = v15 + 1;
    v9[v15 + 32] = 1;
  }

  return v9;
}

char *sub_1B4C5468C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(v1 + *(v15 + 36), v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_8:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  (*(v9 + 32))(v14, v7, v8);
  sub_1B4D1742C();
  if (v17 <= 0.0)
  {
    (*(v9 + 8))(v14, v8);
    goto LABEL_8;
  }

  v26 = v1;
  v18 = sub_1B4A1EC64(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  v25 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1B4A1EC64((v19 > 1), v20 + 1, 1, v18);
  }

  (*(v9 + 8))(v14, v8);
  *(v18 + 2) = v25;
  v18[v20 + 32] = 2;
  v1 = v26;
LABEL_9:
  sub_1B4974FBC(v1 + *(v15 + 40), v4, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v16(v4, 1, v8) == 1)
  {
    sub_1B4975024(v4, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  }

  else
  {
    (*(v9 + 32))(v11, v4, v8);
    sub_1B4D1742C();
    if (v21 <= 0.0)
    {
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1B4A1EC64(0, *(v18 + 2) + 1, 1, v18);
      }

      v23 = *(v18 + 2);
      v22 = *(v18 + 3);
      if (v23 >= v22 >> 1)
      {
        v18 = sub_1B4A1EC64((v22 > 1), v23 + 1, 1, v18);
      }

      (*(v9 + 8))(v11, v8);
      *(v18 + 2) = v23 + 1;
      v18[v23 + 32] = 3;
    }
  }

  return v18;
}

void *sub_1B4C54A68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for WorkoutSplitFact(0);
  v18 = v1;
  sub_1B4974FBC(v1 + *(v17 + 52), v6, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v19 = *(v8 + 48);
  if (v19(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return MEMORY[0x1E69E7CC0];
  }

  v46 = v10;
  v47 = v13;
  v20 = *(v8 + 32);
  v20(v16, v6, v7);
  v21 = v48;
  sub_1B4974FBC(v1 + *(v17 + 36), v48, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v19(v21, 1, v7) == 1)
  {
    (*(v8 + 8))(v16, v7);
    sub_1B4975024(v48, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return MEMORY[0x1E69E7CC0];
  }

  v22 = v8;
  v23 = v47;
  v20(v47, v48, v7);
  sub_1B4D1742C();
  v24 = v16;
  if (v25 <= 0.0)
  {
    v35 = *(v22 + 8);
    v35(v23, v7);
    v35(v16, v7);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B4D1742C();
  if (v26 <= 0.0)
  {
    v36 = *(v22 + 8);
    v36(v23, v7);
    v36(v24, v7);
    return MEMORY[0x1E69E7CC0];
  }

  v27 = [*v18 effectiveTypeIdentifier];
  v28 = [objc_opt_self() miles];
  v29 = v46;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v31 = v30;
  v32 = *(v22 + 8);
  v32(v29, v7);
  if (v27 == 13)
  {
    v33 = v31 / 5.0 * 300.0;
    v34 = v31 / 5.0 * 600.0;
  }

  else
  {
    v33 = v31 * 100.0;
    v34 = v31 * 150.0;
  }

  v38 = objc_opt_self();
  v39 = [v38 feet];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v41 = v40;
  v32(v29, v7);
  if (v34 <= v41)
  {
    v32(v23, v7);
    v32(v16, v7);
    return &unk_1F2CBD508;
  }

  else
  {
    v42 = [v38 feet];
    sub_1B4D1745C();

    sub_1B4D1742C();
    v44 = v43;
    v32(v29, v7);
    v32(v23, v7);
    v32(v16, v7);
    if (v33 <= v44)
    {
      return &unk_1F2CBD530;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }
}

char *sub_1B4C54FB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4974FBC(v1 + v15[15], v7, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6CC8, &unk_1B4D464B0);
LABEL_8:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  (*(v9 + 32))(v14, v7, v8);
  sub_1B4D1742C();
  if (v17 <= 0.0)
  {
    (*(v9 + 8))(v14, v8);
    goto LABEL_8;
  }

  v30 = v1;
  v18 = sub_1B4A1EC64(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  v29 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1B4A1EC64((v19 > 1), v20 + 1, 1, v18);
  }

  (*(v9 + 8))(v14, v8);
  *(v18 + 2) = v29;
  v18[v20 + 32] = 12;
  v1 = v30;
LABEL_9:
  sub_1B4974FBC(v1 + v15[16], v4, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v16(v4, 1, v8) == 1)
  {
    sub_1B4975024(v4, &qword_1EB8A6CC8, &unk_1B4D464B0);
  }

  else
  {
    (*(v9 + 32))(v11, v4, v8);
    sub_1B4D1742C();
    if (v21 <= 0.0)
    {
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v22 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1B4A1EC64(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_1B4A1EC64((v23 > 1), v24 + 1, 1, v18);
      }

      (*(v9 + 8))(v11, v8);
      *(v18 + 2) = v24 + 1;
      v18[v24 + 32] = 13;
      v1 = v22;
    }
  }

  v25 = *(v1 + v15[20]);
  if (v25 != 2 && (v25 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1B4A1EC64(0, *(v18 + 2) + 1, 1, v18);
    }

    v27 = *(v18 + 2);
    v26 = *(v18 + 3);
    if (v27 >= v26 >> 1)
    {
      v18 = sub_1B4A1EC64((v26 > 1), v27 + 1, 1, v18);
    }

    *(v18 + 2) = v27 + 1;
    v18[v27 + 32] = 9;
  }

  return v18;
}

uint64_t sub_1B4C55414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C5547C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall LegacyTimescale.localized()()
{
  v1 = *v0;
  v2 = 0xE800000000000000;
  v3 = 0x7961642073696874;
  v4 = 0xEA00000000006874;
  v5 = 0x6E6F6D2073696874;
  v6 = 0xE900000000000072;
  v7 = 0x6165792073696874;
  if (v1 != 3)
  {
    v7 = 1919252069;
    v6 = 0xE400000000000000;
  }

  if (v1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v0)
  {
    v3 = 0x6565772073696874;
    v2 = 0xE90000000000006BLL;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

FitnessIntelligence::LegacyTimescale_optional __swiftcall LegacyTimescale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LegacyTimescale.rawValue.getter()
{
  v1 = *v0;
  v2 = 7954788;
  v3 = 0x68746E6F6DLL;
  v4 = 1918985593;
  if (v1 != 3)
  {
    v4 = 1919252069;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1801807223;
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

unint64_t sub_1B4C55670()
{
  result = qword_1EB8AD340;
  if (!qword_1EB8AD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD340);
  }

  return result;
}

uint64_t sub_1B4C556C4()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C55784(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C55830(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4C558F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7954788;
  v5 = 0xE500000000000000;
  v6 = 0x68746E6F6DLL;
  v7 = 1918985593;
  if (v2 != 3)
  {
    v7 = 1919252069;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1801807223;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1B4C55A28()
{
  result = qword_1EB8AD348;
  if (!qword_1EB8AD348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD350, &qword_1B4D40DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD348);
  }

  return result;
}

unint64_t sub_1B4C55AAC()
{
  result = qword_1EB8AD358;
  if (!qword_1EB8AD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD358);
  }

  return result;
}

uint64_t StepsDailyAverageComparisonFact.init(currentDailyAverage:previousDailyAverage:percentageIncrease:currentDateRange:previousDateRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for StepsDailyAverageComparisonFact(0);
  sub_1B4993450(a4, a6 + *(v9 + 28));
  v10 = a6 + *(v9 + 32);

  return sub_1B4993450(a5, v10);
}

uint64_t type metadata accessor for StepsDailyAverageComparisonFact(uint64_t a1)
{
  result = qword_1EB8AD360;
  if (!qword_1EB8AD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StepsDailyAverageComparisonFact.currentDateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StepsDailyAverageComparisonFact(0) + 28);

  return sub_1B4B94680(v3, a1);
}

uint64_t StepsDailyAverageComparisonFact.previousDateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StepsDailyAverageComparisonFact(0) + 32);

  return sub_1B4B94680(v3, a1);
}

uint64_t _s19FitnessIntelligence31StepsDailyAverageComparisonFactV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = type metadata accessor for StepsDailyAverageComparisonFact(0);
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(a1 + *(v4 + 28), a2 + *(v4 + 28)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 32);

  return _s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_1B4C55D38(uint64_t a1)
{
  result = type metadata accessor for DateRangeDescriptor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double AnnounceUtteranceRequest.init(_:)@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1B4D177CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v18 = (a1 + *(v17 + 20));
  v48[0] = v18[1];
  if (*&v48[0])
  {
    v43 = v5;
    v44 = v4;
    v45 = a2;
    *&v46 = v17;
    v42 = *v18;
    v19 = *(v17 + 24);
    sub_1B4C562AC(a1 + v19, v16);
    v20 = *(v8 + 48);
    v21 = a1;
    v22 = v20(v16, 1, v7);
    sub_1B4C5631C(v16);
    if (v22 == 1)
    {
      sub_1B4C561FC();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
      sub_1B4C56250(v21);
    }

    else
    {
      sub_1B4C562AC(v21 + v19, v13);
      v26 = v21;
      if (v20(v13, 1, v7) == 1)
      {
        *v10 = 0;
        v27 = v48[0];

        sub_1B4D17BBC();
        v28 = *(v7 + 24);
        v29 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
        (*(*(v29 - 8) + 56))(v10 + v28, 1, 1, v29);
        if (v20(v13, 1, v7) != 1)
        {
          sub_1B4C5631C(v13);
        }
      }

      else
      {
        sub_1B4C56384(v13, v10);
        v27 = v48[0];
      }

      v30 = v51;
      AudioSynthesisSettings.init(_:)(v10, v49);
      if (v30)
      {
        sub_1B4C56250(v26);
      }

      else
      {
        LODWORD(v51) = v50;
        v31 = *(v26 + *(v46 + 36));
        v32 = *(v26 + *(v46 + 28)) & 1;
        v33 = v47;
        sub_1B4D177BC();
        v34 = v27;
        v35 = v26;
        v36 = sub_1B4D1779C();
        v38 = v37;
        v39 = *(v43 + 8);
        *v48 = v49[0];
        v46 = v49[1];
        v39(v33, v44);
        sub_1B4C56250(v35);
        v40 = v45;
        *v45 = v42;
        v40[1] = v34;
        v41 = v46;
        result = v48[0];
        *(v40 + 1) = *v48;
        *(v40 + 2) = v41;
        *(v40 + 48) = v51;
        *(v40 + 7) = v36;
        *(v40 + 8) = v38;
        *(v40 + 72) = v31 & 1;
        *(v40 + 73) = v32;
      }
    }
  }

  else
  {
    sub_1B4C561FC();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    sub_1B4C56250(a1);
  }

  return result;
}

unint64_t sub_1B4C561FC()
{
  result = qword_1EB8AD370;
  if (!qword_1EB8AD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD370);
  }

  return result;
}

uint64_t sub_1B4C56250(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C562AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C5631C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C56384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AnnounceUtteranceRequest.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4C56A48(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C564A8(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a2;
  v8 = a2[1];
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v11 = (a1 + v10[5]);

  *v11 = v9;
  v11[1] = v8;
  v12 = *(a2 + 2);
  v17[0] = *(a2 + 1);
  v17[1] = v12;
  v18 = *(a2 + 48);
  v16 = v17;
  sub_1B4C56A48(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v14 = v10[6];
    sub_1B4C5631C(a1 + v14);
    sub_1B4C56384(v7, a1 + v14);
    result = (*(v19 + 56))(a1 + v14, 0, 1, v5);
    *(a1 + v10[7]) = *(a2 + 73);
    *(a1 + v10[9]) = *(a2 + 72);
  }

  return result;
}

uint64_t sub_1B4C56694(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[3];
  v11[2] = v1[2];
  v12[0] = v7;
  *(v12 + 10) = *(v1 + 58);
  v8 = v1[1];
  v11[0] = *v1;
  v11[1] = v8;
  v9 = sub_1B4C569F4();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4C56A48(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
    v4 = sub_1B4D17D6C();
    sub_1B4C56250(v6);
  }

  return v4;
}

__n128 sub_1B4C567D8@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B26E94(a1, a2, v7);
  if (!v3)
  {
    v6 = v8[0];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 58) = *(v8 + 10);
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_1B4C568B4()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4C56A48(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4C569A0()
{
  result = qword_1EB8AD378;
  if (!qword_1EB8AD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD378);
  }

  return result;
}

unint64_t sub_1B4C569F4()
{
  result = qword_1EB8AD380;
  if (!qword_1EB8AD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD380);
  }

  return result;
}

uint64_t sub_1B4C56A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

FitnessIntelligence::Moment __swiftcall Moment.init(momentType:facts:)(FitnessIntelligence::MomentType momentType, Swift::OpaquePointer facts)
{
  *v2 = *momentType;
  *(v2 + 8) = facts;
  result.facts = facts;
  result.momentType = momentType;
  return result;
}

uint64_t static Moment.make(of:with:context:promptFormatter:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 96) = *a2;
  *(v8 + 64) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1B4C56B04, 0, 0);
}

uint64_t sub_1B4C56B04()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1B4C56BF4;
  v7 = *(v0 + 24);

  return sub_1B49CFA30(&unk_1B4D40FF0, v4, v7);
}

void sub_1B4C56BF4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 88) = a1;

    MEMORY[0x1EEE6DFA0](sub_1B4C56D38, 0, 0);
  }
}

uint64_t sub_1B4C56D38()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 96);
  *(v2 + 8) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1B4C56D60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a1[1];
  v6[9] = a6;
  v6[10] = v10;
  v6[7] = a2;
  v12 = swift_task_alloc();
  v6[11] = v12;
  *v12 = v6;
  v12[1] = sub_1B4C56E38;

  return static FactGenerating.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(v6 + 7, a3, a4, a5, v10, v11);
}

uint64_t sub_1B4C56E38(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4C56F38, 0, 0);
}

uint64_t sub_1B4C56F38()
{
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD3C8, &unk_1B4D411E0);
  v2 = sub_1B4D18A7C();

  v33 = *(v2 + 16);
  if (v33)
  {
    v3 = 0;
    v4 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v31 = v2;
    v32 = v1;
    while (v3 < *(v2 + 16))
    {
      sub_1B497558C(v4, (v1 + 2));
      v6 = v1[5];
      v7 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
      FactGenerating.makeFact(promptFormatter:)(v6, v7, v34);
      v8 = v1;
      v9 = v34[0];
      v10 = v34[1];
      v11 = v35;
      v13 = v36;
      v12 = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(v8 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1B4A1EC78(0, *(v5 + 2) + 1, 1, v5);
      }

      v0 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v0 >= v14 >> 1)
      {
        v5 = sub_1B4A1EC78((v14 > 1), v0 + 1, 1, v5);
      }

      ++v3;
      *(v5 + 2) = v0 + 1;
      v15 = &v5[40 * v0];
      *(v15 + 4) = v9;
      *(v15 + 5) = v10;
      v15[48] = v11;
      *(v15 + 7) = v13;
      *(v15 + 8) = v12;
      v4 += 40;
      v1 = v32;
      v2 = v31;
      if (v33 == v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    swift_once();
    v16 = sub_1B4D17F6C();
    __swift_project_value_buffer(v16, qword_1EDC36F00);
    v17 = v0;
    v18 = sub_1B4D17F5C();
    v19 = sub_1B4D1871C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v1[10];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34[0] = v23;
      *v21 = 136315394;
      v1[8] = v20;
      swift_getMetatypeMetadata();
      v24 = sub_1B4D181AC();
      v26 = sub_1B49558AC(v24, v25, v34);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2112;
      v27 = v0;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v28;
      *v22 = v28;
      _os_log_impl(&dword_1B4953000, v18, v19, "Error while analyzing %s: %@", v21, 0x16u);
      sub_1B49E5EC0(v22);
      MEMORY[0x1B8C7DDA0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1B8C7DDA0](v23, -1, -1);
      MEMORY[0x1B8C7DDA0](v21, -1, -1);
    }

    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_11:
  }

  v29 = v1[1];

  return v29(v5);
}

uint64_t sub_1B4C572C0(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B49D9398;

  return sub_1B4C56D60(a1, v4, v5, v6, v7, v8);
}

uint64_t static Moment.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B4A09B98(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4C573A8()
{
  if (*v0)
  {
    return 0x7374636166;
  }

  else
  {
    return 0x7954746E656D6F6DLL;
  }
}

uint64_t sub_1B4C573E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7954746E656D6F6DLL && a2 == 0xEA00000000006570;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7374636166 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4C574C4(uint64_t a1)
{
  v2 = sub_1B4C57720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C57500(uint64_t a1)
{
  v2 = sub_1B4C57720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Moment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD388, &unk_1B4D40FF8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C57720();
  sub_1B4D18EFC();
  v13 = v8;
  v12 = 0;
  sub_1B4C57774();
  sub_1B4D18D0C();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC108, &qword_1B4D3A480);
    sub_1B4C57A8C(&qword_1EB8AD398, sub_1B4C577C8, MEMORY[0x1E69E6300]);
    sub_1B4D18D0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B4C57720()
{
  result = qword_1EDC36ED0;
  if (!qword_1EDC36ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36ED0);
  }

  return result;
}

unint64_t sub_1B4C57774()
{
  result = qword_1EB8AD390;
  if (!qword_1EB8AD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD390);
  }

  return result;
}

unint64_t sub_1B4C577C8()
{
  result = qword_1EB8AD3A0;
  if (!qword_1EB8AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD3A0);
  }

  return result;
}

uint64_t Moment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD3A8, &qword_1B4D41008);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C57720();
  sub_1B4D18EEC();
  if (!v2)
  {
    v14 = 0;
    sub_1B4C57A38();
    sub_1B4D18C0C();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC108, &qword_1B4D3A480);
    v13 = 1;
    sub_1B4C57A8C(&qword_1EB8AD3B0, sub_1B4C57B04, MEMORY[0x1E69E6330]);
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B4C57A38()
{
  result = qword_1EDC37680[0];
  if (!qword_1EDC37680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC37680);
  }

  return result;
}

uint64_t sub_1B4C57A8C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC108, &qword_1B4D3A480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4C57B04()
{
  result = qword_1EB8AD3B8;
  if (!qword_1EB8AD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD3B8);
  }

  return result;
}

uint64_t sub_1B4C57B88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B4A09B98(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t static Moment.makeRandom(of:with:promptFormatter:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4C57BD8, 0, 0);
}

uint64_t sub_1B4C57BD8()
{
  v22 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      static FactGenerating.makeRandomFact(promptFormatter:)(&v17);
      v5 = v17;
      v6 = v18;
      v7 = v19;
      v8 = v20;
      v9 = v21;
      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B4A1EC78(0, *(v4 + 2) + 1, 1, v4);
        }

        v11 = *(v4 + 2);
        v10 = *(v4 + 3);
        if (v11 >= v10 >> 1)
        {
          v4 = sub_1B4A1EC78((v10 > 1), v11 + 1, 1, v4);
        }

        *(v4 + 2) = v11 + 1;
        v12 = &v4[40 * v11];
        *(v12 + 4) = v5;
        *(v12 + 5) = v6;
        v12[48] = v7;
        *(v12 + 7) = v8;
        *(v12 + 8) = v9;
      }

      else
      {
        sub_1B4C57D50(v17, 0, v19, v20, v21);
      }

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v16 + 16);
  *v13 = *(v16 + 40);
  *(v13 + 8) = v4;
  v14 = *(v16 + 8);

  return v14();
}

void sub_1B4C57D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {

    sub_1B49DDD2C(a4, a5);
  }
}

unint64_t sub_1B4C57DC0()
{
  result = qword_1EB8AD3C0;
  if (!qword_1EB8AD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD3C0);
  }

  return result;
}

unint64_t sub_1B4C57E18()
{
  result = qword_1EDC36EC0;
  if (!qword_1EDC36EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36EC0);
  }

  return result;
}

unint64_t sub_1B4C57E70()
{
  result = qword_1EDC36EC8;
  if (!qword_1EDC36EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36EC8);
  }

  return result;
}

uint64_t FitnessContextQueryRequest.init(identifier:query:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = a4 + *(type metadata accessor for FitnessContextQueryRequest(0) + 20);

  return sub_1B4A22C1C(a3, v6);
}

uint64_t type metadata accessor for FitnessContextQueryRequest(uint64_t a1)
{
  result = qword_1EB8AD3D8;
  if (!qword_1EB8AD3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FitnessContextQueryRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FitnessContextQueryRequest.queryDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessContextQueryRequest(0) + 20);

  return sub_1B49EEFF0(v3, a1);
}

uint64_t static FitnessContextQueryRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for FitnessContextQueryRequest(0) + 20);

  return _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t FitnessContextQueryRequest.hash(into:)(uint64_t a1)
{
  sub_1B4D1820C();
  type metadata accessor for FitnessContextQueryRequest(0);
  return FitnessContextQueryDescriptor.hash(into:)(a1);
}

uint64_t FitnessContextQueryRequest.hashValue.getter()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  type metadata accessor for FitnessContextQueryRequest(0);
  FitnessContextQueryDescriptor.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C580E8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  FitnessContextQueryDescriptor.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C58184(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  FitnessContextQueryDescriptor.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C581D8(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

unint64_t sub_1B4C58260()
{
  result = qword_1EB8AD3D0;
  if (!qword_1EB8AD3D0)
  {
    type metadata accessor for FitnessContextQueryRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD3D0);
  }

  return result;
}

uint64_t sub_1B4C582E0(uint64_t a1)
{
  result = type metadata accessor for FitnessContextQueryDescriptor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void DatabasePropertyRecord.init(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B4D1880C();
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v18 = &v39 - v17;
  v19 = *a1;
  v20 = a1[1];
  if (v20 < *a1)
  {
    __break(1u);
  }

  else
  {
    v39 = v18;
    v40 = v16;
    v41 = v12;
    v42 = v15;
    v43 = v14;
    v44 = AssociatedTypeWitness;
    *a4 = v19;
    *(a4 + 1) = v20;
    v21 = a1[2];
    v22 = a1[3];
    v23 = type metadata accessor for DatabasePropertyRecord(0, a2, a3, v13);
    v24 = &a4[v23[10]];
    *v24 = v21;
    *(v24 + 1) = v22;
    v26 = a1[4];
    v25 = a1[5];
    v27 = &a4[v23[11]];
    *v27 = v26;
    *(v27 + 1) = v25;
    v46 = v27;
    v28 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 40);
    v29 = *v28;
    v30 = v28[8] == 0;
    v31 = 5;
    if (v30)
    {
      v31 = v29;
    }

    *&a4[v23[12]] = v31;

    sub_1B498FC0C(v26, v25);
    sub_1B4C586E0(a1, a2, a3, v45);
    if (!v4)
    {
      v33 = v43;
      v32 = v44;
      if (swift_dynamicCast())
      {
        sub_1B4C59CF4(a1, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
        v34 = v32;
        v35 = v42;
        (*(v42 + 56))(v33, 0, 1, v34);
        v36 = *(v35 + 32);
        v37 = v39;
        v36(v39, v33, v34);
        v36(&a4[v23[9]], v37, v34);
        return;
      }

      (*(v42 + 56))(v33, 1, 1, v32);
      (*(v40 + 8))(v33, v41);
      _s7FailureOMa_18(0, a2, a3, v38);
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();
    }

    sub_1B4C59CF4(a1, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);

    sub_1B49DDD2C(*v46, *(v46 + 1));
  }
}

uint64_t sub_1B4C586E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v44 = a4;
  v46 = a3;
  v45 = a2;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - v27;
  v29 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  sub_1B4C59C1C(a1 + *(v29 + 32), v28);
  v30 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  if ((*(*(v30 - 8) + 48))(v28, 1, v30) != 1)
  {
    sub_1B4C59C1C(v28, v25);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B4C59BB4(v25, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        sub_1B4C59C8C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        v33 = v43;
        v34 = v44;
        *(v44 + 3) = &type metadata for RingsPropertyDimensions;
        RingsPropertyDimensions.init(_:)(v19, v34);
        sub_1B4C59CF4(v22, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        if (!v33)
        {
          return sub_1B4C59B4C(v28);
        }

        v35 = v34;
LABEL_11:
        __swift_deallocate_boxed_opaque_existential_1(v35);
        return sub_1B4C59B4C(v28);
      }

      sub_1B4C59BB4(v25, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4C59C8C(v10, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      v36 = v44;
      *(v44 + 3) = &type metadata for FitnessPlusPropertyDimensions;
      v39 = swift_allocObject();
      *v36 = v39;
      v40 = v43;
      FitnessPlusPropertyDimensions.init(_:)(v7, v39 + 16);
      sub_1B4C59CF4(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      if (!v40)
      {
        return sub_1B4C59B4C(v28);
      }
    }

    else
    {
      sub_1B4C59BB4(v25, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4C59C8C(v16, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v36 = v44;
      *(v44 + 3) = &type metadata for WorkoutPropertyDimensions;
      v37 = swift_allocObject();
      *v36 = v37;
      v38 = v43;
      WorkoutPropertyDimensions.init(_:)(v13, v37 + 16);
      sub_1B4C59CF4(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      if (!v38)
      {
        return sub_1B4C59B4C(v28);
      }
    }

    v35 = v36;
    goto LABEL_11;
  }

  _s7FailureOMa_18(0, v45, v46, v31);
  swift_getWitnessTable();
  swift_allocError();
  swift_willThrow();
  return sub_1B4C59B4C(v28);
}

uint64_t DatabasePropertyRecord.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  sub_1B4C59A88(qword_1EDC3B9B8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C58C54(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v49 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v51 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v40 - v12;
  *a1 = *a2;
  v41 = a3;
  v42 = a4;
  v15 = type metadata accessor for DatabasePropertyRecord(0, a3, a4, v14);
  v16 = (a2 + v15[10]);
  v17 = *v16;
  v18 = v16[1];

  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  v19 = (a2 + v15[11]);
  v21 = *v19;
  v20 = v19[1];
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  sub_1B498FC0C(*v19, v20);
  sub_1B49DDD2C(v22, v23);
  *(a1 + 32) = v21;
  *(a1 + 40) = v20;
  v24 = *(a2 + v15[12]);
  v25 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  v26 = a1 + *(v25 + 40);
  *v26 = v24;
  *(v26 + 8) = 0;
  v27 = v51;
  v28 = *(v51 + 32);
  v29 = swift_checkMetadataState();
  v30 = v52;
  result = v28(v29, v27);
  if (!v30)
  {
    v32 = a1;
    v33 = v48;
    v34 = v44;
    v35 = v45;
    v36 = v43;
    v52 = 0;
    if (swift_dynamicCast())
    {
      v37 = *(v25 + 32);
      sub_1B4C59B4C(v32 + v37);
      sub_1B4C59BB4(v50, v32 + v37, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
      v38 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
    }

    else if (swift_dynamicCast())
    {
      v37 = *(v25 + 32);
      sub_1B4C59B4C(v32 + v37);
      sub_1B4C59BB4(v35, v32 + v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v38 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        _s7FailureOMa_18(0, v41, v42, v39);
        swift_getWitnessTable();
        swift_allocError();
        swift_willThrow();
        return (*(v36 + 8))(v13, v34);
      }

      v37 = *(v25 + 32);
      sub_1B4C59B4C(v32 + v37);
      sub_1B4C59BB4(v33, v32 + v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      v38 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(v38 - 8) + 56))(v32 + v37, 0, 1, v38);
    return (*(v36 + 8))(v13, v34);
  }

  return result;
}

uint64_t *DatabasePropertyBatch.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (result[1] < *result)
  {
    __break(1u);
  }

  else
  {
    v19 = result[1];
    v20 = a2;
    v21 = &v19;
    v22[2] = result[2];
    MEMORY[0x1EEE9AC00](result);
    v18[2] = v4;
    v18[3] = v5;
    v7 = v6;
    v8 = v5;
    v9 = v4;

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8AD3E8, &qword_1B4D41290);
    v12 = type metadata accessor for DatabasePropertyRecord(0, v9, v8, v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    v14 = sub_1B4C594D4();
    v15 = sub_1B498D2F0(sub_1B4C594B4, v18, v10, v12, v13, v14, MEMORY[0x1E69E7288], v22);
    sub_1B4C59CF4(v7, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch);

    if (!v2)
    {
      v17 = v19;
      v16 = v20;
      *v20 = v3;
      v16[1] = v17;
      v16[2] = v15;
    }
  }

  return result;
}

void sub_1B4C593DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B4C59C8C(a1, v13, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
  DatabasePropertyRecord.init(_:)(v13, a2, a3, a5);
  if (v5)
  {
    *a4 = v5;
  }
}

unint64_t sub_1B4C594D4()
{
  result = qword_1EDC36E38;
  if (!qword_1EDC36E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB8AD3E8, &qword_1B4D41290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36E38);
  }

  return result;
}

uint64_t DatabasePropertyBatch.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch(0);
  sub_1B4C59A88(qword_1EDC3BDB8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_DatabasePropertyBatch);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C59600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *a1 = a2;
  a1[1] = a3;
  v16[2] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  type metadata accessor for DatabasePropertyRecord(255, a5, a6, a4);
  v9 = sub_1B4D184BC();
  v10 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1B498D2F0(sub_1B4C59B24, v15, v9, v10, v11, WitnessTable, MEMORY[0x1E69E7288], v16);

  if (!v7)
  {

    a1[2] = v13;
  }

  return result;
}

uint64_t sub_1B4C597E4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = type metadata accessor for DatabasePropertyRecord(0, a6, a7, a5);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  DatabasePropertyRecord.with(cacheIndexRange:)(&v17, v12, &v17 - v14);
  DatabasePropertyRecord.protobuf()(v12);
  result = (*(v13 + 8))(v15, v12);
  if (v8)
  {
    *a8 = v8;
  }

  return result;
}

uint64_t sub_1B4C59A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4C59B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C59BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C59C1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C59C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C59CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static WorkoutLocation.placemark(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49C016C;

  return sub_1B4C5A3A4(a1);
}

void sub_1B4C59DFC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD470, &qword_1B4D41428);
    sub_1B4D1851C();
  }

  else
  {
    sub_1B4C5A9B0();
    sub_1B4D183FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD470, &qword_1B4D41428);
    sub_1B4D1852C();
  }
}

uint64_t static WorkoutLocation.locationCountryName(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4C59F5C;

  return sub_1B4C5A3A4(a1);
}

uint64_t sub_1B4C59F5C(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4C5A05C, 0, 0);
}

uint64_t sub_1B4C5A05C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) country];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1B4D1818C();
      v6 = v5;

      v7 = v6;
      v8 = v4;
      goto LABEL_6;
    }
  }

  v8 = 0;
  v7 = 0;
LABEL_6:
  v9 = *(v0 + 8);

  return v9(v8, v7);
}

uint64_t static WorkoutLocation.locationName(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4C5A1B8;

  return sub_1B4C5A3A4(a1);
}

uint64_t sub_1B4C5A1B8(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4C5A2B8, 0, 0);
}

uint64_t sub_1B4C5A2B8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) locality];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1B4D1818C();
      v6 = v5;

LABEL_6:
      v10 = v6;
      v11 = v4;
      goto LABEL_9;
    }

    v7 = [v1 name];
    if (v7)
    {
      v8 = v7;
      v4 = sub_1B4D1818C();
      v6 = v9;

      goto LABEL_6;
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_9:
  v12 = *(v0 + 8);

  return v12(v11, v10);
}

uint64_t sub_1B4C5A3A4(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD470, &qword_1B4D41428);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C5A470, 0, 0);
}

uint64_t sub_1B4C5A470()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x1E695FBC8]) init];
  v0[23] = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 104))(v3, v4);
  v0[24] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v0[21];
    v8 = v0[22];
    v9 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1B4C5A6E8;
    swift_continuation_init();
    v0[17] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD478, &qword_1B4D41430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    sub_1B4D1850C();
    (*(v7 + 32))(boxed_opaque_existential_1, v8, v9);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1B4C59DFC;
    v0[13] = &block_descriptor_1;
    [v2 reverseGeocodeLocation:v6 completionHandler:?];
    (*(v7 + 8))(boxed_opaque_existential_1, v9);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_1B4C5A6E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1B4C5A8F4;
  }

  else
  {
    v2 = sub_1B4C5A7F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4C5A7F8()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    result = sub_1B4D18ABC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = *(v0 + 192);

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C7CD90](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);

LABEL_9:

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_1B4C5A8F4(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[25];
  v4 = v1[23];
  swift_willThrow();

  v5 = v1[1];

  return v5(0);
}

unint64_t sub_1B4C5A9B0()
{
  result = qword_1EB8AD480;
  if (!qword_1EB8AD480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8AD480);
  }

  return result;
}

uint64_t sub_1B4C5A9FC(void *a1)
{
  a1[1] = sub_1B4C5AA88(&qword_1EB8AD488, &protocol conformance descriptor for WorkoutState);
  a1[2] = sub_1B4C5AA88(&qword_1EB8AD490, &protocol conformance descriptor for WorkoutState);
  result = sub_1B4C5AA88(&qword_1EB8AD498, &protocol conformance descriptor for WorkoutState);
  a1[3] = result;
  return result;
}

uint64_t sub_1B4C5AA88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C5AACC(uint64_t a1)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B4C5AA88(&qword_1EB8AD498, &protocol conformance descriptor for WorkoutState);
  v1 = sub_1B4D173BC();

  return v1;
}

uint64_t sub_1B4C5AB70(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4C5AA88(&qword_1EB8AD490, &protocol conformance descriptor for WorkoutState);
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

uint64_t VitalsFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t VitalsFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000065;
  }

  else
  {
    return 0xD000000000000044;
  }
}

uint64_t sub_1B4C5ACE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000065;
  }

  else
  {
    v3 = 0xD000000000000044;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "eir normal baseline.";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000065;
  }

  else
  {
    v6 = 0xD000000000000044;
  }

  if (*a2)
  {
    v7 = "eir normal baseline.";
  }

  else
  {
    v7 = "";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4C5AD98()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C5AE1C(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C5AE8C(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C5AF0C@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B4C5AF6C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000065;
  }

  else
  {
    v2 = 0xD000000000000044;
  }

  if (*v1)
  {
    v3 = "eir normal baseline.";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t VitalsFact.placeholders()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D1A800;
  v1 = sub_1B4D18D5C();
  v3 = v2;
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000001B4D640A0;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v0 + 48) = sub_1B4993DFC;
  *(v0 + 56) = v4;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t sub_1B4C5B0B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D1A800;
  v1 = sub_1B4D18D5C();
  v3 = v2;
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000001B4D640A0;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v0 + 48) = sub_1B4994004;
  *(v0 + 56) = v4;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

unint64_t sub_1B4C5B1A4()
{
  result = qword_1EB8AD4A0;
  if (!qword_1EB8AD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4A0);
  }

  return result;
}

unint64_t sub_1B4C5B1FC()
{
  result = qword_1EB8AD4A8;
  if (!qword_1EB8AD4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD4B0, &qword_1B4D41528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4A8);
  }

  return result;
}

unint64_t sub_1B4C5B264()
{
  result = qword_1EB8AD4B8;
  if (!qword_1EB8AD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4B8);
  }

  return result;
}

unint64_t sub_1B4C5B2BC()
{
  result = qword_1EB8AD4C0;
  if (!qword_1EB8AD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4C0);
  }

  return result;
}

unint64_t sub_1B4C5B310(uint64_t a1)
{
  result = sub_1B4C5B338();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C5B338()
{
  result = qword_1EB8AD4C8;
  if (!qword_1EB8AD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4C8);
  }

  return result;
}

uint64_t InferenceDevice.rawValue.getter()
{
  if (*v0)
  {
    return 0x6863746177;
  }

  else
  {
    return 0x656E6F6870;
  }
}

FitnessIntelligence::InferenceDevice_optional __swiftcall InferenceDevice.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

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

uint64_t sub_1B4C5B438(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6863746177;
  }

  else
  {
    v2 = 0x656E6F6870;
  }

  if (*a2)
  {
    v3 = 0x6863746177;
  }

  else
  {
    v3 = 0x656E6F6870;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B4D18DCC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1B4C5B4BC()
{
  result = qword_1EB8AD4D0;
  if (!qword_1EB8AD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4D0);
  }

  return result;
}

uint64_t sub_1B4C5B510()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C5B580(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C5B5D4(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C5B640@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B4C5B6A0(uint64_t *a1@<X8>)
{
  v2 = 0x656E6F6870;
  if (*v1)
  {
    v2 = 0x6863746177;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

unint64_t sub_1B4C5B6D4()
{
  result = qword_1EB8AD4D8;
  if (!qword_1EB8AD4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD4E0, &qword_1B4D41640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4D8);
  }

  return result;
}

uint64_t sub_1B4C5B758(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
    return a2;
  }

  return result;
}

uint64_t sub_1B4C5B7F8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for DistanceSampleIntervalRecord(0);
    return a2;
  }

  return result;
}

uint64_t static WorkoutInsight.bestDurationForKilometerCount(_:workout:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X8>)
{
  v58 = sub_1B4D174EC();
  v6 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1B4D1777C();
  v9 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = (*(v15 + 56))(v14, v15);
  v17 = [v16 effectiveTypeIdentifier];

  v18 = vdupq_n_s64(v17);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1F2CBD5F0, v18), vceqq_s64(unk_1F2CBD600, v18)))) & 1) != 0 || qword_1F2CBD610 == v17 || qword_1F2CBD618 == v17)
  {
    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    (*(v20 + 216))(v19, v20);
    sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
    v21 = sub_1B4D183EC();

    v22 = FISplitsForMeasuringSystemIdentifier();

    v23 = sub_1B4D183FC();
    if (v23 >> 62)
    {
      goto LABEL_39;
    }

    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v24 < a1)
      {
LABEL_7:

        goto LABEL_8;
      }

      v28 = 0.0;
      v48 = v24 + 1;
      v49 = a3;
      v52 = v24 + 1 - a1;
      v53 = v23;
      if (v24 + 1 == a1)
      {
        break;
      }

      v30 = 0;
      v56 = v53 & 0xFFFFFFFFFFFFFF8;
      v57 = v53 & 0xC000000000000001;
      v31 = (v6 + 8);
      ++v9;
      v50 = a1;
      v51 = v53 + 8 * a1 + 24;
      v6 = 1;
      while (1)
      {
        v40 = a1 + v30;
        if (!(a1 + v30))
        {
          break;
        }

        if (v40 - 1 < 0)
        {
          goto LABEL_35;
        }

        if (v57)
        {
          v41 = MEMORY[0x1B8C7CD90]();
        }

        else
        {
          if ((v40 - 1) >= *(v56 + 16))
          {
            goto LABEL_37;
          }

          v41 = *(v51 + 8 * v30);
        }

        v42 = v41;
        a3 = v30 + 0x8000000000000000;
        v43 = [v41 dateInterval];

        sub_1B4D174AC();
        v23 = v8;
        sub_1B4D174BC();
        a1 = *v31;
        (*v31)(v8, v58);
        if (v30 == 0x8000000000000000)
        {
          goto LABEL_36;
        }

        if (v57)
        {
          v32 = MEMORY[0x1B8C7CD90](v30, v53);
        }

        else
        {
          if (v30 >= *(v56 + 16))
          {
            goto LABEL_38;
          }

          v32 = *(v53 + 8 * v30 + 32);
        }

        v33 = v32;
        v34 = [v32 dateInterval];

        sub_1B4D174AC();
        v35 = v54;
        sub_1B4D174DC();
        (a1)(v8, v58);
        sub_1B4D176FC();
        v37 = fabs(v36);
        v23 = *v9;
        v38 = v35;
        a3 = v55;
        (*v9)(v38, v55);
        (v23)(v13, a3);
        if (v6)
        {
          v39 = v37;
        }

        else
        {
          v39 = v28;
        }

        if (v37 >= v39)
        {
          v28 = v39;
        }

        else
        {
          v28 = v37;
        }

        ++v30;
        v6 = 0;
        a1 = v50;
        if (v52 == v30)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v24 = sub_1B4D18ABC();
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }
    }

LABEL_12:

    if (v48 == a1)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      return (*(*(v29 - 8) + 56))(v49, 1, 1, v29);
    }

    else
    {
      v44 = [objc_opt_self() seconds];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v45 = v49;
      sub_1B4D1741C();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    }
  }

  else
  {
LABEL_8:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v26 = *(*(v25 - 8) + 56);

    return v26(a3, 1, 1, v25);
  }
}

void sub_1B4C5BEBC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1B49E9CA4(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4987444(v15, v6 & 1);
    v10 = sub_1B49E9CA4(v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_1B498A26C();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v7 = *v6;
      v8 = *(v6 - 8);

      if (!v7)
      {
        goto LABEL_23;
      }

      v25 = *a3;
      v26 = sub_1B49E9CA4(v8);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1B4987444(v30, 1);
        v26 = sub_1B49E9CA4(v8);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + v26) = v8;
      *(v32[7] + 8 * v26) = v7;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v24;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v24)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B4C5C220(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DistanceSampleIntervalRecord(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1B4CDE540(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1B4C5C664(v10, a2, a3);
  *a1 = v7;
  return result;
}

void sub_1B4C5C308(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D40, &unk_1B4D20210);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1B4C5C4C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1B4C5C664(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1B4D18D4C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DistanceSampleIntervalRecord(0);
        v10 = sub_1B4D1844C();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for DistanceSampleIntervalRecord(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1B4C5C7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v100 = a4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v73[-v8];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v73[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v73[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v73[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v73[-v17];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v18 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v73[-v21];
  v105 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v22 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v82 = &v73[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v73[-v27];
  v79 = a3;
  v75 = a2;
  if (a3 != a2)
  {
    v28 = v26;
    v29 = *v100;
    v30 = objc_opt_self();
    v99 = (v9 + 8);
    v100 = v30;
    v31 = *(v22 + 72);
    v84 = (v7 + 8);
    v98 = (v12 + 8);
    v83 = (v18 + 8);
    v32 = v29 + v31 * (v79 - 1);
    v80 = -v31;
    v33 = a1 - v79;
    v81 = v29;
    v74 = v31;
    v34 = v29 + v31 * v79;
    v86 = v11;
    v85 = v28;
LABEL_5:
    v76 = v34;
    v77 = v33;
    v78 = v32;
    v35 = v93;
    while (1)
    {
      v96 = v33;
      v97 = v34;
      sub_1B4C63E94(v34, v35, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63E94(v32, v28, type metadata accessor for DistanceSampleIntervalRecord);
      v36 = [v100 meters];
      v38 = v103;
      v37 = v104;
      sub_1B4D1745C();

      sub_1B4D1742C();
      v40 = v39;
      v95 = *v99;
      v95(v38, v37);
      if (v40 > 0.0)
      {
        v41 = [objc_opt_self() seconds];
        v43 = v91;
        v42 = v92;
        sub_1B4D1745C();

        sub_1B4D1742C();
        (*v84)(v43, v42);
      }

      v44 = v89;
      if (qword_1EDC36E80 != -1)
      {
        swift_once();
      }

      v45 = qword_1EDC36E88;
      v46 = type metadata accessor for UnitPace();
      v47 = v45;
      v94 = v46;
      sub_1B4D1741C();
      if (qword_1EDC36E80 != -1)
      {
        swift_once();
      }

      v48 = v102;
      sub_1B4D1745C();
      sub_1B4D1742C();
      v49 = *v98;
      (*v98)(v48, v11);
      v50 = [objc_opt_self() metersPerSecond];
      sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
      sub_1B4D1741C();
      v49(v44, v11);
      v51 = [v100 meters];
      v52 = v85;
      v54 = v103;
      v53 = v104;
      sub_1B4D1745C();

      sub_1B4D1742C();
      v56 = v55;
      v95(v54, v53);
      if (v56 > 0.0)
      {
        v57 = [objc_opt_self() seconds];
        v58 = v91;
        v59 = v92;
        sub_1B4D1745C();

        sub_1B4D1742C();
        (*v84)(v58, v59);
      }

      v60 = v47;
      v61 = v90;
      sub_1B4D1741C();
      v62 = v102;
      v11 = v86;
      sub_1B4D1745C();
      sub_1B4D1742C();
      v49(v62, v11);
      v63 = [objc_opt_self() metersPerSecond];
      v64 = v87;
      sub_1B4D1741C();
      v49(v61, v11);
      sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
      v65 = v101;
      v66 = v88;
      v67 = sub_1B4D180EC();
      v68 = *v83;
      (*v83)(v64, v66);
      v68(v65, v66);
      sub_1B4C63EFC(v52, type metadata accessor for DistanceSampleIntervalRecord);
      v35 = v93;
      sub_1B4C63EFC(v93, type metadata accessor for DistanceSampleIntervalRecord);
      v28 = v52;
      v70 = v96;
      v69 = v97;
      if ((v67 & 1) == 0)
      {
LABEL_4:
        v32 = v78 + v74;
        v33 = v77 - 1;
        v34 = v76 + v74;
        if (++v79 == v75)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v81)
      {
        break;
      }

      v71 = v82;
      sub_1B4C63F5C(v97, v82, type metadata accessor for DistanceSampleIntervalRecord);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B4C63F5C(v71, v32, type metadata accessor for DistanceSampleIntervalRecord);
      v32 += v80;
      v34 = v69 + v80;
      v72 = __CFADD__(v70, 1);
      v33 = v70 + 1;
      if (v72)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4C5D1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v17 = *(v8 + 72);
    v18 = v16 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    v22 = v20;
    while (1)
    {
      sub_1B4C63E94(v21, v15, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63E94(v18, v12, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
      v23 = sub_1B4D180FC();
      sub_1B4C63EFC(v12, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63EFC(v15, type metadata accessor for DistanceSampleIntervalRecord);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v20 = v30 - 1;
        v21 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1B4C63F5C(v21, v34, type metadata accessor for DistanceSampleIntervalRecord);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B4C63F5C(v24, v18, type metadata accessor for DistanceSampleIntervalRecord);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4C5D468(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v214 = a4;
  v215 = a1;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v5 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v243 = &v209 - v6;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v257 = &v209 - v8;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v9 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v239 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v238 = &v209 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v224 = &v209 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v255 = &v209 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v223 = &v209 - v18;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v19 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v237 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v252 = &v209 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v222 = &v209 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v231 = &v209 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v211 = &v209 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v210 = &v209 - v30;
  v31 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v227 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v219 = &v209 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v236 = &v209 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v209 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v209 - v39;
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  v226 = &v209 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v213 = &v209 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v212 = &v209 - v48;
  v229 = a3;
  v49 = a3[1];
  if (v49 < 1)
  {
    v51 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v105 = *v215;
    if (!*v215)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_143:
      v51 = sub_1B4CDDE84(v51);
    }

    v260 = v51;
    v204 = *(v51 + 2);
    if (v204 >= 2)
    {
      while (*v229)
      {
        v205 = *&v51[16 * v204];
        v206 = *&v51[16 * v204 + 24];
        v207 = v233;
        sub_1B4C5F670(&(*v229)[*(v227 + 72) * v205], &(*v229)[*(v227 + 72) * *&v51[16 * v204 + 16]], &(*v229)[*(v227 + 72) * v206], v105);
        v233 = v207;
        if (v207)
        {
          goto LABEL_121;
        }

        if (v206 < v205)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1B4CDDE84(v51);
        }

        if (v204 - 2 >= *(v51 + 2))
        {
          goto LABEL_137;
        }

        v208 = &v51[16 * v204];
        *v208 = v205;
        *(v208 + 1) = v206;
        v260 = v51;
        sub_1B4CDDDF8(v204 - 1);
        v51 = v260;
        v204 = *(v260 + 2);
        if (v204 <= 1)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_147;
    }

LABEL_121:

    return;
  }

  v230 = v47;
  v245 = (v19 + 8);
  v254 = (v7 + 8);
  v50 = 0;
  v240 = (v5 + 8);
  v253 = (v9 + 8);
  v51 = MEMORY[0x1E69E7CC0];
  v259 = v31;
  v241 = v37;
  v242 = v40;
  while (1)
  {
    v52 = v50;
    v228 = v51;
    if (v50 + 1 >= v49)
    {
      v105 = v50 + 1;
      v104 = v214;
    }

    else
    {
      v232 = v49;
      v53 = *(v227 + 72);
      v54 = &(*v229)[v53 * (v50 + 1)];
      v250 = *v229;
      v251 = v54;
      v55 = v53;
      v247 = v53;
      v56 = v250;
      v216 = v52;
      sub_1B4C63E94(v54, v212, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63E94(v56 + v55 * v52, v213, type metadata accessor for DistanceSampleIntervalRecord);
      v57 = v210;
      DistanceSampleIntervalRecord.speed.getter();
      v58 = v211;
      DistanceSampleIntervalRecord.speed.getter();
      v59 = sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
      v60 = v246;
      v234 = v59;
      LODWORD(v235) = sub_1B4D180EC();
      v61 = *v245;
      (*v245)(v58, v60);
      v62 = v57;
      v63 = v251;
      v225 = v61;
      (v61)(v62, v60);
      sub_1B4C63EFC(v213, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63EFC(v212, type metadata accessor for DistanceSampleIntervalRecord);
      v64 = (v216 + 2);
      v65 = v250 + v247 * (v216 + 2);
      v66 = v226;
      while (v232 != v64)
      {
        v250 = v65;
        sub_1B4C63E94(v65, v66, type metadata accessor for DistanceSampleIntervalRecord);
        v251 = v63;
        sub_1B4C63E94(v63, v230, type metadata accessor for DistanceSampleIntervalRecord);
        v78 = objc_opt_self();
        v79 = [v78 meters];
        v81 = v257;
        v80 = v258;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v83 = v82;
        v249 = *v254;
        v249(v81, v80);
        if (v83 > 0.0)
        {
          v84 = [objc_opt_self() seconds];
          v86 = v243;
          v85 = v244;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v240)(v86, v85);
        }

        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v87 = qword_1EDC36E88;
        v88 = type metadata accessor for UnitPace();
        v89 = v87;
        v90 = v223;
        v248 = v88;
        sub_1B4D1741C();
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v92 = v255;
        v91 = v256;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v93 = *v253;
        (*v253)(v92, v91);
        v94 = [objc_opt_self() metersPerSecond];
        sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
        sub_1B4D1741C();
        v93(v90, v91);
        v95 = [v78 meters];
        v96 = v230;
        v98 = v257;
        v97 = v258;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v100 = v99;
        v249(v98, v97);
        if (v100 > 0.0)
        {
          v101 = [objc_opt_self() seconds];
          v102 = v243;
          v103 = v244;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v240)(v102, v103);
        }

        v67 = v89;
        v68 = v224;
        sub_1B4D1741C();
        v70 = v255;
        v69 = v256;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v93(v70, v69);
        v71 = [objc_opt_self() metersPerSecond];
        v72 = v222;
        sub_1B4D1741C();
        v93(v68, v69);
        v73 = v231;
        v74 = v246;
        v75 = sub_1B4D180EC() & 1;
        v76 = v72;
        v77 = v225;
        (v225)(v76, v74);
        v77(v73, v74);
        sub_1B4C63EFC(v96, type metadata accessor for DistanceSampleIntervalRecord);
        v66 = v226;
        sub_1B4C63EFC(v226, type metadata accessor for DistanceSampleIntervalRecord);
        ++v64;
        v65 = v250 + v247;
        v63 = &v251[v247];
        v51 = v228;
        v37 = v241;
        if ((v235 & 1) != v75)
        {
          v105 = (v64 - 1);
          goto LABEL_19;
        }
      }

      v105 = v232;
LABEL_19:
      v104 = v214;
      v40 = v242;
      v52 = v216;
      if (v235)
      {
        if (v105 < v216)
        {
          goto LABEL_140;
        }

        if (v216 < v105)
        {
          v106 = v105;
          v107 = v247 * (v105 - 1);
          v108 = v106 * v247;
          v232 = v106;
          v109 = v216;
          v110 = v216 * v247;
          do
          {
            if (v109 != --v106)
            {
              v111 = *v229;
              if (!*v229)
              {
                goto LABEL_146;
              }

              sub_1B4C63F5C(&v111[v110], v219, type metadata accessor for DistanceSampleIntervalRecord);
              if (v110 < v107 || &v111[v110] >= &v111[v108])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v110 != v107)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1B4C63F5C(v219, &v111[v107], type metadata accessor for DistanceSampleIntervalRecord);
              v51 = v228;
            }

            ++v109;
            v107 -= v247;
            v108 -= v247;
            v110 += v247;
          }

          while (v109 < v106);
          v104 = v214;
          v40 = v242;
          v105 = v232;
          v52 = v216;
        }
      }
    }

    v112 = v229[1];
    if (v105 < v112)
    {
      if (__OFSUB__(v105, v52))
      {
        goto LABEL_139;
      }

      if (v105 - v52 < v104)
      {
        if (__OFADD__(v52, v104))
        {
          goto LABEL_141;
        }

        if (v52 + v104 >= v112)
        {
          v113 = v229[1];
        }

        else
        {
          v113 = (v52 + v104);
        }

        if (v113 < v52)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v105 != v113)
        {
          break;
        }
      }
    }

    v50 = v105;
    if (v105 < v52)
    {
      goto LABEL_138;
    }

LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_1B4A1D58C(0, *(v51 + 2) + 1, 1, v51);
    }

    v105 = *(v51 + 2);
    v114 = *(v51 + 3);
    v115 = v105 + 1;
    if (v105 >= v114 >> 1)
    {
      v51 = sub_1B4A1D58C((v114 > 1), v105 + 1, 1, v51);
    }

    *(v51 + 2) = v115;
    v116 = &v51[16 * v105];
    *(v116 + 4) = v52;
    *(v116 + 5) = v50;
    v117 = *v215;
    if (!*v215)
    {
      goto LABEL_148;
    }

    if (v105)
    {
      while (1)
      {
        v118 = v115 - 1;
        if (v115 >= 4)
        {
          break;
        }

        if (v115 == 3)
        {
          v119 = *(v51 + 4);
          v120 = *(v51 + 5);
          v129 = __OFSUB__(v120, v119);
          v121 = v120 - v119;
          v122 = v129;
LABEL_62:
          if (v122)
          {
            goto LABEL_127;
          }

          v135 = &v51[16 * v115];
          v137 = *v135;
          v136 = *(v135 + 1);
          v138 = __OFSUB__(v136, v137);
          v139 = v136 - v137;
          v140 = v138;
          if (v138)
          {
            goto LABEL_130;
          }

          v141 = &v51[16 * v118 + 32];
          v143 = *v141;
          v142 = *(v141 + 1);
          v129 = __OFSUB__(v142, v143);
          v144 = v142 - v143;
          if (v129)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v139, v144))
          {
            goto LABEL_134;
          }

          if (v139 + v144 >= v121)
          {
            if (v121 < v144)
            {
              v118 = v115 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v145 = &v51[16 * v115];
        v147 = *v145;
        v146 = *(v145 + 1);
        v129 = __OFSUB__(v146, v147);
        v139 = v146 - v147;
        v140 = v129;
LABEL_76:
        if (v140)
        {
          goto LABEL_129;
        }

        v148 = &v51[16 * v118];
        v150 = *(v148 + 4);
        v149 = *(v148 + 5);
        v129 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v129)
        {
          goto LABEL_132;
        }

        if (v151 < v139)
        {
          goto LABEL_3;
        }

LABEL_83:
        v105 = v118 - 1;
        if (v118 - 1 >= v115)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v229)
        {
          goto LABEL_145;
        }

        v156 = *&v51[16 * v105 + 32];
        v157 = *&v51[16 * v118 + 40];
        v158 = v233;
        sub_1B4C5F670(&(*v229)[*(v227 + 72) * v156], &(*v229)[*(v227 + 72) * *&v51[16 * v118 + 32]], &(*v229)[*(v227 + 72) * v157], v117);
        v233 = v158;
        if (v158)
        {
          goto LABEL_121;
        }

        if (v157 < v156)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1B4CDDE84(v51);
        }

        if (v105 >= *(v51 + 2))
        {
          goto LABEL_124;
        }

        v159 = &v51[16 * v105];
        *(v159 + 4) = v156;
        *(v159 + 5) = v157;
        v260 = v51;
        sub_1B4CDDDF8(v118);
        v51 = v260;
        v115 = *(v260 + 2);
        v40 = v242;
        if (v115 <= 1)
        {
          goto LABEL_3;
        }
      }

      v123 = &v51[16 * v115 + 32];
      v124 = *(v123 - 64);
      v125 = *(v123 - 56);
      v129 = __OFSUB__(v125, v124);
      v126 = v125 - v124;
      if (v129)
      {
        goto LABEL_125;
      }

      v128 = *(v123 - 48);
      v127 = *(v123 - 40);
      v129 = __OFSUB__(v127, v128);
      v121 = v127 - v128;
      v122 = v129;
      if (v129)
      {
        goto LABEL_126;
      }

      v130 = &v51[16 * v115];
      v132 = *v130;
      v131 = *(v130 + 1);
      v129 = __OFSUB__(v131, v132);
      v133 = v131 - v132;
      if (v129)
      {
        goto LABEL_128;
      }

      v129 = __OFADD__(v121, v133);
      v134 = v121 + v133;
      if (v129)
      {
        goto LABEL_131;
      }

      if (v134 >= v126)
      {
        v152 = &v51[16 * v118 + 32];
        v154 = *v152;
        v153 = *(v152 + 1);
        v129 = __OFSUB__(v153, v154);
        v155 = v153 - v154;
        if (v129)
        {
          goto LABEL_135;
        }

        if (v121 < v155)
        {
          v118 = v115 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v49 = v229[1];
    if (v50 >= v49)
    {
      goto LABEL_111;
    }
  }

  v160 = *v229;
  v251 = objc_opt_self();
  v161 = *(v227 + 72);
  v162 = &v160[v161 * (v105 - 1)];
  v234 = -v161;
  v216 = v52;
  v163 = v52 - v105;
  v235 = v160;
  v217 = v161;
  v164 = &v160[v105 * v161];
  v218 = v113;
LABEL_94:
  v232 = v105;
  v220 = v164;
  v221 = v163;
  v165 = v163;
  v225 = v162;
  v166 = v162;
  while (1)
  {
    v247 = v165;
    sub_1B4C63E94(v164, v40, type metadata accessor for DistanceSampleIntervalRecord);
    sub_1B4C63E94(v166, v37, type metadata accessor for DistanceSampleIntervalRecord);
    v167 = [v251 meters];
    v169 = v257;
    v168 = v258;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v171 = v170;
    v250 = *v254;
    v250(v169, v168);
    if (v171 > 0.0)
    {
      v172 = [objc_opt_self() seconds];
      v174 = v243;
      v173 = v244;
      sub_1B4D1745C();

      sub_1B4D1742C();
      (*v240)(v174, v173);
    }

    v175 = v238;
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    v176 = qword_1EDC36E88;
    v177 = type metadata accessor for UnitPace();
    v178 = v176;
    v249 = v177;
    sub_1B4D1741C();
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    v180 = v255;
    v179 = v256;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v181 = *v253;
    (*v253)(v180, v179);
    v182 = [objc_opt_self() metersPerSecond];
    v248 = sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v181(v175, v179);
    v183 = [v251 meters];
    v37 = v241;
    v184 = v257;
    v185 = v258;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v187 = v186;
    v250(v184, v185);
    if (v187 > 0.0)
    {
      v188 = [objc_opt_self() seconds];
      v190 = v243;
      v189 = v244;
      sub_1B4D1745C();

      sub_1B4D1742C();
      (*v240)(v190, v189);
    }

    v191 = v178;
    v192 = v239;
    sub_1B4D1741C();
    v194 = v255;
    v193 = v256;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v181(v194, v193);
    v195 = [objc_opt_self() metersPerSecond];
    v196 = v237;
    sub_1B4D1741C();
    v181(v192, v193);
    sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
    v197 = v252;
    v198 = v246;
    v199 = sub_1B4D180EC();
    v200 = *v245;
    (*v245)(v196, v198);
    v200(v197, v198);
    sub_1B4C63EFC(v37, type metadata accessor for DistanceSampleIntervalRecord);
    v40 = v242;
    sub_1B4C63EFC(v242, type metadata accessor for DistanceSampleIntervalRecord);
    if ((v199 & 1) == 0)
    {
LABEL_93:
      v105 = (v232 + 1);
      v162 = &v225[v217];
      v163 = v221 - 1;
      v164 = v220 + v217;
      v50 = v218;
      if (v232 + 1 != v218)
      {
        goto LABEL_94;
      }

      v51 = v228;
      v52 = v216;
      if (v218 < v216)
      {
        goto LABEL_138;
      }

      goto LABEL_43;
    }

    v201 = v247;
    if (!v235)
    {
      break;
    }

    v202 = v236;
    sub_1B4C63F5C(v164, v236, type metadata accessor for DistanceSampleIntervalRecord);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B4C63F5C(v202, v166, type metadata accessor for DistanceSampleIntervalRecord);
    v166 += v234;
    v164 += v234;
    v203 = __CFADD__(v201, 1);
    v165 = v201 + 1;
    if (v203)
    {
      goto LABEL_93;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void sub_1B4C5ECB8(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v109 = a1;
  v8 = type metadata accessor for DistanceSampleIntervalRecord(0);
  v118 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v105 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v105 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v19 = *v109;
    if (!*v109)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_128:
      v18 = sub_1B4CDDE84(v18);
    }

    v125 = v18;
    v101 = *(v18 + 2);
    if (v101 >= 2)
    {
      while (*a3)
      {
        v102 = *&v18[16 * v101];
        v103 = *&v18[16 * v101 + 24];
        sub_1B4C60920(*a3 + *(v118 + 72) * v102, *a3 + *(v118 + 72) * *&v18[16 * v101 + 16], *a3 + *(v118 + 72) * v103, v19);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v103 < v102)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B4CDDE84(v18);
        }

        if (v101 - 2 >= *(v18 + 2))
        {
          goto LABEL_122;
        }

        v104 = &v18[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v103;
        v125 = v18;
        sub_1B4CDDDF8(v101 - 1);
        v18 = v125;
        v101 = *(v125 + 2);
        if (v101 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v107 = a4;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v124 = v8;
  v111 = a3;
  while (1)
  {
    v19 = v17;
    if (v17 + 1 >= v16)
    {
      v34 = v17 + 1;
    }

    else
    {
      v119 = v16;
      v108 = v5;
      v20 = *a3;
      v21 = *(v118 + 72);
      v22 = v17;
      v110 = v17;
      v23 = v20 + v21 * (v17 + 1);
      v24 = v20;
      v115 = v20;
      v25 = v122;
      sub_1B4C63E94(v23, v122, type metadata accessor for DistanceSampleIntervalRecord);
      v26 = v123;
      sub_1B4C63E94(v24 + v21 * v22, v123, type metadata accessor for DistanceSampleIntervalRecord);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v116 = sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
      LODWORD(v117) = sub_1B4D180FC();
      sub_1B4C63EFC(v26, type metadata accessor for DistanceSampleIntervalRecord);
      sub_1B4C63EFC(v25, type metadata accessor for DistanceSampleIntervalRecord);
      v27 = v110 + 2;
      v120 = v21;
      v28 = v115 + v21 * (v110 + 2);
      while (v119 != v27)
      {
        v29 = v122;
        sub_1B4C63E94(v28, v122, type metadata accessor for DistanceSampleIntervalRecord);
        v30 = v123;
        sub_1B4C63E94(v23, v123, type metadata accessor for DistanceSampleIntervalRecord);
        v31 = v18;
        v32 = sub_1B4D180FC() & 1;
        sub_1B4C63EFC(v30, type metadata accessor for DistanceSampleIntervalRecord);
        sub_1B4C63EFC(v29, type metadata accessor for DistanceSampleIntervalRecord);
        ++v27;
        v28 += v120;
        v23 += v120;
        v33 = (v117 & 1) == v32;
        v18 = v31;
        if (!v33)
        {
          v34 = v27 - 1;
          goto LABEL_11;
        }
      }

      v34 = v119;
LABEL_11:
      v5 = v108;
      v19 = v110;
      a3 = v111;
      if (v117)
      {
        if (v34 < v110)
        {
          goto LABEL_125;
        }

        if (v110 < v34)
        {
          v106 = v18;
          v35 = v120 * (v34 - 1);
          v36 = v34 * v120;
          v37 = v34;
          v38 = v110;
          v39 = v110 * v120;
          do
          {
            if (v38 != --v34)
            {
              v40 = *a3;
              if (!v40)
              {
                goto LABEL_131;
              }

              sub_1B4C63F5C(v40 + v39, v114, type metadata accessor for DistanceSampleIntervalRecord);
              if (v39 < v35 || v40 + v39 >= (v40 + v36))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1B4C63F5C(v114, v40 + v35, type metadata accessor for DistanceSampleIntervalRecord);
              a3 = v111;
            }

            ++v38;
            v35 -= v120;
            v36 -= v120;
            v39 += v120;
          }

          while (v38 < v34);
          v5 = v108;
          v18 = v106;
          v19 = v110;
          v34 = v37;
        }
      }
    }

    v41 = a3[1];
    if (v34 < v41)
    {
      if (__OFSUB__(v34, v19))
      {
        goto LABEL_124;
      }

      if (v34 - v19 < v107)
      {
        if (__OFADD__(v19, v107))
        {
          goto LABEL_126;
        }

        if (v19 + v107 >= v41)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v19 + v107;
        }

        if (v42 < v19)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v34 != v42)
        {
          break;
        }
      }
    }

    v17 = v34;
    if (v34 < v19)
    {
      goto LABEL_123;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1B4A1D58C(0, *(v18 + 2) + 1, 1, v18);
    }

    v44 = *(v18 + 2);
    v43 = *(v18 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v18 = sub_1B4A1D58C((v43 > 1), v44 + 1, 1, v18);
    }

    *(v18 + 2) = v45;
    v46 = &v18[16 * v44];
    *(v46 + 4) = v19;
    *(v46 + 5) = v17;
    v47 = *v109;
    if (!*v109)
    {
      goto LABEL_133;
    }

    if (v44)
    {
      while (1)
      {
        v19 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v48 = *(v18 + 4);
          v49 = *(v18 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_55:
          if (v51)
          {
            goto LABEL_112;
          }

          v64 = &v18[16 * v45];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_115;
          }

          v70 = &v18[16 * v19 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_119;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v19 = v45 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v74 = &v18[16 * v45];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_69:
        if (v69)
        {
          goto LABEL_114;
        }

        v77 = &v18[16 * v19];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_117;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_76:
        v85 = v19 - 1;
        if (v19 - 1 >= v45)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v86 = *&v18[16 * v85 + 32];
        v87 = *&v18[16 * v19 + 40];
        sub_1B4C60920(*a3 + *(v118 + 72) * v86, *a3 + *(v118 + 72) * *&v18[16 * v19 + 32], *a3 + *(v118 + 72) * v87, v47);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v87 < v86)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B4CDDE84(v18);
        }

        if (v85 >= *(v18 + 2))
        {
          goto LABEL_109;
        }

        v88 = &v18[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        v125 = v18;
        sub_1B4CDDDF8(v19);
        v18 = v125;
        v45 = *(v125 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v18[16 * v45 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_110;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_111;
      }

      v59 = &v18[16 * v45];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_113;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_116;
      }

      if (v63 >= v55)
      {
        v81 = &v18[16 * v19 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_120;
        }

        if (v50 < v84)
        {
          v19 = v45 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v16 = a3[1];
    if (v17 >= v16)
    {
      goto LABEL_96;
    }
  }

  v106 = v18;
  v108 = v5;
  v89 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v90 = *(v118 + 72);
  v91 = v89 + v90 * (v34 - 1);
  v92 = -v90;
  v110 = v19;
  v93 = v19 - v34;
  v120 = v89;
  v112 = v90;
  v113 = v42;
  v94 = v89 + v34 * v90;
LABEL_87:
  v119 = v34;
  v115 = v94;
  v116 = v93;
  v117 = v91;
  v95 = v91;
  while (1)
  {
    v96 = v122;
    sub_1B4C63E94(v94, v122, type metadata accessor for DistanceSampleIntervalRecord);
    v97 = v123;
    sub_1B4C63E94(v95, v123, type metadata accessor for DistanceSampleIntervalRecord);
    sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
    v98 = sub_1B4D180FC();
    sub_1B4C63EFC(v97, type metadata accessor for DistanceSampleIntervalRecord);
    sub_1B4C63EFC(v96, type metadata accessor for DistanceSampleIntervalRecord);
    if ((v98 & 1) == 0)
    {
LABEL_86:
      v34 = v119 + 1;
      v17 = v113;
      v91 = v117 + v112;
      v93 = v116 - 1;
      v94 = v115 + v112;
      if (v119 + 1 != v113)
      {
        goto LABEL_87;
      }

      v5 = v108;
      v19 = v110;
      a3 = v111;
      v18 = v106;
      if (v113 < v110)
      {
        goto LABEL_123;
      }

      goto LABEL_36;
    }

    if (!v120)
    {
      break;
    }

    v99 = v121;
    sub_1B4C63F5C(v94, v121, type metadata accessor for DistanceSampleIntervalRecord);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B4C63F5C(v99, v95, type metadata accessor for DistanceSampleIntervalRecord);
    v95 += v92;
    v94 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1B4C5F670(unint64_t a1, char *a2, char *a3, char *a4)
{
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v130 - v9;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v10 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v130 - v11;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v12 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v136 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v130 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v141 = &v130 - v21;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v156 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v134 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v152 = &v130 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v140 = &v130 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v153 = &v130 - v28;
  v29 = type metadata accessor for DistanceSampleIntervalRecord(0);
  MEMORY[0x1EEE9AC00](v29);
  v139 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v137 = (&v130 - v32);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v38 = *(v37 + 72);
  if (!v38)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_75;
  }

  v39 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_76;
  }

  v40 = &a2[-a1] / v38;
  v164 = a1;
  v163 = a4;
  v161 = v29;
  v143 = v38;
  if (v40 >= v39 / v38)
  {
    v149 = v12;
    v153 = v10;
    v42 = v39 / v38 * v38;
    if (a4 < a2 || &a2[v42] <= a4)
    {
      v43 = v8;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v43 = v8;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v83 = a2;
    v84 = &a4[v42];
    if (v42 >= 1)
    {
      v85 = -v143;
      v150 = (v153 + 8);
      v133 = (v43 + 8);
      ++v149;
      v132 = (v156 + 8);
      v86 = &a4[v42];
      v87 = v139;
      v88 = v137;
      v154 = a4;
      v155 = a1;
      v151 = -v143;
      do
      {
        v131 = v84;
        v89 = &v83[v85];
        v156 = &v83[v85];
        v140 = v83;
        while (1)
        {
          v153 = a3;
          if (v83 <= a1)
          {
            v164 = v83;
            v162 = v131;
            goto LABEL_73;
          }

          v138 = v84;
          v148 = v86;
          v141 = &v86[v85];
          sub_1B4C63E94(&v86[v85], v88, type metadata accessor for DistanceSampleIntervalRecord);
          sub_1B4C63E94(v89, v87, type metadata accessor for DistanceSampleIntervalRecord);
          v147 = objc_opt_self();
          v91 = [v147 meters];
          v92 = v159;
          v93 = v160;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v95 = v94;
          v96 = *v150;
          (*v150)(v92, v93);
          v143 = v96;
          if (v95 > 0.0)
          {
            v97 = [objc_opt_self() seconds];
            v98 = v145;
            v99 = v146;
            sub_1B4D1745C();

            sub_1B4D1742C();
            (*v133)(v98, v99);
          }

          if (qword_1EDC36E80 != -1)
          {
            swift_once();
          }

          v100 = qword_1EDC36E88;
          type metadata accessor for UnitPace();
          v101 = v100;
          v102 = v135;
          sub_1B4D1741C();
          if (qword_1EDC36E80 != -1)
          {
            swift_once();
          }

          v104 = v157;
          v103 = v158;
          sub_1B4D1745C();
          sub_1B4D1742C();
          v105 = *v149;
          (*v149)(v104, v103);
          v106 = [objc_opt_self() metersPerSecond];
          v142 = sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
          sub_1B4D1741C();
          v105(v102, v103);
          v107 = [v147 meters];
          v108 = v139;
          v109 = v159;
          v110 = v160;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v112 = v111;
          (v143)(v109, v110);
          if (v112 > 0.0)
          {
            v113 = [objc_opt_self() seconds];
            v114 = v145;
            v115 = v146;
            sub_1B4D1745C();

            sub_1B4D1742C();
            (*v133)(v114, v115);
          }

          v116 = v101;
          v117 = v136;
          sub_1B4D1741C();
          v119 = v157;
          v118 = v158;
          sub_1B4D1745C();
          sub_1B4D1742C();
          v105(v119, v118);
          v120 = [objc_opt_self() metersPerSecond];
          v121 = v134;
          sub_1B4D1741C();
          v122 = v153;
          a3 = &v153[v151];
          v105(v117, v118);
          sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
          v123 = v152;
          v124 = v144;
          v125 = sub_1B4D180EC();
          v126 = *v132;
          (*v132)(v121, v124);
          v126(v123, v124);
          sub_1B4C63EFC(v108, type metadata accessor for DistanceSampleIntervalRecord);
          v88 = v137;
          sub_1B4C63EFC(v137, type metadata accessor for DistanceSampleIntervalRecord);
          v87 = v108;
          if (v125)
          {
            break;
          }

          v127 = v141;
          v84 = v141;
          a1 = v155;
          v89 = v156;
          v128 = v154;
          if (v122 < v148 || a3 >= v148)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v153 != v148)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v86 = v84;
          v90 = v127 > v128;
          v85 = v151;
          v83 = v140;
          if (!v90)
          {
            goto LABEL_71;
          }
        }

        a1 = v155;
        v129 = v154;
        if (v122 < v140 || a3 >= v140)
        {
          v83 = v156;
          swift_arrayInitWithTakeFrontToBack();
          v84 = v138;
        }

        else
        {
          v83 = v156;
          v84 = v138;
          if (v153 != v140)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = v148;
        v85 = v151;
      }

      while (v148 > v129);
    }

LABEL_71:
    v164 = v83;
    v162 = v84;
  }

  else
  {
    v41 = v40 * v38;
    v151 = &v130 - v35;
    v152 = v36;
    if (a4 < a1 || a1 + v41 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v139 = &a4[v41];
    v162 = &a4[v41];
    if (v41 >= 1 && a2 < a3)
    {
      v150 = (v10 + 8);
      v137 = (v8 + 8);
      v149 = v12 + 1;
      v136 = v156 + 8;
      v138 = a3;
      do
      {
        v155 = a1;
        sub_1B4C63E94(a2, v151, type metadata accessor for DistanceSampleIntervalRecord);
        sub_1B4C63E94(a4, v152, type metadata accessor for DistanceSampleIntervalRecord);
        v45 = objc_opt_self();
        v46 = [v45 meters];
        v48 = v159;
        v47 = v160;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v50 = v49;
        v148 = *v150;
        (v148)(v48, v47);
        v156 = a2;
        if (v50 > 0.0)
        {
          v51 = [objc_opt_self() seconds];
          v52 = v145;
          v53 = v146;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v137)(v52, v53);
        }

        v54 = v141;
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v154 = a4;
        v55 = qword_1EDC36E88;
        type metadata accessor for UnitPace();
        v56 = v55;
        sub_1B4D1741C();
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v58 = v157;
        v57 = v158;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v59 = *v149;
        (*v149)(v58, v57);
        v60 = [objc_opt_self() metersPerSecond];
        v147 = sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
        sub_1B4D1741C();
        v59(v54, v57);
        v61 = [v45 meters];
        v62 = v152;
        v63 = v159;
        v64 = v160;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v66 = v65;
        (v148)(v63, v64);
        if (v66 > 0.0)
        {
          v67 = [objc_opt_self() seconds];
          v68 = v145;
          v69 = v146;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v137)(v68, v69);
        }

        v70 = v56;
        v71 = v142;
        sub_1B4D1741C();
        v73 = v157;
        v72 = v158;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v59(v73, v72);
        v74 = [objc_opt_self() metersPerSecond];
        v75 = v140;
        sub_1B4D1741C();
        v59(v71, v72);
        sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
        v76 = v153;
        v77 = v144;
        v78 = sub_1B4D180EC();
        v79 = *v136;
        (*v136)(v75, v77);
        v79(v76, v77);
        sub_1B4C63EFC(v62, type metadata accessor for DistanceSampleIntervalRecord);
        sub_1B4C63EFC(v151, type metadata accessor for DistanceSampleIntervalRecord);
        v80 = v155;
        if (v78)
        {
          v81 = v143;
          a2 = &v156[v143];
          a4 = v154;
          v82 = v138;
          if (v155 < v156 || v155 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v155 != v156)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v81 = v143;
          a4 = &v154[v143];
          a2 = v156;
          v82 = v138;
          if (v155 < v154 || v155 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v155 != v154)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v163 = a4;
        }

        a1 = v80 + v81;
        v164 = a1;
      }

      while (a4 < v139 && a2 < v82);
    }
  }

LABEL_73:
  sub_1B4CDE024(&v164, &v163, &v162);
}