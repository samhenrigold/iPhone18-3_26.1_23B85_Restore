uint64_t sub_2541E7CDC@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for ThermostatAutomationEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for ThermostatAutomationEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E800C@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for ThermostatAutomationFailureEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for ThermostatAutomationFailureEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E833C@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  v22 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
    type metadata accessor for SomeAccessoryEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E866C@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent, &protocol conformance descriptor for EnergyKit.LoadEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for EnergyKit.LoadEvent);
    type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E899C@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  MEMORY[0x28223BE20](SessionEvent);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent, &protocol conformance descriptor for EnergyKit.LoadSessionEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for EnergyKit.LoadSessionEvent);
    type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E8CCC@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v20 = a5;
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  MEMORY[0x28223BE20](DailyDigestEvent);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_25424E848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D168();
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v13 + 32))(v15, v11, v12);
    v27 = a3;
    v28 = &type metadata for EventRecord.EncodedEvent;
    v25[0] = v21;
    v26 = a2;
    sub_254140660(a2, a3);
    v17 = sub_25424D148();
    sub_2541E42F8(v25, v15);
    v17(v24, 0);
  }

  sub_2541E9F08(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent);
  v18 = v23;
  v19 = v29;
  sub_25424D138();

  if (!v19)
  {
    sub_2541E90C4(v18, v20, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
    type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E8FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541E9064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2541E90C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

HomeKitEvents::EventRecord::Field_optional __swiftcall EventRecord.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25424E8E8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2541E91A0()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541E91FC(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_2541E923C(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t static EventRecord.recordZoneID(forHomeIdentifier:)(uint64_t a1)
{
  sub_2541E9344();
  type metadata accessor for Configuration();
  v3 = 0;
  static Configuration.zoneName(forHomeIdentifier:target:)(a1, &v3);
  sub_25424DCB8();
  return sub_25424E458();
}

unint64_t sub_2541E9344()
{
  result = qword_27F5BBF00;
  if (!qword_27F5BBF00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5BBF00);
  }

  return result;
}

uint64_t static EventRecord.energyKitZoneID(forHomeIdentifier:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Configuration();
  static Configuration.energyKitZoneUUID(forHomeIdentifier:)(a1, v5);
  sub_2541E9344();
  v12 = sub_25424D8D8();
  v13 = v6;
  v10 = 0x2D73746E657665;
  v11 = 0xE700000000000000;
  v10 = sub_25424DE78();
  v11 = v7;
  sub_25424DDD8();

  sub_25424DCB8();
  v8 = sub_25424E458();
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_2541E958C()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AD0](qword_25425E158[v1]);
  return sub_25424EC28();
}

uint64_t sub_2541E9614(uint64_t a1)
{
  v2 = *v1;
  sub_25424EBD8();
  MEMORY[0x259C06AD0](qword_25425E158[v2]);
  return sub_25424EC28();
}

BOOL EventRecord.DecodedEvent.isFake.getter()
{
  v1 = type metadata accessor for EventRecord.DecodedEvent(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541E8FFC(v0, v3, type metadata accessor for EventRecord.DecodedEvent);
  v4 = swift_getEnumCaseMultiPayload() == 1;
  sub_2541E9064(v3, type metadata accessor for EventRecord.DecodedEvent);
  return v4;
}

uint64_t EventRecord.DecodedEvent.isLegacySecurityEvent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SomeEvent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventRecord.DecodedEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541E8FFC(v1, v7, type metadata accessor for EventRecord.DecodedEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2541E9064(v7, type metadata accessor for EventRecord.DecodedEvent);
    v8 = 1;
  }

  else
  {
    sub_2541E90C4(v7, v4, type metadata accessor for SomeEvent);
    sub_2541DA834(v13);
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = (*(v10 + 32))(v9, v10);
    sub_2541E9064(v4, type metadata accessor for SomeEvent);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v8 & 1;
}

uint64_t EventRecord.EncodedEvent.data.getter()
{
  v1 = *(v0 + 8);
  sub_254140660(v1, *(v0 + 16));
  return v1;
}

unint64_t sub_2541E99DC()
{
  result = qword_27F5BB288;
  if (!qword_27F5BB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB288);
  }

  return result;
}

unint64_t sub_2541E9A34()
{
  result = qword_27F5BB290;
  if (!qword_27F5BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB290);
  }

  return result;
}

void sub_2541E9AB0(uint64_t a1)
{
  sub_25424D948();
  if (v1 <= 0x3F)
  {
    sub_25424D8B8();
    if (v2 <= 0x3F)
    {
      sub_2541BB238();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for EventRecord.DataType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventRecord.DataType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2541E9CCC(uint64_t a1)
{
  result = type metadata accessor for SomeEvent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FakeEvent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541E9D40(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && a1[24])
  {
    return (*a1 + 242);
  }

  v3 = *a1;
  v4 = v3 >= 0xF;
  v5 = v3 - 15;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2541E9D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 14;
    }
  }

  return result;
}

unint64_t sub_2541E9DD8()
{
  result = qword_27F5BB2B8;
  if (!qword_27F5BB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB2B8);
  }

  return result;
}

double sub_2541E9E2C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2542208F8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2542228C8();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_25424E848();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_25412DCA8((*(v9 + 56) + 32 * v7), a2);
    sub_25414B868(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2541E9F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2541E9F58(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_2541BB238();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2541EA018(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 9;
  if (v8 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((v11 + ((v9 + 48) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v8 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v19 = v17 - 1;
    if (v13)
    {
      v19 = 0;
      v20 = *a1;
    }

    else
    {
      v20 = 0;
    }

    return v8 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = *(a1 + v12);
    if (v17)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v21 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;
  if (v7 < 0x7FFFFFFF)
  {
    v23 = *((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  else
  {
    v22 = *(v6 + 48);

    return v22(v21);
  }
}

void sub_2541EA1D8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 64) + 9;
  v12 = ((v11 + ((v9 + 48) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v15 = 0;
    v16 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((v11 + ((v9 + 48) & ~v9)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a3 - v10 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v12) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v12) = 0;
      }

      else if (v15)
      {
        *(a1 + v12) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v19 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;
      if (v8 < 0x7FFFFFFF)
      {
        v21 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v22 = (a2 - 1);
        }

        *v21 = v22;
      }

      else
      {
        v20 = *(v7 + 56);

        v20(v19, a2);
      }

      return;
    }
  }

  if (((v11 + ((v9 + 48) & ~v9)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((v11 + ((v9 + 48) & ~v9)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v10 + a2;
    bzero(a1, v12);
    *a1 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v12) = v17;
    }

    else
    {
      *(a1 + v12) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v12) = v17;
  }
}

uint64_t sub_2541EA418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v12 = &v14 - v11;
  (*(v5 + 16))(v8, v2, v4);
  sub_25424E208();
  return sub_2541EA564(v12, v4, v9, a2);
}

uint64_t sub_2541EA564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_2541B1AC4(&unk_286632898);
  a4[1] = v8;
  a4[2] = sub_2541B1AC4(&unk_2866328C0);
  a4[3] = v9;
  a4[4] = sub_2541B1AC4(&unk_2866328E8);
  a4[5] = v10;
  DigestEvent = type metadata accessor for AsyncCreateDigestEventSequence.AsyncIterator(0, a2, a3, v11);
  *(a4 + DigestEvent[12]) = 0;
  *(a4 + DigestEvent[13]) = 0;
  v13 = DigestEvent[14];
  v14 = DigestEvent[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))(a4 + v14, a1, AssociatedTypeWitness);
  *(a4 + v13) = sub_2541B09E0(0, 3, 0, MEMORY[0x277D84F90]);
  v16 = *(v18 + 8);

  return v16(a1, AssociatedTypeWitness);
}

uint64_t sub_2541EA6B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2541EA418(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_2541EA710(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_2541EA730, 0, 0);
}

uint64_t sub_2541EA730(uint64_t a1)
{
  v14 = v1;
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v2 + 56);
  *(v1 + 80) = v4;
  if (*(*(v3 + v4) + 16))
  {
    sub_2541EAE70(&v13);
    v6 = *(&v13 + 1);
    v5 = v13;
    if (*(&v13 + 1) >> 60 == 15)
    {
      sub_254134CF0(v13, *(&v13 + 1));
      sub_2541EADE4(*(*(v3 + v4) + 16) - 1, &v13);
      v6 = *(&v13 + 1);
      v5 = v13;
    }

    goto LABEL_6;
  }

  v7 = *(v2 + 48);
  *(v1 + 84) = v7;
  if (*(v3 + v7))
  {
    v5 = 0;
    v6 = 0xF000000000000000;
LABEL_6:
    v8 = *(v1 + 8);

    return v8(v5, v6);
  }

  sub_25424E1E8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_task_alloc();
  *(v1 + 64) = v12;
  *v12 = v1;
  v12[1] = sub_2541EA93C;

  return MEMORY[0x282200308](v1 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2541EA93C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_25414CDA0;
  }

  else
  {
    v2 = sub_2541EAA50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541EAA50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  if (v1 == 15)
  {
    v3 = *(v0 + 48);
    *(v2 + *(v0 + 84)) = 1;
    if (*(v2 + *(v3 + 52)) != 1)
    {
      v27 = 0;
      v28 = 0xF000000000000000;
      goto LABEL_17;
    }

    v4 = *(v0 + 56);
    v5 = (v4 + 16);
    v6 = (v4 + 24);
  }

  else
  {
    v31 = *(v0 + 24);
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = *(v2 + *(v0 + 80));
    sub_254140660(v7, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2541B09E0(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      v9 = sub_2541B09E0((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v12;
    v13 = &v9[16 * v11];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    sub_254140660(v31, *(&v31 + 1));
    v14 = *(v9 + 3);
    if ((v11 + 2) > (v14 >> 1))
    {
      v9 = sub_2541B09E0((v14 > 1), v11 + 2, 1, v9);
    }

    *(v9 + 2) = v11 + 2;
    *&v9[16 * v12 + 32] = v31;
    *(v0 + 40) = qword_25425E2D0[v1];
    v15 = sub_25424EA58();
    MEMORY[0x259C05CA0](v15);

    MEMORY[0x259C05CA0](44, 0xE100000000000000);
    v16 = sub_2541AF3E4(91, 0xE100000000000000);
    v18 = v17;
    v20 = *(v9 + 2);
    v19 = *(v9 + 3);
    if (v20 >= v19 >> 1)
    {
      v9 = sub_2541B09E0((v19 > 1), v20 + 1, 1, v9);
    }

    v21 = *(v0 + 80);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    sub_2541EAEE0(v1, v31, *(&v31 + 1));
    *(v9 + 2) = v20 + 1;
    v24 = &v9[16 * v20];
    *(v24 + 4) = v16;
    *(v24 + 5) = v18;
    *(v23 + v21) = v9;
    v25 = *(v22 + 52);
    v26 = *(v0 + 56);
    if (*(v23 + v25) == 1)
    {
      v5 = (v26 + 32);
      v6 = (v26 + 40);
    }

    else
    {
      *(v23 + v25) = 1;
      v6 = (v26 + 8);
      v5 = v26;
    }
  }

  v27 = *v5;
  v28 = *v6;
  sub_254140660(*v5, *v6);
LABEL_17:
  v29 = *(v0 + 8);

  return v29(v27, v28);
}

uint64_t sub_2541EAD08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25413439C;

  return sub_2541EA710(a2);
}

uint64_t sub_2541EADE4@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2541EADD0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

char *sub_2541EAE70@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 2);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      *a1 = *&v3[16 * v6 + 32];
      *(v3 + 2) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_2541EADD0(v3);
    v3 = result;
    v5 = *(result + 2);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541EAEE0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 15)
  {
    return sub_254134D04(a2, a3);
  }

  return result;
}

uint64_t sub_2541EAEFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
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

uint64_t sub_2541EAF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2541EAFB0()
{
  result = qword_27F5BB3E0;
  if (!qword_27F5BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB3E0);
  }

  return result;
}

unint64_t sub_2541EB008()
{
  result = qword_27F5BB3E8;
  if (!qword_27F5BB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB3E8);
  }

  return result;
}

uint64_t sub_2541EB05C(char a1)
{
  result = *v1;
  v4 = v1[1];
  if ((a1 & 1) == 0)
  {
    result = sub_254134D04(result, v4);
    *v1 = xmmword_254252DC0;
LABEL_13:
    v1[2] = 0;
    return result;
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
LABEL_12:
      result = sub_25424D478();
      goto LABEL_13;
    }

    result = *(result + 16);
    v6 = *(*v1 + 24);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    result = result;
    v6 = *v1 >> 32;
  }

  if (v6 >= result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2541EB0F4(uint64_t result)
{
  v2 = result;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *v1;
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (v4 < 0)
      {
        v11 = 0;
LABEL_21:
        sub_2541347C8(v11, v1[2], v5, v3);
        result = sub_25424D4D8();
        v1[2] = v4 + 1;
        return result;
      }

      goto LABEL_15;
    }

    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v4 >= v10)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (!v6)
  {
    if (v4 >= BYTE6(v3))
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_23;
  }

  if (v4 < HIDWORD(v5) - v5)
  {
LABEL_11:
    if (v6)
    {
      if (v6 == 2)
      {
        v11 = *(v5 + 16);
      }

      else
      {
        v11 = v5;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

LABEL_15:
  v12 = v1[2];

  return sub_25413482C(v12, v12, v2);
}

uint64_t sub_2541EB1F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  v6 = v5;
  v8 = v5[2];
  if (v8 < a2)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v9 = result;
  result = sub_25424E328();
  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, result))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v10 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v11 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (0x7FFFFFFFFFFFFFFFLL - result < v11)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_25424E328();
  v12 = __OFADD__(v11, result);
  v13 = v11 + result;
  if (v12)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v14 = result;
  v15 = *v5;
  v16 = v5[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_20;
    }

    v20 = v15 + 16;
    v18 = *(v15 + 16);
    v19 = *(v20 + 8);
    v12 = __OFSUB__(v19, v18);
    v21 = v19 - v18;
    if (v12)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v21 < v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!v17)
    {
      if (BYTE6(v16) >= v13)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    v12 = __OFSUB__(HIDWORD(v15), v15);
    v22 = HIDWORD(v15) - v15;
    if (v12)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v22 < v13)
    {
LABEL_18:
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_21:
        result = sub_25424D498();
        goto LABEL_22;
      }

      __break(1u);
LABEL_20:
      if (v13 <= 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  if (v10 != v14)
  {
    v23 = v8 - a2;
    if (__OFSUB__(v8, a2))
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (v23 >= 1)
    {
      if (__OFADD__(v9, v14))
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v24 = 0;
      v25 = *v5;
      v26 = v6[1];
      v27 = v26 >> 62;
      v55 = v9 + v14;
      if ((v26 >> 62) > 1)
      {
        if (v27 == 2)
        {
          v24 = *(v25 + 16);
        }
      }

      else if (v27)
      {
        v24 = v25;
      }

      v28 = sub_2541347C8(v24, a2, v25, v26);
      result = sub_2541347C8(v24, v8, v25, v26);
      if (result < v28)
      {
        goto LABEL_99;
      }

      result = sub_25424D4B8();
      v30 = v55 + v23;
      if (__OFADD__(v55, v23))
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v30 < v55)
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v31 = 0;
      v32 = *v6;
      v33 = v6[1];
      v34 = v33 >> 62;
      v53 = v29;
      v54 = result;
      if ((v33 >> 62) > 1)
      {
        if (v34 == 2)
        {
          v31 = *(v32 + 16);
        }
      }

      else if (v34)
      {
        v31 = v32;
      }

      v35 = sub_2541347C8(v31, v55, v32, v33);
      result = sub_2541347C8(v31, v30, v32, v33);
      if (result < v35)
      {
        goto LABEL_102;
      }

      sub_2541EFE04(v54, v53, v6, v35, result);
      result = sub_254134D04(v54, v53);
    }
  }

  if (v14 < 1)
  {
    goto LABEL_51;
  }

  v36 = v9 + v14;
  if (__OFADD__(v9, v14))
  {
    goto LABEL_94;
  }

  if (v36 < v9)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v37 = 0;
  v38 = *v6;
  v39 = v6[1];
  v40 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    if (v40 == 2)
    {
      v37 = *(v38 + 16);
    }
  }

  else if (v40)
  {
    v37 = v38;
  }

  v41 = sub_2541347C8(v37, v9, *v6, v6[1]);
  result = sub_2541347C8(v37, v36, v38, v39);
  if (result < v41)
  {
    goto LABEL_96;
  }

  result = sub_25424D4E8();
LABEL_51:
  v6[2] = v13;
  if (v13 >= v8)
  {
    return result;
  }

  v42 = *v6;
  v43 = v6[1];
  v44 = v43 >> 62;
  if ((v43 >> 62) <= 1)
  {
    if (v44)
    {
      if (__OFSUB__(HIDWORD(v42), v42))
      {
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if (v13 >= HIDWORD(v42) - v42)
      {
        return result;
      }
    }

    else if (v13 >= BYTE6(v43))
    {
      return result;
    }

    goto LABEL_62;
  }

  if (v44 == 2)
  {
    v46 = *(v42 + 16);
    v45 = *(v42 + 24);
    v12 = __OFSUB__(v45, v46);
    v47 = v45 - v46;
    if (v12)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v13 >= v47)
    {
      return result;
    }

LABEL_62:
    if (v44 == 2)
    {
      v50 = *(v42 + 16);
      v49 = *(v42 + 24);
      v12 = __OFSUB__(v49, v50);
      v48 = v49 - v50;
      if (!v12)
      {
LABEL_72:
        if (v48 < v8)
        {
          v8 = v48;
        }

        goto LABEL_74;
      }

      __break(1u);
    }

    else if (v44 == 1)
    {
      LODWORD(v48) = HIDWORD(v42) - v42;
      if (__OFSUB__(HIDWORD(v42), v42))
      {
LABEL_110:
        __break(1u);
        return result;
      }

      v48 = v48;
      goto LABEL_72;
    }

    v48 = BYTE6(v43);
    goto LABEL_72;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    return result;
  }

  v8 &= v8 >> 63;
LABEL_74:
  if (v8 < v13)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v13 == v8)
  {
    return result;
  }

  v51 = 0;
  if (v44 > 1)
  {
    if (v44 == 2)
    {
      v51 = *(v42 + 16);
    }
  }

  else if (v44)
  {
    v51 = v42;
  }

  v52 = sub_2541347C8(v51, v13, v42, v43);
  result = sub_2541347C8(v51, v8, v42, v43);
  if (result < v52)
  {
    goto LABEL_108;
  }

  if (v52 < 0)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  return sub_25424D478();
}

void (*sub_2541EB6C0(void (*result)(), uint64_t *a2))()
{
  v3 = *a2;
  if (v3 >= v2[2])
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *v2;
    v6 = v2[1] >> 62;
    if (v6 > 1)
    {
      v7 = 0;
      if (v6 == 2)
      {
        v7 = *(v5 + 16);
      }
    }

    else if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    sub_2541347C8(v7, v3, *v2, v2[1]);
    *v4 = sub_25424D4C8();
    return nullsub_1;
  }

  return result;
}

uint64_t *sub_2541EB764@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  if (*result < 0 || (v4 = result[1], v2[2] < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = *v2;
    v5 = v2[1];
    v7 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      v8 = 0;
      if (v7 == 2)
      {
        v8 = *(v6 + 16);
      }
    }

    else if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_2541347C8(v8, *result, *v2, v2[1]);
    result = sub_2541347C8(v8, v4, v6, v5);
    if (result >= v9)
    {
      result = sub_25424D4B8();
      *a2 = result;
      a2[1] = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541EB82C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v4;
  return sub_254140660(v2, v3);
}

uint64_t sub_2541EB854(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
      return result;
    }

    if (a5 <= result)
    {
      v5 = result;
    }

    else
    {
      v5 = a5;
    }

    if (v5 - result > (a2 - 1))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (!__CFADD__(a2, result & ~(result >> 63)))
  {
    __break(1u);
    return result;
  }

LABEL_10:
  result += a2;
  return result;
}

uint64_t sub_2541EB890(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    v10 = result - a3;
    if (result - a3 >= (result & ~(result >> 63)))
    {
      v10 = result & ~(result >> 63);
    }

    if (v10 >= ~a2)
    {
      v10 = ~a2;
    }

    if (v10 > 1)
    {
      v15 = v10 & 0x7FFFFFFFFFFFFFFELL;
      v11 = -v15;
      result -= v15;
      do
      {
        v15 -= 2;
      }

      while (v15);
    }

    else
    {
      v11 = 0;
    }

    while (a3 != result)
    {
      if (result-- < 1)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      if (--v11 <= a2)
      {
        return result;
      }
    }

    return 0;
  }

  if (a2)
  {
    if (a6 <= result)
    {
      v6 = result;
    }

    else
    {
      v6 = a6;
    }

    v7 = v6 - result;
    if (v6 - result >= (a2 - 1))
    {
      v7 = a2 - 1;
    }

    if (v7 >= a3 - result)
    {
      v7 = a3 - result;
    }

    if (v7 + 1 > 2)
    {
      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFELL) + result;
      v12 = v7 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v12 -= 2;
      }

      while (v12);
    }

    else
    {
      v8 = 0;
      v9 = result;
    }

    v13 = v8 + result - v6;
    v14 = a2 - v8;
    result = v9;
    while (a3 != result)
    {
      if (!v13)
      {
        __break(1u);
        goto LABEL_34;
      }

      ++result;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2541EB9A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  v5 = a2 < result;
  if (a2 <= result)
  {
LABEL_11:
    if (!v5)
    {
      return 0;
    }

    v11 = ~a2 + result;
    if (v11 >= (result & ~(result >> 63)))
    {
      v11 = result & ~(result >> 63);
    }

    v12 = v11 + 1;
    if (v12 > 4)
    {
      v13 = v12 & 3;
      if ((v12 & 3) == 0)
      {
        v13 = 4;
      }

      v14 = v12 - v13;
      result -= v14;
      v15 = 0uLL;
      v16.i64[0] = -1;
      v16.i64[1] = -1;
      v17 = 0uLL;
      do
      {
        v15 = vaddq_s64(v15, v16);
        v17 = vaddq_s64(v17, v16);
        v14 -= 4;
      }

      while (v14);
      v6 = vaddvq_s64(vpaddq_s64(v15, v17));
    }

    else
    {
      v6 = 0;
    }

    while (1)
    {
      v5 = result-- < 1;
      if (v5)
      {
        break;
      }

      --v6;
      if (a2 == result)
      {
        return v6;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v7 = ~result + a2;
  if (a5 <= result)
  {
    v8 = result;
  }

  else
  {
    v8 = a5;
  }

  v9 = v8 - result;
  if (v7 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = ~result + a2;
  }

  if (v10 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v5 = v9 < v7;
    if (v9 > v7)
    {
      return v6;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_2541EBA70(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_2541EBA8C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2541EBAA8(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_2541EBAC4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2541EBAE4(void *result)
{
  if (*result >= *(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_2541EBB04@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  return result;
}

void *sub_2541EBB18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_2541826A4(v3, 0);
  v1 = sub_2541D0A18(v6, (v4 + 4), v3, v1, v2, v3);
  sub_254134D04(v6[0], v6[1]);
  if (v1 != v3)
  {
    __break(1u);
LABEL_4:
    sub_254134D04(v1, v2);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t *sub_2541EBBB8@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  if (*result < 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

uint64_t *sub_2541EBBD0(uint64_t *result)
{
  if (*result < 1)
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_2541EBBE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2541EB890(*a1, a2, *a3, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

double sub_2541EBC28@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_254252DC0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_2541EBC3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2541EB1F8(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

char *sub_2541EBCBC@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = xmmword_254252DC0;
  if (!a2)
  {
    goto LABEL_4;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    result = sub_2541EBD64(a2, *result);
    v4 = xmmword_254252DC0;
LABEL_4:
    *a3 = v4;
    *(a3 + 16) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2541EBD64(uint64_t result, char a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = v2;
    v4 = a2;
    v5 = result;
    v6 = result & ~(result >> 63);
    do
    {
      if (!v6)
      {
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
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
      }

      v7 = v3[1];
      v8 = v3[2];
      v9 = *v3;
      v10 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v10 == 2)
        {
          v12 = *(v9 + 16);
          v11 = *(v9 + 24);
          v13 = __OFSUB__(v11, v12);
          v14 = v11 - v12;
          if (v13)
          {
            goto LABEL_69;
          }

          if (v8 < v14)
          {
            goto LABEL_17;
          }
        }

        else if (v8 < 0)
        {
          v16 = v3[2];
          goto LABEL_27;
        }
      }

      else if (v10)
      {
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_70;
        }

        if (v8 < HIDWORD(v9) - v9)
        {
LABEL_17:
          if (v10)
          {
            if (v10 == 2)
            {
              v15 = *(v9 + 16);
              v16 = v15 + v8;
              if (__OFADD__(v15, v8))
              {
                goto LABEL_67;
              }
            }

            else
            {
              v16 = v9 + v8;
              if (__OFADD__(v9, v8))
              {
                goto LABEL_67;
              }
            }
          }

          else
          {
            v16 = v3[2];
          }

LABEL_27:
          if (v10 > 1)
          {
            if (v10 == 2)
            {
              v17 = *(v9 + 16);
              v18 = *(v9 + 24);
            }

            else
            {
              v18 = 0;
              v17 = 0;
            }
          }

          else if (v10)
          {
            v17 = v9;
            v18 = v9 >> 32;
          }

          else
          {
            v17 = 0;
            v18 = BYTE6(v7);
          }

          if (v18 < v16 || v16 < v17)
          {
            goto LABEL_68;
          }

          if (v10 > 1)
          {
            if (v10 != 2)
            {
              goto LABEL_80;
            }

            v20 = v7 & 0x3FFFFFFFFFFFFFFFLL;

            sub_254134D04(v9, v7);
            *v3 = xmmword_254252DC0;
            sub_254134D04(0, 0xC000000000000000);
            if (v16 < *(v9 + 16))
            {
              goto LABEL_71;
            }

            if (v16 >= *(v9 + 24))
            {
              goto LABEL_74;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = *(v9 + 16);
              v34 = *(v9 + 24);
              if (sub_25424D268() && __OFSUB__(v21, sub_25424D298()))
              {
                goto LABEL_79;
              }

              if (__OFSUB__(v34, v21))
              {
                goto LABEL_77;
              }

              sub_25424D2B8();
              swift_allocObject();
              v27 = sub_25424D248();

              v20 = v27;
              v4 = a2;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = *(v9 + 16);
              v29 = *(v9 + 24);
              sub_25424D468();
              v30 = swift_allocObject();
              *(v30 + 16) = v28;
              *(v30 + 24) = v29;
              v4 = a2;

              v9 = v30;
            }

            sub_25424D238();
            v31 = sub_25424D268();
            if (!v31)
            {
              goto LABEL_82;
            }

            v32 = v31;
            result = sub_25424D298();
            if (__OFSUB__(v16, result))
            {
              goto LABEL_76;
            }

            *(v32 + v16 - result) = v4;
            v26 = v20 | 0x8000000000000000;
          }

          else
          {
            if (!v10)
            {
              result = sub_254134D04(v9, v7);
              v36 = v9;
              LOWORD(v37) = v7;
              BYTE2(v37) = BYTE2(v7);
              HIBYTE(v37) = BYTE3(v7);
              LOBYTE(v38) = BYTE4(v7);
              HIBYTE(v38) = BYTE5(v7);
              v39 = BYTE6(v7);
              if (v16 >= BYTE6(v7))
              {
                goto LABEL_72;
              }

              v4 = a2;
              *(&v36 + v16) = a2;
              v19 = v33 & 0xF00000000000000 | v37 | ((v38 | (v39 << 16)) << 32);
              *v3 = v36;
              v3[1] = v19;
              v33 = v19;
              goto LABEL_64;
            }

            v22 = v7 & 0x3FFFFFFFFFFFFFFFLL;

            sub_254134D04(v9, v7);
            *v3 = xmmword_254252DC0;
            sub_254134D04(0, 0xC000000000000000);
            if (v16 < v9 || v16 >= v9 >> 32)
            {
              goto LABEL_73;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {

              if (sub_25424D268() && __OFSUB__(v9, sub_25424D298()))
              {
                goto LABEL_78;
              }

              sub_25424D2B8();
              swift_allocObject();
              v23 = sub_25424D248();

              v22 = v23;
            }

            sub_25424D238();
            v24 = sub_25424D268();
            if (!v24)
            {
              goto LABEL_81;
            }

            v25 = v24;
            result = sub_25424D298();
            v4 = a2;
            if (__OFSUB__(v16, result))
            {
              goto LABEL_75;
            }

            *(v25 + v16 - result) = a2;
            v26 = v22 | 0x4000000000000000;
          }

          *v3 = v9;
          v3[1] = v26;
LABEL_64:
          v3[2] = v8 + 1;
          goto LABEL_5;
        }
      }

      else if (v8 < BYTE6(v7))
      {
        goto LABEL_17;
      }

      result = sub_25413482C(v3[2], v3[2], v4);
LABEL_5:
      --v6;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2541EC300@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2541EC32C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2541EC32C(uint64_t result)
{
  v2 = v1[2];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  if (v2 <= result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = *v1;
  v5 = v1[1] >> 62;
  if (v5 > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v4 + 16);
    }
  }

  else if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  sub_2541347C8(v6, v3, *v1, v1[1]);
  v7 = sub_25424D4C8();
  sub_2541355AC(v3, v3 + 1);
  return v7;
}

void sub_2541EC40C()
{
  v1 = v0[2];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 < 1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v2 = *v0;
  v3 = v0[1] >> 62;
  if (v3 > 1)
  {
    v4 = 0;
    if (v3 == 2)
    {
      v4 = *(v2 + 16);
    }
  }

  else if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  sub_2541347C8(v4, 0, *v0, v0[1]);
  sub_25424D4C8();
  sub_2541355AC(0, 1);
}

uint64_t sub_2541EC4A8(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_2541EB890(0, result, v1[2], *v1, v1[1], v1[2]);
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_2541355AC(0, result);
}

unint64_t sub_2541EC534()
{
  result = qword_27F5BB3F0;
  if (!qword_27F5BB3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BB3F8, &qword_25425E4A0);
    sub_2541EC5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB3F0);
  }

  return result;
}

unint64_t sub_2541EC5B8()
{
  result = qword_27F5BB400;
  if (!qword_27F5BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB400);
  }

  return result;
}

unint64_t sub_2541EC610()
{
  result = qword_27F5BB408;
  if (!qword_27F5BB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB408);
  }

  return result;
}

unint64_t sub_2541EC6AC()
{
  result = qword_27F5BB420;
  if (!qword_27F5BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB420);
  }

  return result;
}

unint64_t sub_2541EC754()
{
  result = qword_27F5BB430[0];
  if (!qword_27F5BB430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BB430);
  }

  return result;
}

uint64_t sub_2541EC7A8(uint64_t (*a1)(char *))
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v65 = xmmword_254252DC0;
  v66 = 0;
  sub_254140660(v3, v4);
  if (v5)
  {
    v48 = v1;
    v6 = 0;
    v7 = v4 >> 62;
    v8 = v3;
    v57 = BYTE6(v4);
    v53 = v4;
    v58 = v5;
    while (1)
    {
      if (v6 >= v5)
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
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
LABEL_127:
        __break(1u);
      }

      if (v7 > 1)
      {
        if (v7 != 2)
        {
          v10 = 0;
          v9 = 0;
          goto LABEL_16;
        }

        v9 = *(v3 + 16);
        v11 = v9 + v6;
        if (__OFADD__(v9, v6))
        {
          goto LABEL_111;
        }

        v10 = *(v3 + 24);
      }

      else
      {
        if (!v7)
        {
          v9 = 0;
          v10 = v57;
LABEL_16:
          v11 = v6;
          goto LABEL_17;
        }

        v11 = v8 + v6;
        if (__OFADD__(v8, v6))
        {
          goto LABEL_110;
        }

        v10 = v3 >> 32;
        v9 = v8;
      }

LABEL_17:
      if (v11 < v9 || v10 < v11)
      {
        goto LABEL_102;
      }

      if (v7 > 1)
      {
        if (v7 != 2)
        {
          goto LABEL_125;
        }

        if (v11 < *(v3 + 16))
        {
          goto LABEL_105;
        }

        if (v11 >= *(v3 + 24))
        {
          goto LABEL_107;
        }

        v13 = sub_25424D268();
        if (!v13)
        {
          goto LABEL_127;
        }

        v14 = v13;
        v15 = sub_25424D298();
        v16 = v11 - v15;
        if (__OFSUB__(v11, v15))
        {
          goto LABEL_109;
        }

        goto LABEL_34;
      }

      if (v7)
      {
        if (v11 < v8 || v11 >= v3 >> 32)
        {
          goto LABEL_106;
        }

        v17 = sub_25424D268();
        if (!v17)
        {
          goto LABEL_126;
        }

        v14 = v17;
        v18 = sub_25424D298();
        v16 = v11 - v18;
        if (__OFSUB__(v11, v18))
        {
          goto LABEL_108;
        }

LABEL_34:
        v12 = *(v14 + v16);
        goto LABEL_35;
      }

      if (v11 >= v57)
      {
        goto LABEL_104;
      }

      v60 = v3;
      LOWORD(v61) = v4;
      BYTE2(v61) = BYTE2(v4);
      HIBYTE(v61) = BYTE3(v4);
      LOBYTE(v62) = BYTE4(v4);
      HIBYTE(v62) = BYTE5(v4);
      v12 = *(&v60 + v11);
LABEL_35:
      v19 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_103;
      }

      v64 = v12;
      v20 = a1(&v64);
      if (v2)
      {
        sub_254134D04(v65, *(&v65 + 1));
        return sub_254134D04(v3, v4);
      }

      if (v20)
      {
        goto LABEL_5;
      }

      v22 = *(&v65 + 1);
      result = v66;
      v23 = v65;
      v24 = *(&v65 + 1) >> 62;
      if ((*(&v65 + 1) >> 62) > 1)
      {
        if (v24 == 2)
        {
          v26 = *(v65 + 16);
          v25 = *(v65 + 24);
          v27 = __OFSUB__(v25, v26);
          v28 = v25 - v26;
          if (v27)
          {
            goto LABEL_115;
          }

          if (v66 < v28)
          {
            goto LABEL_48;
          }
        }

        else if (v66 < 0)
        {
          v30 = v66;
          goto LABEL_58;
        }
      }

      else if (v24)
      {
        if (__OFSUB__(DWORD1(v65), v65))
        {
          goto LABEL_114;
        }

        if (v66 < DWORD1(v65) - v65)
        {
LABEL_48:
          if (v24)
          {
            if (v24 == 2)
            {
              v29 = *(v65 + 16);
              v30 = v29 + v66;
              if (__OFADD__(v29, v66))
              {
                goto LABEL_112;
              }
            }

            else
            {
              v30 = v65 + v66;
              if (__OFADD__(v65, v66))
              {
                goto LABEL_112;
              }
            }
          }

          else
          {
            v30 = v66;
          }

LABEL_58:
          if (v24 > 1)
          {
            if (v24 == 2)
            {
              v31 = *(v65 + 16);
              v32 = *(v65 + 24);
            }

            else
            {
              v32 = 0;
              v31 = 0;
            }
          }

          else if (v24)
          {
            v31 = v65;
            v32 = v65 >> 32;
          }

          else
          {
            v31 = 0;
            v32 = BYTE14(v65);
          }

          if (v32 < v30 || v30 < v31)
          {
            goto LABEL_113;
          }

          v56 = v30;
          v55 = v12;
          v54 = v66;
          if (v24 > 1)
          {
            if (v24 != 2)
            {
              __break(1u);
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
              return result;
            }

            v33 = *(&v65 + 1) & 0x3FFFFFFFFFFFFFFFLL;

            sub_254134D04(v23, v22);
            sub_254134D04(0, 0xC000000000000000);
            if (v56 < *(v23 + 16))
            {
              goto LABEL_116;
            }

            if (v56 >= *(v23 + 24))
            {
              goto LABEL_119;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = *(v23 + 24);
              v51 = *(v23 + 16);
              if (sub_25424D268())
              {
                v34 = sub_25424D298();
                v35 = v51;
                if (__OFSUB__(v51, v34))
                {
                  goto LABEL_124;
                }
              }

              else
              {
                v35 = v51;
              }

              if (__OFSUB__(v50, v35))
              {
                goto LABEL_122;
              }

              sub_25424D2B8();
              swift_allocObject();
              v41 = sub_25424D248();

              v33 = v41;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = *(v23 + 16);
              v52 = *(v23 + 24);
              sub_25424D468();
              v43 = swift_allocObject();
              *(v43 + 16) = v42;
              *(v43 + 24) = v52;

              v23 = v43;
            }

            sub_25424D238();
            result = sub_25424D268();
            if (!result)
            {
              goto LABEL_130;
            }

            v44 = result;
            v45 = sub_25424D298();
            if (__OFSUB__(v56, v45))
            {
              goto LABEL_121;
            }

            *(v44 + v56 - v45) = v55;
            v40 = v33 | 0x8000000000000000;
          }

          else
          {
            if (!v24)
            {
              sub_254134D04(v65, *(&v65 + 1));
              v60 = v23;
              LOWORD(v61) = v22;
              BYTE2(v61) = BYTE2(v22);
              HIBYTE(v61) = BYTE3(v22);
              LOBYTE(v62) = BYTE4(v22);
              HIBYTE(v62) = BYTE5(v22);
              v63 = BYTE6(v22);
              if (v56 >= BYTE6(v22))
              {
                goto LABEL_117;
              }

              *(&v60 + v56) = v12;
              *&v65 = v60;
              *(&v65 + 1) = v49 & 0xF00000000000000 | v61 | ((v62 | (v63 << 16)) << 32);
              v49 = *(&v65 + 1);
              goto LABEL_96;
            }

            v36 = *(&v65 + 1) & 0x3FFFFFFFFFFFFFFFLL;

            sub_254134D04(v23, v22);
            sub_254134D04(0, 0xC000000000000000);
            if (v56 < v23 || v56 >= v23 >> 32)
            {
              goto LABEL_118;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {

              if (sub_25424D268() && __OFSUB__(v23, sub_25424D298()))
              {
                goto LABEL_123;
              }

              sub_25424D2B8();
              swift_allocObject();
              v37 = sub_25424D248();

              v36 = v37;
            }

            sub_25424D238();
            result = sub_25424D268();
            if (!result)
            {
              goto LABEL_129;
            }

            v38 = result;
            v39 = sub_25424D298();
            if (__OFSUB__(v56, v39))
            {
              goto LABEL_120;
            }

            *(v38 + v56 - v39) = v55;
            v40 = v36 | 0x4000000000000000;
          }

          *&v65 = v23;
          *(&v65 + 1) = v40;
LABEL_96:
          v4 = v53;
          v66 = v54 + 1;
          goto LABEL_5;
        }
      }

      else if (v66 < BYTE14(v65))
      {
        goto LABEL_48;
      }

      sub_25413482C(v66, v66, v12);
LABEL_5:
      ++v6;
      v8 = v3;
      v5 = v58;
      if (v19 == v58)
      {
        v47 = *(&v65 + 1);
        v46 = v65;
        v5 = v66;
        v1 = v48;
        goto LABEL_100;
      }
    }
  }

  v46 = 0;
  v47 = 0xC000000000000000;
LABEL_100:
  sub_254134D04(*v1, v1[1]);
  result = sub_254134D04(v3, v4);
  *v1 = v46;
  v1[1] = v47;
  v1[2] = v5;
  return result;
}

void *sub_2541ECFB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DC0, &qword_254253EF8);
  v4 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
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

void *sub_2541ED0AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2E0, &qword_254258C48);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0) - 8);
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

uint64_t sub_2541ED1B4(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result <= 0xE)
    {
      return sub_2541BE9F8(result);
    }

    else
    {
      sub_25424D2B8();
      swift_allocObject();
      sub_25424D278();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25424D468();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void sub_2541ED26C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_2541ED2D8(void *a1, uint64_t a2)
{
  v4 = sub_25424D8E8();
  v6[4] = sub_2541ED5B4;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2541ED26C;
  v6[3] = &block_descriptor_13;
  v5 = _Block_copy(v6);

  [a1 ensureDigestsWithHomeIdentifier:v4 reply:v5];
  _Block_release(v5);
}

uint64_t sub_2541ED3BC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254252CB8;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_2541ED628;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541ED5D4(uint64_t a1, id *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  return sub_25424E078();
}

uint64_t sub_2541ED664@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((a2 - 0x10000000) < 0xFFFFFFFFF0000001)
  {
    __break(1u);
  }

  else
  {
    (*(*(a3 - 8) + 32))(a5, result);
    result = type metadata accessor for AsyncCompressionStream(0, a3, a4, v9);
    *(a5 + *(result + 40)) = a2;
  }

  return result;
}

uint64_t sub_2541ED6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = &v16 - v13;
  (*(v7 + 16))(v10, v3, v6);
  sub_25424E208();
  return sub_2541EDA3C(v14, *(v3 + *(a1 + 40)), v6, v11, a2);
}

uint64_t sub_2541ED850(uint64_t a1, uint64_t (*a2)(__int128 *, __int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 < 0 || a6 < a1)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!a1)
  {
    return (a2)(0, 0, a3, a4, a5);
  }

  v15 = xmmword_254252DC0;
  v14 = 0;
  sub_2541CF898(a1, a4, a5, a6, &v15, &v14, a1);
  v7 = *(&v15 + 1);
  v8 = v15;
  sub_254140660(v15, *(&v15 + 1));
  sub_254134D04(v8, v7);
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      *&v15 = v8;
      WORD4(v15) = v7;
      BYTE10(v15) = BYTE2(v7);
      BYTE11(v15) = BYTE3(v7);
      BYTE12(v15) = BYTE4(v7);
      BYTE13(v15) = BYTE5(v7);
      v10 = (&v15 + BYTE6(v7));
LABEL_13:
      a2(&v15, v10);
      return sub_254134D04(v8, v7);
    }

    v12 = v8;
    v13 = v8 >> 32;
    if (v8 >> 32 >= v8)
    {
      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
  }

  if (v9 != 2)
  {
    *(&v15 + 6) = 0;
    *&v15 = 0;
    v10 = &v15;
    goto LABEL_13;
  }

  v12 = *(v8 + 16);
  v13 = *(v8 + 24);
LABEL_11:
  sub_2541EFD5C(v12, v13, a2);
  return sub_254134D04(v8, v7);
}

uint64_t sub_2541EDA3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for AsyncCompressionStream.AsyncIterator(0, a3, a4, a4);
  v9 = (a5 + v8[9]);
  v10 = MEMORY[0x277D84F90];
  v9[1] = 0;
  v9[2] = 0;
  *v9 = v10;
  *(a5 + v8[12]) = xmmword_254252DB0;
  *(a5 + v8[13]) = xmmword_254252DB0;
  v11 = a5 + v8[14];
  *v11 = xmmword_254252DB0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  result = (*(v13 + 16))(a5, a1, AssociatedTypeWitness);
  *(a5 + v8[11]) = a2;
  if (a2 - 0x10000000 < 0xFFFFFFFFF0000001)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_2541A5998(a2);
    v17 = v16;
    (*(v13 + 8))(a1, AssociatedTypeWitness);
    result = sub_254134CF0(*v11, *(v11 + 8));
    *v11 = v15;
    *(v11 + 8) = v17;
  }

  return result;
}

uint64_t sub_2541EDB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2541ED6F8(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_2541EDBF4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2541EDC14, 0, 0);
}

uint64_t sub_2541EDC14(uint64_t a1)
{
  sub_25424E1E8();
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v3 + 56);
  *(v1 + 80) = v4;
  v5 = v2 + v4;
  v6 = *(v5 + 8);
  if (v6 >> 60 == 15)
  {
    *(v1 + 48) = *(v3 + 24);
    *(v1 + 56) = *(v3 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = swift_task_alloc();
    *(v1 + 64) = v9;
    *v9 = v1;
    v9[1] = sub_2541EDE04;

    return MEMORY[0x282200308](v1 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v10 = *v5;
    sub_254140660(*v5, *(v5 + 8));
    v12 = (v2 + *(type metadata accessor for AsyncCompressionStream.AsyncIterator(0, *(v3 + 16), *(v3 + 24), v11) + 56));
    v13 = *v12;
    v14 = v12[1];
    *v12 = xmmword_254252DB0;
    sub_254134CF0(v13, v14);
    v15 = *(v1 + 8);

    return v15(v10, v6);
  }
}

uint64_t sub_2541EDE04()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_25414CDA0;
  }

  else
  {
    v2 = sub_2541EDF18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541EDF18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v4 + 36);
  if (v2 >> 60 != 15)
  {
    v8 = (v3 + v5);
    v9 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v9 != 2 || *(v1 + 16) == *(v1 + 24))
      {
        goto LABEL_21;
      }
    }

    else if (v9)
    {
      if (v1 == v1 >> 32)
      {
LABEL_21:
        sub_254134CF0(*(v0 + 16), *(v0 + 24));
        goto LABEL_28;
      }
    }

    else if ((v2 & 0xFF000000000000) == 0)
    {
      goto LABEL_21;
    }

    v42 = *(v0 + 16);
    v10 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_2541B09E0(0, *(v10 + 16) + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v14 = *(v10 + 16);
    v15 = *(v10 + 24);
    v16 = v14 + 1;
    v17 = v42;
    if (v14 >= v15 >> 1)
    {
      v40 = v10;
      v41 = *(v10 + 16);
      isUniquelyReferenced_nonNull_native = sub_2541B09E0((v15 > 1), v14 + 1, 1, v40);
      v17 = v42;
      v14 = v41;
      v10 = isUniquelyReferenced_nonNull_native;
    }

    *(v10 + 16) = v16;
    *(v10 + 16 * v14 + 32) = v17;
    *v8 = v10;
    if (v9 == 2)
    {
      v24 = *(v17 + 16);
      v25 = *(v17 + 24);
      v26 = __OFSUB__(v25, v24);
      v18 = v25 - v24;
      if (!v26)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (v9 == 1)
    {
      LODWORD(v18) = DWORD1(v17) - v17;
      if (__OFSUB__(DWORD1(v17), v17))
      {
        goto LABEL_43;
      }

      v18 = v18;
LABEL_26:
      v27 = v8[2];
      v26 = __OFADD__(v27, v18);
      v28 = v27 + v18;
      if (!v26)
      {
        v8[2] = v28;
LABEL_28:
        v4 = *(v0 + 32);
        v3 = *(v0 + 40);
        v6 = v8[2];
        v7 = *(v3 + *(v4 + 44));
        if (v6 < v7)
        {
LABEL_33:
          v30 = (v3 + *(v0 + 80));
          v21 = v30[1];
          if (v21 >> 60 == 15)
          {
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v33 = swift_task_alloc();
            *(v0 + 64) = v33;
            *v33 = v0;
            v33[1] = sub_2541EDE04;
            isUniquelyReferenced_nonNull_native = v0 + 16;
            v12 = AssociatedTypeWitness;
            v13 = AssociatedConformanceWitness;

            return MEMORY[0x282200308](isUniquelyReferenced_nonNull_native, v12, v13);
          }

          v20 = *v30;
          v4 = *(v0 + 32);
          goto LABEL_38;
        }

LABEL_29:
        if (v6 >= v7)
        {
          v29 = v7;
        }

        else
        {
          v29 = v6;
        }

        sub_2541EE29C(v29, v4);
        v3 = *(v0 + 40);
        goto LABEL_33;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      return MEMORY[0x282200308](isUniquelyReferenced_nonNull_native, v12, v13);
    }

    v18 = BYTE6(v2);
    goto LABEL_26;
  }

  v6 = *(v3 + v5 + 16);
  if (v6)
  {
    v7 = *(v3 + *(v4 + 44));
    goto LABEL_29;
  }

  v19 = (v3 + *(v0 + 80));
  v20 = *v19;
  v21 = v19[1];
  if (v21 >> 60 != 15)
  {
LABEL_38:
    sub_254140660(v20, v21);
    v35 = (v3 + *(type metadata accessor for AsyncCompressionStream.AsyncIterator(0, *(v4 + 16), *(v4 + 24), v34) + 56));
    v36 = *v35;
    v37 = v35[1];
    *v35 = xmmword_254252DB0;
    sub_254134CF0(v36, v37);
    goto LABEL_39;
  }

  v22 = v3 + *(v4 + 48);
  sub_254134CF0(*v22, *(v22 + 8));
  *v22 = v20;
  *(v22 + 8) = v21;
  v23 = v3 + *(v4 + 52);
  sub_254134CF0(*v23, *(v23 + 8));
  *v23 = v20;
  *(v23 + 8) = v21;
LABEL_39:
  v38 = *(v0 + 8);

  return v38(v20, v21);
}

uint64_t sub_2541EE29C(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  v10 = v3 + *(a2 + 52);
  v11 = *(v10 + 8);
  if (v11 >> 60 != 15)
  {
    v18 = *v10;
    v19 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_12;
      }

      result = *(v18 + 16);
      v20 = *(v18 + 24);
    }

    else
    {
      if (!v19)
      {
        goto LABEL_12;
      }

      result = v18;
      v20 = v18 >> 32;
    }

    if (v20 < result)
    {
      goto LABEL_66;
    }

    if (((v20 | result) & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_47:
    LODWORD(v41) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v41 = v41;
LABEL_50:
    result = v41 + 4;
    if (__OFADD__(v41, 4))
    {
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

    result = sub_2541EFFDC(result);
    *&v67 = result;
    *(&v67 + 1) = v53;
    if (v2 > 1)
    {
      if (v2 != 2)
      {
        goto LABEL_62;
      }

      v55 = *(v4 + 16);
      v54 = *(v4 + 24);
      result = v54 - v55;
      if (!__OFSUB__(v54, v55))
      {
LABEL_60:
        if (!(result >> 28))
        {
          goto LABEL_63;
        }

        __break(1u);
LABEL_62:
        LODWORD(result) = 0;
LABEL_63:
        v56 = sub_2541BE760(result);
        v58 = v57;
        sub_25424D528();
        sub_254134D04(v56, v58);
        sub_25424D528();
        sub_254134D04(v4, v6);
        v50 = *(&v67 + 1);
        v48 = v67;
LABEL_64:
        v59 = v7 + *(a2 + 56);
        sub_254134CF0(*v59, *(v59 + 8));
        *v59 = v48;
        *(v59 + 8) = v50;
        return sub_2541D0338(a1, v5);
      }

      __break(1u);
    }

    else if (!v2)
    {
      LODWORD(result) = BYTE6(v6);
      goto LABEL_63;
    }

    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_75;
    }

    result = HIDWORD(v4) - v4;
    goto LABEL_60;
  }

  v12 = *(v7 + *(a2 + 44));
  result = v12 + 4;
  if (__OFADD__(v12, 4))
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v14 = sub_2541B1BA0(result);
  v16 = v15;
  v17 = sub_254134CF0(*v10, *(v10 + 8));
  *v10 = v14;
  *(v10 + 8) = v16;
  while (1)
  {
    v21 = v7 + *(a2 + 48);
    if (*(v21 + 8) >> 60 == 15)
    {
      v22 = compression_encode_scratch_buffer_size(COMPRESSION_LZFSE);
      v23 = sub_2541B1BA0(v22);
      v25 = v24;
      v17 = sub_254134CF0(*v21, *(v21 + 8));
      *v21 = v23;
      *(v21 + 8) = v25;
    }

    v68 = 0;
    v5 = (v7 + *(a2 + 36));
    v27 = *v5;
    v26 = v5[1];
    v28 = v5[2];
    MEMORY[0x28223BE20](v17);
    v60[1] = *(a2 + 16);
    v61 = v7;
    v62 = &v68;
    v63 = a1;
    v64 = 2049;

    sub_2541ED850(a1, sub_2541F0080, v60, v27, v26, v28);

    v29 = v68;
    if (v68 >= 1 && v68 < a1)
    {
      break;
    }

    v34 = *v5;
    v35 = v5[1];
    v36 = v5[2];
    v67 = xmmword_254252DC0;
    v66 = 0;
    sub_2541CF898(a1, v34, v35, v36, &v67, &v66, a1);
    v6 = *(&v67 + 1);
    v4 = v67;
    sub_254140660(v67, *(&v67 + 1));
    result = sub_254134D04(v4, v6);
    v2 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v2 != 2)
      {
        goto LABEL_30;
      }

      v39 = *(v4 + 16);
      v38 = *(v4 + 24);
      v40 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (v40)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (!v2)
      {
        goto LABEL_30;
      }

      LODWORD(v37) = HIDWORD(v4) - v4;
      if (__OFSUB__(HIDWORD(v4), v4))
      {
        goto LABEL_72;
      }

      v37 = v37;
    }

    if (v37 > 0xFFFFFFF)
    {
      goto LABEL_68;
    }

LABEL_30:
    if (v2 <= 1)
    {
      if (v2)
      {
        goto LABEL_47;
      }

      v41 = BYTE6(v6);
      goto LABEL_50;
    }

    if (v2 != 2)
    {
      v41 = 0;
      goto LABEL_50;
    }

    v52 = *(v4 + 16);
    v51 = *(v4 + 24);
    v40 = __OFSUB__(v51, v52);
    v41 = v51 - v52;
    if (!v40)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_12:
    v17 = sub_25424D478();
  }

  if (v68 >> 28)
  {
    goto LABEL_67;
  }

  v30 = *(v10 + 8);
  if (v30 >> 60 == 15)
  {
    goto LABEL_76;
  }

  v31 = *v10;
  v32 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    v33 = 0;
    if (v32 == 2)
    {
      v33 = *(v31 + 16);
    }
  }

  else if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  result = sub_2541347C8(v33, 4, v31, v30);
  if (result < v33)
  {
    goto LABEL_69;
  }

  v42 = result;
  v65 = v7;
  v43 = a1;
  result = sub_2541BE760(v29 | 0x10000000);
  if (*(v10 + 8) >> 60 == 15)
  {
    goto LABEL_77;
  }

  v45 = result;
  v46 = v44;
  sub_2541EFE04(result, v44, v10, v33, v42);
  result = sub_254134D04(v45, v46);
  v47 = *(v10 + 8);
  if (v47 >> 60 == 15)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  result = sub_2541347C8(v42, v29, *v10, v47);
  if (result < v33)
  {
    goto LABEL_71;
  }

  if (*(v10 + 8) >> 60 != 15)
  {
    a1 = v43;
    v48 = sub_25424D4B8();
    v50 = v49;
    v7 = v65;
    goto LABEL_64;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_2541EE740(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = MEMORY[0x28223BE20](result);
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = v8;
    v11[6] = v4;
    v11[7] = v9;
    v12 = v10;
    result = type metadata accessor for AsyncCompressionStream.AsyncIterator(0, v5, v6, v8);
    if (*(a3 + *(result + 52) + 8) >> 60 != 15)
    {
      return sub_2541EF7E4(sub_2541F00A8, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_2541EE7F4(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4, const uint8_t *a5, size_t a6, compression_algorithm a7, uint64_t a8, uint64_t a9)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_29;
  }

  v13 = (a3 + *(type metadata accessor for AsyncCompressionStream.AsyncIterator(0, a8, a9, a4) + 48));
  v14 = v13[1];
  if (v14 >> 60 == 15)
  {
    goto LABEL_30;
  }

  v15 = *v13;
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 != 2)
    {
      *(&scratch_buffer + 7) = 0;
      *&scratch_buffer = 0;
      result = compression_encode_buffer((a1 + 4), a2 - a1, a5, a6, &scratch_buffer, a7);
      *a4 = result;
      return result;
    }

    src_sizea = a6;
    algorithma = a7;

    sub_254134D04(v15, v14);
    *&scratch_buffer = v15;
    *(&scratch_buffer + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
    *v13 = xmmword_254252DC0;
    sub_254134D04(0, 0xC000000000000000);
    sub_25424D428();
    v19 = scratch_buffer;
    v20 = *(scratch_buffer + 16);
    v21 = *(scratch_buffer + 24);
    result = sub_25424D268();
    if (!result)
    {
      __break(1u);
      goto LABEL_32;
    }

    v22 = result;
    v23 = sub_25424D298();
    v24 = v20 - v23;
    if (!__OFSUB__(v20, v23))
    {
      if (!__OFSUB__(v21, v20))
      {
        sub_25424D288();
        result = compression_encode_buffer((a1 + 4), a2 - a1, a5, src_sizea, (v22 + v24), algorithma);
        *a4 = result;
        v25 = *(&v19 + 1) | 0x8000000000000000;
        *v13 = v19;
LABEL_22:
        v13[1] = v25;
        return result;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  src_size = a6;
  v34 = a4;
  algorithm = a7;
  if (!v16)
  {
    sub_254134D04(v15, v14);
    *&scratch_buffer = v15;
    WORD4(scratch_buffer) = v14;
    BYTE10(scratch_buffer) = BYTE2(v14);
    BYTE11(scratch_buffer) = BYTE3(v14);
    BYTE12(scratch_buffer) = BYTE4(v14);
    BYTE13(scratch_buffer) = BYTE5(v14);
    BYTE14(scratch_buffer) = BYTE6(v14);
    result = compression_encode_buffer((a1 + 4), a2 - a1, a5, a6, &scratch_buffer, a7);
    *a4 = result;
    v18 = DWORD2(scratch_buffer) | ((WORD6(scratch_buffer) | (BYTE14(scratch_buffer) << 16)) << 32);
    *v13 = scratch_buffer;
    v13[1] = v18;
    return result;
  }

  v26 = v14 & 0x3FFFFFFFFFFFFFFFLL;

  sub_254134D04(v15, v14);
  *v13 = xmmword_254252DC0;
  sub_254134D04(0, 0xC000000000000000);
  v27 = v15 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v27 < v15)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    if (sub_25424D268() && __OFSUB__(v15, sub_25424D298()))
    {
      goto LABEL_28;
    }

    sub_25424D2B8();
    swift_allocObject();
    v28 = sub_25424D248();

    v26 = v28;
  }

  if (v27 < v15)
  {
    goto LABEL_24;
  }

  result = sub_25424D268();
  if (result)
  {
    v29 = result;
    v30 = sub_25424D298();
    v31 = v15 - v30;
    if (!__OFSUB__(v15, v30))
    {
      sub_25424D288();
      *v34 = compression_encode_buffer((a1 + 4), a2 - a1, a5, src_size, (v29 + v31), algorithm);

      v25 = v26 | 0x4000000000000000;
      *v13 = v15;
      goto LABEL_22;
    }

    goto LABEL_26;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2541EEBFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25413439C;

  return sub_2541EDBF4(a2);
}

uint64_t AsyncSequence<>.hmvCompressed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3, a1);
  v11 = type metadata accessor for AsyncCompressionStream(0, a1, a2, v10);
  a3[3] = v11;
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  result = (*(v7 + 32))(boxed_opaque_existential_1, v9, a1);
  *(boxed_opaque_existential_1 + *(v11 + 40)) = 0x8000;
  return result;
}

uint64_t sub_2541EEDEC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2541EEE84(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_2541EF314();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2541EEF40(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_2541EF0F0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
          v19[2] = 0;
        }

        else
        {
          v20 = (a2 - 1);
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

void sub_2541EF314()
{
  if (!qword_27F5BB538)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5BB538);
    }
  }
}

unint64_t sub_2541EF368()
{
  result = qword_27F5BB540;
  if (!qword_27F5BB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB540);
  }

  return result;
}

unint64_t sub_2541EF3C0()
{
  result = qword_27F5BB548;
  if (!qword_27F5BB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BB550, qword_25425E748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB548);
  }

  return result;
}

char *sub_2541EF440(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_254134D04(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_254134D04(v7, v6);
    *v4 = xmmword_254252DC0;
    sub_254134D04(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25424D268() && __OFSUB__(v7, sub_25424D298()))
      {
LABEL_26:
        __break(1u);
      }

      sub_25424D2B8();
      swift_allocObject();
      v14 = sub_25424D248();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2541EFB70(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_254134D04(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_254252DC0;
    sub_254134D04(0, 0xC000000000000000);
    sub_25424D428();
    result = sub_2541EFB70(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

uint64_t sub_2541EF7E4(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x277D85DE8];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_254134D04(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_254252DC0;
      sub_254134D04(0, 0xC000000000000000);
      result = sub_2541EFA94(a1);
      v9 = v22;
      v10 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_254134D04(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      result = (a1)(&v22, &v22 + BYTE6(v5));
      v9 = v22;
      v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v9;
    v3[1] = v10;
    return result;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    return (a1)(&v22, &v22);
  }

  sub_254134D04(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_254252DC0;
  sub_254134D04(0, 0xC000000000000000);
  sub_25424D428();
  v11 = *(&v22 + 1);
  v12 = *(v22 + 16);
  v13 = *(v22 + 24);
  result = sub_25424D268();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_25424D298();
  v16 = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v13, v12);
  v18 = v13 - v12;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = sub_25424D288();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  result = (a1)(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_2541EFA94(void (*a1)(uint64_t, uint64_t))
{
  result = sub_25424D438();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_25424D268();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_25424D298();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_25424D288();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

char *sub_2541EFB70(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25424D268();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25424D298();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25424D288();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2541EFC24(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_2541EFD5C(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_2541EFD5C(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_2541EFD5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_25424D268();
  v7 = result;
  if (result)
  {
    result = sub_25424D298();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_25424D288();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_2541EFE04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      return sub_25424D488();
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = sub_25424D268();
    if (a1)
    {
      a1 = sub_25424D298();
      if (__OFSUB__(v6, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v7, v6))
    {
LABEL_13:
      sub_25424D288();
      return sub_25424D488();
    }

    __break(1u);
LABEL_10:
    v8 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_25424D268() || !__OFSUB__(v8, sub_25424D298()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return sub_25424D488();
}

uint64_t sub_2541EFFDC(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_25424D2B8();
      swift_allocObject();
      sub_25424D2A8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25424D468();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

HomeKitEvents::EnergyKit::LoadLevel __swiftcall EnergyKit.LoadLevel.init(_:)(HomeKitEvents::EnergyKit::LoadLevel result)
{
  if (result.rawValue > 0x64)
  {
    __break(1u);
  }

  else
  {
    v1->rawValue = result.rawValue;
  }

  return result;
}

HomeKitEvents::EnergyKit::Milliwatts __swiftcall EnergyKit.Milliwatts.init(_:)(HomeKitEvents::EnergyKit::Milliwatts result)
{
  if (result.rawValue < 0)
  {
    __break(1u);
  }

  else
  {
    v1->rawValue = result.rawValue;
  }

  return result;
}

unint64_t sub_2541F0108@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (result > 0x64)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_2541F011C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result < 0)
  {
    goto LABEL_4;
  }

  v3 = *result;
  if (v2 > 0x64)
  {
    __break(1u);
LABEL_4:
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v2 < 0;
  return result;
}

uint64_t EnergyKit.RawRepresentablePositiveInt.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1 < 0)
  {
    v6 = 1;
  }

  else
  {
    (*(a3 + 32))(a4);
    v6 = 0;
  }

  v7 = *(*(a2 - 8) + 56);

  return v7(a4, v6, 1, a2);
}

uint64_t sub_2541F0204@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v9, v11);
    v5 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v9);
    if (v5 < 0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v9 = 0;
      v10 = 0xE000000000000000;
      sub_25424E688();

      v9 = 0xD000000000000034;
      v10 = 0x80000002542514B0;
      v12 = v5;
      v6 = sub_25424EA58();
      MEMORY[0x259C05CA0](v6);

      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v7);

      swift_willThrow();
    }

    else
    {
      *a2 = v5;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541F0394@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v9, v11);
    v5 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v9);
    if (v5 < 0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v9 = 0;
      v10 = 0xE000000000000000;
      sub_25424E688();

      v9 = 0xD000000000000038;
      v10 = 0x8000000254251470;
      v12 = v5;
      v6 = sub_25424EA58();
      MEMORY[0x259C05CA0](v6);

      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v7);

      swift_willThrow();
    }

    else
    {
      *a2 = v5;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541F0524@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v9, v11);
    v5 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v9);
    if (v5 < 0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v9 = 0;
      v10 = 0xE000000000000000;
      sub_25424E688();

      v9 = 0xD000000000000031;
      v10 = 0x8000000254251430;
      v12 = v5;
      v6 = sub_25424EA58();
      MEMORY[0x259C05CA0](v6);

      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v7);

      swift_willThrow();
    }

    else
    {
      *a2 = v5;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnergyKit.RawRepresentablePositiveInt.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v23 = a3;
  v7 = sub_25424E598();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v4)
  {
    v20 = v8;
    v21 = v10;
    v19 = v7;
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    v12 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v24);
    if ((v12 & 0x8000000000000000) == 0)
    {
      v24 = v12;
      v13 = v21;
      sub_25424DEE8();
      v14 = *(a2 - 8);
      if ((*(v14 + 48))(v13, 1, a2) != 1)
      {
        (*(v14 + 32))(v22, v13, a2);
        return __swift_destroy_boxed_opaque_existential_1(v11);
      }

      (*(v20 + 8))(v13, v19);
    }

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_25424E688();

    v24 = 0xD000000000000012;
    v25 = 0x80000002542503A0;
    v15 = sub_25424ECB8();
    MEMORY[0x259C05CA0](v15);

    MEMORY[0x259C05CA0](0x6E69206D6F726620, 0xEE002064696C6176);
    MEMORY[0x259C05CA0](7630409, 0xE300000000000000);
    MEMORY[0x259C05CA0](0x2065756C617620, 0xE700000000000000);
    v27 = v12;
    v16 = sub_25424EA58();
    MEMORY[0x259C05CA0](v16);

    sub_25424E6F8();
    swift_allocError();
    static DecodingError.dataCorruptedError<A>(_:_:)(v17);

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_2541F0AA4()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t sub_2541F0AEC(uint64_t a1)
{
  v2 = *v1;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t EnergyKit.GridCleanliness.init(clean:reduce:avoid:unknown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = sub_25424E598();
  v17 = *(*(v16 - 8) + 32);
  v17(a9, a1, v16);
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  v18 = type metadata accessor for EnergyKit.GridCleanliness(0, v22);
  v17(a9 + v18[13], a2, v16);
  v17(a9 + v18[14], a3, v16);
  return (v17)(a9 + v18[15], a4, v16);
}

BOOL static EnergyKit.GridCleanliness.== infix(_:_:)(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v93 = a6;
  v86 = a4;
  v87 = a5;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v92 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25424E598();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v76[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v76[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v76[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v76[-v19];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v81 = &v76[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v84 = &v76[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v88 = &v76[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v76[-v29];
  v95 = v12;
  v96 = v28;
  v31 = *(v28 + 48);
  v32 = *(v12 + 16);
  v90 = a1;
  v33 = a1;
  v34 = v32;
  v32(&v76[-v29], v33, v11);
  v91 = a2;
  v32(&v30[v31], a2, v11);
  v35 = *(v9 + 48);
  v36 = v35(v30, 1, a3);
  v89 = v35;
  if (v36 == 1)
  {
    if (v35(&v30[v31], 1, a3) == 1)
    {
      v79 = v9;
      v78 = *(v95 + 8);
      v78(v30, v11);
      v37 = v93;
      goto LABEL_8;
    }

LABEL_6:
    (*(v94 + 8))(v30, v96);
    return 0;
  }

  v34(v20, v30, v11);
  if (v35(&v30[v31], 1, a3) == 1)
  {
    (*(v9 + 8))(v20, a3);
    goto LABEL_6;
  }

  v38 = &v30[v31];
  v39 = v92;
  (*(v9 + 32))(v92, v38, a3);
  v82 = v34;
  v37 = v93;
  v77 = sub_25424DC98();
  v79 = v9;
  v40 = *(v9 + 8);
  v34 = v82;
  v40(v39, a3);
  v40(v20, a3);
  v78 = *(v95 + 8);
  v78(v30, v11);
  if ((v77 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v97[0] = a3;
  v97[1] = v86;
  v97[2] = v87;
  v97[3] = v37;
  v87 = type metadata accessor for EnergyKit.GridCleanliness(0, v97);
  v41 = v87[13];
  v42 = *(v96 + 48);
  v43 = v88;
  v34(v88, &v90[v41], v11);
  v34(&v43[v42], &v91[v41], v11);
  v44 = v89;
  v45 = v89(v43, 1, a3);
  v82 = v34;
  if (v45 == 1)
  {
    v46 = v44(&v43[v42], 1, a3);
    v47 = v92;
    if (v46 != 1)
    {
      goto LABEL_19;
    }

    v78(v43, v11);
  }

  else
  {
    v48 = v85;
    v34(v85, v43, v11);
    v49 = v44(&v43[v42], 1, a3);
    v50 = v79;
    v47 = v92;
    if (v49 == 1)
    {
      (*(v79 + 8))(v48, a3);
      goto LABEL_19;
    }

    (*(v79 + 32))(v92, &v43[v42], a3);
    LODWORD(v86) = sub_25424DC98();
    v51 = *(v50 + 8);
    v51(v47, a3);
    v51(v48, a3);
    v78(v43, v11);
    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  v52 = v87[14];
  v53 = *(v96 + 48);
  v43 = v84;
  v54 = v82;
  v82(v84, &v90[v52], v11);
  v54(&v43[v53], &v91[v52], v11);
  if (v44(v43, 1, a3) != 1)
  {
    v55 = v43;
    v56 = v44;
    v57 = v83;
    v54(v83, v55, v11);
    v58 = v55;
    v59 = v56(&v55[v53], 1, a3);
    v60 = v79;
    if (v59 != 1)
    {
      (*(v79 + 32))(v47, &v58[v53], a3);
      v62 = sub_25424DC98();
      v63 = *(v60 + 8);
      v63(v47, a3);
      v63(v57, a3);
      v78(v58, v11);
      v44 = v89;
      if ((v62 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    (*(v79 + 8))(v57, a3);
    v43 = v58;
LABEL_19:
    (*(v94 + 8))(v43, v96);
    return 0;
  }

  if (v44(&v43[v53], 1, a3) != 1)
  {
    goto LABEL_19;
  }

  v78(v43, v11);
LABEL_23:
  v64 = v87[15];
  v65 = *(v96 + 48);
  v67 = v81;
  v66 = v82;
  v82(v81, &v90[v64], v11);
  v66(&v67[v65], &v91[v64], v11);
  if (v44(v67, 1, a3) == 1)
  {
    if (v44(&v67[v65], 1, a3) == 1)
    {
      v78(v67, v11);
      return 1;
    }

    goto LABEL_28;
  }

  v68 = v80;
  v66(v80, v67, v11);
  if (v44(&v67[v65], 1, a3) == 1)
  {
    (*(v79 + 8))(v68, a3);
LABEL_28:
    (*(v94 + 8))(v67, v96);
    return 0;
  }

  v69 = v68;
  v70 = v79;
  v71 = &v67[v65];
  v72 = v67;
  v73 = v92;
  (*(v79 + 32))(v92, v71, a3);
  v74 = sub_25424DC98();
  v75 = *(v70 + 8);
  v75(v73, a3);
  v75(v69, a3);
  v78(v72, v11);
  return (v74 & 1) != 0;
}

uint64_t EnergyKit.GridCleanliness.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_25424E598();
  sub_25424E5A8();
  sub_25424E5A8();
  sub_25424E5A8();
  return sub_25424E5A8();
}

uint64_t sub_2541F17B8(uint64_t a1)
{
  v2 = sub_2541F77EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541F17F4(uint64_t a1)
{
  v2 = sub_2541F77EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541F1830(uint64_t a1)
{
  v2 = sub_2541F7744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541F186C(uint64_t a1)
{
  v2 = sub_2541F7744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541F18A8(uint64_t a1)
{
  v2 = sub_2541F7798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541F18E4(uint64_t a1)
{
  v2 = sub_2541F7798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.GuidanceBehavior.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x259C06AA0](1);
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C06AA0](v2);

  return sub_25424DD88();
}

uint64_t EnergyKit.GuidanceBehavior.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_25424EBD8();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x259C06AA0](1);
      return sub_25424EC28();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C06AA0](v2);
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_2541F1A34()
{
  v1 = *(v0 + 16);
  sub_25424EBD8();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x259C06AA0](1);
      return sub_25424EC28();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C06AA0](v2);
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_2541F1AC0(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x259C06AA0](1);
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C06AA0](v2);

  return sub_25424DD88();
}

uint64_t sub_2541F1B48(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_25424EBD8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x259C06AA0](1);
      return sub_25424EC28();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x259C06AA0](v3);
  sub_25424DD88();
  return sub_25424EC28();
}

HomeKitEvents::EnergyKit::LoadType_optional __swiftcall EnergyKit.LoadType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25424E8E8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EnergyKit.LoadType.rawValue.getter()
{
  v1 = 1667331688;
  if (*v0 != 1)
  {
    v1 = 0x6369727463656C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726568746FLL;
  }
}

uint64_t sub_2541F1C8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1667331688;
  if (v2 != 1)
  {
    v4 = 0x6369727463656C65;
    v3 = 0xEF656C6369686556;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x726568746FLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1667331688;
  if (*a2 != 1)
  {
    v8 = 0x6369727463656C65;
    v7 = 0xEF656C6369686556;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726568746FLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

void sub_2541F1DA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1667331688;
  if (v2 != 1)
  {
    v5 = 0x6369727463656C65;
    v4 = 0xEF656C6369686556;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726568746FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2541F1E00()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541F1EA4(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_2541F1F34(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541F1FD8@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_25424E598();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_2541F2048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_25424E598();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2541F20C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_25424E598();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2541F2140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_25424E598();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t EnergyKit.TariffPeak.criticalPeak.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_25424E598();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t EnergyKit.TariffPeak.unknown.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_25424E598();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t EnergyKit.TariffPeak.init(superOffPeak:offPeak:partialPeak:onPeak:criticalPeak:unknown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = sub_25424E598();
  v17 = *(*(v16 - 8) + 32);
  v17(a9, a1, v16);
  v24[0] = a7;
  v24[1] = a8;
  v24[2] = a10;
  v24[3] = a11;
  v18 = type metadata accessor for EnergyKit.TariffPeak(0, v24);
  v17(a9 + v18[13], a2, v16);
  v17(a9 + v18[14], a3, v16);
  v17(a9 + v18[15], a4, v16);
  v17(a9 + v18[16], a5, v16);
  return (v17)(a9 + v18[17], a6, v16);
}

BOOL static EnergyKit.TariffPeak.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v150 = a6;
  v145 = a4;
  v146 = a5;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v147 = &v130[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25424E598();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v133 = &v130[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v135 = &v130[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v130[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v139 = &v130[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v142 = &v130[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v130[-v23];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v153 = *(TupleTypeMetadata2 - 8);
  v26 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v134 = &v130[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v136 = &v130[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v138 = &v130[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v141 = &v130[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v130[-v35];
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v130[-v38];
  v154 = v37;
  v40 = *(v37 + 48);
  v151 = v12;
  v41 = v12 + 16;
  v42 = *(v12 + 16);
  v149 = a1;
  v43 = a1;
  v44 = v41;
  v42(&v130[-v38], v43, v11);
  v148 = a2;
  v155 = v11;
  v42(&v39[v40], a2, v11);
  v152 = v9;
  v45 = v9 + 48;
  v46 = *(v9 + 48);
  v47 = a3;
  if (v46(v39, 1, a3) == 1)
  {
    if (v46(&v39[v40], 1, a3) == 1)
    {
      v143 = v46;
      v144 = v45;
      v140 = v42;
      v132 = *(v151 + 8);
      v132(v39, v155);
      goto LABEL_9;
    }

LABEL_6:
    v48 = *(v153 + 8);
    v49 = v39;
LABEL_7:
    v50 = v154;
LABEL_15:
    v48(v49, v50);
    return 0;
  }

  v42(v24, v39, v155);
  if (v46(&v39[v40], 1, a3) == 1)
  {
    (*(v152 + 8))(v24, a3);
    goto LABEL_6;
  }

  v143 = v46;
  v144 = v45;
  v140 = v42;
  v51 = v152;
  v52 = &v39[v40];
  v53 = v44;
  v54 = v147;
  (*(v152 + 32))(v147, v52, a3);
  v131 = sub_25424DC98();
  v55 = v54;
  v44 = v53;
  v56 = *(v51 + 8);
  v56(v55, a3);
  v56(v24, a3);
  v47 = a3;
  v132 = *(v151 + 8);
  v132(v39, v155);
  if ((v131 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v156[0] = v47;
  v156[1] = v145;
  v156[2] = v146;
  v156[3] = v150;
  v146 = type metadata accessor for EnergyKit.TariffPeak(0, v156);
  v57 = v146[13];
  v58 = v155;
  v59 = v154;
  v60 = *(v154 + 48);
  v61 = v140;
  v140(v36, v149 + v57, v155);
  v61(&v36[v60], v148 + v57, v58);
  v62 = v143;
  v63 = v144;
  if (v143(v36, 1, v47) == 1)
  {
    if (v62(&v36[v60], 1, v47) == 1)
    {
      v143 = v62;
      v144 = v63;
      v132(v36, v155);
      v64 = v149;
      goto LABEL_19;
    }

LABEL_14:
    v48 = *(v153 + 8);
    v49 = v36;
    v50 = v59;
    goto LABEL_15;
  }

  v65 = v142;
  v61(v142, v36, v155);
  if (v62(&v36[v60], 1, v47) == 1)
  {
    (*(v152 + 8))(v65, v47);
    goto LABEL_14;
  }

  v143 = v62;
  v144 = v63;
  v67 = v152;
  v68 = v44;
  v69 = v147;
  (*(v152 + 32))(v147, &v36[v60], v47);
  v70 = sub_25424DC98();
  v71 = *(v67 + 8);
  v72 = v69;
  v44 = v68;
  v71(v72, v47);
  v71(v65, v47);
  v64 = v149;
  v59 = v154;
  v132(v36, v155);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v73 = v146[14];
  v74 = *(v59 + 48);
  v75 = v141;
  v76 = v155;
  v61(v141, v64 + v73, v155);
  v77 = v148 + v73;
  v78 = v75;
  v61(&v75[v74], v77, v76);
  v79 = v75;
  v80 = v143;
  v81 = v143(v79, 1, v47);
  v140 = v61;
  if (v81 == 1)
  {
    v82 = v64;
    v83 = v80;
    if (v80(&v78[v74], 1, v47) != 1)
    {
      goto LABEL_30;
    }

    v132(v78, v155);
    v84 = v154;
  }

  else
  {
    v85 = v139;
    v61(v139, v78, v155);
    if (v80(&v78[v74], 1, v47) == 1)
    {
      (*(v152 + 8))(v85, v47);
      goto LABEL_30;
    }

    v83 = v80;
    v86 = v78;
    v87 = v152;
    v88 = &v86[v74];
    v89 = v44;
    v90 = v147;
    (*(v152 + 32))(v147, v88, v47);
    v91 = sub_25424DC98();
    v92 = *(v87 + 8);
    v93 = v90;
    v44 = v89;
    v92(v93, v47);
    v92(v85, v47);
    v132(v86, v155);
    v84 = v154;
    v82 = v149;
    if ((v91 & 1) == 0)
    {
      return 0;
    }
  }

  v94 = v146[15];
  v95 = *(v84 + 48);
  v96 = v138;
  v97 = v155;
  v98 = v140;
  v140(v138, v82 + v94, v155);
  v99 = v148 + v94;
  v78 = v96;
  v98(&v96[v95], v99, v97);
  if (v83(v96, 1, v47) == 1)
  {
    if (v83(&v96[v95], 1, v47) == 1)
    {
      v145 = v44;
      v132(v96, v155);
      v100 = v154;
      goto LABEL_32;
    }

LABEL_30:
    v48 = *(v153 + 8);
    v49 = v78;
    goto LABEL_7;
  }

  v101 = v137;
  v98(v137, v96, v155);
  if (v83(&v96[v95], 1, v47) == 1)
  {
    (*(v152 + 8))(v101, v47);
    goto LABEL_30;
  }

  v145 = v44;
  v102 = v152;
  v103 = v147;
  (*(v152 + 32))(v147, &v96[v95], v47);
  v104 = sub_25424DC98();
  v105 = *(v102 + 8);
  v105(v103, v47);
  v105(v101, v47);
  v132(v96, v155);
  v100 = v154;
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v106 = v146[16];
  v107 = *(v100 + 48);
  v108 = v136;
  v109 = v155;
  v110 = v140;
  v140(v136, v82 + v106, v155);
  v142 = v107;
  v110(&v107[v108], v148 + v106, v109);
  if (v83(v108, 1, v47) != 1)
  {
    v112 = v135;
    v110(v135, v108, v155);
    v113 = v142;
    if (v83(&v142[v108], 1, v47) != 1)
    {
      v143 = v83;
      v114 = v152;
      v115 = &v113[v108];
      v116 = v108;
      v117 = v147;
      (*(v152 + 32))(v147, v115, v47);
      LODWORD(v142) = sub_25424DC98();
      v118 = *(v114 + 8);
      v118(v117, v47);
      v111 = v154;
      v118(v112, v47);
      v132(v116, v155);
      if ((v142 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_39;
    }

    (*(v152 + 8))(v112, v47);
LABEL_37:
    v48 = *(v153 + 8);
    v49 = v108;
    goto LABEL_7;
  }

  v143 = v83;
  if (v83(&v142[v108], 1, v47) != 1)
  {
    goto LABEL_37;
  }

  v132(v108, v155);
  v111 = v154;
LABEL_39:
  v119 = v146[17];
  v120 = *(v111 + 48);
  v121 = v82 + v119;
  v39 = v134;
  v122 = v155;
  v123 = v140;
  v140(v134, v121, v155);
  v123(&v39[v120], v148 + v119, v122);
  v124 = v143;
  if (v143(v39, 1, v47) == 1)
  {
    if (v124(&v39[v120], 1, v47) == 1)
    {
      v132(v39, v155);
      return 1;
    }

    goto LABEL_6;
  }

  v125 = v133;
  v123(v133, v39, v155);
  if (v124(&v39[v120], 1, v47) == 1)
  {
    (*(v152 + 8))(v125, v47);
    goto LABEL_6;
  }

  v126 = v152;
  v127 = v147;
  (*(v152 + 32))(v147, &v39[v120], v47);
  v128 = sub_25424DC98();
  v129 = *(v126 + 8);
  v129(v127, v47);
  v129(v125, v47);
  v132(v39, v155);
  return (v128 & 1) != 0;
}

uint64_t EnergyKit.TariffPeak.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_25424E598();
  sub_25424E5A8();
  sub_25424E5A8();
  sub_25424E5A8();
  sub_25424E5A8();
  sub_25424E5A8();
  return sub_25424E5A8();
}

uint64_t sub_2541F3374(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_25424EBD8();
  a2(v5, a1);
  return sub_25424EC28();
}

uint64_t sub_2541F33EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_25424EBD8();
  a4(v7, a2);
  return sub_25424EC28();
}

uint64_t sub_2541F3450(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541F96D4(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v2 = type metadata accessor for EventBase(0);
  sub_25424D948();
  sub_2541F96D4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425FB58[*(v1 + *(v2 + 24))]);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_2541F35B4(uint64_t a1, uint64_t a2)
{
  sub_25424D8B8();
  sub_2541F96D4(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v3 = type metadata accessor for EventBase(0);
  sub_25424D948();
  sub_2541F96D4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425FB58[*(v2 + *(v3 + 24))]);
  sub_25424DC28();
  sub_25424DD88();

  return sub_25424DD88();
}

uint64_t sub_2541F3714(uint64_t a1, uint64_t a2)
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541F96D4(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v3 = type metadata accessor for EventBase(0);
  sub_25424D948();
  sub_2541F96D4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425FB58[*(v2 + *(v3 + 24))]);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DD88();
  return sub_25424EC28();
}

uint64_t sub_2541F3874(uint64_t a1, uint64_t a2, int *a3)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for EventBase(0);
  if ((sub_25424D8F8() & 1) == 0 || qword_25425FB58[*(a1 + *(v6 + 24))] != qword_25425FB58[*(a2 + *(v6 + 24))] || (sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v7 = a3[6];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v12 = a3[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    return 1;
  }

  return sub_25424EAB8();
}

uint64_t sub_2541F3980(void *a1, int *a2)
{
  v14 = a2;
  v3 = v2;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v13[0] = *(a2 + 4);
  v13[1] = v6;
  type metadata accessor for EnergyKit.EventBase.DocumentLayout.CodingKeys(255, v6, v5, v13[0]);
  swift_getWitnessTable();
  v7 = sub_25424EA28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC78();
  v23 = 0;
  sub_25424D8B8();
  sub_2541F96D4(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v11 = v15;
  sub_25424EA18();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v22 = 1;
  sub_25424D948();
  sub_2541F96D4(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_25424EA18();
  v21 = *(v3 + v14[12]);
  v20 = 2;
  sub_2541406B4();
  sub_25424EA18();
  v19 = 3;
  sub_25424EA18();
  v18 = 4;
  sub_25424E9D8();
  v17 = 5;
  sub_25424E9D8();
  v16 = 6;
  sub_25424EA18();
  return (*(v8 + 8))(v10, 0);
}

uint64_t sub_2541F3D0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v43 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25424D948();
  v49 = *(v54 - 8);
  v10 = MEMORY[0x28223BE20](v54);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v41 - v12;
  v55 = sub_25424D8B8();
  v50 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EnergyKit.EventBase.DocumentLayout.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v57 = sub_25424E998();
  v51 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v15 = &v41 - v14;
  v46 = a3;
  v47 = a2;
  v16 = type metadata accessor for EnergyKit.EventBase.DocumentLayout(0, a2, a3, a4);
  v42 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = v15;
  v19 = v58;
  sub_25424EC68();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v51;
  v20 = v52;
  v58 = v16;
  v22 = v54;
  v66 = 0;
  sub_2541F96D4(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v23 = v53;
  v24 = v55;
  sub_25424E978();
  v25 = *(v50 + 32);
  v41 = v18;
  v25(v18, v23, v24);
  v65 = 1;
  sub_2541F96D4(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_25424E978();
  v26 = v20;
  v27 = *(v49 + 32);
  v27(&v41[v58[11]], v26, v22);
  v63 = 2;
  sub_2541407C8();
  v53 = 0;
  sub_25424E978();
  v52 = v27;
  v28 = v41;
  v41[v58[12]] = v64;
  v62 = 3;
  sub_25424E978();
  (v52)(&v28[v58[13]], v48, v22);
  v61 = 4;
  v29 = sub_25424E938();
  v30 = &v41[v58[14]];
  *v30 = v29;
  v30[1] = v31;
  v60 = 5;
  v32 = sub_25424E938();
  v33 = &v41[v58[15]];
  *v33 = v32;
  v33[1] = v34;
  v59 = 6;
  v35 = v45;
  v36 = v47;
  sub_25424E978();
  (*(v21 + 8))(v56, v57);
  v37 = v58;
  v38 = v41;
  (*(v43 + 32))(&v41[v58[16]], v35, v36);
  v39 = v42;
  (*(v42 + 16))(v44, v38, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v39 + 8))(v38, v37);
}

unint64_t sub_2541F4514(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2541F4564(unsigned __int8 a1)
{
  v1 = 1702125924;
  v2 = 0x656369766564;
  if (a1 != 5)
  {
    v2 = 0x6574617473;
  }

  v3 = 1702127987;
  if (a1 != 3)
  {
    v3 = 0x656372756F73;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 1701670760;
  if (a1 != 1)
  {
    v4 = 0x79726F6765746163;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2541F461C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2541F467C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F46F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2541F475C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F47CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_2541F483C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2541F4514(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2541F4878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2541F4564(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2541F48BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2541F4560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2541F48F0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2541F96A4();
  *a2 = result;
  return result;
}

uint64_t sub_2541F4924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2541F4978(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2541F4A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F4A7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2541F4AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F4B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F4C40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2541F4C94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t EnergyKit.GridCleanliness.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v10[0] = *(a2 + 32);
  v10[1] = v3;
  v11[0] = v3;
  v11[1] = v10[0];
  type metadata accessor for EnergyKit.GridCleanliness.CodingKeys(255, v11);
  swift_getWitnessTable();
  v4 = sub_25424EA28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC78();
  LOBYTE(v11[0]) = 0;
  v8 = v12;
  sub_25424E9C8();
  if (!v8)
  {
    LOBYTE(v11[0]) = 1;
    sub_25424E9C8();
    LOBYTE(v11[0]) = 2;
    sub_25424E9C8();
    LOBYTE(v11[0]) = 3;
    sub_25424E9C8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EnergyKit.GridCleanliness.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v46 = sub_25424E598();
  v40 = *(v46 - 8);
  v11 = MEMORY[0x28223BE20](v46);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v39 = &v35 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v41 = (&v35 - v16);
  MEMORY[0x28223BE20](v15);
  v45 = &v35 - v17;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  type metadata accessor for EnergyKit.GridCleanliness.CodingKeys(255, &v49);
  swift_getWitnessTable();
  v44 = sub_25424E998();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = &v35 - v18;
  v43 = a2;
  v49 = a2;
  v50 = a3;
  v47 = a3;
  v51 = a4;
  v52 = a5;
  v20 = type metadata accessor for EnergyKit.GridCleanliness(0, &v49);
  v36 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v19;
  v23 = v53;
  sub_25424EC68();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v41;
  v53 = v22;
  v25 = a1;
  v26 = v46;
  LOBYTE(v49) = 0;
  v27 = v44;
  sub_25424E928();
  v28 = v45;
  v45 = *(v40 + 32);
  (v45)(v53, v28, v26);
  LOBYTE(v49) = 1;
  v29 = v24;
  sub_25424E928();
  v30 = v53;
  (v45)(&v53[v20[13]], v29, v46);
  LOBYTE(v49) = 2;
  v31 = v39;
  v35 = 0;
  sub_25424E928();
  v41 = v25;
  (v45)(&v30[v20[14]], v31, v46);
  LOBYTE(v49) = 3;
  v32 = v38;
  sub_25424E928();
  (*(v42 + 8))(v48, v27);
  (v45)(&v30[v20[15]], v32, v46);
  v33 = v36;
  (*(v36 + 16))(v37, v30, v20);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return (*(v33 + 8))(v30, v20);
}

uint64_t sub_2541F54C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6C6C6F46746F6ELL;
  v4 = 0xEC000000676E6977;
  if (v2 != 1)
  {
    v3 = 0x6465726F6E6769;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69776F6C6C6F66;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0x6F6C6C6F46746F6ELL;
  v8 = 0xEC000000676E6977;
  if (*a2 != 1)
  {
    v7 = 0x6465726F6E6769;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69776F6C6C6F66;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

uint64_t sub_2541F55DC()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541F568C(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_2541F5728(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

unint64_t sub_2541F57D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2541F9658(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2541F5804(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEC000000676E6977;
  v5 = 0x6F6C6C6F46746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6465726F6E6769;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69776F6C6C6F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2541F5870()
{
  v1 = 0x6F6C6C6F46746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6465726F6E6769;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69776F6C6C6F66;
  }
}

unint64_t sub_2541F58D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2541F9658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2541F5900(uint64_t a1)
{
  v2 = sub_2541F76F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541F593C(uint64_t a1)
{
  v2 = sub_2541F76F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.GuidanceBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB558, &qword_25425E830);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB560, &qword_25425E838);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v24 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB568, &qword_25425E840);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB570, &qword_25425E848);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = *v1;
  v30 = v1[1];
  v31 = v14;
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541F76F0();
  sub_25424EC78();
  if (!v15)
  {
    v32 = 0;
    sub_2541F77EC();
    sub_25424E9A8();
    v18 = v23;
    sub_25424E9D8();
    (*(v22 + 8))(v9, v18);
    return (*(v11 + 8))(v13, v10);
  }

  if (v15 == 1)
  {
    v34 = 2;
    sub_2541F7744();
    v16 = v27;
    sub_25424E9A8();
    v17 = v29;
    sub_25424E9D8();
    (*(v28 + 8))(v16, v17);
    return (*(v11 + 8))(v13, v10);
  }

  v33 = 1;
  sub_2541F7798();
  v20 = v24;
  sub_25424E9A8();
  (*(v25 + 8))(v20, v26);
  return (*(v11 + 8))(v13, v10);
}

uint64_t EnergyKit.GuidanceBehavior.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB598, &qword_25425E850);
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v41 = &v35 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB5A0, &qword_25425E858);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB5A8, &qword_25425E860);
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB5B0, &unk_25425E868);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2541F76F0();
  v14 = v43;
  sub_25424EC68();
  if (!v14)
  {
    v35 = 0;
    v43 = v10;
    v15 = v41;
    v16 = v42;
    v17 = sub_25424E988();
    v18 = (2 * *(v17 + 16)) | 1;
    v45 = v17;
    v46 = v17 + 32;
    v47 = 0;
    v48 = v18;
    v19 = sub_254140884();
    if (v19 != 3 && v47 == v48 >> 1)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          v49 = 1;
          sub_2541F7798();
          v20 = v12;
          v21 = v35;
          sub_25424E8F8();
          v22 = v43;
          if (!v21)
          {
            (*(v39 + 8))(v5, v37);
            (*(v22 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v39 = 0;
            v23 = 0;
            v24 = 2;
LABEL_18:
            *v16 = v39;
            *(v16 + 8) = v23;
            *(v16 + 16) = v24;
            return __swift_destroy_boxed_opaque_existential_1(v44);
          }

          goto LABEL_9;
        }

        v49 = 2;
        sub_2541F7744();
        v30 = v35;
        sub_25424E8F8();
        v31 = v43;
        if (!v30)
        {
          v32 = v36;
          v39 = sub_25424E938();
          v23 = v34;
          (*(v40 + 8))(v15, v32);
          (*(v31 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v24 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_2541F77EC();
        v29 = v35;
        sub_25424E8F8();
        if (!v29)
        {
          v39 = sub_25424E938();
          v23 = v33;
          (*(v38 + 8))(v8, v6);
          (*(v43 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v24 = 0;
          goto LABEL_18;
        }
      }

      (*(v43 + 8))(v12, v9);
      goto LABEL_10;
    }

    v25 = sub_25424E6F8();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
    *v27 = &type metadata for EnergyKit.GuidanceBehavior;
    v20 = v12;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    v22 = v43;
LABEL_9:
    (*(v22 + 8))(v20, v9);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t EnergyKit.LoadLevel.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC48();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v9, v11);
    v5 = sub_25424EAC8();
    __swift_destroy_boxed_opaque_existential_1(&v9);
    if (v5 <= 0x64)
    {
      *a2 = v5;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v9 = 0;
      v10 = 0xE000000000000000;
      sub_25424E688();

      v9 = 0xD000000000000033;
      v10 = 0x80000002542513F0;
      v12 = v5;
      v6 = sub_25424EA58();
      MEMORY[0x259C05CA0](v6);

      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v7);

      swift_willThrow();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2541F657C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2541F66E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F6758(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2541F67C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F6834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2541F68BC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*a1, a1[1], a2[2], a2[3], a2[4], a2[5]);
  *a4 = result;
  return result;
}

uint64_t sub_2541F6918@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_2541F699C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_2541F69F0@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_2541F6A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2541F6A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t EnergyKit.TariffPeak.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = v3;
  v10[1] = a2;
  v13[0] = v3;
  v13[1] = v11;
  type metadata accessor for EnergyKit.TariffPeak.CodingKeys(255, v13);
  swift_getWitnessTable();
  v4 = sub_25424EA28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EC78();
  LOBYTE(v13[0]) = 0;
  v8 = v14;
  sub_25424E9C8();
  if (!v8)
  {
    LOBYTE(v13[0]) = 1;
    sub_25424E9C8();
    LOBYTE(v13[0]) = 2;
    sub_25424E9C8();
    LOBYTE(v13[0]) = 3;
    sub_25424E9C8();
    LOBYTE(v13[0]) = 4;
    sub_25424E9C8();
    LOBYTE(v13[0]) = 5;
    sub_25424E9C8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EnergyKit.TariffPeak.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a6;
  v60 = sub_25424E598();
  v53 = *(v60 - 8);
  v11 = MEMORY[0x28223BE20](v60);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v46 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v52 = &v46 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v56 = &v46 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v55 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v58 = &v46 - v21;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  type metadata accessor for EnergyKit.TariffPeak.CodingKeys(255, &v63);
  swift_getWitnessTable();
  v62 = sub_25424E998();
  v54 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v23 = &v46 - v22;
  v59 = a2;
  v63 = a2;
  v64 = a3;
  v57 = a3;
  v65 = a4;
  v66 = a5;
  v24 = type metadata accessor for EnergyKit.TariffPeak(0, &v63);
  v48 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v46 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v61 = v23;
  v27 = v67;
  sub_25424EC68();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v55;
  v29 = v56;
  v30 = v54;
  v67 = v26;
  v31 = a1;
  v32 = v60;
  LOBYTE(v63) = 0;
  sub_25424E928();
  v33 = *(v53 + 32);
  v34 = v58;
  v58 = (v53 + 32);
  v47 = v33;
  v33(v67, v34, v32);
  LOBYTE(v63) = 1;
  v35 = v28;
  sub_25424E928();
  v46 = v24;
  v36 = v67;
  v37 = &v67[*(v24 + 52)];
  v38 = v60;
  v47(v37, v35, v60);
  LOBYTE(v63) = 2;
  v55 = 0;
  sub_25424E928();
  v47(&v36[*(v46 + 56)], v29, v38);
  LOBYTE(v63) = 3;
  v39 = v52;
  sub_25424E928();
  v40 = v46;
  v47(&v36[*(v46 + 60)], v39, v60);
  LOBYTE(v63) = 4;
  v41 = v51;
  sub_25424E928();
  v47(&v36[*(v40 + 64)], v41, v60);
  LOBYTE(v63) = 5;
  v42 = v50;
  sub_25424E928();
  (*(v30 + 8))(v61, v62);
  v47(&v36[*(v40 + 68)], v42, v60);
  v43 = v36;
  v44 = v48;
  (*(v48 + 16))(v49, v43, v40);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return (*(v44 + 8))(v43, v40);
}

uint64_t _s13HomeKitEvents06EnergyB0O16GuidanceBehaviorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_25424EAB8();
        sub_25413E94C(v6, v5, 0);
        sub_25413E94C(v3, v2, 0);
        sub_25413F08C(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_25413E94C(v14, v2, 0);
      sub_25413E94C(v3, v2, 0);
      sub_25413F08C(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_25424EAB8();
        sub_25413E94C(v6, v5, 1u);
        sub_25413E94C(v3, v2, 1u);
        sub_25413F08C(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_25413F08C(v11, v12, v13);
        return v10 & 1;
      }

      sub_25413E94C(v8, v2, 1u);
      sub_25413E94C(v3, v2, 1u);
      sub_25413F08C(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_25413E94C(*a2, *(a2 + 8), v7);
    sub_25413E94C(v3, v2, v4);
    sub_25413F08C(v3, v2, v4);
    sub_25413F08C(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_25413F08C(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_25413F08C(v18, v19, v20);
  return 1;
}

unint64_t sub_2541F76F0()
{
  result = qword_27F5BB578;
  if (!qword_27F5BB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB578);
  }

  return result;
}

unint64_t sub_2541F7744()
{
  result = qword_27F5BB580;
  if (!qword_27F5BB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB580);
  }

  return result;
}

unint64_t sub_2541F7798()
{
  result = qword_27F5BB588;
  if (!qword_27F5BB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB588);
  }

  return result;
}

unint64_t sub_2541F77EC()
{
  result = qword_27F5BB590;
  if (!qword_27F5BB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB590);
  }

  return result;
}

unint64_t sub_2541F785C()
{
  result = qword_27F5BB5B8;
  if (!qword_27F5BB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5B8);
  }

  return result;
}

unint64_t sub_2541F78F0()
{
  result = qword_27F5BB5C0;
  if (!qword_27F5BB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5C0);
  }

  return result;
}

unint64_t sub_2541F7948()
{
  result = qword_27F5BB5C8;
  if (!qword_27F5BB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5C8);
  }

  return result;
}

unint64_t sub_2541F79DC()
{
  result = qword_27F5BB5D0;
  if (!qword_27F5BB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5D0);
  }

  return result;
}

unint64_t sub_2541F7A34()
{
  result = qword_27F5BB5D8;
  if (!qword_27F5BB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5D8);
  }

  return result;
}

unint64_t sub_2541F7AC8()
{
  result = qword_27F5BB5E0;
  if (!qword_27F5BB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5E0);
  }

  return result;
}

unint64_t sub_2541F7B20()
{
  result = qword_27F5BB5E8;
  if (!qword_27F5BB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5E8);
  }

  return result;
}

uint64_t sub_2541F7BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2541F7C08()
{
  result = qword_27F5BB5F0;
  if (!qword_27F5BB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5F0);
  }

  return result;
}

unint64_t sub_2541F7C5C()
{
  result = qword_27F5BB5F8;
  if (!qword_27F5BB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB5F8);
  }

  return result;
}

unint64_t sub_2541F7CB0()
{
  result = qword_27F5BB600;
  if (!qword_27F5BB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB600);
  }

  return result;
}

unint64_t sub_2541F7D24()
{
  result = qword_27F5BB608;
  if (!qword_27F5BB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB608);
  }

  return result;
}

unint64_t sub_2541F7D7C()
{
  result = qword_27F5BB610;
  if (!qword_27F5BB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB610);
  }

  return result;
}

unint64_t sub_2541F7DF0()
{
  result = qword_27F5BB618;
  if (!qword_27F5BB618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F5BB620, &qword_25425EE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB618);
  }

  return result;
}

uint64_t sub_2541F7EC4(uint64_t a1)
{
  result = sub_25424E598();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541F7F38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2541F80D0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeKitEvents06EnergyB0O16GuidanceBehaviorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2541F8338(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2541F8370(uint64_t a1)
{
  result = sub_25424E598();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541F83EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2541F8594(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t sub_2541F886C(uint64_t a1)
{
  result = sub_25424D8B8();
  if (v2 <= 0x3F)
  {
    result = sub_25424D948();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2541F8928(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_25424D948();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 80);
  v16 = *(*(v9 - 8) + 64);
  v17 = *(v13 + 80);
  if (v12 <= v14)
  {
    v12 = *(v13 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + v15;
  v20 = v16 + v15 + 1;
  v21 = v16 + 7;
  v22 = v17 + 16;
  if (a2 <= v18)
  {
    goto LABEL_33;
  }

  v23 = ((v22 + ((((v21 + ((v20 + (v19 & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v13 + 64);
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_12;
  }

  v27 = ((a2 - v18 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_33;
      }

LABEL_12:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_33;
      }

LABEL_20:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (v23)
      {
        if (v23 <= 3)
        {
          v29 = ((v22 + ((((v21 + ((v20 + (v19 & ~v15)) & ~v15)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + *(v13 + 64);
        }

        else
        {
          v29 = 4;
        }

        if (v29 > 2)
        {
          if (v29 == 3)
          {
            v30 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v30 = *a1;
          }
        }

        else if (v29 == 1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }
      }

      else
      {
        v30 = 0;
      }

      return v18 + (v30 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  if (v8 == v18)
  {
    v31 = *(v7 + 48);
    v32 = a1;
    v11 = v8;
    v33 = v6;
LABEL_37:

    return v31(v32, v11, v33);
  }

  v34 = ~v15;
  v35 = (a1 + v19) & v34;
  if (v11 == v18)
  {
    v31 = *(v10 + 48);
    v33 = v9;
    v32 = v35;
    goto LABEL_37;
  }

  v36 = (v21 + ((v20 + v35) & v34)) & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0x80000000) != 0)
  {
    v38 = *(v13 + 48);

    return v38((v22 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17, v14);
  }

  else
  {
    v37 = *(v36 + 8);
    if (v37 >= 0xFFFFFFFF)
    {
      LODWORD(v37) = -1;
    }

    return (v37 + 1);
  }
}

void sub_2541F8C90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_25424D948();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 64);
  v18 = *(v12 + 80);
  v19 = *(*(v11 - 8) + 64);
  v20 = *(v15 + 80);
  if (v14 <= v16)
  {
    v21 = *(v15 + 84);
  }

  else
  {
    v21 = v14;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = v17 + v18;
  v24 = (v17 + v18) & ~v18;
  v25 = v19 + v18 + 1;
  v26 = v19 + 7;
  v27 = ((v20 + 16 + ((((v19 + 7 + ((v25 + v24) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + *(v15 + 64);
  if (a3 <= v22)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v22 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v22 < a2)
  {
    v29 = ~v22 + a2;
    if (v27 < 4)
    {
      v30 = (v29 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v29 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v28 > 1)
            {
LABEL_55:
              if (v28 == 2)
              {
                *&a1[v27] = v30;
              }

              else
              {
                *&a1[v27] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v28 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v28 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v28)
    {
      a1[v27] = v30;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v27] = 0;
  }

  else if (v28)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == v22)
  {
    v34 = *(v9 + 56);
    v35 = a1;
    v36 = a2;
    v13 = v10;
    v37 = v8;
LABEL_41:

    v34(v35, v36, v13, v37);
    return;
  }

  v38 = ~v18;
  v39 = &a1[v23] & v38;
  if (v13 == v22)
  {
    v34 = *(v12 + 56);
    v37 = v11;
    v35 = v39;
    v36 = a2;
    goto LABEL_41;
  }

  v40 = ((v26 + ((v25 + v39) & v38)) & 0xFFFFFFFFFFFFFFF8);
  if ((v21 & 0x80000000) != 0)
  {
    v41 = *(v15 + 56);

    v41((v20 + 16 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v20, a2, v16);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v40 = a2 & 0x7FFFFFFF;
    v40[1] = 0;
  }

  else
  {
    v40[1] = (a2 - 1);
  }
}

uint64_t type metadata accessor for EnergyKit.EventBase(uint64_t a1)
{
  result = qword_27F5BB8A8;
  if (!qword_27F5BB8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2541F910C(uint64_t a1)
{
  result = type metadata accessor for EventBase(319);
  if (v2 <= 0x3F)
  {
    result = sub_25424D948();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2541F9208()
{
  result = qword_27F5BB8C0;
  if (!qword_27F5BB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8C0);
  }

  return result;
}

unint64_t sub_2541F9260()
{
  result = qword_27F5BB8C8;
  if (!qword_27F5BB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8C8);
  }

  return result;
}

unint64_t sub_2541F92B8()
{
  result = qword_27F5BB8D0;
  if (!qword_27F5BB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8D0);
  }

  return result;
}

unint64_t sub_2541F9364()
{
  result = qword_27F5BB8D8;
  if (!qword_27F5BB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8D8);
  }

  return result;
}

unint64_t sub_2541F93BC()
{
  result = qword_27F5BB8E0;
  if (!qword_27F5BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8E0);
  }

  return result;
}

unint64_t sub_2541F9414()
{
  result = qword_27F5BB8E8;
  if (!qword_27F5BB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8E8);
  }

  return result;
}

unint64_t sub_2541F946C()
{
  result = qword_27F5BB8F0;
  if (!qword_27F5BB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8F0);
  }

  return result;
}

unint64_t sub_2541F94C4()
{
  result = qword_27F5BB8F8;
  if (!qword_27F5BB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB8F8);
  }

  return result;
}

unint64_t sub_2541F951C()
{
  result = qword_27F5BB900;
  if (!qword_27F5BB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB900);
  }

  return result;
}

unint64_t sub_2541F9574()
{
  result = qword_27F5BB908;
  if (!qword_27F5BB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB908);
  }

  return result;
}

unint64_t sub_2541F95CC()
{
  result = qword_27F5BB910;
  if (!qword_27F5BB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB910);
  }

  return result;
}

unint64_t sub_2541F9658(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2541F96D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2541F971C()
{
  result = qword_27F5BB918[0];
  if (!qword_27F5BB918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BB918);
  }

  return result;
}

char *sub_2541F98A8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void))
{
  v9 = v4;
  v10 = sub_25424D8B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_254254360;
  *(v17 + 32) = a2(v9);
  *(v17 + 40) = v18;
  v19 = type metadata accessor for EventBase(0);
  if (sub_2541DA534(*(v9 + *(v19 + 24)), a3))
  {
    sub_2541FA24C(v9, v16, a4);
    (*(v11 + 16))(v13, v16, v10);
    sub_2541FA2B4(v16, a4);
    sub_2541DE894(v13);
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2542542D0;
    *(v22 + 32) = v21;
    *(v22 + 33) = -1;
    v23 = sub_2541B1AC4(v22);
    v25 = v24;

    (*(v11 + 8))(v13, v10);
    v17 = sub_2541B09E0(1, 2, 1, v17);
    *(v17 + 16) = 2;
    *(v17 + 48) = v23;
    *(v17 + 56) = v25;
  }

  return v17;
}

char *sub_2541F9AEC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void))
{
  v9 = v4;
  v31[7] = *MEMORY[0x277D85DE8];
  v10 = sub_25424D8B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v31 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254254360;
  *(inited + 32) = a2(v9);
  *(inited + 40) = v18;
  v19 = sub_2541B09E0(1, 2, 1, inited);
  *(v19 + 2) = 2;
  *(v19 + 3) = xmmword_254252DC0;
  v20 = type metadata accessor for EventBase(0);
  if (sub_2541DA534(*(v9 + *(v20 + 24)), a3))
  {
    sub_2541FA24C(v9, v16, a4);
    (*(v11 + 16))(v13, v16, v10);
    sub_2541FA2B4(v16, a4);
    sub_2541DE894(v13);
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2542542D0;
    *(v23 + 32) = v22;
    *(v23 + 33) = -1;
    v24 = sub_2541B1AC4(v23);
    v26 = v25;

    (*(v11 + 8))(v13, v10);
    v28 = *(v19 + 2);
    v27 = *(v19 + 3);
    if (v28 >= v27 >> 1)
    {
      v19 = sub_2541B09E0((v27 > 1), v28 + 1, 1, v19);
    }

    *(v19 + 2) = v28 + 1;
    v29 = &v19[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v26;
  }

  return v19;
}

uint64_t sub_2541FA24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541FA2B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2541FA344(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_25424DA48();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25424D9E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v7 + 16))(v9, a3, v6);
  v15 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(a2);
      goto LABEL_10;
    }

LABEL_8:
    LODWORD(v16) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_15;
    }

    v16 = v16;
LABEL_10:
    if ((v16 - 0x1000000000000000) >> 61 == 7)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v15 == 2)
  {
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  v20 = v21[1];
  sub_25424D9C8();
  if (!v20)
  {
    a2 = sub_25424D9D8();
    (*(v11 + 8))(v13, v10);
  }

  return a2;
}

unint64_t sub_2541FA580()
{
  result = qword_27F5BB9A0;
  if (!qword_27F5BB9A0)
  {
    type metadata accessor for LubyRackoffEncryptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB9A0);
  }

  return result;
}

uint64_t sub_2541FA5E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_254147FD8(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FD8, &qword_254254310);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_254147FD8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_25412DCA8(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}