uint64_t sub_1937E0E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937E0F88@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.ScheduledDeliverySetting.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E0FB0@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsNotifications.ScheduledDeliverySetting.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E10A0@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.EventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E10C8@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsNotifications.EventType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E11B8@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.DeviceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937E11E0@<X0>(char **a1@<X8>)
{
  result = static MomentsNotifications.DeviceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E12D0@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E12F8@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsNotifications.ContentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E13E8@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.FireDateSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E1410@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsNotifications.FireDateSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E1518()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for MomentsNotifications.Prediction(v1) + 24);
  sub_19393BE00();
  v3 = OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  sub_19344E6DC(v0 + v2, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_8_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

BOOL sub_1937E159C(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v30 = v6;
  v19 = *(type metadata accessor for MomentsNotifications.Prediction(0) + 24);
  v20 = *(v13 + 48);
  sub_193448804(a1 + v19, v16, &qword_1EAE3A9E8, &qword_19394F800);
  sub_193448804(a2 + v19, &v16[v20], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v16);
  if (v21)
  {
    OUTLINED_FUNCTION_31(&v16[v20]);
    if (v21)
    {
      sub_19344E6DC(v16, &qword_1EAE3A9E8, &qword_19394F800);
      return 1;
    }

LABEL_21:
    sub_19344E6DC(v16, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_193448804(v16, v12, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v16[v20]);
  if (v21)
  {
    (*(v30 + 8))(v12, v4);
    goto LABEL_21;
  }

  v23 = v30;
  (*(v30 + 32))(v9, &v16[v20], v4);
  OUTLINED_FUNCTION_14_58();
  sub_1937E1AE4(v24, v25);
  v26 = sub_19393C550();
  v27 = *(v23 + 8);
  v28 = OUTLINED_FUNCTION_13_0();
  v27(v28);
  (v27)(v12, v4);
  sub_19344E6DC(v16, &qword_1EAE3A9E8, &qword_19394F800);
  return (v26 & 1) != 0;
}

uint64_t sub_1937E18C8()
{
  v1 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v10 = *v0;
    sub_19393CAD0();
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x193B18060](v11);
  }

  if (*(v0 + 24) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v12 = v0[2];
    sub_19393CAD0();
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x193B18060](v13);
  }

  v14 = type metadata accessor for MomentsNotifications.Prediction(0);
  sub_193448804(v0 + *(v14 + 24), v9, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v3 + 32))(v6, v9, v1);
  sub_19393CAD0();
  OUTLINED_FUNCTION_14_58();
  sub_1937E1AE4(v16, v17);
  sub_19393C540();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1937E1AE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1937E1B90(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1937E1BF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_1937E1E30()
{
  sub_19349D140(319);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_1937E217C(319, &qword_1ED5082B8, &qword_1EAE3AA08, &qword_193951470, MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED506698, MEMORY[0x1E69E6370]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_1937E217C(319, &qword_1EAE43810, &qword_1EAE43660, &qword_19399D3C0, MEMORY[0x1E69E62F8]);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED506690, MEMORY[0x1E69E63B0]);
    if (v11 > 0x3F)
    {
      return v10;
    }

    sub_19349D1FC(319, &qword_1EAE43818, &type metadata for MomentsNotifications.FireDateSource);
    if (v12 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1EAE43820, &type metadata for MomentsNotifications.EventType);
    if (v13 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19349D1FC(319, &qword_1EAE43828, &type metadata for MomentsNotifications.ContentType);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        sub_19349D1FC(319, &qword_1EAE43550, &type metadata for MomentsEventData.BundleInterfaceType);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          sub_19349D1FC(319, &qword_1EAE43830, &type metadata for MomentsNotifications.DeviceType);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            sub_19349D1FC(319, &qword_1EAE43838, &type metadata for MomentsNotifications.SchedulingState);
            OUTLINED_FUNCTION_4_0();
            if (!(!v2 & v1))
            {
              sub_19349D1FC(319, &qword_1EAE43840, &type metadata for MomentsNotifications.ScheduledDeliverySetting);
              OUTLINED_FUNCTION_4_0();
              if (!(!v2 & v1))
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1937E217C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1937E2268()
{
  sub_19349D1FC(319, &qword_1ED506690, MEMORY[0x1E69E63B0]);
  if (v0 <= 0x3F)
  {
    sub_19349D140(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s9ShortcutsOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s8UseModelOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937E2470()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED512448);
  v4 = __swift_project_value_buffer(v3, qword_1ED512448);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Shortcuts.UseModel.Safety.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_69 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512448);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43848, &qword_19399D4C0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.Shortcuts.UseModel.Safety.attribute(_:)(void (*a1)(void))
{
  result = sub_1937E2880(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E28C8(void (*a1)(void))
{
  result = sub_1937E2880(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E28F8(uint64_t a1)
{
  result = sub_1937E2920();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937E2920()
{
  result = qword_1EAE3A980;
  if (!qword_1EAE3A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A980);
  }

  return result;
}

_BYTE *_s6SafetyOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShortcutsSafety.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43850, &qword_19399D530);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1937E2C28(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE43850, &qword_19399D530, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE43850, &qword_19399D530);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1937E2C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsSafety();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ShortcutsSafety.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43850, &qword_19399D530);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE43850, &qword_19399D530, v8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937E2DCC(v6, a1);
  }

  return result;
}

uint64_t sub_1937E2DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsSafety();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ShortcutsSafety.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43850, &qword_19399D530);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1937E665C() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1937E2DCC(v11, v36);
      v29 = type metadata accessor for ShortcutsSafety();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t ShortcutsSafety.serialize()()
{
  v1 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43850, &qword_19399D530);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1937E2C28(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE43850, &qword_19399D530, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE43850, &qword_19399D530);
  return v11;
}

id static ShortcutsSafety.columns.getter()
{
  v172 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_5_75(0x6E6F69746361, 0xE600000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  v32 = OUTLINED_FUNCTION_17_43();
  result = OUTLINED_FUNCTION_5_75(v32, 0xEB00000000656372);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v33 = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_2_4(v33, v34, v35, v36, v37, v38, v39, v40, v164);
  OUTLINED_FUNCTION_5_10(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v51 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v51);
  v52 = OUTLINED_FUNCTION_12_56();
  result = OUTLINED_FUNCTION_5_75(v52, 0xE800000000000000);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_3(result);
  v53 = swift_initStackObject();
  v61 = OUTLINED_FUNCTION_2_4(v53, v54, v55, v56, v57, v58, v59, v60, v165);
  OUTLINED_FUNCTION_5_10(v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v71 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v71);
  v72 = OUTLINED_FUNCTION_14_2();
  result = OUTLINED_FUNCTION_5_75(v72, 0xEC00000065707954);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_69_3(result);
  v73 = swift_initStackObject();
  v81 = OUTLINED_FUNCTION_2_4(v73, v74, v75, v76, v77, v78, v79, v80, v166);
  OUTLINED_FUNCTION_5_10(v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  v91 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v91);
  v92 = OUTLINED_FUNCTION_18_47();
  result = OUTLINED_FUNCTION_5_75(v92, 0xEA00000000006570);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_69_3(result);
  v93 = swift_initStackObject();
  v101 = OUTLINED_FUNCTION_2_4(v93, v94, v95, v96, v97, v98, v99, v100, v167);
  OUTLINED_FUNCTION_5_10(v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
  v111 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v111);
  v112 = OUTLINED_FUNCTION_15_6();
  result = OUTLINED_FUNCTION_3_5(v112, 0xEC000000656C6163);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_69_3(result);
  v113 = swift_initStackObject();
  v121 = OUTLINED_FUNCTION_2_4(v113, v114, v115, v116, v117, v118, v119, v120, v168);
  OUTLINED_FUNCTION_5_10(v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  v131 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v131);
  result = OUTLINED_FUNCTION_3_5(0x6E6F69676572, 0xE600000000000000);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_69_3(result);
  v132 = swift_initStackObject();
  v140 = OUTLINED_FUNCTION_2_4(v132, v133, v134, v135, v136, v137, v138, v139, v169);
  OUTLINED_FUNCTION_5_10(v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  v150 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v150);
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_32_19();
  result = OUTLINED_FUNCTION_3_5(v151, v152);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_69_3(result);
  v153 = swift_initStackObject();
  v161 = OUTLINED_FUNCTION_2_4(v153, v154, v155, v156, v157, v158, v159, v160, v170);
  *(v161 + 16) = v171;
  *(v161 + 32) = sub_19393C850();
  v162 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v163 = OUTLINED_FUNCTION_12_3();
  result = sub_19343D150(v163 | 0x7265566C00000000, 0xEC0000006E6F6973, 2, 0, v161, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v172;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1937E3628(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_59_0(0x6E6F69746361, 0xE600000000000000) & 1) != 0)
  {
    type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1();
    if (v8)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_17_43();
  v11 = a1 == v9 && a2 == v10;
  if (v11 || (OUTLINED_FUNCTION_59_0(v9, v10) & 1) != 0)
  {
    type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1();
    if (v12)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_12_56();
  v14 = a1 == v13 && a2 == 0xE800000000000000;
  if (v14 || (OUTLINED_FUNCTION_59_0(v13, 0xE800000000000000) & 1) != 0)
  {
    type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1();
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v16 = OUTLINED_FUNCTION_14_2();
  v18 = a1 == v16 && a2 == v17;
  if (v18 || (OUTLINED_FUNCTION_59_0(v16, v17) & 1) != 0)
  {
    type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1();
    if (v19)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v20 = OUTLINED_FUNCTION_18_47();
  v22 = a1 == v20 && a2 == v21;
  if (v22 || (OUTLINED_FUNCTION_59_0(v20, 0xEA00000000006570) & 1) != 0)
  {
    type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1();
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_8:
    OUTLINED_FUNCTION_147();
LABEL_9:
    sub_1934948FC();
    return;
  }

  v24 = OUTLINED_FUNCTION_15_6();
  v26 = a1 == v24 && a2 == v25;
  if (v26 || (OUTLINED_FUNCTION_59_0(v24, v25) & 1) != 0)
  {
    v27 = *(type metadata accessor for ShortcutsSafety() + 48);
    goto LABEL_44;
  }

  v28 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
  if (v28 || (OUTLINED_FUNCTION_59_0(0x6E6F69676572, 0xE600000000000000) & 1) != 0)
  {
    v27 = *(type metadata accessor for ShortcutsSafety() + 52);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_32_19();
  v29 = OUTLINED_FUNCTION_12_3() | 0x6564496C00000000;
  v31 = a1 == v29 && a2 == v30;
  if (v31 || (OUTLINED_FUNCTION_59_0(v29, v30) & 1) != 0)
  {
    v27 = *(type metadata accessor for ShortcutsSafety() + 56);
    goto LABEL_44;
  }

  v32 = OUTLINED_FUNCTION_12_3() | 0x7265566C00000000;
  v34 = a1 == v32 && a2 == v33;
  if (v34 || (OUTLINED_FUNCTION_59_0(v32, v33) & 1) != 0)
  {
    v27 = *(type metadata accessor for ShortcutsSafety() + 60);
LABEL_44:
    if (!*(v3 + v27 + 8))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  sub_19349AB64();
  swift_allocError();
  v36 = v35;
  *v35 = a1;
  v35[1] = a2;
  v35[5] = type metadata accessor for ShortcutsSafety();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v36 + 2);
  sub_1937E2C28(v3, boxed_opaque_existential_1Tm);
  *(v36 + 48) = 1;
  swift_willThrow();
}

uint64_t ShortcutsSafety.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ShortcutsSafety();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = a1 + v2[9];
  j__OUTLINED_FUNCTION_131(v7);
  v8 = a1 + v2[10];
  j__OUTLINED_FUNCTION_131(v8);
  v9 = a1 + v2[11];
  OUTLINED_FUNCTION_131(v9);
  v15 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v10 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1937E665C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v12 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v12);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v9 = 0;
  *(v9 + 8) = 256;
  *v15 = 0;
  v15[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  return result;
}

BOOL static ShortcutsSafety.== infix(_:_:)()
{
  type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_25_3();
  if (v1)
  {
    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v3 = sub_1937E3E94();
    if ((OUTLINED_FUNCTION_25_4(v3, v4, &type metadata for ShortcutsSafety.Action, v3, v5, v6, v7, v8, v70, v71, v72) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v10)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v12 = sub_1937E3E40();
    if ((OUTLINED_FUNCTION_25_4(v12, v13, &type metadata for ShortcutsSafety.ErrorSource, v12, v14, v15, v16, v17, v70, v71, v72) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v19)
  {
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v20)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v21 = sub_1937E3DEC();
    if ((OUTLINED_FUNCTION_25_4(v21, v22, &type metadata for ShortcutsSafety.Modality, v21, v23, v24, v25, v26, v70, v71, v72) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v28)
  {
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v29)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v30 = sub_1937E3D98();
    if ((OUTLINED_FUNCTION_25_4(v30, v31, &type metadata for ShortcutsSafety.InstanceType, v30, v32, v33, v34, v35, v70, v71, v72) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v37)
  {
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v38)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v39 = sub_1937E3D44();
    if ((OUTLINED_FUNCTION_25_4(v39, v40, &type metadata for ShortcutsSafety.OutputType, v39, v41, v42, v43, v44, v70, v71, v72) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v47)
  {
    if (!v45)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v46);
    v50 = v50 && v48 == v49;
    if (!v50 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v53)
  {
    if (!v51)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v52);
    v56 = v50 && v54 == v55;
    if (!v56 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v59)
  {
    if (!v57)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v58);
    v62 = v50 && v60 == v61;
    if (!v62 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v65)
  {
    if (!v63)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v64);
    v68 = v50 && v66 == v67;
    return v68 || (sub_19393CA30() & 1) != 0;
  }

  return !v63;
}

unint64_t sub_1937E3D44()
{
  result = qword_1EAE43860;
  if (!qword_1EAE43860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43860);
  }

  return result;
}

unint64_t sub_1937E3D98()
{
  result = qword_1EAE43868;
  if (!qword_1EAE43868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43868);
  }

  return result;
}

unint64_t sub_1937E3DEC()
{
  result = qword_1EAE43870;
  if (!qword_1EAE43870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43870);
  }

  return result;
}

unint64_t sub_1937E3E40()
{
  result = qword_1EAE43878;
  if (!qword_1EAE43878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43878);
  }

  return result;
}

unint64_t sub_1937E3E94()
{
  result = qword_1EAE43880;
  if (!qword_1EAE43880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43880);
  }

  return result;
}

uint64_t ShortcutsSafety.hash(into:)()
{
  v1 = type metadata accessor for ShortcutsSafety();
  if (*(v0 + v1[7] + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v2 = sub_1937E40B0();
    OUTLINED_FUNCTION_133_1(v2, &type metadata for ShortcutsSafety.Action, v2);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v4 = sub_1937E4104();
    OUTLINED_FUNCTION_133_1(v4, &type metadata for ShortcutsSafety.ErrorSource, v4);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v5 = sub_1937E4158();
    OUTLINED_FUNCTION_133_1(v5, &type metadata for ShortcutsSafety.Modality, v5);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v6 = sub_1937E41AC();
    OUTLINED_FUNCTION_133_1(v6, &type metadata for ShortcutsSafety.InstanceType, v6);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v7 = sub_1937E4200();
    OUTLINED_FUNCTION_133_1(v7, &type metadata for ShortcutsSafety.OutputType, v7);
  }

  if (*(v0 + v1[12] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v1[13] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v1[14] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!*(v0 + v1[15] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

unint64_t sub_1937E40B0()
{
  result = qword_1EAE43888;
  if (!qword_1EAE43888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43888);
  }

  return result;
}

unint64_t sub_1937E4104()
{
  result = qword_1EAE43890;
  if (!qword_1EAE43890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43890);
  }

  return result;
}

unint64_t sub_1937E4158()
{
  result = qword_1EAE43898;
  if (!qword_1EAE43898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43898);
  }

  return result;
}

unint64_t sub_1937E41AC()
{
  result = qword_1EAE438A0;
  if (!qword_1EAE438A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438A0);
  }

  return result;
}

unint64_t sub_1937E4200()
{
  result = qword_1EAE438A8;
  if (!qword_1EAE438A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438A8);
  }

  return result;
}

void ShortcutsSafety.Action.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static ShortcutsSafety.Action.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v38 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v38, v39, v40, v41, &qword_1EAE438F8, &qword_19399D760);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v42 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v42, v43, v44, v45, &qword_1EAE438F8, &qword_19399D760);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    v46 = OUTLINED_FUNCTION_39(v25);
    v21 = sub_1934B0FCC(v46, v0, 1, v47, &qword_1EAE438F8, &qword_19399D760);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v48 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v48, v49, v50, v51, &qword_1EAE438F8, &qword_19399D760);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v52 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v52, v53, v54, v55, &qword_1EAE438F8, &qword_19399D760);
    v34 = v31;
  }

  OUTLINED_FUNCTION_20_29(v31, v32, v33, v34);
  return v36;
}

uint64_t ShortcutsSafety.Action.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6552797465666153;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_29_34();
      break;
    case 2:
      result = OUTLINED_FUNCTION_27_34();
      break;
    case 3:
      result = 0x73736563637553;
      break;
    default:
      return result;
  }

  return result;
}

void ShortcutsSafety.Action.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x6552797465666153 ? (v5 = v0 == 0xEC0000007463656ALL) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x6552797465666153, 0xEC0000007463656ALL) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_29_34();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_27_34();
      v12 = v1 == v10 && v0 == v11;
      if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
      {

        v6 = 2;
      }

      else if (v1 == 0x73736563637553 && v0 == 0xE700000000000000)
      {

        v6 = 3;
      }

      else
      {
        v14 = OUTLINED_FUNCTION_0_9(0x73736563637553, 0xE700000000000000);

        v6 = 3;
        if ((v14 & 1) == 0)
        {
          v6 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v6);
}

void ShortcutsSafety.ErrorSource.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static ShortcutsSafety.ErrorSource.allCases.getter()
{
  v3 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_16_0();
  if (!(!v15 & v14))
  {
    v41 = OUTLINED_FUNCTION_39(v13);
    OUTLINED_FUNCTION_84_2(v41, v42, v43, v44, &qword_1EAE438F0, &qword_19399D758);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v9, v10, v11, v12);
  if (v21 != v22)
  {
    v45 = OUTLINED_FUNCTION_39(v20);
    OUTLINED_FUNCTION_85(v45, v46, v47, v48, &qword_1EAE438F0, &qword_19399D758);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v16, v17, v18, v19);
  if (v21 != v22)
  {
    v49 = OUTLINED_FUNCTION_39(v27);
    v23 = sub_1934B0FCC(v49, v1, 1, v50, &qword_1EAE438F0, &qword_19399D758);
    v26 = v23;
  }

  OUTLINED_FUNCTION_9_7(v23, v24, v25, v26);
  if (!(v21 ^ v22 | v15))
  {
    v51 = OUTLINED_FUNCTION_39(v32);
    v28 = OUTLINED_FUNCTION_84_2(v51, v52, v53, v54, &qword_1EAE438F0, &qword_19399D758);
    v31 = v28;
  }

  OUTLINED_FUNCTION_3_7(v28, v29, v30, v31);
  if (!(v21 ^ v22 | v15))
  {
    v55 = OUTLINED_FUNCTION_39(v37);
    v33 = OUTLINED_FUNCTION_85(v55, v56, v57, v58, &qword_1EAE438F0, &qword_19399D758);
    v36 = v33;
  }

  OUTLINED_FUNCTION_20_29(v33, v34, v35, v36);
  v39 = *(v38 + 3);
  if (v2 + 6 > (v39 >> 1))
  {
    v59 = OUTLINED_FUNCTION_39(v39);
    v38 = OUTLINED_FUNCTION_84_2(v59, v60, v61, v62, &qword_1EAE438F0, &qword_19399D758);
  }

  *(v38 + 2) = v2 + 6;
  return OUTLINED_FUNCTION_38_1(v38, &v38[16 * v0]);
}

uint64_t ShortcutsSafety.ErrorSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6441797465666153;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x656469727265764FLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

void ShortcutsSafety.ErrorSource.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0xD000000000000012 ? (v5 = 0x8000000193A3F7F0 == v0) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A3F7F0) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0xD000000000000013 && 0x8000000193A3F7D0 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A3F7D0) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = v1 == 0x6441797465666153 && v0 == 0xED00007265747061;
      if (v8 || (OUTLINED_FUNCTION_0_9(0x6441797465666153, 0xED00007265747061) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v9 = v1 == 0xD000000000000013 && 0x8000000193A3F7B0 == v0;
        if (v9 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A3F7B0) & 1) != 0)
        {

          v6 = 3;
        }

        else if (v1 == 0x656469727265764FLL && v0 == 0xE900000000000073)
        {

          v6 = 4;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_0_9(0x656469727265764FLL, 0xE900000000000073);

          v6 = 4;
          if ((v11 & 1) == 0)
          {
            v6 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v6);
}

uint64_t ShortcutsSafety.Modality.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x49646E4174786554;
  }

  return 0x796C6E4F74786554;
}

void ShortcutsSafety.Modality.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x796C6E4F74786554 ? (v5 = v0 == 0xE800000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x796C6E4F74786554, 0xE800000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x49646E4174786554 && v0 == 0xEC0000006567616DLL)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x49646E4174786554, 0xEC0000006567616DLL);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_19_5(v6);
}

void ShortcutsSafety.InstanceType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t ShortcutsSafety.InstanceType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *sub_1937E4BA4(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_95_0();
  v9 = sub_1934B0FCC(v4, v5, v6, v7, a1, a2);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    OUTLINED_FUNCTION_51((v10 > 1), v11 + 1, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 2) = v13;
  v14 = &v9[16 * v11];
  *(v14 + 4) = 0;
  v14[40] = 0;
  v15 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    OUTLINED_FUNCTION_51((v10 > 1), v11 + 2, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 2) = v15;
  v16 = &v9[16 * v13];
  *(v16 + 4) = 0;
  v16[40] = 1;
  if (v12 < (v11 + 3))
  {
    v9 = OUTLINED_FUNCTION_51((v10 > 1), v11 + 3, v8, v9);
  }

  *(v9 + 2) = v11 + 3;
  v17 = &v9[16 * v15];
  *(v17 + 4) = 1;
  v17[40] = 1;
  return v9;
}

uint64_t ShortcutsSafety.InstanceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x65736E6F70736552;
  }

  return 0x74706D6F7250;
}

void ShortcutsSafety.InstanceType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x74706D6F7250 ? (v5 = v0 == 0xE600000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x74706D6F7250, 0xE600000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x65736E6F70736552 && v0 == 0xE800000000000000)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x65736E6F70736552, 0xE800000000000000);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_19_5(v6);
}

void ShortcutsSafety.OutputType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static ShortcutsSafety.OutputType.allCases.getter()
{
  v3 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_16_0();
  if (!(!v15 & v14))
  {
    v47 = OUTLINED_FUNCTION_39(v13);
    OUTLINED_FUNCTION_84_2(v47, v48, v49, v50, &qword_1EAE438D8, &qword_19399D740);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v9, v10, v11, v12);
  if (v21 != v22)
  {
    v51 = OUTLINED_FUNCTION_39(v20);
    OUTLINED_FUNCTION_85(v51, v52, v53, v54, &qword_1EAE438D8, &qword_19399D740);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v16, v17, v18, v19);
  if (v21 != v22)
  {
    v55 = OUTLINED_FUNCTION_39(v27);
    v23 = sub_1934B0FCC(v55, v1, 1, v56, &qword_1EAE438D8, &qword_19399D740);
    v26 = v23;
  }

  OUTLINED_FUNCTION_9_7(v23, v24, v25, v26);
  if (!(v21 ^ v22 | v15))
  {
    v57 = OUTLINED_FUNCTION_39(v32);
    v28 = OUTLINED_FUNCTION_84_2(v57, v58, v59, v60, &qword_1EAE438D8, &qword_19399D740);
    v31 = v28;
  }

  OUTLINED_FUNCTION_3_7(v28, v29, v30, v31);
  if (!(v21 ^ v22 | v15))
  {
    v61 = OUTLINED_FUNCTION_39(v37);
    v33 = OUTLINED_FUNCTION_85(v61, v62, v63, v64, &qword_1EAE438D8, &qword_19399D740);
    v36 = v33;
  }

  OUTLINED_FUNCTION_20_29(v33, v34, v35, v36);
  v39 = *(v38 + 3);
  v40 = v2 + 6;
  if (v2 + 6 > (v39 >> 1))
  {
    v65 = OUTLINED_FUNCTION_39(v39);
    v38 = OUTLINED_FUNCTION_84_2(v65, v66, v67, v68, &qword_1EAE438D8, &qword_19399D740);
  }

  *(v38 + 2) = v40;
  v41 = &v38[16 * v0];
  *(v41 + 4) = 4;
  v41[40] = v1;
  v42 = *(v38 + 3);
  v43 = v2 + 7;
  if (v2 + 7 > (v42 >> 1))
  {
    v69 = OUTLINED_FUNCTION_39(v42);
    v38 = OUTLINED_FUNCTION_85(v69, v70, v71, v72, &qword_1EAE438D8, &qword_19399D740);
  }

  *(v38 + 2) = v43;
  v44 = &v38[16 * v40];
  *(v44 + 4) = 5;
  v44[40] = v1;
  v45 = *(v38 + 3);
  if (v2 + 8 > (v45 >> 1))
  {
    v73 = OUTLINED_FUNCTION_39(v45);
    v38 = OUTLINED_FUNCTION_84_2(v73, v74, v75, v76, &qword_1EAE438D8, &qword_19399D740);
  }

  *(v38 + 2) = v2 + 8;
  return OUTLINED_FUNCTION_38_1(v38, &v38[16 * v43]);
}

uint64_t ShortcutsSafety.OutputType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1954047316;
  switch(*v0)
  {
    case 1:
      result = 1819242306;
      break;
    case 2:
      result = 0x616E6F6974636944;
      break;
    case 3:
      result = 1953720652;
      break;
    case 4:
      result = 0x7265626D754ELL;
      break;
    case 5:
      result = 1702125892;
      break;
    case 6:
      result = 0x797469746E45;
      break;
    default:
      return result;
  }

  return result;
}

void ShortcutsSafety.OutputType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 1954047316 ? (v5 = v0 == 0xE400000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(1954047316, 0xE400000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 1819242306 && v0 == 0xE400000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_9(1819242306, 0xE400000000000000) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = v1 == 0x616E6F6974636944 && v0 == 0xEA00000000007972;
      if (v8 || (OUTLINED_FUNCTION_0_9(0x616E6F6974636944, 0xEA00000000007972) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v9 = v1 == 1953720652 && v0 == 0xE400000000000000;
        if (v9 || (OUTLINED_FUNCTION_0_9(1953720652, 0xE400000000000000) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v10 = v1 == 0x7265626D754ELL && v0 == 0xE600000000000000;
          if (v10 || (OUTLINED_FUNCTION_0_9(0x7265626D754ELL, 0xE600000000000000) & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            v11 = v1 == 1702125892 && v0 == 0xE400000000000000;
            if (v11 || (OUTLINED_FUNCTION_0_9(1702125892, 0xE400000000000000) & 1) != 0)
            {

              v6 = 5;
            }

            else if (v1 == 0x797469746E45 && v0 == 0xE600000000000000)
            {

              v6 = 6;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_0_9(0x797469746E45, 0xE600000000000000);

              v6 = 6;
              if ((v13 & 1) == 0)
              {
                v6 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v6);
}

unint64_t sub_1937E5310()
{
  result = qword_1EAE438B0;
  if (!qword_1EAE438B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438B0);
  }

  return result;
}

unint64_t sub_1937E5368()
{
  result = qword_1EAE438B8;
  if (!qword_1EAE438B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438B8);
  }

  return result;
}

unint64_t sub_1937E53C0()
{
  result = qword_1EAE438C0;
  if (!qword_1EAE438C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438C0);
  }

  return result;
}

unint64_t sub_1937E5418()
{
  result = qword_1EAE438C8;
  if (!qword_1EAE438C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438C8);
  }

  return result;
}

unint64_t sub_1937E5470()
{
  result = qword_1EAE438D0;
  if (!qword_1EAE438D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438D0);
  }

  return result;
}

void sub_1937E54D4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE048);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_156();
  *(v3 + 16) = xmmword_193951270;
  v4 = v3 + v0 + dword_1EAEAE080;
  *(v3 + v0) = 1;
  *v4 = "action";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v3 + v0 + v2);
  *v8 = 2;
  *v7 = "errorSource";
  v7[1] = 11;
  v9 = OUTLINED_FUNCTION_1_3(v7);
  (v6)(v9);
  OUTLINED_FUNCTION_3_1(v3 + v0 + 2 * v2);
  OUTLINED_FUNCTION_39_7(v10);
  *v11 = "modality";
  v11[1] = 8;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v3 + v0 + 3 * v2);
  *v14 = 4;
  *v13 = "instanceType";
  v13[1] = 12;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v6)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v3 + v0 + 4 * v2);
  *v17 = 5;
  *v16 = "outputType";
  v16[1] = 10;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v6)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v3 + v0 + 5 * v2);
  *v20 = 6;
  *v19 = "systemLocale";
  v19[1] = 12;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v6)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v3 + v0 + 6 * v2);
  *v23 = 7;
  *v22 = "region";
  v22[1] = v24;
  v25 = OUTLINED_FUNCTION_1_3(v22);
  (v6)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v3 + v0 + 7 * v2);
  *v27 = 8;
  *v26 = "modelIdentifier";
  v26[1] = 15;
  v28 = OUTLINED_FUNCTION_1_3(v26);
  (v6)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v3 + v0 + 8 * v2);
  *v30 = 9;
  *v29 = "modelVersion";
  *(v29 + 8) = 12;
  *(v29 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937E5798()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v4 + 28));
        goto LABEL_10;
      case 2:
        v8 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v8 + 32));
        goto LABEL_10;
      case 3:
        v6 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v6 + 36));
        goto LABEL_10;
      case 4:
        v7 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v7 + 40));
        goto LABEL_10;
      case 5:
        v5 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v5 + 44));
LABEL_10:
        sub_1934982A8();
        goto LABEL_12;
      case 6:
      case 7:
      case 8:
      case 9:
        type metadata accessor for ShortcutsSafety();
        sub_19393C200();
LABEL_12:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1937E596C()
{
  v1 = v0;
  type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_238();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_32_6(v25, 1, v3, &type metadata for ShortcutsSafety.Action, v4, &off_1F07F3DB0);
    v1 = v0;
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_238();
    if ((v5 & 1) != 0 || (OUTLINED_FUNCTION_147(), OUTLINED_FUNCTION_32_6(v25, 2, v6, &type metadata for ShortcutsSafety.ErrorSource, v7, &off_1F07F3DD8), !v0))
    {
      OUTLINED_FUNCTION_238();
      if ((v8 & 1) != 0 || (OUTLINED_FUNCTION_147(), OUTLINED_FUNCTION_32_6(v25, 3, v9, &type metadata for ShortcutsSafety.Modality, v10, &off_1F07F3E00), !v0))
      {
        OUTLINED_FUNCTION_238();
        if ((v11 & 1) != 0 || (OUTLINED_FUNCTION_147(), OUTLINED_FUNCTION_32_6(v25, 4, v12, &type metadata for ShortcutsSafety.InstanceType, v13, &off_1F07F3E28), !v0))
        {
          OUTLINED_FUNCTION_238();
          if ((v14 & 1) != 0 || (OUTLINED_FUNCTION_147(), OUTLINED_FUNCTION_32_6(v25, 5, v15, &type metadata for ShortcutsSafety.OutputType, v16, &off_1F07F3E50), !v0))
          {
            OUTLINED_FUNCTION_16_4();
            if (!v17 || (OUTLINED_FUNCTION_2_7(*v18, v17, 6), !v0))
            {
              OUTLINED_FUNCTION_16_4();
              if (!v19 || (OUTLINED_FUNCTION_2_7(*v20, v19, 7), !v0))
              {
                OUTLINED_FUNCTION_16_4();
                if (!v21 || (OUTLINED_FUNCTION_2_7(*v22, v21, 8), !v0))
                {
                  OUTLINED_FUNCTION_16_4();
                  if (v23)
                  {
                    OUTLINED_FUNCTION_2_7(*v24, v23, 9);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1937E5B48(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE43900;

  return v1;
}

void sub_1937E5BE4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE060);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBD0);
  *v0 = "ActionUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "SafetyReject";
  *(v8 + 1) = 12;
  v9 = OUTLINED_FUNCTION_56_0(v8);
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "OtherReject";
  v10[1] = 11;
  v12 = OUTLINED_FUNCTION_56_0(v10);
  (v7)(v12);
  OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  OUTLINED_FUNCTION_39_7(v13);
  *v14 = "HandleWithCare";
  v14[1] = 14;
  v15 = OUTLINED_FUNCTION_56_0(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v17 = 4;
  *v16 = "Success";
  *(v16 + 8) = 7;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937E5DF4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE078);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_1939526E0);
  *v0 = "ErrorSourceUnknown";
  *(v0 + 8) = 18;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "InputTextSanitizer";
  *(v8 + 1) = 18;
  v9 = OUTLINED_FUNCTION_56_0(v8);
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "InputPixelSanitizer";
  v10[1] = 19;
  v12 = OUTLINED_FUNCTION_56_0(v10);
  (v7)(v12);
  OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  OUTLINED_FUNCTION_39_7(v13);
  *v14 = "SafetyAdapter";
  v14[1] = 13;
  v15 = OUTLINED_FUNCTION_56_0(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v17 = 4;
  *v16 = "OutputTextSanitizer";
  v16[1] = 19;
  v18 = OUTLINED_FUNCTION_56_0(v16);
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v20 = 5;
  *v19 = "Overrides";
  *(v19 + 8) = 9;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937E6034()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE090);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_60_0(v5, xmmword_19394FBB0);
  *v0 = "ModalityUnknown";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "TextOnly";
  *(v8 + 1) = 8;
  v8[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = 2;
  *v9 = "TextAndImage";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937E61DC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE0A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_60_0(v5, xmmword_19394FBB0);
  *v0 = "InstanceTypeUnknown";
  *(v0 + 8) = 19;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "InstanceTypePrompt";
  *(v8 + 1) = 18;
  v8[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = 2;
  *v9 = "InstanceTypeResponse";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1937E6384()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE0C0);
  __swift_project_value_buffer(v2, qword_1EAEAE0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v21 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v21, xmmword_1939526B0);
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v7 = "Text";
  *(v7 + 1) = 4;
  v7[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v8 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v9 = 2;
  *v8 = "Bool";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  OUTLINED_FUNCTION_39_7(v10);
  *v11 = "Dictionary";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v13 = 4;
  *v12 = "List";
  *(v12 + 8) = 4;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v14 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v15 = 5;
  *v14 = "Number";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v16 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v17 = 6;
  *v16 = "Date";
  *(v16 + 8) = 4;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v18 = OUTLINED_FUNCTION_3_1(v1 + 7 * v4);
  *v19 = 7;
  *v18 = "Entity";
  *(v18 + 8) = 6;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  return sub_19393C410();
}

uint64_t ShortcutsSafety.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ShortcutsSafety();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for ShortcutsSafety()
{
  result = qword_1EAE461C0;
  if (!qword_1EAE461C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShortcutsSafety.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ShortcutsSafety();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

void ShortcutsSafety.action.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 28));
}

void ShortcutsSafety.errorSource.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

void ShortcutsSafety.modality.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 36));
}

void ShortcutsSafety.instanceType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 40));
}

void ShortcutsSafety.outputType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 44));
}

uint64_t ShortcutsSafety.systemLocale.getter()
{
  type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ShortcutsSafety.systemLocale.setter()
{
  OUTLINED_FUNCTION_11_55();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ShortcutsSafety.region.getter()
{
  type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ShortcutsSafety.region.setter()
{
  OUTLINED_FUNCTION_11_55();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ShortcutsSafety.modelIdentifier.getter()
{
  type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ShortcutsSafety.modelIdentifier.setter()
{
  OUTLINED_FUNCTION_11_55();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ShortcutsSafety.modelVersion.getter()
{
  type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ShortcutsSafety.modelVersion.setter()
{
  OUTLINED_FUNCTION_11_55();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1937E6DB4@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.Action.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E6DDC@<X0>(uint64_t *a1@<X8>)
{
  result = static ShortcutsSafety.Action.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E6E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937E6F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937E703C@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.ErrorSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E7064@<X0>(uint64_t *a1@<X8>)
{
  result = static ShortcutsSafety.ErrorSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E7154@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.Modality.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937E717C@<X0>(char **a1@<X8>)
{
  result = static ShortcutsSafety.Modality.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E726C@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.InstanceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937E7294@<X0>(char **a1@<X8>)
{
  result = static ShortcutsSafety.InstanceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E7384@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.OutputType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E73AC@<X0>(uint64_t *a1@<X8>)
{
  result = static ShortcutsSafety.OutputType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ShortcutsSafety.hashValue.getter()
{
  sub_19393CAB0();
  ShortcutsSafety.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937E74DC()
{
  sub_19393CAB0();
  ShortcutsSafety.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1937E7620()
{
  result = qword_1EAE43960;
  if (!qword_1EAE43960)
  {
    type metadata accessor for ShortcutsSafety();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43960);
  }

  return result;
}

void sub_1937E76A4()
{
  sub_19349D140(319);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE3A968, &type metadata for ShortcutsSafety.Action);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE3A970, &type metadata for ShortcutsSafety.ErrorSource);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1EAE3A960, &type metadata for ShortcutsSafety.Modality);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1EAE3A918, &type metadata for ShortcutsSafety.InstanceType);
            if (v5 <= 0x3F)
            {
              sub_19349D1FC(319, &qword_1EAE3A920, &type metadata for ShortcutsSafety.OutputType);
              if (v6 <= 0x3F)
              {
                sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1937E7898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5124A8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5124A8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.SafetyGuardrails.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_70 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5124A8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43968, &qword_19399DDE0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AppleIntelligence.Reporting.SafetyGuardrails.attribute(_:)(void (*a1)(void))
{
  result = sub_1937E7CA8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E7CF0(void (*a1)(void))
{
  result = sub_1937E7CA8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E7D20(uint64_t a1)
{
  result = sub_1937E7D48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937E7D48()
{
  result = qword_1ED5028A0;
  if (!qword_1ED5028A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5028A0);
  }

  return result;
}

_BYTE *_s16SafetyGuardrailsOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937E7E90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED512508);
  v4 = __swift_project_value_buffer(v3, qword_1ED512508);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.SafetyOverrides.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_71 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512508);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43970, &qword_19399DE68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AppleIntelligence.Reporting.SafetyOverrides.attribute(_:)(void (*a1)(void))
{
  result = sub_1937E82A0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E82E8(void (*a1)(void))
{
  result = sub_1937E82A0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E8318(uint64_t a1)
{
  result = sub_1937E8340();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937E8340()
{
  result = qword_1EAE3A9C8;
  if (!qword_1EAE3A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A9C8);
  }

  return result;
}

_BYTE *_s15SafetyOverridesOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceSafetyGuardrails.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43978, &qword_19399DEE0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1937E8648(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE43978, &qword_19399DEE0, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE43978, &qword_19399DEE0);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1937E8648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceSafetyGuardrails.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43978, &qword_19399DEE0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE43978, &qword_19399DEE0, v8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937E87EC(v6, a1);
  }

  return result;
}

uint64_t sub_1937E87EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceSafetyGuardrails.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43978, &qword_19399DEE0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1937EA318() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1937E87EC(v11, v36);
      v29 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppleIntelligenceSafetyGuardrails.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43978, &qword_19399DEE0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1937E8648(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE43978, &qword_19399DEE0, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE43978, &qword_19399DEE0);
  return v11;
}

id static AppleIntelligenceSafetyGuardrails.columns.getter()
{
  v80 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A14520);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v20[2].n128_u64[0] = sub_19393C850();
  v30 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v31 = OUTLINED_FUNCTION_11_56();
  result = OUTLINED_FUNCTION_3_5(v31, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v32 = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_2_4(v32, v33, v34, v35, v36, v37, v38, v39, v78);
  OUTLINED_FUNCTION_2_13(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v40[2].n128_u64[0] = sub_19393C850();
  v50 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v51, v52, v53, v54, v40, 4, 0);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v55 = swift_initStackObject();
  v63 = OUTLINED_FUNCTION_2_4(v55, v56, v57, v58, v59, v60, v61, v62, v79);
  OUTLINED_FUNCTION_2_13(v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v63[2].n128_u64[0] = sub_19393C850();
  v73 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v74, v75, v76, v77, v63, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v80;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_1937E8F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 == 0xD000000000000011 && 0x8000000193A14520 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0(0xD000000000000011, 0x8000000193A14520) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
    v9 = result[7];
    goto LABEL_7;
  }

  v10 = OUTLINED_FUNCTION_11_56();
  v12 = a1 == v10 && a2 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_0(v10, v11) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
    v9 = result[8];
LABEL_7:
    if (*(v3 + v9 + 8))
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  v13 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_59_0(0x6E6F69746361, 0xE600000000000000) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
    if (*(v3 + result[9] + 9))
    {
LABEL_21:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

LABEL_29:
    OUTLINED_FUNCTION_147();
    return sub_1934948FC();
  }

  v14 = OUTLINED_FUNCTION_14_2();
  v16 = a1 == v14 && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_59_0(v14, v15) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
    if (*(v3 + result[10] + 9))
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v18 = v17;
  *v17 = a1;
  v17[1] = a2;
  v17[5] = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18 + 2);
  sub_1937E8648(v3, boxed_opaque_existential_1Tm);
  *(v18 + 48) = 1;
  swift_willThrow();
}

uint64_t AppleIntelligenceSafetyGuardrails.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = a1 + v2[9];
  j__OUTLINED_FUNCTION_131(v7);
  v8 = a1 + v2[10];
  OUTLINED_FUNCTION_131(v8);
  *a1 = *sub_1937EA318();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

uint64_t static AppleIntelligenceSafetyGuardrails.== infix(_:_:)()
{
  type metadata accessor for AppleIntelligenceSafetyGuardrails();
  OUTLINED_FUNCTION_3();
  if (v0)
  {
    if (!v1)
    {
      return 0;
    }

    v4 = *v2 == *v3 && v0 == v1;
    if (!v4 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *v7 == *v8 && v5 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    OUTLINED_FUNCTION_25_3();
    if (v11)
    {
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      if (v12)
      {
        return 0;
      }

      sub_1937E93E8();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_25_3();
    if (v14)
    {
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      if (v15)
      {
        return 0;
      }

      sub_1937E9394();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  return 0;
}

unint64_t sub_1937E9394()
{
  result = qword_1EAE43980;
  if (!qword_1EAE43980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43980);
  }

  return result;
}

unint64_t sub_1937E93E8()
{
  result = qword_1EAE43988;
  if (!qword_1EAE43988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43988);
  }

  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.hash(into:)()
{
  v1 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  if (*(v0 + v1[7] + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v1[8] + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v1[9] + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    sub_1937E956C();
    sub_19393C540();
  }

  if (*(v0 + v1[10] + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_3_10();
  sub_1937E95C0();
  return sub_19393C540();
}

unint64_t sub_1937E956C()
{
  result = qword_1EAE43990;
  if (!qword_1EAE43990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43990);
  }

  return result;
}

unint64_t sub_1937E95C0()
{
  result = qword_1EAE43998;
  if (!qword_1EAE43998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43998);
  }

  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.Action.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x7463656A6552;
  }

  return 1701208403;
}

void AppleIntelligenceSafetyGuardrails.Action.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 1701208403 ? (v5 = v0 == 0xE400000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(1701208403, 0xE400000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x7463656A6552 && v0 == 0xE600000000000000)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x7463656A6552, 0xE600000000000000);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t AppleIntelligenceSafetyGuardrails.InstanceType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v3 = result == 1 || result == 2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.InstanceType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *sub_1937E97B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    v5 = *(v4 + 3);
    v7 = v5 >> 1;
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    v5 = *(v4 + 3);
    v7 = v5 >> 1;
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v6 + 3;
  v12 = &v4[16 * v10];
  *(v12 + 4) = 1;
  v12[40] = 1;
  return v4;
}

uint64_t AppleIntelligenceSafetyGuardrails.InstanceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x65736E6F70736552;
  }

  return 0x74706D6F7250;
}

void AppleIntelligenceSafetyGuardrails.InstanceType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x74706D6F7250 ? (v5 = v0 == 0xE600000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x74706D6F7250, 0xE600000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x65736E6F70736552 && v0 == 0xE800000000000000)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x65736E6F70736552, 0xE800000000000000);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_12_1(v6);
}

unint64_t sub_1937E99E8()
{
  result = qword_1EAE439A0;
  if (!qword_1EAE439A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE439A0);
  }

  return result;
}

unint64_t sub_1937E9A40()
{
  result = qword_1EAE439A8;
  if (!qword_1EAE439A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE439A8);
  }

  return result;
}

void sub_1937E9A9C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE0D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBC0;
  v6 = v5 + v4 + dword_1EAEAE110;
  *(v5 + v4) = 1;
  *v6 = "useCaseIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v5 + v4 + v2);
  *v10 = 2;
  *v9 = "assetVersion";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v11 = OUTLINED_FUNCTION_3_1(v5 + v4 + 2 * v2);
  *v12 = 3;
  *v11 = "action";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v13 = OUTLINED_FUNCTION_3_1(v5 + v4 + 3 * v2);
  *v14 = 4;
  *v13 = "instanceType";
  *(v13 + 8) = 12;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937E9C88()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
      case 2:
        type metadata accessor for AppleIntelligenceSafetyGuardrails();
        sub_19393C200();
        goto LABEL_7;
      case 3:
      case 4:
        type metadata accessor for AppleIntelligenceSafetyGuardrails();
        sub_1934982A8();
LABEL_7:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937E9DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  v8 = result;
  if (*(v3 + *(result + 28) + 8))
  {
    result = sub_19393C3C0();
  }

  if (!v4)
  {
    if (*(v3 + v8[8] + 8))
    {
      result = sub_19393C3C0();
    }

    if ((*(v3 + v8[9] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      result = sub_193447324(v9, 3, a2, &type metadata for AppleIntelligenceSafetyGuardrails.Action, a3, &off_1F07F4338);
    }

    if ((*(v3 + v8[10] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      return sub_193447324(v9, 4, a2, &type metadata for AppleIntelligenceSafetyGuardrails.InstanceType, a3, &off_1F07F4360);
    }
  }

  return result;
}

uint64_t sub_1937E9F0C(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE439C0;

  return v1;
}

void sub_1937E9FA8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE0F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_60_0(v5, xmmword_19394FBB0);
  *v0 = "ActionUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "Safe";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "Reject";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937EA160()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE108);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_60_0(v5, xmmword_19394FBB0);
  *v0 = "InstanceTypeUnknown";
  *(v0 + 8) = 19;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "InstanceTypePrompt";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "InstanceTypeResponse";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceSafetyGuardrails.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceSafetyGuardrails()
{
  result = qword_1ED508450;
  if (!qword_1ED508450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceSafetyGuardrails.useCaseIdentifier.getter()
{
  type metadata accessor for AppleIntelligenceSafetyGuardrails();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyGuardrails.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.assetVersion.getter()
{
  type metadata accessor for AppleIntelligenceSafetyGuardrails();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyGuardrails.assetVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void AppleIntelligenceSafetyGuardrails.action.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  OUTLINED_FUNCTION_37_0(*(v0 + 36));
}

void AppleIntelligenceSafetyGuardrails.instanceType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  OUTLINED_FUNCTION_37_0(*(v0 + 40));
}

uint64_t sub_1937EA7A8@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceSafetyGuardrails.Action.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937EA7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static AppleIntelligenceSafetyGuardrails.Action.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937EA82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937EA934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937EAA40@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceSafetyGuardrails.InstanceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937EAA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static AppleIntelligenceSafetyGuardrails.InstanceType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceSafetyGuardrails.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937EABA8()
{
  sub_19393CAB0();
  AppleIntelligenceSafetyGuardrails.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1937EAC50()
{
  result = qword_1EAE439F0;
  if (!qword_1EAE439F0)
  {
    type metadata accessor for AppleIntelligenceSafetyGuardrails();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE439F0);
  }

  return result;
}

void sub_1937EACD4()
{
  sub_19349D140(319);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED5028A8, &type metadata for AppleIntelligenceSafetyGuardrails.Action);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED5028B0, &type metadata for AppleIntelligenceSafetyGuardrails.InstanceType);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceSafetyOverrides.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE439F8, &qword_19399E310);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1937EAFDC(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE439F8, &qword_19399E310, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE439F8, &qword_19399E310);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1937EAFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceSafetyOverrides.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE439F8, &qword_19399E310);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE439F8, &qword_19399E310, v8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937EB180(v6, a1);
  }

  return result;
}

uint64_t sub_1937EB180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceSafetyOverrides.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE439F8, &qword_19399E310);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1937ED250() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1937EB180(v11, v36);
      v29 = type metadata accessor for AppleIntelligenceSafetyOverrides();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppleIntelligenceSafetyOverrides.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE439F8, &qword_19399E310);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1937EAFDC(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE439F8, &qword_19399E310, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE439F8, &qword_19399E310);
  return v11;
}

id static AppleIntelligenceSafetyOverrides.columns.getter()
{
  v114 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A14520);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  v32 = OUTLINED_FUNCTION_15_6();
  result = OUTLINED_FUNCTION_3_5(v32, 0xEC000000656C6163);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v33 = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_2_4(v33, v34, v35, v36, v37, v38, v39, v40, v109);
  OUTLINED_FUNCTION_5_10(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v51 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v51);
  result = OUTLINED_FUNCTION_3_5(0x6E6F69676572, 0xE600000000000000);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v52 = swift_initStackObject();
  v60 = OUTLINED_FUNCTION_2_4(v52, v53, v54, v55, v56, v57, v58, v59, v110);
  OUTLINED_FUNCTION_5_10(v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v70 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v70);
  v71 = OUTLINED_FUNCTION_11_56();
  result = OUTLINED_FUNCTION_3_5(v71, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v72 = swift_initStackObject();
  v80 = OUTLINED_FUNCTION_2_4(v72, v73, v74, v75, v76, v77, v78, v79, v111);
  OUTLINED_FUNCTION_5_10(v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  v90 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v90);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v91, v92, v93, v94, v0, 4, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v95 = swift_initStackObject();
  v103 = OUTLINED_FUNCTION_2_4(v95, v96, v97, v98, v99, v100, v101, v102, v112);
  *(v103 + 16) = v113;
  *(v103 + 32) = sub_19393C850();
  v104 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v105, v106, v107, v108, v103, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v114;
  }

LABEL_13:
  __break(1u);
  return result;
}

int *sub_1937EB918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 == 0xD000000000000011 && 0x8000000193A14520 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0(0xD000000000000011, 0x8000000193A14520) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v9 = result[7];
    goto LABEL_7;
  }

  v10 = OUTLINED_FUNCTION_15_6();
  v12 = a1 == v10 && a2 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_0(v10, v11) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v9 = result[8];
    goto LABEL_7;
  }

  v13 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_59_0(0x6E6F69676572, 0xE600000000000000) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v9 = result[9];
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_11_56();
  v16 = a1 == v14 && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_59_0(v14, v15) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v9 = result[10];
LABEL_7:
    if (*(v3 + v9 + 8))
    {
      return sub_1934948FC();
    }

    goto LABEL_33;
  }

  v17 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v17 || (OUTLINED_FUNCTION_59_0(0x6E6F69746361, 0xE600000000000000) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    if (*(v3 + result[11] + 9))
    {
LABEL_33:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

LABEL_41:
    OUTLINED_FUNCTION_147();
    return sub_1934948FC();
  }

  v18 = OUTLINED_FUNCTION_14_2();
  v20 = a1 == v18 && a2 == v19;
  if (v20 || (OUTLINED_FUNCTION_59_0(v18, v19) & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    if (*(v3 + result[12] + 9))
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v22 = v21;
  *v21 = a1;
  v21[1] = a2;
  v21[5] = type metadata accessor for AppleIntelligenceSafetyOverrides();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v22 + 2);
  sub_1937EAFDC(v3, boxed_opaque_existential_1Tm);
  *(v22 + 48) = 1;
  swift_willThrow();
}

uint64_t AppleIntelligenceSafetyOverrides.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = a1 + v2[11];
  j__OUTLINED_FUNCTION_131(v9);
  v10 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v10);
  *a1 = *sub_1937ED250();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  *(v9 + 8) = 256;
  *v10 = 0;
  *(v10 + 8) = 256;
  return result;
}

uint64_t static AppleIntelligenceSafetyOverrides.== infix(_:_:)()
{
  type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_3();
  if (v2)
  {
    if (!v0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v1);
    v5 = v5 && v3 == v4;
    if (!v5 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v7);
    v11 = v5 && v9 == v10;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v14)
  {
    if (!v12)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v13);
    v17 = v5 && v15 == v16;
    if (!v17 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v20)
  {
    if (!v18)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v19);
    v23 = v5 && v21 == v22;
    if (!v23 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_37:
    OUTLINED_FUNCTION_25_3();
    if (v25)
    {
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      if (v26)
      {
        return 0;
      }

      sub_1937EBEF0();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_25_3();
    if (v28)
    {
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      if (v29)
      {
        return 0;
      }

      sub_1937EBE9C();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v18)
  {
    goto LABEL_37;
  }

  return 0;
}

unint64_t sub_1937EBE9C()
{
  result = qword_1EAE43A00;
  if (!qword_1EAE43A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A00);
  }

  return result;
}

unint64_t sub_1937EBEF0()
{
  result = qword_1EAE43A08;
  if (!qword_1EAE43A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A08);
  }

  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.hash(into:)()
{
  v1 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  if (*(v0 + v1[7] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v1[8] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v1[9] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v1[10] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v1[11] + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    sub_1937EC084();
    sub_19393C540();
  }

  if (*(v0 + v1[12] + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_3_10();
  sub_1937EC0D8();
  return sub_19393C540();
}

unint64_t sub_1937EC084()
{
  result = qword_1EAE43A10;
  if (!qword_1EAE43A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A10);
  }

  return result;
}

unint64_t sub_1937EC0D8()
{
  result = qword_1EAE43A18;
  if (!qword_1EAE43A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A18);
  }

  return result;
}

void AppleIntelligenceSafetyOverrides.Action.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static AppleIntelligenceSafetyOverrides.Action.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43A38, &qword_19399E420);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_84_2(v16, v17, v18, v19, &qword_1EAE43A38, &qword_19399E420);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v20 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v20, v2 + 2, 1, v21, &qword_1EAE43A38, &qword_19399E420);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v22 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v22, v2 + 3, 1, v23, &qword_1EAE43A38, &qword_19399E420);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v24 = OUTLINED_FUNCTION_39(v10);
    v0 = OUTLINED_FUNCTION_84_2(v24, v25, v26, v27, &qword_1EAE43A38, &qword_19399E420);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v28 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_1934B0FCC(v28, v2 + 5, 1, v29, &qword_1EAE43A38, &qword_19399E420);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t AppleIntelligenceSafetyOverrides.Action.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1701208403;
  switch(*v0)
  {
    case 1:
      result = 0x7463656A6552;
      break;
    case 2:
      result = 0x65766F6D6552;
      break;
    case 3:
      result = 0x6563616C706552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.Action.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v9 = v2 == 1701208403 && v1 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_9(1701208403, 0xE400000000000000) & 1) != 0)
  {

    v7 = 0;
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v10 = v2 == 0x7463656A6552 && v1 == 0xE600000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x7463656A6552, 0xE600000000000000) & 1) != 0)
  {

    v7 = 1;
    goto LABEL_13;
  }

  v11 = v2 == 0x65766F6D6552 && v1 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_0_9(0x65766F6D6552, 0xE600000000000000) & 1) != 0)
  {

    v8 = 1;
    v7 = 2;
  }

  else if (v2 == 0x6563616C706552 && v1 == 0xE700000000000000)
  {

    v8 = 1;
    v7 = 3;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x6563616C706552, 0xE700000000000000);

    v7 = 3;
    if ((v8 & 1) == 0)
    {
      v7 = 0;
    }
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

void AppleIntelligenceSafetyOverrides.InstanceType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t AppleIntelligenceSafetyOverrides.InstanceType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static AppleIntelligenceSafetyOverrides.InstanceType.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43A30, &qword_19399E418);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v10 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_84_2(v10, v11, v12, v13, &qword_1EAE43A30, &qword_19399E418);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v14 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v14, v2 + 2, 1, v15, &qword_1EAE43A30, &qword_19399E418);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v0 = OUTLINED_FUNCTION_84_2(v16, v17, v18, v19, &qword_1EAE43A30, &qword_19399E418);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t AppleIntelligenceSafetyOverrides.InstanceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x65736E6F70736552;
  }

  return 0x74706D6F7250;
}

uint64_t AppleIntelligenceSafetyOverrides.InstanceType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2 == 0x74706D6F7250 && v1 == 0xE600000000000000;
    if (v9 || (OUTLINED_FUNCTION_0_9(0x74706D6F7250, 0xE600000000000000) & 1) != 0)
    {

      v7 = 0;
    }

    else
    {
      if (v2 != 0x65736E6F70736552 || v1 != 0xE800000000000000)
      {
        v8 = OUTLINED_FUNCTION_0_9(0x65736E6F70736552, 0xE800000000000000);

        v7 = v8 & 1;
        goto LABEL_14;
      }

      v7 = 1;
    }

    v8 = 1;
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_1937EC7E0()
{
  result = qword_1EAE43A20;
  if (!qword_1EAE43A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A20);
  }

  return result;
}

unint64_t sub_1937EC838()
{
  result = qword_1EAE43A28;
  if (!qword_1EAE43A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A28);
  }

  return result;
}

void sub_1937EC88C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE120);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v5, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "useCaseIdentifier";
  *(v0 + 8) = 17;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  *v8 = "systemLocale";
  v8[1] = 12;
  v10 = OUTLINED_FUNCTION_41(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 3;
  *v11 = "region";
  v11[1] = 6;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 4;
  *v14 = "assetVersion";
  v14[1] = 12;
  v16 = OUTLINED_FUNCTION_41(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 5;
  *v17 = "action";
  v17[1] = 6;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v21 = 6;
  *v20 = "instanceType";
  *(v20 + 8) = 12;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937ECACC()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        type metadata accessor for AppleIntelligenceSafetyOverrides();
        sub_19393C200();
        goto LABEL_7;
      case 5:
      case 6:
        type metadata accessor for AppleIntelligenceSafetyOverrides();
        sub_1934982A8();
LABEL_7:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1937ECC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_16_4();
  if (v9)
  {
    OUTLINED_FUNCTION_2_7(*v10, v9, 1);
    v5 = v4;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_16_4();
    if (!v11 || (OUTLINED_FUNCTION_2_7(*v12, v11, 2), (v5 = v4) == 0))
    {
      OUTLINED_FUNCTION_16_4();
      if (!v13 || (OUTLINED_FUNCTION_2_7(*v14, v13, 3), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_16_4();
        if (!v15 || (OUTLINED_FUNCTION_2_7(*v16, v15, 4), (v5 = v4) == 0))
        {
          if ((*(v3 + *(v8 + 44) + 9) & 1) != 0 || (OUTLINED_FUNCTION_147(), sub_193447324(v17, 5, a2, &type metadata for AppleIntelligenceSafetyOverrides.Action, a3, &off_1F07F4578), !v5))
          {
            if ((*(v3 + *(v8 + 48) + 9) & 1) == 0)
            {
              OUTLINED_FUNCTION_147();
              sub_193447324(v17, 6, a2, &type metadata for AppleIntelligenceSafetyOverrides.InstanceType, a3, &off_1F07F45A0);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1937ECD90(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE43A40;

  return v1;
}

void sub_1937ECE2C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE138);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "ActionUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "ActionSafe";
  v8[1] = 10;
  v10 = OUTLINED_FUNCTION_41(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  *v11 = "ActionReject";
  v11[1] = 12;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 3;
  *v14 = "ActionRemove";
  v14[1] = 12;
  v16 = OUTLINED_FUNCTION_41(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 4;
  *v17 = "ActionReplace";
  *(v17 + 8) = 13;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937ED060()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE150);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBB0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + dword_1EAEAE188;
  *v6 = 0;
  *v7 = "InstanceTypeUnknown";
  *(v7 + 8) = 19;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  (v11)(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v13 = 1;
  *v12 = "InstanceTypePrompt";
  *(v12 + 8) = 18;
  *(v12 + 16) = 2;
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v15 = 2;
  *v14 = "InstanceTypeResponse";
  *(v14 + 8) = 20;
  *(v14 + 16) = 2;
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceSafetyOverrides.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceSafetyOverrides()
{
  result = qword_1EAE464E0;
  if (!qword_1EAE464E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceSafetyOverrides.useCaseIdentifier.getter()
{
  type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyOverrides.useCaseIdentifier.setter()
{
  OUTLINED_FUNCTION_4_76();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.systemLocale.getter()
{
  type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyOverrides.systemLocale.setter()
{
  OUTLINED_FUNCTION_4_76();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.region.getter()
{
  type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyOverrides.region.setter()
{
  OUTLINED_FUNCTION_4_76();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.assetVersion.getter()
{
  type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyOverrides.assetVersion.setter()
{
  OUTLINED_FUNCTION_4_76();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void AppleIntelligenceSafetyOverrides.action.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_37_0(*(v0 + 44));
}

void AppleIntelligenceSafetyOverrides.instanceType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_37_0(*(v0 + 48));
}

uint64_t sub_1937ED7E0@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceSafetyOverrides.Action.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937ED808@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceSafetyOverrides.Action.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937ED864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937ED96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937EDA78@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceSafetyOverrides.InstanceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937EDAA0@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceSafetyOverrides.InstanceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceSafetyOverrides.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937EDBE0()
{
  sub_19393CAB0();
  AppleIntelligenceSafetyOverrides.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1937EDC88()
{
  result = qword_1EAE43A70;
  if (!qword_1EAE43A70)
  {
    type metadata accessor for AppleIntelligenceSafetyOverrides();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A70);
  }

  return result;
}

void sub_1937EDD0C()
{
  sub_19349D140(319);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE3A9D0, &type metadata for AppleIntelligenceSafetyOverrides.Action);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1EAE3A9A8, &type metadata for AppleIntelligenceSafetyOverrides.InstanceType);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *_s24SensitiveContentAnalysisOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937EDF04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED512568);
  v4 = __swift_project_value_buffer(v3, qword_1ED512568);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.SensitiveContentAnalysis.MediaAnalysis.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_72 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512568);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A78, &qword_19399E780);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.SensitiveContentAnalysis.MediaAnalysis.attribute(_:)(void (*a1)(void))
{
  result = sub_1937EE308(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937EE350(void (*a1)(void))
{
  result = sub_1937EE308(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937EE380(uint64_t a1)
{
  result = sub_1937EE3A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937EE3A8()
{
  result = qword_1EAE43A80;
  if (!qword_1EAE43A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A80);
  }

  return result;
}

_BYTE *_s13MediaAnalysisOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937EE4F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5125C8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5125C8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.SensitiveContentAnalysis.UIInteraction.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_73 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5125C8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A88, &qword_19399E7F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.SensitiveContentAnalysis.UIInteraction.attribute(_:)(void (*a1)(void))
{
  result = sub_1937EE8F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937EE93C(void (*a1)(void))
{
  result = sub_1937EE8F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937EE96C(uint64_t a1)
{
  result = sub_1937EE994();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937EE994()
{
  result = qword_1EAE43A90;
  if (!qword_1EAE43A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A90);
  }

  return result;
}

_BYTE *_s13UIInteractionOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SensitiveContentAnalysisMediaAnalysis.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A98, &qword_19399E870);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1937EEC9C(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE43A98, &qword_19399E870, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE43A98, &qword_19399E870);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1937EEC9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisMediaAnalysis.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A98, &qword_19399E870);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE43A98, &qword_19399E870, v8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937EEE40(v6, a1);
  }

  return result;
}

uint64_t sub_1937EEE40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisMediaAnalysis.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A98, &qword_19399E870);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1937F1A14() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1937EEE40(v11, v36);
      v29 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SensitiveContentAnalysisMediaAnalysis.serialize()()
{
  v1 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A98, &qword_19399E870);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1937EEC9C(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE43A98, &qword_19399E870, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE43A98, &qword_19399E870);
  return v11;
}

id static SensitiveContentAnalysisMediaAnalysis.columns.getter()
{
  v155 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v11, v12, v13, v14, v0, 2, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_57(result);
  inited = swift_initStackObject();
  v24 = OUTLINED_FUNCTION_1_78(inited, v17, v18, v19, v20, v21, v22, v23, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v24[2].n128_u64[0] = sub_19393C850();
  v34 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v35, v36, v37, v38, v24, 4, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_57(result);
  v39 = swift_initStackObject();
  v47 = OUTLINED_FUNCTION_1_78(v39, v40, v41, v42, v43, v44, v45, v46, v150);
  OUTLINED_FUNCTION_2_13(v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  v47[2].n128_u64[0] = sub_19393C850();
  v57 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_57();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v58, v59, v60, v61, v47, 4, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_57(result);
  v62 = swift_initStackObject();
  v70 = OUTLINED_FUNCTION_1_78(v62, v63, v64, v65, v66, v67, v68, v69, v151);
  OUTLINED_FUNCTION_5_10(v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  *(v39 + 32) = sub_19393C850();
  v80 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_20_50();
  OUTLINED_FUNCTION_18_5();
  result = OUTLINED_FUNCTION_3_5(v81, v82);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v83 = swift_initStackObject();
  v91 = OUTLINED_FUNCTION_1_78(v83, v84, v85, v86, v87, v88, v89, v90, v152);
  OUTLINED_FUNCTION_5_10(v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  *(v39 + 32) = sub_19393C850();
  v101 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_14_0();
  result = OUTLINED_FUNCTION_3_5(v102, v103);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_3(result);
  v104 = swift_initStackObject();
  v112 = OUTLINED_FUNCTION_1_78(v104, v105, v106, v107, v108, v109, v110, v111, v153);
  OUTLINED_FUNCTION_5_10(v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
  *(v39 + 32) = sub_19393C850();
  v122 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v123, v124, v125, v126, v39, 4, 0);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_69_3(result);
  v127 = swift_initStackObject();
  v135 = OUTLINED_FUNCTION_1_78(v127, v128, v129, v130, v131, v132, v133, v134, v154);
  OUTLINED_FUNCTION_2_13(v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  v135[2].n128_u64[0] = sub_19393C850();
  v145 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v146, v147, v148, v149, v135, 2, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v155;
  }

LABEL_15:
  __break(1u);
  return result;
}

int *sub_1937EF66C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = OUTLINED_FUNCTION_42_1();
  if (a1 != v6 || v7 != 0xEB00000000657079)
  {
    v3 = v7;
    if ((OUTLINED_FUNCTION_59_0(v6, 0xEB00000000657079) & 1) == 0)
    {
      v11 = OUTLINED_FUNCTION_16_3();
      v12 = a1 == v11 && v3 == 0xE800000000000000;
      if (v12 || (OUTLINED_FUNCTION_59_0(v11, 0xE800000000000000) & 1) != 0)
      {
        result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        if (*(v2 + result[8] + 9))
        {
          goto LABEL_15;
        }

        goto LABEL_44;
      }

      v13 = OUTLINED_FUNCTION_12_57();
      v14 = a1 == v13 && v3 == 0xEB00000000657669;
      if (v14 || (OUTLINED_FUNCTION_59_0(v13, 0xEB00000000657669) & 1) != 0)
      {
        result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        if (*(v2 + result[9] + 9))
        {
          goto LABEL_15;
        }

        goto LABEL_44;
      }

      OUTLINED_FUNCTION_18_5();
      v15 = OUTLINED_FUNCTION_20_50();
      v17 = a1 == v15 && v3 == v16;
      if (v17 || (OUTLINED_FUNCTION_59_0(v15, v16) & 1) != 0)
      {
        result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        v18 = result[10];
      }

      else
      {
        OUTLINED_FUNCTION_14_0();
        v19 = OUTLINED_FUNCTION_15_15();
        v21 = a1 == v19 && v3 == v20;
        if (!v21 && (OUTLINED_FUNCTION_59_0(v19, v20) & 1) == 0)
        {
          OUTLINED_FUNCTION_19_11();
          v22 = OUTLINED_FUNCTION_22_5();
          v24 = a1 == v22 && v3 == v23;
          if (!v24 && (OUTLINED_FUNCTION_59_0(v22, v23) & 1) == 0)
          {
            goto LABEL_47;
          }

          result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
          if (*(v2 + result[12] + 9))
          {
LABEL_15:
            *a2 = 0u;
            a2[1] = 0u;
            return result;
          }

LABEL_44:
          OUTLINED_FUNCTION_147();
          return sub_1934948FC();
        }

        result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        v18 = result[11];
      }

      if (*(v2 + v18 + 8))
      {
        return sub_1934948FC();
      }

      goto LABEL_15;
    }
  }

  v9 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 28));
  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    return sub_1934948FC();
  }

  __break(1u);
LABEL_47:
  v25 = a1 == 0x736D726168 && v3 == 0xE500000000000000;
  if (!v25 && (OUTLINED_FUNCTION_59_0(0x736D726168, 0xE500000000000000) & 1) == 0)
  {
LABEL_55:
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v28 = v27;
    *v27 = a1;
    v27[1] = v3;
    v27[5] = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28 + 2);
    sub_1937EEC9C(v2, boxed_opaque_existential_1Tm);
    *(v28 + 48) = 1;
    swift_willThrow();
  }

  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  v26 = *(v2 + result[13]);
  if (v26 >= 0xFFFFFFFF80000000)
  {
    if (v26 <= 0x7FFFFFFF)
    {
      return sub_1934948FC();
    }

    __break(1u);
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

unint64_t sub_1937EF944()
{
  result = qword_1EAE43AA8;
  if (!qword_1EAE43AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AA8);
  }

  return result;
}

unint64_t sub_1937EF998()
{
  result = qword_1EAE43AC0;
  if (!qword_1EAE43AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AC0);
  }

  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[9];
  OUTLINED_FUNCTION_131(v6);
  v11 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[12];
  j__OUTLINED_FUNCTION_131(v8);
  *a1 = *sub_1937F1A14();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_1937EF944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43AB0, &qword_19399E878);
  sub_1937EFC3C(&qword_1EAE43AB8, &qword_1EAE43AB0, &qword_19399E878);
  sub_19393C8A0();

  *(a1 + v2[7]) = v12;
  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  *v11 = 0;
  v11[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  *(v8 + 8) = 256;
  sub_1937EF998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43AC8, &qword_19399E880);
  sub_1937EFC3C(&qword_1EAE43AD0, &qword_1EAE43AC8, &qword_19399E880);
  result = sub_19393C8A0();
  *(a1 + v2[13]) = v12;
  return result;
}

uint64_t sub_1937EFC3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t static SensitiveContentAnalysisMediaAnalysis.== infix(_:_:)()
{
  type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_23_6();
  v0 = sub_1937EFE30();
  if ((OUTLINED_FUNCTION_25_4(v0, v1, &type metadata for SensitiveContentAnalysisMediaAnalysis.ContentType, v0, v2, v3, v4, v5, v51, v53, v55) & 1) == 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_25_3();
  if (v7)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v8)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_14_9();
    v9 = sub_1937EFF80();
    if ((OUTLINED_FUNCTION_25_4(v9, v10, &type metadata for SensitiveContentAnalysisMediaAnalysis.AgeGroup, v9, v11, v12, v13, v14, v52, v54, v56) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v16)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v17)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_14_9();
    v18 = sub_1937EFF2C();
    if ((OUTLINED_FUNCTION_25_4(v18, v19, &type metadata for SensitiveContentAnalysisMediaAnalysis.IsSensitive, v18, v20, v21, v22, v23, v52, v54, v56) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_36;
    }

    v28 = *v26 == *v27 && v24 == v25;
    if (!v28 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v25)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_3();
  if (!v29)
  {
    if (!v30)
    {
      goto LABEL_30;
    }

LABEL_36:
    v49 = 0;
    return v49 & 1;
  }

  if (!v30)
  {
    goto LABEL_36;
  }

  v33 = *v31 == *v32 && v29 == v30;
  if (!v33 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_30:
  OUTLINED_FUNCTION_25_3();
  if (v35)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v36)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_14_9();
    v37 = sub_1937EFED8();
    if ((OUTLINED_FUNCTION_25_4(v37, v38, &type metadata for SensitiveContentAnalysisMediaAnalysis.SubContentType, v37, v39, v40, v41, v42, v52, v54, v56) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_23_6();
  v43 = sub_1937EFE84();
  v49 = OUTLINED_FUNCTION_25_4(v43, v44, &type metadata for SensitiveContentAnalysisMediaAnalysis.Harms, v43, v45, v46, v47, v48, v52, v54, v56);
  return v49 & 1;
}

unint64_t sub_1937EFE30()
{
  result = qword_1EAE43AD8;
  if (!qword_1EAE43AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AD8);
  }

  return result;
}

unint64_t sub_1937EFE84()
{
  result = qword_1EAE43AE0;
  if (!qword_1EAE43AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AE0);
  }

  return result;
}

unint64_t sub_1937EFED8()
{
  result = qword_1EAE43AE8;
  if (!qword_1EAE43AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AE8);
  }

  return result;
}

unint64_t sub_1937EFF2C()
{
  result = qword_1EAE43AF0;
  if (!qword_1EAE43AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AF0);
  }

  return result;
}

unint64_t sub_1937EFF80()
{
  result = qword_1EAE43AF8;
  if (!qword_1EAE43AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AF8);
  }

  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.hash(into:)()
{
  v1 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  MEMORY[0x193B18030](*(v0 + v1[7]));
  OUTLINED_FUNCTION_100();
  if (v2)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    sub_1937F0148();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_100();
  if (v2)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    sub_1937F019C();
    sub_19393C540();
  }

  if (*(v0 + v1[10] + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + v1[11] + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_100();
  if (v2)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    sub_1937F01F0();
    sub_19393C540();
  }

  return MEMORY[0x193B18030](*(v0 + v1[13]));
}

unint64_t sub_1937F0148()
{
  result = qword_1EAE43B00;
  if (!qword_1EAE43B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B00);
  }

  return result;
}

unint64_t sub_1937F019C()
{
  result = qword_1EAE43B08;
  if (!qword_1EAE43B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B08);
  }

  return result;
}

unint64_t sub_1937F01F0()
{
  result = qword_1EAE43B10;
  if (!qword_1EAE43B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B10);
  }

  return result;
}

void SensitiveContentAnalysisMediaAnalysis.SubContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static SensitiveContentAnalysisMediaAnalysis.SubContentType.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE43B40, &qword_19399E9F0);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v19 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_84_2(v19, v20, v21, v22, &qword_1EAE43B40, &qword_19399E9F0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 2) = v7;
  v8 = &v3[16 * v5];
  *(v8 + 4) = 0;
  v8[40] = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v23 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_85(v23, v24, v25, v26, &qword_1EAE43B40, &qword_19399E9F0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 2) = v9;
  v10 = &v3[16 * v7];
  *(v10 + 4) = 0;
  v10[40] = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v27 = OUTLINED_FUNCTION_39(v4);
    v3 = sub_1934B0FCC(v27, v5 + 3, 1, v28, &qword_1EAE43B40, &qword_19399E9F0);
  }

  *(v3 + 2) = v11;
  v12 = &v3[16 * v9];
  *(v12 + 4) = 1;
  v12[40] = 1;
  v13 = *(v3 + 3);
  v14 = v5 + 4;
  if ((v5 + 4) > (v13 >> 1))
  {
    v29 = OUTLINED_FUNCTION_39(v13);
    v3 = OUTLINED_FUNCTION_84_2(v29, v30, v31, v32, &qword_1EAE43B40, &qword_19399E9F0);
  }

  *(v3 + 2) = v14;
  v15 = &v3[16 * v11];
  *(v15 + 4) = 2;
  v15[40] = 1;
  v16 = *(v3 + 3);
  if ((v5 + 5) > (v16 >> 1))
  {
    v33 = OUTLINED_FUNCTION_39(v16);
    v3 = OUTLINED_FUNCTION_85(v33, v34, v35, v36, &qword_1EAE43B40, &qword_19399E9F0);
  }

  *(v3 + 2) = v5 + 5;
  v17 = &v3[16 * v14];
  *(v17 + 4) = 3;
  v17[40] = 1;
  return v3;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.SubContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656B63697453;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_3();
      break;
    case 2:
      result = OUTLINED_FUNCTION_18_6();
      break;
    case 3:
      result = 0x6B636142706154;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisMediaAnalysis.SubContentType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0x72656B63697453 ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_22_7(0x72656B63697453) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_17_3();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_18_6();
      v12 = v1 == v10 && v0 == v11;
      if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
      {

        v6 = 2;
      }

      else if (v1 == 0x6B636142706154 && v0 == 0xE700000000000000)
      {

        v6 = 3;
      }

      else
      {
        v14 = OUTLINED_FUNCTION_22_7(0x6B636142706154);

        v6 = 3;
        if ((v14 & 1) == 0)
        {
          v6 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v6);
}

void SensitiveContentAnalysisMediaAnalysis.AgeGroup.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static SensitiveContentAnalysisMediaAnalysis.AgeGroup.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE43B38, &qword_19399E9E8);
  OUTLINED_FUNCTION_17_27();
  if (!(!v11 & v10))
  {
    v28 = OUTLINED_FUNCTION_39(v9);
    OUTLINED_FUNCTION_84_2(v28, v29, v30, v31, &qword_1EAE43B38, &qword_19399E9E8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_15_5(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v32 = OUTLINED_FUNCTION_39(v16);
    OUTLINED_FUNCTION_85(v32, v33, v34, v35, &qword_1EAE43B38, &qword_19399E9E8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10_36(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v36 = OUTLINED_FUNCTION_39(v23);
    v19 = OUTLINED_FUNCTION_84_2(v36, v37, v38, v39, &qword_1EAE43B38, &qword_19399E9E8);
    v22 = v19;
  }

  OUTLINED_FUNCTION_20_27(v19, v20, v21, v22);
  v25 = *(v24 + 3);
  if (v4 + 4 > (v25 >> 1))
  {
    v40 = OUTLINED_FUNCTION_39(v25);
    v24 = OUTLINED_FUNCTION_85(v40, v41, v42, v43, &qword_1EAE43B38, &qword_19399E9E8);
  }

  *(v24 + 2) = v4 + 4;
  v26 = &v24[16 * v3];
  *(v26 + 4) = 2;
  v26[40] = 1;
  return v24;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.AgeGroup.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x33317265764FLL;
  if (*v0 != 1)
  {
    v1 = 0x746C756441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x33317265646E55;
  }
}

void SensitiveContentAnalysisMediaAnalysis.AgeGroup.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0x33317265646E55 ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_22_7(0x33317265646E55) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x33317265764FLL && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x33317265764FLL, 0xE600000000000000) & 1) != 0)
    {

      v6 = 1;
    }

    else if (v1 == 0x746C756441 && v0 == 0xE500000000000000)
    {

      v6 = 2;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_0_9(0x746C756441, 0xE500000000000000);

      v6 = 2;
      if ((v9 & 1) == 0)
      {
        v6 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v6);
}

void SensitiveContentAnalysisMediaAnalysis.IsSensitive.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisMediaAnalysis.IsSensitive.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static SensitiveContentAnalysisMediaAnalysis.IsSensitive.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE43B30, &qword_19399E9E0);
  OUTLINED_FUNCTION_17_27();
  if (!(!v9 & v8))
  {
    v24 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_84_2(v24, v25, v26, v27, &qword_1EAE43B30, &qword_19399E9E0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_15_5(v3, v4, v5, v6);
  if (v15 != v16)
  {
    v28 = OUTLINED_FUNCTION_39(v14);
    OUTLINED_FUNCTION_85(v28, v29, v30, v31, &qword_1EAE43B30, &qword_19399E9E0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10_36(v10, v11, v12, v13);
  if (v15 != v16)
  {
    v32 = OUTLINED_FUNCTION_39(v21);
    v17 = OUTLINED_FUNCTION_84_2(v32, v33, v34, v35, &qword_1EAE43B30, &qword_19399E9E0);
    v20 = v17;
  }

  OUTLINED_FUNCTION_20_27(v17, v18, v19, v20);
  return v22;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.IsSensitive.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 28494;
  }

  return 7562585;
}

void SensitiveContentAnalysisMediaAnalysis.IsSensitive.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 7562585 ? (v5 = v0 == 0xE300000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(7562585, 0xE300000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 28494 && v0 == 0xE200000000000000)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(28494, 0xE200000000000000);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_19_5(v6);
}

unint64_t sub_1937F0B04()
{
  result = qword_1EAE43B18;
  if (!qword_1EAE43B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B18);
  }

  return result;
}

unint64_t sub_1937F0B5C()
{
  result = qword_1EAE43B20;
  if (!qword_1EAE43B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B20);
  }

  return result;
}

unint64_t sub_1937F0BB4()
{
  result = qword_1EAE43B28;
  if (!qword_1EAE43B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B28);
  }

  return result;
}

void sub_1937F0C0C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE168);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_156();
  *(v3 + 16) = xmmword_193952700;
  v4 = v3 + v0 + dword_1EAEAE1A0;
  *(v3 + v0) = 1;
  *v4 = "contentType";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v3 + v0 + v2);
  *v8 = 2;
  OUTLINED_FUNCTION_36_5(v7, "ageGroup");
  OUTLINED_FUNCTION_2_0();
  v6();
  v9 = OUTLINED_FUNCTION_3_1(v3 + v0 + 2 * v2);
  *v10 = 3;
  *v9 = "isSensitive";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v11 = OUTLINED_FUNCTION_3_1(v3 + v0 + 3 * v2);
  *v12 = 4;
  OUTLINED_FUNCTION_36_5(v11, "clientBundleID");
  OUTLINED_FUNCTION_2_0();
  v6();
  v13 = OUTLINED_FUNCTION_3_1(v3 + v0 + 4 * v2);
  *v14 = 5;
  OUTLINED_FUNCTION_36_5(v13, "trackingVersion");
  OUTLINED_FUNCTION_2_0();
  v6();
  v15 = OUTLINED_FUNCTION_3_1(v3 + v0 + 5 * v2);
  *v16 = 6;
  *v15 = "subContentType";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v17 = OUTLINED_FUNCTION_3_1(v3 + v0 + 6 * v2);
  *v18 = 7;
  *v17 = "harms";
  *(v17 + 8) = 5;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F0E7C()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisMediaAnalysis.ContentType.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 28)) = v5;
        break;
      case 2:
      case 3:
      case 6:
        type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        sub_1934982A8();
        goto LABEL_8;
      case 4:
      case 5:
        type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        OUTLINED_FUNCTION_113();
        sub_19393C200();
LABEL_8:
        v2 = 0;
        break;
      case 7:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisMediaAnalysis.Harms.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 52)) = v5;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937F1064()
{
  v2 = v1;
  v20 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  v3 = *(v0 + v20[7]);
  v21[0] = v3;
  sub_1937EF944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43AB0, &qword_19399E878);
  sub_1937EFC3C(&qword_1EAE43AB8, &qword_1EAE43AB0, &qword_19399E878);
  sub_19393C8A0();
  v22 = v23;
  v4 = sub_1937EFE30();
  result = OUTLINED_FUNCTION_19_55(v4, v5, v6, v7);
  if (result)
  {
    if (v1)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_19393C350();
  if (v1)
  {
    return result;
  }

LABEL_7:
  if ((*(v0 + v20[8] + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_80();
    OUTLINED_FUNCTION_15_55(v21, 2, v9, &type metadata for SensitiveContentAnalysisMediaAnalysis.AgeGroup, v10, &off_1F07F4990);
    v2 = v1;
  }

  if ((*(v0 + v20[9] + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_80();
    OUTLINED_FUNCTION_15_55(v21, 3, v11, &type metadata for SensitiveContentAnalysisMediaAnalysis.IsSensitive, v12, &off_1F07F49B8);
    v2 = v1;
  }

  if (!*(v0 + v20[10] + 8) || (v1 = v2, result = sub_19393C3C0(), !v2))
  {
    if (!*(v0 + v20[11] + 8) || (v1 = v2, result = sub_19393C3C0(), !v2))
    {
      if ((*(v0 + v20[12] + 9) & 1) != 0 || (OUTLINED_FUNCTION_2_80(), result = OUTLINED_FUNCTION_15_55(v21, 6, v13, &type metadata for SensitiveContentAnalysisMediaAnalysis.SubContentType, v14, &off_1F07F4968), !v1))
      {
        v15 = *(v0 + v20[13]);
        v21[0] = v15;
        v22 = MEMORY[0x1E69E7CC0];
        sub_1937EF998();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43AC8, &qword_19399E880);
        sub_1937EFC3C(&qword_1EAE43AD0, &qword_1EAE43AC8, &qword_19399E880);
        sub_19393C8A0();
        v22 = v23;
        v16 = sub_1937EFE84();
        result = OUTLINED_FUNCTION_19_55(v16, v17, v18, v19);
        if ((result & 1) == 0)
        {
          if (v15 >= 0xFFFFFFFF80000000)
          {
            if (v15 <= 0x7FFFFFFF)
            {
              return sub_19393C350();
            }

LABEL_25:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1937F1388(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE43B48;

  return v1;
}

void sub_1937F1424()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE180);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBD0);
  *v0 = "SubContentTypeUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "SubContentTypeSticker";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "SubContentTypeBackgroundImage";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v13 = 3;
  *v12 = "SubContentTypeInlineSticker";
  *(v12 + 8) = 27;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v14 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v15 = 4;
  *v14 = "SubContentTypeTapBack";
  *(v14 + 8) = 21;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F1648()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE198);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBC0);
  *v0 = "AgeGroupUnknown";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "AgeGroupUnder13";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "AgeGroupOver13";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v13 = 3;
  *v12 = "AgeGroupAdult";
  *(v12 + 8) = 13;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F1838()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE1B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = OUTLINED_FUNCTION_156();
  *(v5 + 16) = xmmword_19394FBB0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + dword_1EAEAE1E8;
  *v6 = 0;
  *v7 = "IsSensitiveUnknown";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  (v11)(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v13 = 1;
  v14 = OUTLINED_FUNCTION_36_5(v12, "IsSensitiveYes");
  (v11)(v14, v8, v9);
  v15 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v16 = 2;
  *v15 = "IsSensitiveNo";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t SensitiveContentAnalysisMediaAnalysis.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SensitiveContentAnalysisMediaAnalysis()
{
  result = qword_1EAEA3330;
  if (!qword_1EAEA3330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t SensitiveContentAnalysisMediaAnalysis.contentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.contentType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  *(v1 + *(result + 28)) = v2;
  return result;
}

void SensitiveContentAnalysisMediaAnalysis.ageGroup.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

void SensitiveContentAnalysisMediaAnalysis.isSensitive.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_37_0(*(v0 + 36));
}

uint64_t SensitiveContentAnalysisMediaAnalysis.clientBundleID.getter()
{
  type metadata accessor for SensitiveContentAnalysisMediaAnalysis();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisMediaAnalysis.clientBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.trackingVersion.getter()
{
  type metadata accessor for SensitiveContentAnalysisMediaAnalysis();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisMediaAnalysis.trackingVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void SensitiveContentAnalysisMediaAnalysis.subContentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_37_0(*(v0 + 48));
}

uint64_t SensitiveContentAnalysisMediaAnalysis.harms.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.harms.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t sub_1937F209C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

IntelligencePlatformLibrary::SensitiveContentAnalysisMediaAnalysis::ContentType sub_1937F21B0@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SensitiveContentAnalysisMediaAnalysis.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1937F21F0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisMediaAnalysis.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937F22A4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisMediaAnalysis.SubContentType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937F22CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisMediaAnalysis.SubContentType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937F2328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937F2430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937F24C4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisMediaAnalysis.AgeGroup.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937F24EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisMediaAnalysis.AgeGroup.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937F25E0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisMediaAnalysis.IsSensitive.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937F2608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static SensitiveContentAnalysisMediaAnalysis.IsSensitive.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.hashValue.getter()
{
  sub_19393CAB0();
  SensitiveContentAnalysisMediaAnalysis.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937F273C()
{
  sub_19393CAB0();
  SensitiveContentAnalysisMediaAnalysis.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1937F277C()
{
  result = qword_1EAE43B58;
  if (!qword_1EAE43B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B58);
  }

  return result;
}

unint64_t sub_1937F27DC()
{
  result = qword_1EAE43B60;
  if (!qword_1EAE43B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B60);
  }

  return result;
}

unint64_t sub_1937F28D0()
{
  result = qword_1EAE43B98;
  if (!qword_1EAE43B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B98);
  }

  return result;
}

unint64_t sub_1937F2930()
{
  result = qword_1EAE43BA0;
  if (!qword_1EAE43BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43BA0);
  }

  return result;
}

unint64_t sub_1937F2988()
{
  result = qword_1EAE43BA8;
  if (!qword_1EAE43BA8)
  {
    type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43BA8);
  }

  return result;
}

void sub_1937F2A0C()
{
  sub_19349D140(319);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE43BB0, &type metadata for SensitiveContentAnalysisMediaAnalysis.AgeGroup);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE43BB8, &type metadata for SensitiveContentAnalysisMediaAnalysis.IsSensitive);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1EAE43BC0, &type metadata for SensitiveContentAnalysisMediaAnalysis.SubContentType);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SensitiveContentAnalysisMediaAnalysis.ContentType(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SensitiveContentAnalysisUIInteraction.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BC8, &qword_19399F198);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1937F2E04(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE43BC8, &qword_19399F198, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE43BC8, &qword_19399F198);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1937F2E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisUIInteraction.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BC8, &qword_19399F198);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE43BC8, &qword_19399F198, v8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937F2FA8(v6, a1);
  }

  return result;
}

uint64_t sub_1937F2FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisUIInteraction.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BC8, &qword_19399F198);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1937F947C() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1937F2FA8(v11, v36);
      v29 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SensitiveContentAnalysisUIInteraction.serialize()()
{
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v4 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BC8, &qword_19399F198);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = OUTLINED_FUNCTION_185();
  sub_1937F2E04(v8, v9);
  sub_1934470C8(v4, v0, v7);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v10, &qword_1EAE43BC8, &qword_19399F198, v11);
  v12 = sub_19393C290();
  sub_19344E6DC(v7, &qword_1EAE43BC8, &qword_19399F198);
  return v12;
}

id static SensitiveContentAnalysisUIInteraction.columns.getter()
{
  v345 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_32_23();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v12, v13, v14, v15, v16);
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v26 = OUTLINED_FUNCTION_2_4(inited, v19, v20, v21, v22, v23, v24, v25, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v36 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v36);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v37, v38, v39, v40, v41);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_69_3(result);
  v42 = swift_initStackObject();
  v50 = OUTLINED_FUNCTION_2_4(v42, v43, v44, v45, v46, v47, v48, v49, v331);
  OUTLINED_FUNCTION_5_10(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v60 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v60);
  OUTLINED_FUNCTION_24_49();
  OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v61, v62, v63, v64, v65);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_69_3(result);
  v66 = swift_initStackObject();
  v74 = OUTLINED_FUNCTION_2_4(v66, v67, v68, v69, v70, v71, v72, v73, v332);
  OUTLINED_FUNCTION_5_10(v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v84 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v84);
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v85, v86, v87, v88, v89);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_69_3(result);
  v90 = swift_initStackObject();
  v98 = OUTLINED_FUNCTION_2_4(v90, v91, v92, v93, v94, v95, v96, v97, v333);
  OUTLINED_FUNCTION_5_10(v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  v108 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v108);
  OUTLINED_FUNCTION_19_56(25441);
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v109, v110, v111, v112, v113);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_69_3(result);
  v114 = swift_initStackObject();
  v122 = OUTLINED_FUNCTION_2_4(v114, v115, v116, v117, v118, v119, v120, v121, v334);
  OUTLINED_FUNCTION_5_10(v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  v132 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v132);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v133, v134, v135, v136, v137, 2, 0);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_69_3(result);
  v138 = swift_initStackObject();
  v146 = OUTLINED_FUNCTION_2_4(v138, v139, v140, v141, v142, v143, v144, v145, v335);
  OUTLINED_FUNCTION_5_10(v146, v147, v148, v149, v150, v151, v152, v153, v154, v155);
  v156 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v156);
  OUTLINED_FUNCTION_20_50();
  OUTLINED_FUNCTION_18_5();
  result = OUTLINED_FUNCTION_3_5(v157, v158);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_69_3(result);
  v159 = swift_initStackObject();
  v167 = OUTLINED_FUNCTION_2_4(v159, v160, v161, v162, v163, v164, v165, v166, v336);
  OUTLINED_FUNCTION_5_10(v167, v168, v169, v170, v171, v172, v173, v174, v175, v176);
  v177 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v177);
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_14_0();
  result = OUTLINED_FUNCTION_3_5(v178, v179);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_69_3(result);
  v180 = swift_initStackObject();
  v188 = OUTLINED_FUNCTION_2_4(v180, v181, v182, v183, v184, v185, v186, v187, v337);
  OUTLINED_FUNCTION_5_10(v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
  v198 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v198);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v199, v200, v201, v202, v203, 2, 0);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_69_3(result);
  v204 = swift_initStackObject();
  v212 = OUTLINED_FUNCTION_2_4(v204, v205, v206, v207, v208, v209, v210, v211, v338);
  OUTLINED_FUNCTION_5_10(v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
  v222 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v222);
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v223, v224, v225, v226, v227);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_69_3(result);
  v228 = swift_initStackObject();
  v236 = OUTLINED_FUNCTION_2_4(v228, v229, v230, v231, v232, v233, v234, v235, v339);
  OUTLINED_FUNCTION_5_10(v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
  v246 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v246);
  OUTLINED_FUNCTION_19_56(28783);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v247, v248, v249, v250, v251, 2, 0);
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_69_3(result);
  v252 = swift_initStackObject();
  v260 = OUTLINED_FUNCTION_2_4(v252, v253, v254, v255, v256, v257, v258, v259, v340);
  OUTLINED_FUNCTION_5_10(v260, v261, v262, v263, v264, v265, v266, v267, v268, v269);
  v270 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v270);
  OUTLINED_FUNCTION_20_51();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v271, v272, v273, v274, v275);
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_69_3(result);
  v276 = swift_initStackObject();
  v284 = OUTLINED_FUNCTION_2_4(v276, v277, v278, v279, v280, v281, v282, v283, v341);
  OUTLINED_FUNCTION_5_10(v284, v285, v286, v287, v288, v289, v290, v291, v292, v293);
  v294 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v294);
  OUTLINED_FUNCTION_16_46();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v295, v296, v297, v298, v299);
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_69_3(result);
  v300 = swift_initStackObject();
  v308 = OUTLINED_FUNCTION_2_4(v300, v301, v302, v303, v304, v305, v306, v307, v342);
  OUTLINED_FUNCTION_5_10(v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
  v318 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v318);
  result = OUTLINED_FUNCTION_3_5(0x6E6F69676572, 0xE600000000000000);
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_69_3(result);
  v319 = swift_initStackObject();
  v327 = OUTLINED_FUNCTION_2_4(v319, v320, v321, v322, v323, v324, v325, v326, v343);
  *(v327 + 16) = v344;
  *(v327 + 32) = sub_19393C850();
  v328 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_30_31();
  result = sub_19343D150(v329, v330, 0, 0, v327, 12, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v345;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1937F39BC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_32_23();
  v7 = OUTLINED_FUNCTION_34_36();
  v9 = a1 == v7 && a2 == v8;
  if (v9 || (OUTLINED_FUNCTION_59_0(v7, v8) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1();
    if (v10)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  v11 = OUTLINED_FUNCTION_16_3();
  v12 = a1 == v11 && a2 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_59_0(v11, 0xE800000000000000) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1();
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_41();
  v14 = OUTLINED_FUNCTION_24_49();
  v16 = a1 == v14 && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_59_0(v14, v15) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1();
    if (v17)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v18 = a1 == 0x6E6565726373 && a2 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_59_0(0x6E6565726373, 0xE600000000000000) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1();
    if (v19)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v20 = OUTLINED_FUNCTION_19_56(25441);
  v21 = a1 == v20 && a2 == 0xE600000000000000;
  if (v21 || (OUTLINED_FUNCTION_59_0(v20, 0xE600000000000000) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1();
    if (v22)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v23 = OUTLINED_FUNCTION_42_1();
  v25 = a1 == v23 && a2 == v24;
  if (v25 || (OUTLINED_FUNCTION_59_0(v23, v24) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_12_59();
    if (v27 == v28)
    {
      if (v26 <= 0x7FFFFFFF)
      {
        goto LABEL_9;
      }

      goto LABEL_84;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    v45 = OUTLINED_FUNCTION_20_51();
    v47 = a1 == v45 && a2 == v46;
    if (v47 || (OUTLINED_FUNCTION_59_0(v45, v46) & 1) != 0 || ((v49 = OUTLINED_FUNCTION_16_46(), a1 == v49) ? (v51 = a2 == v50) : (v51 = 0), v51 || (OUTLINED_FUNCTION_59_0(v49, v50) & 1) != 0))
    {
      type metadata accessor for SensitiveContentAnalysisUIInteraction();
      OUTLINED_FUNCTION_58_1();
      if (v48)
      {
        goto LABEL_7;
      }

LABEL_8:
      OUTLINED_FUNCTION_147();
LABEL_9:
      sub_1934948FC();
      return;
    }

    v52 = a1 == 1752457584 && a2 == 0xE400000000000000;
    if (v52 || (OUTLINED_FUNCTION_59_0(1752457584, 0xE400000000000000) & 1) != 0)
    {
      type metadata accessor for SensitiveContentAnalysisUIInteraction();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43C20, &qword_19399F1B8);
      goto LABEL_9;
    }

    goto LABEL_105;
  }

  OUTLINED_FUNCTION_18_5();
  v29 = OUTLINED_FUNCTION_20_50();
  v31 = a1 == v29 && a2 == v30;
  if (v31 || (OUTLINED_FUNCTION_59_0(v29, v30) & 1) != 0)
  {
    v32 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 52);
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_14_0();
  v33 = OUTLINED_FUNCTION_15_15();
  v35 = a1 == v33 && a2 == v34;
  if (v35 || (OUTLINED_FUNCTION_59_0(v33, v34) & 1) != 0)
  {
    v32 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 56);
    goto LABEL_52;
  }

  v36 = a1 == 0x736D726168 && a2 == 0xE500000000000000;
  if (!v36 && (OUTLINED_FUNCTION_59_0(0x736D726168, 0xE500000000000000) & 1) == 0)
  {
LABEL_68:
    OUTLINED_FUNCTION_19_11();
    v38 = OUTLINED_FUNCTION_22_5();
    v40 = a1 == v38 && a2 == v39;
    if (v40 || (OUTLINED_FUNCTION_59_0(v38, v39) & 1) != 0)
    {
      type metadata accessor for SensitiveContentAnalysisUIInteraction();
      OUTLINED_FUNCTION_58_1();
      if (v41)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v42 = OUTLINED_FUNCTION_19_56(28783) & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    v43 = a1 == v42 && a2 == 0xE700000000000000;
    if (!v43 && (OUTLINED_FUNCTION_59_0(v42, 0xE700000000000000) & 1) == 0)
    {
      goto LABEL_85;
    }

    type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_12_59();
    if (v27 != v28)
    {
      __break(1u);
      goto LABEL_119;
    }

    if (v44 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_83;
  }

  type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_12_59();
  if (v27 == v28)
  {
    if (v37 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_68;
  }

  __break(1u);
LABEL_105:
  v53 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
  if (v53 || (OUTLINED_FUNCTION_59_0(0x6E6F69676572, 0xE600000000000000) & 1) != 0)
  {
    v32 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 84);
LABEL_52:
    if (!*(v3 + v32 + 8))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_30_31();
  v54 = OUTLINED_FUNCTION_31_5();
  v56 = a1 == v54 && a2 == v55;
  if (v56 || (OUTLINED_FUNCTION_59_0(v54, v55) & 1) != 0)
  {
    if (*(v3 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 88)) == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_119:
  sub_19349AB64();
  swift_allocError();
  v58 = v57;
  *v57 = a1;
  v57[1] = a2;
  v57[5] = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v58 + 2);
  sub_1937F2E04(v3, boxed_opaque_existential_1Tm);
  *(v58 + 48) = 1;
  swift_willThrow();
}

unint64_t sub_1937F3EF4()
{
  result = qword_1EAE43BD8;
  if (!qword_1EAE43BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43BD8);
  }

  return result;
}

unint64_t sub_1937F3F48()
{
  result = qword_1EAE43BF0;
  if (!qword_1EAE43BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43BF0);
  }

  return result;
}

unint64_t sub_1937F3F9C()
{
  result = qword_1EAE43C08;
  if (!qword_1EAE43C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C08);
  }

  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = a1 + v2[9];
  j__OUTLINED_FUNCTION_131(v7);
  v8 = a1 + v2[10];
  j__OUTLINED_FUNCTION_131(v8);
  v9 = a1 + v2[11];
  j__OUTLINED_FUNCTION_131(v9);
  v15 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v10 = a1 + v2[16];
  OUTLINED_FUNCTION_131(v10);
  v19 = a1 + v2[18];
  j__OUTLINED_FUNCTION_131(v19);
  v17 = a1 + v2[19];
  j__OUTLINED_FUNCTION_131(v17);
  v18 = (a1 + v2[21]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = v2[22];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_1937F947C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v9 = 0;
  *(v9 + 8) = 256;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1937F3EF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BE0, &qword_19399F1A0);
  sub_1937EFC3C(&qword_1EAE43BE8, &qword_1EAE43BE0, &qword_19399F1A0);
  OUTLINED_FUNCTION_41_26();

  *(a1 + v2[12]) = v20;
  *v15 = 0;
  v15[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  sub_1937F3F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BF8, &qword_19399F1A8);
  sub_1937EFC3C(&qword_1EAE43C00, &qword_1EAE43BF8, &qword_19399F1A8);
  OUTLINED_FUNCTION_41_26();
  *(a1 + v2[15]) = v20;
  *v10 = 0;
  *(v10 + 8) = 256;
  sub_1937F3F9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43C10, &qword_19399F1B0);
  sub_1937EFC3C(&qword_1EAE43C18, &qword_1EAE43C10, &qword_19399F1B0);
  sub_19393C8A0();

  *(a1 + v2[17]) = v20;
  *v19 = 0;
  *(v19 + 8) = 256;
  *v17 = 0;
  *(v17 + 8) = 256;
  *(a1 + v2[20]) = v12;
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v16) = 2;
  return result;
}

BOOL static SensitiveContentAnalysisUIInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_25_3();
  if (v6)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v8 = sub_1937F6FE4();
    if ((OUTLINED_FUNCTION_25_4(v8, v9, &type metadata for SensitiveContentAnalysisUIInteraction.InteractionType, v8, v10, v11, v12, v13, v117, v121, v125) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v15)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v16)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v17 = sub_1937F6F90();
    if ((OUTLINED_FUNCTION_25_4(v17, v18, &type metadata for SensitiveContentAnalysisUIInteraction.AgeGroup, v17, v19, v20, v21, v22, v117, v121, v125) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v24)
  {
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v25)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v26 = sub_1937F6F3C();
    if ((OUTLINED_FUNCTION_25_4(v26, v27, &type metadata for SensitiveContentAnalysisUIInteraction.EventDirection, v26, v28, v29, v30, v31, v117, v121, v125) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v33)
  {
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v34)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v35 = sub_1937F6EE8();
    if ((OUTLINED_FUNCTION_25_4(v35, v36, &type metadata for SensitiveContentAnalysisUIInteraction.Screen, v35, v37, v38, v39, v40, v117, v121, v125) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v42)
  {
    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v43)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v44 = sub_1937F6E94();
    if ((OUTLINED_FUNCTION_25_4(v44, v45, &type metadata for SensitiveContentAnalysisUIInteraction.Action, v44, v46, v47, v48, v49, v117, v121, v125) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_23_6();
  v50 = sub_1937F467C();
  if ((OUTLINED_FUNCTION_25_4(v50, v51, &type metadata for SensitiveContentAnalysisUIInteraction.ContentType, v50, v52, v53, v54, v55, v117, v121, v125) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v58)
  {
    if (!v56)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v57);
    v61 = v61 && v59 == v60;
    if (!v61 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v64)
  {
    if (!v62)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v63);
    v67 = v61 && v65 == v66;
    if (!v67 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v62)
  {
    return 0;
  }

  OUTLINED_FUNCTION_23_6();
  v68 = sub_1937F46D0();
  if ((OUTLINED_FUNCTION_25_4(v68, v69, &type metadata for SensitiveContentAnalysisUIInteraction.Harms, v68, v70, v71, v72, v73, v118, v122, v126) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_3();
  if (v75)
  {
    if ((v74 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v76)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v77 = sub_1937F6E40();
    if ((OUTLINED_FUNCTION_25_4(v77, v78, &type metadata for SensitiveContentAnalysisUIInteraction.SubContentType, v77, v79, v80, v81, v82, v119, v123, v127) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_23_6();
  v83 = sub_1937F4724();
  if ((OUTLINED_FUNCTION_25_4(v83, v84, &type metadata for SensitiveContentAnalysisUIInteraction.Options, v83, v85, v86, v87, v88, v119, v123, v127) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_3();
  if (v90)
  {
    if ((v89 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v91)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v92 = sub_1937F6DEC();
    if ((OUTLINED_FUNCTION_25_4(v92, v93, &type metadata for SensitiveContentAnalysisUIInteraction.Step, v92, v94, v95, v96, v97, v120, v124, v128) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v99)
  {
    if ((v98 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v100)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v101 = sub_1937F6DEC();
    if ((OUTLINED_FUNCTION_25_4(v101, v102, &type metadata for SensitiveContentAnalysisUIInteraction.Step, v101, v103, v104, v105, v106, v120, v124, v128) & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1937F6D10(*(a1 + *(v4 + 80)), *(a2 + *(v4 + 80))) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v109)
  {
    if (!v107)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v108);
    v112 = v61 && v110 == v111;
    if (!v112 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  v113 = *(v4 + 88);
  v114 = *(a1 + v113);
  v115 = *(a2 + v113);
  if (v114 == 2)
  {
    return v115 == 2;
  }

  return v115 != 2 && ((v114 ^ v115) & 1) == 0;
}

unint64_t sub_1937F467C()
{
  result = qword_1EAE43C28;
  if (!qword_1EAE43C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C28);
  }

  return result;
}

unint64_t sub_1937F46D0()
{
  result = qword_1EAE43C30;
  if (!qword_1EAE43C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C30);
  }

  return result;
}

unint64_t sub_1937F4724()
{
  result = qword_1EAE43C38;
  if (!qword_1EAE43C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C38);
  }

  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  if (*(v1 + v3[7] + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v4 = sub_1937F7038();
    OUTLINED_FUNCTION_133_1(v4, &type metadata for SensitiveContentAnalysisUIInteraction.InteractionType, v4);
  }

  OUTLINED_FUNCTION_100();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v6 = sub_1937F708C();
    OUTLINED_FUNCTION_133_1(v6, &type metadata for SensitiveContentAnalysisUIInteraction.AgeGroup, v6);
  }

  OUTLINED_FUNCTION_100();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v7 = sub_1937F70E0();
    OUTLINED_FUNCTION_133_1(v7, &type metadata for SensitiveContentAnalysisUIInteraction.EventDirection, v7);
  }

  OUTLINED_FUNCTION_100();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v8 = sub_1937F7134();
    OUTLINED_FUNCTION_133_1(v8, &type metadata for SensitiveContentAnalysisUIInteraction.Screen, v8);
  }

  OUTLINED_FUNCTION_100();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v9 = sub_1937F7188();
    OUTLINED_FUNCTION_133_1(v9, &type metadata for SensitiveContentAnalysisUIInteraction.Action, v9);
  }

  MEMORY[0x193B18030](*(v1 + v3[12]));
  if (*(v1 + v3[13] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v3[14] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  MEMORY[0x193B18030](*(v1 + v3[15]));
  OUTLINED_FUNCTION_100();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v10 = sub_1937F71DC();
    OUTLINED_FUNCTION_133_1(v10, &type metadata for SensitiveContentAnalysisUIInteraction.SubContentType, v10);
  }

  MEMORY[0x193B18030](*(v1 + v3[17]));
  OUTLINED_FUNCTION_100();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v11 = sub_1937F7230();
    OUTLINED_FUNCTION_133_1(v11, &type metadata for SensitiveContentAnalysisUIInteraction.Step, v11);
  }

  OUTLINED_FUNCTION_100();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v12 = sub_1937F7230();
    OUTLINED_FUNCTION_133_1(v12, &type metadata for SensitiveContentAnalysisUIInteraction.Step, v12);
  }

  sub_1937F7284(a1, *(v1 + v3[20]));
  if (*(v1 + v3[21] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v3[22]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

void SensitiveContentAnalysisUIInteraction.InteractionType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisUIInteraction.InteractionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 1886152008;
  if (*v0 != 1)
  {
    v1 = 0x6552724F646E6553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952540739;
  }
}

void SensitiveContentAnalysisUIInteraction.InteractionType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1952540739 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1952540739, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 1886152008 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(1886152008, 0xE400000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x6552724F646E6553 && v0 == 0xED00006576696563)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x6552724F646E6553, 0xED00006576696563);
        OUTLINED_FUNCTION_89();
        v5 = 2;
        if ((v1 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_1937F4BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    OUTLINED_FUNCTION_17_2();
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    OUTLINED_FUNCTION_17_2();
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  v12 = v6 + 3;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v12;
  v13 = &v4[16 * v10];
  *(v13 + 4) = 1;
  v13[40] = 1;
  v14 = *(v4 + 3);
  if ((v6 + 4) > (v14 >> 1))
  {
    v4 = OUTLINED_FUNCTION_51((v14 > 1), v6 + 4, v3, v4);
  }

  *(v4 + 2) = v6 + 4;
  return OUTLINED_FUNCTION_38_1(v4, &v4[16 * v12]);
}

uint64_t SensitiveContentAnalysisUIInteraction.AgeGroup.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x33317265764FLL;
  if (*v0 != 1)
  {
    v1 = 0x746C756441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x33317265646E55;
  }
}

void SensitiveContentAnalysisUIInteraction.AgeGroup.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x33317265646E55 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x33317265646E55) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x33317265764FLL && v0 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x33317265764FLL, 0xE600000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x746C756441 && v0 == 0xE500000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x746C756441, 0xE500000000000000);
        OUTLINED_FUNCTION_89();
        v5 = 2;
        if ((v1 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t SensitiveContentAnalysisUIInteraction.EventDirection.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1684956499;
  switch(*v0)
  {
    case 1:
      result = 0x65766965636552;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = OUTLINED_FUNCTION_20_0();
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisUIInteraction.EventDirection.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1684956499 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1684956499, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x65766965636552 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7(0x65766965636552) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0xD000000000000016 && 0x8000000193A3FC20 == v0;
        if (v8 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, 0x8000000193A3FC20) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = OUTLINED_FUNCTION_20_0();
          if (v1 == v9 && v0 == v10)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v9, v10);
            OUTLINED_FUNCTION_89();
            v5 = 3;
            if ((v1 & 1) == 0)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void SensitiveContentAnalysisUIInteraction.Screen.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisUIInteraction.Screen.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_19399F4B0[result];
  }

  return result;
}

uint64_t static SensitiveContentAnalysisUIInteraction.Screen.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v9 = v6;
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v19, v20, v21, v22, &qword_1EAE43D00, &qword_19399F490);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 16) = v13;
  v14 = v9 + 16 * v11;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  if (v12 < (v11 + 2))
  {
    v23 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_85(v23, v24, v25, v26, &qword_1EAE43D00, &qword_19399F490);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 16) = v11 + 2;
  v15 = v9 + 16 * v13;
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  if (v12 < (v11 + 3))
  {
    v27 = OUTLINED_FUNCTION_39(v10);
    v6 = OUTLINED_FUNCTION_84_2(v27, v28, v29, v30, &qword_1EAE43D00, &qword_19399F490);
    v9 = v6;
  }

  OUTLINED_FUNCTION_50(v6, v7, v8, v9);
  *(v16 + 32) = 1;
  *(v16 + 40) = 1;
  return v17;
}

uint64_t SensitiveContentAnalysisUIInteraction.Screen.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    return 0x6E65767265746E49;
  }

  else
  {
    return OUTLINED_FUNCTION_1_5();
  }
}

uint64_t SensitiveContentAnalysisUIInteraction.Screen.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (!v5 && (OUTLINED_FUNCTION_22_7(v3) & 1) == 0)
  {
    v9 = v2 == 0x6E65767265746E49 && v1 == 0xED0000316E6F6974;
    if (v9 || (OUTLINED_FUNCTION_0_9(0x6E65767265746E49, 0xED0000316E6F6974) & 1) != 0)
    {
      goto LABEL_12;
    }

    v10 = v2 == 0x6E65767265746E49 && v1 == 0xED0000326E6F6974;
    if (!v10 && (OUTLINED_FUNCTION_0_9(0x6E65767265746E49, 0xED0000326E6F6974) & 1) == 0)
    {
      v11 = v2 == 0x316E6565726353 && v1 == 0xE700000000000000;
      if (v11 || (OUTLINED_FUNCTION_22_7(0x316E6565726353) & 1) != 0)
      {
LABEL_12:

        v7 = 0;
LABEL_13:
        v8 = 1;
        goto LABEL_14;
      }

      if (v2 != 0x326E6565726353 || v1 != 0xE700000000000000)
      {
        v8 = OUTLINED_FUNCTION_22_7(0x326E6565726353);

        v7 = v8 & 1;
        goto LABEL_14;
      }
    }

    v7 = 1;
    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

void SensitiveContentAnalysisUIInteraction.Action.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisUIInteraction.Action.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_19399F4D0[result];
  }

  return result;
}

uint64_t static SensitiveContentAnalysisUIInteraction.Action.allCases.getter()
{
  v2 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_16_0();
  if (!(!v14 & v13))
  {
    v154 = OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_84_2(v154, v155, v156, v157, &qword_1EAE43CF8, &qword_19399F488);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v158 = OUTLINED_FUNCTION_39(v19);
    OUTLINED_FUNCTION_85(v158, v159, v160, v161, &qword_1EAE43CF8, &qword_19399F488);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    v162 = OUTLINED_FUNCTION_39(v26);
    v22 = sub_1934B0FCC(v162, v0, 1, v163, &qword_1EAE43CF8, &qword_19399F488);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v164 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v164, v165, v166, v167, &qword_1EAE43CF8, &qword_19399F488);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v168 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v168, v169, v170, v171, &qword_1EAE43CF8, &qword_19399F488);
    v35 = v32;
  }

  OUTLINED_FUNCTION_47_5(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37);
  if (v1 + 6 > (v42 >> 1))
  {
    v172 = OUTLINED_FUNCTION_39(v42);
    v38 = OUTLINED_FUNCTION_84_2(v172, v173, v174, v175, &qword_1EAE43CF8, &qword_19399F488);
    v41 = v38;
  }

  OUTLINED_FUNCTION_50(v38, v39, v40, v41);
  OUTLINED_FUNCTION_4(v43);
  if (v1 + 7 > (v48 >> 1))
  {
    v176 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v176, v177, v178, v179, &qword_1EAE43CF8, &qword_19399F488);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49);
  if (v1 + 8 > (v54 >> 1))
  {
    v180 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_84_2(v180, v181, v182, v183, &qword_1EAE43CF8, &qword_19399F488);
    v53 = v50;
  }

  OUTLINED_FUNCTION_50(v50, v51, v52, v53);
  OUTLINED_FUNCTION_4(v55);
  if (v1 + 9 > (v60 >> 1))
  {
    v184 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_85(v184, v185, v186, v187, &qword_1EAE43CF8, &qword_19399F488);
    v59 = v56;
  }

  OUTLINED_FUNCTION_47_5(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61);
  if (v1 + 10 > (v66 >> 1))
  {
    v188 = OUTLINED_FUNCTION_39(v66);
    v62 = OUTLINED_FUNCTION_84_2(v188, v189, v190, v191, &qword_1EAE43CF8, &qword_19399F488);
    v65 = v62;
  }

  OUTLINED_FUNCTION_50(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67);
  if (v1 + 11 > (v72 >> 1))
  {
    v192 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_85(v192, v193, v194, v195, &qword_1EAE43CF8, &qword_19399F488);
    v71 = v68;
  }

  OUTLINED_FUNCTION_47_5(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73);
  if (v1 + 12 > (v78 >> 1))
  {
    v196 = OUTLINED_FUNCTION_39(v78);
    v74 = OUTLINED_FUNCTION_84_2(v196, v197, v198, v199, &qword_1EAE43CF8, &qword_19399F488);
    v77 = v74;
  }

  OUTLINED_FUNCTION_50(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79);
  if (v1 + 13 > (v84 >> 1))
  {
    v200 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v200, v201, v202, v203, &qword_1EAE43CF8, &qword_19399F488);
    v83 = v80;
  }

  OUTLINED_FUNCTION_47_5(v80, v81, v82, v83);
  OUTLINED_FUNCTION_4(v85);
  if (v1 + 14 > (v90 >> 1))
  {
    v204 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v204, v205, v206, v207, &qword_1EAE43CF8, &qword_19399F488);
    v89 = v86;
  }

  OUTLINED_FUNCTION_50(v86, v87, v88, v89);
  OUTLINED_FUNCTION_4(v91);
  if (v1 + 15 > (v96 >> 1))
  {
    v208 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_85(v208, v209, v210, v211, &qword_1EAE43CF8, &qword_19399F488);
    v95 = v92;
  }

  OUTLINED_FUNCTION_47_5(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97);
  if (v1 + 16 > (v102 >> 1))
  {
    v212 = OUTLINED_FUNCTION_39(v102);
    v98 = OUTLINED_FUNCTION_84_2(v212, v213, v214, v215, &qword_1EAE43CF8, &qword_19399F488);
    v101 = v98;
  }

  OUTLINED_FUNCTION_50(v98, v99, v100, v101);
  OUTLINED_FUNCTION_4(v103);
  if (v1 + 17 > (v108 >> 1))
  {
    v216 = OUTLINED_FUNCTION_39(v108);
    v104 = OUTLINED_FUNCTION_85(v216, v217, v218, v219, &qword_1EAE43CF8, &qword_19399F488);
    v107 = v104;
  }

  OUTLINED_FUNCTION_47_5(v104, v105, v106, v107);
  OUTLINED_FUNCTION_4(v109);
  if (v1 + 18 > (v114 >> 1))
  {
    v220 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_84_2(v220, v221, v222, v223, &qword_1EAE43CF8, &qword_19399F488);
    v113 = v110;
  }

  OUTLINED_FUNCTION_50(v110, v111, v112, v113);
  OUTLINED_FUNCTION_4(v115);
  if (v1 + 19 > (v120 >> 1))
  {
    v224 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_85(v224, v225, v226, v227, &qword_1EAE43CF8, &qword_19399F488);
    v119 = v116;
  }

  OUTLINED_FUNCTION_47_5(v116, v117, v118, v119);
  OUTLINED_FUNCTION_4(v121);
  if (v1 + 20 > (v126 >> 1))
  {
    v228 = OUTLINED_FUNCTION_39(v126);
    v122 = OUTLINED_FUNCTION_84_2(v228, v229, v230, v231, &qword_1EAE43CF8, &qword_19399F488);
    v125 = v122;
  }

  OUTLINED_FUNCTION_50(v122, v123, v124, v125);
  OUTLINED_FUNCTION_4(v127);
  if (v1 + 21 > (v132 >> 1))
  {
    v232 = OUTLINED_FUNCTION_39(v132);
    v128 = OUTLINED_FUNCTION_85(v232, v233, v234, v235, &qword_1EAE43CF8, &qword_19399F488);
    v131 = v128;
  }

  OUTLINED_FUNCTION_47_5(v128, v129, v130, v131);
  OUTLINED_FUNCTION_4(v133);
  if (v1 + 22 > (v138 >> 1))
  {
    v236 = OUTLINED_FUNCTION_39(v138);
    v134 = OUTLINED_FUNCTION_84_2(v236, v237, v238, v239, &qword_1EAE43CF8, &qword_19399F488);
    v137 = v134;
  }

  OUTLINED_FUNCTION_50(v134, v135, v136, v137);
  OUTLINED_FUNCTION_4(v139);
  if (v1 + 23 > (v144 >> 1))
  {
    v240 = OUTLINED_FUNCTION_39(v144);
    v140 = OUTLINED_FUNCTION_85(v240, v241, v242, v243, &qword_1EAE43CF8, &qword_19399F488);
    v143 = v140;
  }

  OUTLINED_FUNCTION_47_5(v140, v141, v142, v143);
  OUTLINED_FUNCTION_4(v145);
  if (v1 + 24 > (v150 >> 1))
  {
    v244 = OUTLINED_FUNCTION_39(v150);
    v146 = OUTLINED_FUNCTION_84_2(v244, v245, v246, v247, &qword_1EAE43CF8, &qword_19399F488);
    v149 = v146;
  }

  OUTLINED_FUNCTION_50(v146, v147, v148, v149);
  return OUTLINED_FUNCTION_38_1(v151, v152);
}

void SensitiveContentAnalysisUIInteraction.Action.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 6:
        OUTLINED_FUNCTION_12_60();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_46_28();
        break;
      case 0x13:
        OUTLINED_FUNCTION_45_5();
        break;
      case 0x14:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void SensitiveContentAnalysisUIInteraction.Action.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
    goto LABEL_13;
  }

  v6 = v1 == 0x6C65636E6143 && v0 == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6C65636E6143, 0xE600000000000000) & 1) != 0)
  {
LABEL_12:

    v5 = 0;
    goto LABEL_13;
  }

  v7 = v1 == 0x657275536D49 && v0 == 0xE600000000000000;
  if (v7 || (OUTLINED_FUNCTION_0_9(0x657275536D49, 0xE600000000000000) & 1) != 0)
  {

    v5 = 1;
    goto LABEL_13;
  }

  v8 = v1 == 0x737361707942 && v0 == 0xE600000000000000;
  if (v8 || (OUTLINED_FUNCTION_0_9(0x737361707942, 0xE600000000000000) & 1) != 0)
  {
LABEL_25:

    OUTLINED_FUNCTION_55_0();
    goto LABEL_13;
  }

  v9 = v1 == 1684366664 && v0 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_9(1684366664, 0xE400000000000000) & 1) != 0)
  {
LABEL_31:

    OUTLINED_FUNCTION_59();
    goto LABEL_13;
  }

  v10 = v1 == 0x536567617373654DLL && v0 == 0xEE00656E6F656D6FLL;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x536567617373654DLL, 0xEE00656E6F656D6FLL) & 1) != 0)
  {
    goto LABEL_37;
  }

  v11 = v1 == 0x646E6553746E6F44 && v0 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_0_9(0x646E6553746E6F44, 0xE800000000000000) & 1) != 0)
  {

    v5 = 5;
    goto LABEL_13;
  }

  v12 = OUTLINED_FUNCTION_12_60();
  v14 = v1 == v12 && v0 == v13;
  if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
  {

    v5 = 6;
    goto LABEL_13;
  }

  v15 = v1 == 0x6F7247657661654CLL && v0 == 0xEA00000000007075;
  if (v15 || (OUTLINED_FUNCTION_0_9(0x6F7247657661654CLL, 0xEA00000000007075) & 1) != 0)
  {

    v5 = 7;
    goto LABEL_13;
  }

  v16 = v1 == 0x6E6F436B636F6C42 && v0 == 0xEC00000074636174;
  if (v16 || (OUTLINED_FUNCTION_0_9(0x6E6F436B636F6C42, 0xEC00000074636174) & 1) != 0)
  {

    v5 = 8;
    goto LABEL_13;
  }

  v17 = v1 == 0x6E6F436B636F6C42 && v0 == 0xED00007374636174;
  if (v17 || (OUTLINED_FUNCTION_0_9(0x6E6F436B636F6C42, 0xED00007374636174) & 1) != 0)
  {

    v5 = 9;
    goto LABEL_13;
  }

  v18 = OUTLINED_FUNCTION_46_28() & 0xFFFFFFFFFFFFLL | 0x6F54000000000000;
  v20 = v1 == v18 && v0 == v19;
  if (v20 || (OUTLINED_FUNCTION_0_9(v18, v19) & 1) != 0)
  {

    v5 = 10;
    goto LABEL_13;
  }

  v21 = v1 == 0xD000000000000013 && 0x8000000193A3FC80 == v0;
  if (v21 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A3FC80) & 1) != 0)
  {

    v5 = 11;
    goto LABEL_13;
  }

  v22 = v1 == 0x746E6F43776F6853 && v0 == 0xEB00000000746E65;
  if (v22 || (OUTLINED_FUNCTION_0_9(0x746E6F43776F6853, 0xEB00000000746E65) & 1) != 0)
  {

    v5 = 12;
    goto LABEL_13;
  }

  v23 = v1 == 0x746E6F4365646948 && v0 == 0xEB00000000746E65;
  if (v23 || (OUTLINED_FUNCTION_0_9(0x746E6F4365646948, 0xEB00000000746E65) & 1) != 0)
  {

    v5 = 13;
    goto LABEL_13;
  }

  v24 = v1 == 0x6154646C65696853 && v0 == 0xE900000000000070;
  if (v24 || (OUTLINED_FUNCTION_0_9(0x6154646C65696853, 0xE900000000000070) & 1) != 0)
  {

    v5 = 14;
    goto LABEL_13;
  }

  v25 = v1 == 0x706154756E654DLL && v0 == 0xE700000000000000;
  if (v25 || (OUTLINED_FUNCTION_22_7(0x706154756E654DLL) & 1) != 0)
  {

    v5 = 15;
    goto LABEL_13;
  }

  v26 = OUTLINED_FUNCTION_20_0();
  v28 = v1 == v26 && v0 == v27;
  if (v28 || (OUTLINED_FUNCTION_0_9(v26, v27) & 1) != 0)
  {

    v5 = 16;
    goto LABEL_13;
  }

  v29 = v1 == 0x6143656D75736552 && v0 == 0xEA00000000006C6CLL;
  if (v29 || (OUTLINED_FUNCTION_0_9(0x6143656D75736552, 0xEA00000000006C6CLL) & 1) != 0)
  {

    v5 = 17;
    goto LABEL_13;
  }

  v30 = v1 == 0x6C6C6143646E45 && v0 == 0xE700000000000000;
  if (v30 || (OUTLINED_FUNCTION_22_7(0x6C6C6143646E45) & 1) != 0)
  {

    v5 = 18;
    goto LABEL_13;
  }

  v31 = OUTLINED_FUNCTION_45_5();
  v33 = v1 == v31 && v0 == v32;
  if (v33 || (OUTLINED_FUNCTION_0_9(v31, v32) & 1) != 0)
  {

    v5 = 19;
    goto LABEL_13;
  }

  v34 = v1 == 0xD000000000000011 && 0x8000000193A3FC60 == v0;
  if (v34 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A3FC60) & 1) != 0)
  {

    v5 = 20;
    goto LABEL_13;
  }

  v35 = v1 == 0xD00000000000001CLL && 0x8000000193A3FC40 == v0;
  if (v35 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, 0x8000000193A3FC40) & 1) != 0)
  {

    v5 = 21;
    goto LABEL_13;
  }

  v36 = v1 == 0x74496574656C6544 && v0 == 0xEA00000000006D65;
  if (v36 || (OUTLINED_FUNCTION_0_9(0x74496574656C6544, 0xEA00000000006D65) & 1) != 0)
  {

    v5 = 22;
    goto LABEL_13;
  }

  v37 = OUTLINED_FUNCTION_28_35() & 0xFFFFFFFFFFFFLL | 0x6F4E000000000000;
  v39 = v1 == v37 && v0 == v38;
  if (v39 || (OUTLINED_FUNCTION_0_9(v37, v38) & 1) != 0)
  {
    goto LABEL_12;
  }

  v40 = OUTLINED_FUNCTION_28_35() & 0xFFFFFFFFFFFFLL | 0x6956000000000000;
  v41 = v1 == v40 && v0 == 0xEA00000000007765;
  if (v41 || (OUTLINED_FUNCTION_0_9(v40, 0xEA00000000007765) & 1) != 0)
  {
    goto LABEL_25;
  }

  v42 = OUTLINED_FUNCTION_28_35() & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
  v44 = v1 == v42 && v0 == v43;
  if (v44 || (OUTLINED_FUNCTION_0_9(v42, v43) & 1) != 0)
  {
    goto LABEL_31;
  }

  if (v1 == 0xD000000000000013 && 0x8000000193A3FCA0 == v0)
  {
LABEL_37:

    v5 = 4;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A3FCA0);
  OUTLINED_FUNCTION_89();
  v5 = 4;
  if ((v1 & 1) == 0)
  {
    v5 = 0;
  }

LABEL_13:
  OUTLINED_FUNCTION_12_1(v5);
}

void SensitiveContentAnalysisUIInteraction.SubContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *sub_1937F6330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    OUTLINED_FUNCTION_17_2();
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    OUTLINED_FUNCTION_17_2();
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  v12 = v6 + 3;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v12;
  v13 = &v4[16 * v10];
  *(v13 + 4) = 1;
  v13[40] = 1;
  v14 = *(v4 + 3);
  v15 = v6 + 4;
  if ((v6 + 4) > (v14 >> 1))
  {
    v4 = OUTLINED_FUNCTION_51((v14 > 1), v6 + 4, v3, v4);
  }

  *(v4 + 2) = v15;
  v16 = &v4[16 * v12];
  *(v16 + 4) = 2;
  v16[40] = 1;
  v17 = *(v4 + 3);
  if ((v6 + 5) > (v17 >> 1))
  {
    v4 = OUTLINED_FUNCTION_51((v17 > 1), v6 + 5, v3, v4);
  }

  *(v4 + 2) = v6 + 5;
  v18 = &v4[16 * v15];
  *(v18 + 4) = 3;
  v18[40] = 1;
  return v4;
}

uint64_t SensitiveContentAnalysisUIInteraction.SubContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656B63697453;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_3();
      break;
    case 2:
      result = OUTLINED_FUNCTION_18_6();
      break;
    case 3:
      result = 0x6B636142706154;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisUIInteraction.SubContentType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x72656B63697453 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x72656B63697453) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_17_3();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_18_6();
        v12 = v1 == v10 && v0 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6B636142706154 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_22_7(0x6B636142706154);
          OUTLINED_FUNCTION_89();
          v5 = 3;
          if ((v1 & 1) == 0)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void SensitiveContentAnalysisUIInteraction.Step.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static SensitiveContentAnalysisUIInteraction.Step.allCases.getter()
{
  v2 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_16_0();
  if (!(!v14 & v13))
  {
    v76 = OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_84_2(v76, v77, v78, v79, &qword_1EAE43CE8, &qword_19399F478);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v80 = OUTLINED_FUNCTION_39(v19);
    OUTLINED_FUNCTION_85(v80, v81, v82, v83, &qword_1EAE43CE8, &qword_19399F478);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    v84 = OUTLINED_FUNCTION_39(v26);
    v22 = sub_1934B0FCC(v84, v0, 1, v85, &qword_1EAE43CE8, &qword_19399F478);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v86 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v86, v87, v88, v89, &qword_1EAE43CE8, &qword_19399F478);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v90 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v90, v91, v92, v93, &qword_1EAE43CE8, &qword_19399F478);
    v35 = v32;
  }

  OUTLINED_FUNCTION_47_5(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37);
  if (v1 + 6 > (v42 >> 1))
  {
    v94 = OUTLINED_FUNCTION_39(v42);
    v38 = OUTLINED_FUNCTION_84_2(v94, v95, v96, v97, &qword_1EAE43CE8, &qword_19399F478);
    v41 = v38;
  }

  OUTLINED_FUNCTION_50(v38, v39, v40, v41);
  OUTLINED_FUNCTION_4(v43);
  if (v1 + 7 > (v48 >> 1))
  {
    v98 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v98, v99, v100, v101, &qword_1EAE43CE8, &qword_19399F478);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49);
  if (v1 + 8 > (v54 >> 1))
  {
    v102 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_84_2(v102, v103, v104, v105, &qword_1EAE43CE8, &qword_19399F478);
    v53 = v50;
  }

  OUTLINED_FUNCTION_50(v50, v51, v52, v53);
  OUTLINED_FUNCTION_4(v55);
  if (v1 + 9 > (v60 >> 1))
  {
    v106 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_85(v106, v107, v108, v109, &qword_1EAE43CE8, &qword_19399F478);
    v59 = v56;
  }

  OUTLINED_FUNCTION_47_5(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61);
  if (v1 + 10 > (v66 >> 1))
  {
    v110 = OUTLINED_FUNCTION_39(v66);
    v62 = OUTLINED_FUNCTION_84_2(v110, v111, v112, v113, &qword_1EAE43CE8, &qword_19399F478);
    v65 = v62;
  }

  OUTLINED_FUNCTION_50(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67);
  if (v1 + 11 > (v72 >> 1))
  {
    v114 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_85(v114, v115, v116, v117, &qword_1EAE43CE8, &qword_19399F478);
    v71 = v68;
  }

  OUTLINED_FUNCTION_47_5(v68, v69, v70, v71);
  *(v73 + 32) = 9;
  *(v73 + 40) = v0;
  return v74;
}

void SensitiveContentAnalysisUIInteraction.Step.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_44_26();
        break;
      case 2:
        OUTLINED_FUNCTION_28_35();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_38();
        break;
      case 6:
        OUTLINED_FUNCTION_37_33();
        break;
      case 7:
        OUTLINED_FUNCTION_12_60();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void SensitiveContentAnalysisUIInteraction.Step.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6974634172657355 && v0 == 0xEA00000000006E6FLL;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6974634172657355, 0xEA00000000006E6FLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_44_26();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_28_35() & 0xFFFFFFFFFFFFLL | 0x654D000000000000;
        v11 = v1 == v10 && v0 == 0xEA0000000000756ELL;
        if (v11 || (OUTLINED_FUNCTION_0_9(v10, 0xEA0000000000756ELL) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = v1 == 0x646C65696853 && v0 == 0xE600000000000000;
          if (v12 || (OUTLINED_FUNCTION_0_9(0x646C65696853, 0xE600000000000000) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = v1 == 0xD000000000000013 && 0x8000000193A3FD00 == v0;
            if (v13 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A3FD00) & 1) != 0)
            {

              v5 = 4;
            }

            else
            {
              v14 = v1 == 0xD000000000000013 && 0x8000000193A3FCE0 == v0;
              if (v14 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A3FCE0) & 1) != 0)
              {

                v5 = 5;
              }

              else
              {
                v15 = OUTLINED_FUNCTION_37_33();
                v17 = v1 == v15 && v0 == v16;
                if (v17 || (OUTLINED_FUNCTION_0_9(v15, v16) & 1) != 0)
                {

                  v5 = 6;
                }

                else
                {
                  v18 = OUTLINED_FUNCTION_12_60();
                  v20 = v1 == v18 && v0 == v19;
                  if (v20 || (OUTLINED_FUNCTION_0_9(v18, v19) & 1) != 0)
                  {

                    v5 = 7;
                  }

                  else
                  {
                    v21 = v1 == 0xD000000000000012 && 0x8000000193A3FCC0 == v0;
                    if (v21 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A3FCC0) & 1) != 0)
                    {

                      v5 = 8;
                    }

                    else if (v1 == 7366996 && v0 == 0xE300000000000000)
                    {

                      v5 = 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_9(7366996, 0xE300000000000000);
                      OUTLINED_FUNCTION_89();
                      v5 = 9;
                      if ((v1 & 1) == 0)
                      {
                        v5 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_1937F6D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      sub_1937F6DEC();
      v5 = a1 + 40;
      v6 = a2 + 40;
      do
      {
        v7 = sub_19393C550();
        if ((v7 & 1) == 0)
        {
          break;
        }

        v5 += 16;
        v6 += 16;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1937F6DEC()
{
  result = qword_1EAE43C40;
  if (!qword_1EAE43C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C40);
  }

  return result;
}

unint64_t sub_1937F6E40()
{
  result = qword_1EAE43C48;
  if (!qword_1EAE43C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C48);
  }

  return result;
}

unint64_t sub_1937F6E94()
{
  result = qword_1EAE43C50;
  if (!qword_1EAE43C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C50);
  }

  return result;
}

unint64_t sub_1937F6EE8()
{
  result = qword_1EAE43C58;
  if (!qword_1EAE43C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C58);
  }

  return result;
}

unint64_t sub_1937F6F3C()
{
  result = qword_1EAE43C60;
  if (!qword_1EAE43C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C60);
  }

  return result;
}

unint64_t sub_1937F6F90()
{
  result = qword_1EAE43C68;
  if (!qword_1EAE43C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C68);
  }

  return result;
}

unint64_t sub_1937F6FE4()
{
  result = qword_1EAE43C70;
  if (!qword_1EAE43C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C70);
  }

  return result;
}

unint64_t sub_1937F7038()
{
  result = qword_1EAE43C78;
  if (!qword_1EAE43C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C78);
  }

  return result;
}

unint64_t sub_1937F708C()
{
  result = qword_1EAE43C80;
  if (!qword_1EAE43C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C80);
  }

  return result;
}

unint64_t sub_1937F70E0()
{
  result = qword_1EAE43C88;
  if (!qword_1EAE43C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C88);
  }

  return result;
}

unint64_t sub_1937F7134()
{
  result = qword_1EAE43C90;
  if (!qword_1EAE43C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C90);
  }

  return result;
}

unint64_t sub_1937F7188()
{
  result = qword_1EAE43C98;
  if (!qword_1EAE43C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C98);
  }

  return result;
}

unint64_t sub_1937F71DC()
{
  result = qword_1EAE43CA0;
  if (!qword_1EAE43CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CA0);
  }

  return result;
}

unint64_t sub_1937F7230()
{
  result = qword_1EAE43CA8;
  if (!qword_1EAE43CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CA8);
  }

  return result;
}

uint64_t sub_1937F7284(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    sub_1937F7230();
    v5 = a2 + 40;
    do
    {
      v5 += 16;
      result = sub_19393C540();
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1937F7318()
{
  result = qword_1EAE43CB0;
  if (!qword_1EAE43CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CB0);
  }

  return result;
}

unint64_t sub_1937F7370()
{
  result = qword_1EAE43CB8;
  if (!qword_1EAE43CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CB8);
  }

  return result;
}

unint64_t sub_1937F73C8()
{
  result = qword_1EAE43CC0;
  if (!qword_1EAE43CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CC0);
  }

  return result;
}

unint64_t sub_1937F7420()
{
  result = qword_1EAE43CC8;
  if (!qword_1EAE43CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CC8);
  }

  return result;
}

unint64_t sub_1937F7478()
{
  result = qword_1EAE43CD0;
  if (!qword_1EAE43CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CD0);
  }

  return result;
}

unint64_t sub_1937F74D0()
{
  result = qword_1EAE43CD8;
  if (!qword_1EAE43CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CD8);
  }

  return result;
}

unint64_t sub_1937F7528()
{
  result = qword_1EAE43CE0;
  if (!qword_1EAE43CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_41_26()
{

  return sub_19393C8A0();
}

uint64_t sub_1937F75B8()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE1C8);
  __swift_project_value_buffer(v2, qword_1EAEAE1C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v51 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v51, xmmword_193952750);
  *v1 = 1;
  *v0 = "interactionType";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v8 = 2;
  *v7 = "ageGroup";
  v7[1] = 8;
  v9 = OUTLINED_FUNCTION_5_76(v7);
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  *v10 = "eventDirection";
  *(v10 + 1) = 14;
  v11 = OUTLINED_FUNCTION_5_76(v10);
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_44(3 * v4);
  *v13 = 4;
  *v12 = "screen";
  v12[1] = 6;
  v14 = OUTLINED_FUNCTION_5_76(v12);
  (v6)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v16 = 5;
  *v15 = "action";
  v15[1] = 6;
  v17 = OUTLINED_FUNCTION_5_76(v15);
  (v6)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  *v18 = "contentType";
  v18[1] = 11;
  v20 = OUTLINED_FUNCTION_5_76(v18);
  (v6)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v22 = 7;
  *v21 = "clientBundleID";
  v21[1] = 14;
  v23 = OUTLINED_FUNCTION_5_76(v21);
  (v6)(v23);
  v24 = OUTLINED_FUNCTION_44(7 * v4);
  *v25 = 8;
  *v24 = "trackingVersion";
  v24[1] = 15;
  v26 = OUTLINED_FUNCTION_5_76(v24);
  (v6)(v26);
  v27 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v28 = 9;
  *v27 = "harms";
  v27[1] = 5;
  v29 = OUTLINED_FUNCTION_5_76(v27);
  (v6)(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v4);
  *v31 = 10;
  *v30 = "subContentType";
  v30[1] = 14;
  v32 = OUTLINED_FUNCTION_5_76(v30);
  (v6)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v34 = 11;
  *v33 = "options";
  v33[1] = 7;
  v35 = OUTLINED_FUNCTION_5_76(v33);
  (v6)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v1 + 11 * v4);
  *v37 = 12;
  *v36 = "currentStep";
  v36[1] = 11;
  v38 = OUTLINED_FUNCTION_5_76(v36);
  (v6)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v1 + 12 * v4);
  *v40 = 13;
  *v39 = "previousStep";
  v39[1] = 12;
  v41 = OUTLINED_FUNCTION_5_76(v39);
  (v6)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v1 + 13 * v4);
  *v43 = 14;
  *v42 = "path";
  v42[1] = 4;
  v44 = OUTLINED_FUNCTION_5_76(v42);
  (v6)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v1 + 14 * v4);
  *v46 = 15;
  *v45 = "region";
  v45[1] = 6;
  v47 = OUTLINED_FUNCTION_5_76(v45);
  (v6)(v47);
  v48 = OUTLINED_FUNCTION_44(15 * v4);
  *v49 = 16;
  *v48 = "userOptedToShow";
  *(v48 + 8) = 15;
  *(v48 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  return sub_19393C410();
}

void sub_1937F79D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v7 = sub_19393C0E0();
    if (v5 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        v9 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v9 + 28));
        goto LABEL_15;
      case 2:
        v15 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v15 + 32));
        goto LABEL_15;
      case 3:
        v13 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v13 + 36));
        goto LABEL_15;
      case 4:
        v14 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v14 + 40));
        goto LABEL_15;
      case 5:
        v11 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v11 + 44));
        goto LABEL_15;
      case 6:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v5 = 0;
        SensitiveContentAnalysisUIInteraction.ContentType.init(rawValue:)(0);
        *(v3 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 48)) = v19;
        continue;
      case 7:
      case 8:
      case 15:
        type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        goto LABEL_19;
      case 9:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v5 = 0;
        SensitiveContentAnalysisUIInteraction.Harms.init(rawValue:)(0);
        *(v3 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 60)) = v19;
        continue;
      case 10:
        v12 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v12 + 64));
        goto LABEL_15;
      case 11:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v5 = 0;
        SensitiveContentAnalysisUIInteraction.Options.init(rawValue:)(0);
        *(v3 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 68)) = v19;
        continue;
      case 12:
        v10 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 72);
        goto LABEL_9;
      case 13:
        v10 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 76);
LABEL_9:
        OUTLINED_FUNCTION_160(v10);
LABEL_15:
        sub_1934982A8();
        goto LABEL_19;
      case 14:
        v16 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        v17 = OUTLINED_FUNCTION_160(*(v16 + 80));
        sub_1934984D4(v17, v18, &type metadata for SensitiveContentAnalysisUIInteraction.Step, a3, &off_1F07F4E50);
        goto LABEL_19;
      case 16:
        type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
LABEL_19:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937F7CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  v9 = result;
  if ((*(v3 + *(result + 28) + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_107();
    OUTLINED_FUNCTION_23_3();
    result = sub_193447324(v10, v11, v12, v13, v14, v15);
    v5 = v4;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_24_50();
    if ((v16 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v17, v18, v19, v20, v21, v22), !v4))
    {
      OUTLINED_FUNCTION_24_50();
      if ((v23 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v24, v25, v26, v27, v28, v29), !v4))
      {
        OUTLINED_FUNCTION_24_50();
        if ((v30 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v31, v32, v33, v34, v35, v36), !v4))
        {
          OUTLINED_FUNCTION_24_50();
          v121 = a2;
          v122 = a3;
          if ((v37 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v38, v39, v40, v41, v42, v43), !v4))
          {
            v44 = *(v3 + v9[12]);
            sub_1937F3EF4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BE0, &qword_19399F1A0);
            sub_1937EFC3C(&qword_1EAE43BE8, &qword_1EAE43BE0, &qword_19399F1A0);
            sub_19393C8A0();
            v45 = sub_1937F467C();
            result = OUTLINED_FUNCTION_25_40(v45, v46, v47, v48);
            if (result)
            {
              goto LABEL_17;
            }

            if (v44 < 0xFFFFFFFF80000000)
            {
              __break(1u);
            }

            else if (v44 <= 0x7FFFFFFF)
            {
              OUTLINED_FUNCTION_11_2();
              result = OUTLINED_FUNCTION_37_34(v49, v50, v51, v52, v53, v54, v55, v56, v120, a2, a3);
              if (v4)
              {
                return result;
              }

LABEL_17:
              if (*(v3 + v9[13] + 8))
              {
                OUTLINED_FUNCTION_11_2();
                result = sub_19393C3C0();
                if (v4)
                {
                  return result;
                }
              }

              if (*(v3 + v9[14] + 8))
              {
                OUTLINED_FUNCTION_11_2();
                result = sub_19393C3C0();
                if (v4)
                {
                  return result;
                }
              }

              v57 = *(v3 + v9[15]);
              sub_1937F3F48();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BF8, &qword_19399F1A8);
              v58 = sub_1937EFC3C(&qword_1EAE43C00, &qword_1EAE43BF8, &qword_19399F1A8);
              OUTLINED_FUNCTION_38_34(v58, v59, v58, v60, v61, v62);
              v63 = sub_1937F46D0();
              result = OUTLINED_FUNCTION_25_40(v63, v64, v65, v66);
              if (result)
              {
LABEL_25:
                OUTLINED_FUNCTION_24_50();
                if ((v75 & 1) == 0)
                {
                  OUTLINED_FUNCTION_0_107();
                  OUTLINED_FUNCTION_23_3();
                  result = sub_193447324(v76, v77, v78, v79, v80, v81);
                  if (v4)
                  {
                    return result;
                  }
                }

                v82 = *(v3 + v9[17]);
                sub_1937F3F9C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43C10, &qword_19399F1B0);
                v83 = sub_1937EFC3C(&qword_1EAE43C18, &qword_1EAE43C10, &qword_19399F1B0);
                OUTLINED_FUNCTION_38_34(v83, v84, v83, v85, v86, v87);
                v88 = sub_1937F4724();
                result = OUTLINED_FUNCTION_25_40(v88, v89, v90, v91);
                if (result)
                {
                  goto LABEL_31;
                }

                if (v82 >= 0xFFFFFFFF80000000)
                {
                  if (v82 <= 0x7FFFFFFF)
                  {
                    OUTLINED_FUNCTION_11_2();
                    result = OUTLINED_FUNCTION_37_34(v92, v93, v94, v95, v96, v97, v98, v99, v120, v121, v122);
                    if (v4)
                    {
                      return result;
                    }

LABEL_31:
                    OUTLINED_FUNCTION_24_50();
                    if ((v100 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v101, v102, v103, v104, v105, v106), !v4))
                    {
                      OUTLINED_FUNCTION_24_50();
                      if ((v107 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v108, v109, v110, v111, v112, v113), !v4))
                      {
                        result = *(v3 + v9[20]);
                        if (!*(result + 16) || (OUTLINED_FUNCTION_23_3(), result = sub_193498B44(v114, v115, v116, v117, v118, v119), !v4))
                        {
                          if (!*(v3 + v9[21] + 8) || (OUTLINED_FUNCTION_11_2(), result = sub_19393C3C0(), !v4))
                          {
                            if (*(v3 + v9[22]) != 2)
                            {
                              OUTLINED_FUNCTION_11_2();
                              return sub_19393C2E0();
                            }
                          }
                        }
                      }
                    }

                    return result;
                  }

LABEL_46:
                  __break(1u);
                  return result;
                }

LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

              if (v57 >= 0xFFFFFFFF80000000)
              {
                if (v57 <= 0x7FFFFFFF)
                {
                  OUTLINED_FUNCTION_11_2();
                  result = OUTLINED_FUNCTION_37_34(v67, v68, v69, v70, v71, v72, v73, v74, v120, v121, v122);
                  if (v4)
                  {
                    return result;
                  }

                  goto LABEL_25;
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            __break(1u);
            goto LABEL_43;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1937F8250(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE43D20;

  return v1;
}

void sub_1937F82EC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE1E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("InteractionTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "InteractionTypeChat";
  *(v8 + 1) = 19;
  v8[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = v0;
  *v9 = "InteractionTypeHelp";
  *(v9 + 8) = 19;
  *(v9 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v11 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v11 = "InteractionTypeSendOrReceive";
  *(v11 + 1) = 28;
  v11[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F84C0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE1F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("AgeGroupUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "AgeGroupUnder13";
  *(v8 + 1) = 15;
  v8[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = v0;
  *v9 = "AgeGroupOver13";
  *(v9 + 8) = 14;
  *(v9 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v11 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v11 = "AgeGroupAdult";
  *(v11 + 1) = 13;
  v11[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F8698()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE210);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBD0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("EventDirectionUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "EventDirectionSend";
  *(v8 + 1) = 18;
  v8[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = v0;
  *v9 = "EventDirectionReceive";
  *(v9 + 8) = 21;
  *(v9 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v11 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v11 = "EventDirectionUnknownOrNotApplicable";
  *(v11 + 1) = 36;
  v11[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v12 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  *v12 = "EventDirectionTryingToCall";
  *(v12 + 1) = 26;
  v12[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F88A0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE228);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = OUTLINED_FUNCTION_156();
  *(v5 + 16) = xmmword_19394FBB0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + dword_1EAEAE260;
  *v6 = 0;
  *v7 = "ScreenUnknown";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = OUTLINED_FUNCTION_17_8((v6 + v2));
  *v11 = "ScreenIntervention1";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v10();
  v12 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v13 = 2;
  *v12 = "ScreenIntervention2";
  *(v12 + 8) = 19;
  *(v12 + 16) = 2;
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F8A7C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE240);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v62 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v62, xmmword_19397F900);
  *v0 = "ActionUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v7 = "ActionCancel";
  *(v7 + 1) = 12;
  v8 = OUTLINED_FUNCTION_1_3(v7);
  (v6)(v8);
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = 2;
  *v9 = "ActionImSure";
  v9[1] = 12;
  v11 = OUTLINED_FUNCTION_1_3(v9);
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v12 = "ActionBypass";
  *(v12 + 1) = 12;
  v13 = OUTLINED_FUNCTION_1_3(v12);
  (v6)(v13);
  v14 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  *v14 = "ActionHeed";
  *(v14 + 1) = 10;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  (v6)(v15);
  v16 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v17 = 5;
  v18 = OUTLINED_FUNCTION_0_0(v16, "ActionMessageSomeone");
  (v6)(v18);
  v19 = OUTLINED_FUNCTION_14_4(6);
  v20 = OUTLINED_FUNCTION_0_0(v19, "ActionDontSend");
  (v6)(v20);
  v21 = OUTLINED_FUNCTION_45_2(7 * v4);
  *v22 = 7;
  *v21 = "ActionWaysToGetHelp";
  v21[1] = 19;
  v23 = OUTLINED_FUNCTION_1_3(v21);
  (v6)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v1 + 8 * v4);
  *v25 = 8;
  v26 = OUTLINED_FUNCTION_0_0(v24, "ActionLeaveGroup");
  (v6)(v26);
  v27 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v28 = 9;
  v29 = OUTLINED_FUNCTION_0_0(v27, "ActionBlockContact");
  (v6)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v31 = 10;
  *v30 = "ActionBlockContacts";
  v30[1] = 19;
  v32 = OUTLINED_FUNCTION_1_3(v30);
  (v6)(v32);
  v33 = OUTLINED_FUNCTION_14_4(11);
  *v33 = "ActionReportToApple";
  *(v33 + 1) = 19;
  v34 = OUTLINED_FUNCTION_1_3(v33);
  (v6)(v34);
  v35 = OUTLINED_FUNCTION_32_10();
  v36 = OUTLINED_FUNCTION_0_0(v35, "ActionReportToAuthorities");
  (v6)(v36);
  v37 = OUTLINED_FUNCTION_32_10();
  *v37 = "ActionShowContent";
  *(v37 + 1) = 17;
  v38 = OUTLINED_FUNCTION_1_3(v37);
  (v6)(v38);
  v39 = OUTLINED_FUNCTION_32_10();
  *v39 = "ActionHideContent";
  *(v39 + 1) = 17;
  v40 = OUTLINED_FUNCTION_1_3(v39);
  (v6)(v40);
  v41 = OUTLINED_FUNCTION_45_2(15 * v4);
  *v42 = 15;
  v43 = OUTLINED_FUNCTION_0_0(v41, "ActionShieldTap");
  (v6)(v43);
  v44 = OUTLINED_FUNCTION_3_1(v1 + 16 * v4);
  *v45 = 16;
  *v44 = "ActionMenuTap";
  v44[1] = 13;
  v46 = OUTLINED_FUNCTION_1_3(v44);
  (v6)(v46);
  v47 = OUTLINED_FUNCTION_45_2(17 * v4);
  *v48 = 17;
  *v47 = "ActionTryingToCall";
  v47[1] = 18;
  v49 = OUTLINED_FUNCTION_1_3(v47);
  (v6)(v49);
  v50 = OUTLINED_FUNCTION_32_10();
  *v50 = "ActionResumeCall";
  *(v50 + 1) = 16;
  v51 = OUTLINED_FUNCTION_1_3(v50);
  (v6)(v51);
  v52 = OUTLINED_FUNCTION_32_10();
  *v52 = "ActionEndCall";
  *(v52 + 1) = 13;
  v53 = OUTLINED_FUNCTION_1_3(v52);
  (v6)(v53);
  v54 = OUTLINED_FUNCTION_32_10();
  *v54 = "ActionUnsubscribe";
  *(v54 + 1) = 17;
  v55 = OUTLINED_FUNCTION_1_3(v54);
  (v6)(v55);
  v56 = OUTLINED_FUNCTION_14_4(21);
  *v56 = "ActionSystemUIDismissal";
  *(v56 + 1) = 23;
  v57 = OUTLINED_FUNCTION_1_3(v56);
  (v6)(v57);
  v58 = OUTLINED_FUNCTION_14_4(22);
  v59 = OUTLINED_FUNCTION_0_0(v58, "ActionSuccessfulScreenTimePasscode");
  (v6)(v59);
  v60 = OUTLINED_FUNCTION_3_1(v1 + 23 * v4);
  *v61 = 23;
  *v60 = "ActionDeleteItem";
  *(v60 + 8) = 16;
  *(v60 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937F8F80()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE258);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "SubContentTypeUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "SubContentTypeSticker";
  *(v8 + 1) = 21;
  v8[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = 2;
  *v9 = "SubContentTypeBackgroundImage";
  *(v9 + 8) = 29;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v11 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v11 = "SubContentTypeInlineSticker";
  *(v11 + 1) = 27;
  v11[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v12 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  *v12 = "SubContentTypeTapBack";
  *(v12 + 1) = 21;
  v12[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F918C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE270);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v5, xmmword_1939526F0);
  *v0 = "StepUnknown";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_17_8((v1 + v4));
  *v8 = "StepUserAction";
  *(v8 + 1) = 14;
  v9 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  v12 = OUTLINED_FUNCTION_0_0(v10, "StepContextMenu");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v13 = "StepActionMenu";
  *(v13 + 1) = 14;
  v14 = OUTLINED_FUNCTION_1_3(v13);
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "StepShield");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v18 = 5;
  *v17 = "StepInterventionScreen1";
  v17[1] = 23;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_14_4(6);
  *v20 = "StepInterventionScreen2";
  *(v20 + 1) = 23;
  v21 = OUTLINED_FUNCTION_1_3(v20);
  (v7)(v21);
  v22 = OUTLINED_FUNCTION_45_2(7 * v4);
  *v23 = 7;
  v24 = OUTLINED_FUNCTION_0_0(v22, "StepSensitiveBadge");
  (v7)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 8 * v4);
  *v26 = 8;
  v27 = OUTLINED_FUNCTION_0_0(v25, "StepWaysToGetHelp");
  (v7)(v27);
  v28 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v29 = 9;
  v30 = OUTLINED_FUNCTION_0_0(v28, "StepScreenTimePasscode");
  (v7)(v30);
  v31 = OUTLINED_FUNCTION_32_10();
  *v31 = "StepTip";
  *(v31 + 1) = 7;
  v31[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t SensitiveContentAnalysisUIInteraction.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SensitiveContentAnalysisUIInteraction()
{
  result = qword_1EAEA5100;
  if (!qword_1EAEA5100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

void SensitiveContentAnalysisUIInteraction.interactionType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 28));
}

void SensitiveContentAnalysisUIInteraction.ageGroup.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

void SensitiveContentAnalysisUIInteraction.eventDirection.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 36));
}

void SensitiveContentAnalysisUIInteraction.screen.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 40));
}

void SensitiveContentAnalysisUIInteraction.action.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 44));
}

uint64_t SensitiveContentAnalysisUIInteraction.contentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.contentType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.clientBundleID.getter()
{
  type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisUIInteraction.clientBundleID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_20_52() + 52));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.trackingVersion.getter()
{
  type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisUIInteraction.trackingVersion.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_20_52() + 56));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.harms.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *v0 = *(v1 + *(result + 60));
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.harms.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *(v1 + *(result + 60)) = v2;
  return result;
}

void SensitiveContentAnalysisUIInteraction.subContentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 64));
}

uint64_t SensitiveContentAnalysisUIInteraction.options.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *v0 = *(v1 + *(result + 68));
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.options.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *(v1 + *(result + 68)) = v2;
  return result;
}

void SensitiveContentAnalysisUIInteraction.currentStep.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 72));
}

void SensitiveContentAnalysisUIInteraction.previousStep.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 76));
}

uint64_t SensitiveContentAnalysisUIInteraction.path.getter()
{
  type metadata accessor for SensitiveContentAnalysisUIInteraction();
}

uint64_t SensitiveContentAnalysisUIInteraction.path.setter()
{
  v2 = *(OUTLINED_FUNCTION_13_61() + 80);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.region.getter()
{
  type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisUIInteraction.region.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_20_52() + 84));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.userOptedToShow.setter(char a1)
{
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t sub_1937FA020@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.InteractionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.InteractionType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937FA0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937FA1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937FA2A8@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.AgeGroup.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.AgeGroup.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937FA3C0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.EventDirection.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937FA3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.EventDirection.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937FA4D8@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.Screen.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA500@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.Screen.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA5F0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.Action.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA618@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.Action.allCases.getter();
  *a1 = result;
  return result;
}

IntelligencePlatformLibrary::SensitiveContentAnalysisUIInteraction::ContentType sub_1937FA740@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SensitiveContentAnalysisUIInteraction.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1937FA780@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA7B0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.SubContentType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937FA7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.SubContentType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937FA8C8@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.Step.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA8F0@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.Step.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.hashValue.getter()
{
  sub_19393CAB0();
  SensitiveContentAnalysisUIInteraction.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1937FAA58()
{
  sub_19393CAB0();
  SensitiveContentAnalysisUIInteraction.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_1937FAB9C()
{
  result = qword_1EAE43D80;
  if (!qword_1EAE43D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43D80);
  }

  return result;
}

unint64_t sub_1937FABFC()
{
  result = qword_1EAE43D88;
  if (!qword_1EAE43D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43D88);
  }

  return result;
}

unint64_t sub_1937FAC88()
{
  result = qword_1EAE43DA0;
  if (!qword_1EAE43DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DA0);
  }

  return result;
}

unint64_t sub_1937FACE8()
{
  result = qword_1EAE43DA8;
  if (!qword_1EAE43DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DA8);
  }

  return result;
}

unint64_t sub_1937FAD74()
{
  result = qword_1EAE43DB8;
  if (!qword_1EAE43DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DB8);
  }

  return result;
}

unint64_t sub_1937FADD4()
{
  result = qword_1EAE43DC0;
  if (!qword_1EAE43DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DC0);
  }

  return result;
}

unint64_t sub_1937FAE2C()
{
  result = qword_1EAE43DC8;
  if (!qword_1EAE43DC8)
  {
    type metadata accessor for SensitiveContentAnalysisUIInteraction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DC8);
  }

  return result;
}

uint64_t sub_1937FAEB0()
{
  sub_19349D140(319);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198(319);
    OUTLINED_FUNCTION_4_0();
    if (!(!v2 & v1))
    {
      OUTLINED_FUNCTION_0_108(v3, &qword_1EAE43DD0, &type metadata for SensitiveContentAnalysisUIInteraction.InteractionType);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        OUTLINED_FUNCTION_0_108(v4, &qword_1EAE43DD8, &type metadata for SensitiveContentAnalysisUIInteraction.AgeGroup);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          OUTLINED_FUNCTION_0_108(v5, &qword_1EAE43DE0, &type metadata for SensitiveContentAnalysisUIInteraction.EventDirection);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            OUTLINED_FUNCTION_0_108(v6, &qword_1EAE43DE8, &type metadata for SensitiveContentAnalysisUIInteraction.Screen);
            OUTLINED_FUNCTION_4_0();
            if (!(!v2 & v1))
            {
              OUTLINED_FUNCTION_0_108(v7, &qword_1EAE43DF0, &type metadata for SensitiveContentAnalysisUIInteraction.Action);
              OUTLINED_FUNCTION_4_0();
              if (!(!v2 & v1))
              {
                OUTLINED_FUNCTION_0_108(v8, &qword_1ED508290, MEMORY[0x1E69E6158]);
                OUTLINED_FUNCTION_4_0();
                if (!(!v2 & v1))
                {
                  OUTLINED_FUNCTION_0_108(v9, &qword_1EAE43DF8, &type metadata for SensitiveContentAnalysisUIInteraction.SubContentType);
                  if (v11 > 0x3F)
                  {
                    return v10;
                  }

                  OUTLINED_FUNCTION_0_108(v10, &qword_1EAE43E00, &type metadata for SensitiveContentAnalysisUIInteraction.Step);
                  if (v12 > 0x3F)
                  {
                    return v10;
                  }

                  sub_1937FB100(319, &qword_1EAE43E08, &type metadata for SensitiveContentAnalysisUIInteraction.Step, MEMORY[0x1E69E62F8]);
                  if (v13 > 0x3F)
                  {
                    return v10;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_108(v10, &qword_1ED506698, MEMORY[0x1E69E6370]);
                    OUTLINED_FUNCTION_4_0();
                    if (!(!v2 & v1))
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1937FB100(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1937FB244()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED512628);
  v4 = __swift_project_value_buffer(v3, qword_1ED512628);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.SensitiveContentAnalysis.ContentInteractionFlow.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_74 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512628);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E10, &qword_1939A03E0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.SensitiveContentAnalysis.ContentInteractionFlow.attribute(_:)(void (*a1)(void))
{
  result = sub_1937FB654(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937FB69C(void (*a1)(void))
{
  result = sub_1937FB654(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937FB6CC(uint64_t a1)
{
  result = sub_1937FB6F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937FB6F4()
{
  result = qword_1EAE3A940;
  if (!qword_1EAE3A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A940);
  }

  return result;
}

_BYTE *_s22ContentInteractionFlowOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937FB83C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED512688);
  v4 = __swift_project_value_buffer(v3, qword_1ED512688);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.SensitiveContentAnalysis.ResourcesInteraction.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_75 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512688);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E18, &qword_1939A0470);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.SensitiveContentAnalysis.ResourcesInteraction.attribute(_:)(void (*a1)(void))
{
  result = sub_1937FBC4C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937FBC94(void (*a1)(void))
{
  result = sub_1937FBC4C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937FBCC4(uint64_t a1)
{
  result = sub_1937FBCEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937FBCEC()
{
  result = qword_1EAE3A930;
  if (!qword_1EAE3A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A930);
  }

  return result;
}

_BYTE *_s20ResourcesInteractionOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SensitiveContentAnalysisContentInteractionFlow.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E20, &qword_1939A04F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1937FBFF4(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE43E20, &qword_1939A04F8, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE43E20, &qword_1939A04F8);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1937FBFF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisContentInteractionFlow.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E20, &qword_1939A04F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE43E20, &qword_1939A04F8, v8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937FC198(v6, a1);
  }

  return result;
}

uint64_t sub_1937FC198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisContentInteractionFlow.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E20, &qword_1939A04F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1937FF6A4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1937FC198(v11, v36);
      v29 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.serialize()()
{
  v1 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E20, &qword_1939A04F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1937FBFF4(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE43E20, &qword_1939A04F8, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE43E20, &qword_1939A04F8);
  return v11;
}

id static SensitiveContentAnalysisContentInteractionFlow.columns.getter()
{
  v177 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v12, v13, v14, v15, v16);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v26 = OUTLINED_FUNCTION_2_4(inited, v19, v20, v21, v22, v23, v24, v25, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v36 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v36);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v37, v38, v39, v40, v41);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v42 = swift_initStackObject();
  v50 = OUTLINED_FUNCTION_2_4(v42, v43, v44, v45, v46, v47, v48, v49, v170);
  OUTLINED_FUNCTION_5_10(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v60 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v60);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v61, v62, v63, v64, v65, 2, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v66 = swift_initStackObject();
  v74 = OUTLINED_FUNCTION_2_4(v66, v67, v68, v69, v70, v71, v72, v73, v171);
  OUTLINED_FUNCTION_5_10(v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v84 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v84);
  OUTLINED_FUNCTION_20_50();
  OUTLINED_FUNCTION_18_5();
  result = sub_19343D150(v85, v86, 2, 0, v0, 13, 0);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_3(result);
  v87 = swift_initStackObject();
  v95 = OUTLINED_FUNCTION_2_4(v87, v88, v89, v90, v91, v92, v93, v94, v172);
  OUTLINED_FUNCTION_5_10(v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  v105 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v105);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v106, v107, v108, v109, v110, 2, 0);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_69_3(result);
  v111 = swift_initStackObject();
  v119 = OUTLINED_FUNCTION_2_4(v111, v112, v113, v114, v115, v116, v117, v118, v173);
  OUTLINED_FUNCTION_5_10(v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
  v129 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v129);
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v130, v131, v132, v133, v134);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_69_3(result);
  v135 = swift_initStackObject();
  v143 = OUTLINED_FUNCTION_2_4(v135, v136, v137, v138, v139, v140, v141, v142, v174);
  OUTLINED_FUNCTION_5_10(v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
  v153 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v153);
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v154, v155, v156, v157, v158);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_69_3(result);
  v159 = swift_initStackObject();
  v167 = OUTLINED_FUNCTION_2_4(v159, v160, v161, v162, v163, v164, v165, v166, v175);
  *(v167 + 16) = v176;
  *(v167 + 32) = sub_19393C850();
  v168 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v169 = OUTLINED_FUNCTION_16_5();
  result = sub_19343D150(v169 | 0x44497400000000, 0xE700000000000000, 2, 0, v167, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v177;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1937FC9D4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_16_3();
  v7 = a1 == v5 && v6 == 0xE800000000000000;
  if (v7 || (v8 = v6, (OUTLINED_FUNCTION_59_0(v5, 0xE800000000000000) & 1) != 0))
  {
    type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
    OUTLINED_FUNCTION_58_1();
    if (v9)
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_41();
  v10 = OUTLINED_FUNCTION_16_5() | 0x7269447400000000;
  v12 = a1 == v10 && v8 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_0(v10, v11) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
    OUTLINED_FUNCTION_58_1();
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v14 = OUTLINED_FUNCTION_42_1();
  v16 = a1 == v14 && v8 == v15;
  if (v16 || (OUTLINED_FUNCTION_59_0(v14, v15) & 1) != 0)
  {
    v17 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 36));
    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_18_5();
  v18 = OUTLINED_FUNCTION_20_50();
  v20 = a1 == v18 && v8 == v19;
  if (v20 || (OUTLINED_FUNCTION_59_0(v18, v19) & 1) != 0)
  {
    v21 = *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 40);
    goto LABEL_31;
  }

  v22 = a1 == 0x736D726168 && v8 == 0xE500000000000000;
  if (!v22 && (OUTLINED_FUNCTION_59_0(0x736D726168, 0xE500000000000000) & 1) == 0)
  {
LABEL_41:
    OUTLINED_FUNCTION_19_11();
    v24 = OUTLINED_FUNCTION_22_5();
    v26 = a1 == v24 && v8 == v25;
    if (v26 || (OUTLINED_FUNCTION_59_0(v24, v25) & 1) != 0)
    {
      type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
      OUTLINED_FUNCTION_58_1();
      if (v27)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v28 = a1 == 0x6574617473 && v8 == 0xE500000000000000;
      if (!v28 && (OUTLINED_FUNCTION_59_0(0x6574617473, 0xE500000000000000) & 1) == 0)
      {
        v30 = OUTLINED_FUNCTION_16_5() | 0x44497400000000;
        v31 = a1 == v30 && v8 == 0xE700000000000000;
        if (!v31 && (OUTLINED_FUNCTION_59_0(v30, 0xE700000000000000) & 1) == 0)
        {
LABEL_63:
          sub_19349AB64();
          swift_allocError();
          v33 = v32;
          *v32 = a1;
          v32[1] = v8;
          v32[5] = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v33 + 2);
          sub_1937FBFF4(v2, boxed_opaque_existential_1Tm);
          *(v33 + 48) = 1;
          swift_willThrow();

          return;
        }

        v21 = *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 56);
LABEL_31:
        if (!*(v2 + v21 + 8))
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      }

      type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
      OUTLINED_FUNCTION_58_1();
      if (v29)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    OUTLINED_FUNCTION_147();
LABEL_9:
    sub_1934948FC();
    return;
  }

  v23 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 44));
  if (v23 >= 0xFFFFFFFF80000000)
  {
    if (v23 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_41;
  }

  __break(1u);
}

unint64_t sub_1937FCCF8()
{
  result = qword_1EAE43E30;
  if (!qword_1EAE43E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E30);
  }

  return result;
}

unint64_t sub_1937FCD4C()
{
  result = qword_1EAE43E48;
  if (!qword_1EAE43E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E48);
  }

  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v8);
  v9 = a1 + v2[13];
  j__OUTLINED_FUNCTION_131(v9);
  v12 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1937FF6A4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  sub_1937FCCF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E38, &qword_1939A0500);
  sub_1937EFC3C(&qword_1EAE43E40, &qword_1EAE43E38, &qword_1939A0500);
  sub_19393C8A0();

  *(a1 + v2[9]) = v13;
  *v7 = 0;
  v7[1] = 0;
  sub_1937FCD4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E50, &qword_1939A0508);
  sub_1937EFC3C(&qword_1EAE43E58, &qword_1EAE43E50, &qword_1939A0508);
  sub_19393C8A0();

  *(a1 + v2[11]) = v13;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v9 = 0;
  *(v9 + 8) = 256;
  *v12 = 0;
  v12[1] = 0;
  return result;
}

BOOL static SensitiveContentAnalysisContentInteractionFlow.== infix(_:_:)()
{
  type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_25_3();
  if (v1)
  {
    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v3 = sub_1937FD380();
    if ((OUTLINED_FUNCTION_25_4(v3, v4, &type metadata for SensitiveContentAnalysisContentInteractionFlow.AgeGroup, v3, v5, v6, v7, v8, v59, v62, v65) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v10)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v12 = sub_1937FD32C();
    if ((OUTLINED_FUNCTION_25_4(v12, v13, &type metadata for SensitiveContentAnalysisContentInteractionFlow.EventDirection, v12, v14, v15, v16, v17, v59, v62, v65) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_23_6();
  v18 = sub_1937FD1DC();
  if (OUTLINED_FUNCTION_25_4(v18, v19, &type metadata for SensitiveContentAnalysisContentInteractionFlow.ContentType, v18, v20, v21, v22, v23, v59, v62, v65))
  {
    OUTLINED_FUNCTION_3();
    if (v24)
    {
      if (!v25)
      {
        return 0;
      }

      v28 = *v26 == *v27 && v24 == v25;
      if (!v28 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v25)
    {
      return 0;
    }

    OUTLINED_FUNCTION_23_6();
    v29 = sub_1937FD230();
    if (OUTLINED_FUNCTION_25_4(v29, v30, &type metadata for SensitiveContentAnalysisContentInteractionFlow.Harms, v29, v31, v32, v33, v34, v60, v63, v66))
    {
      OUTLINED_FUNCTION_25_3();
      if (v36)
      {
        if ((v35 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v37)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        v38 = sub_1937FD2D8();
        if ((OUTLINED_FUNCTION_25_4(v38, v39, &type metadata for SensitiveContentAnalysisContentInteractionFlow.SubContentType, v38, v40, v41, v42, v43, v61, v64, v67) & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_25_3();
      if (v45)
      {
        if ((v44 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v46)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        v47 = sub_1937FD284();
        if ((OUTLINED_FUNCTION_25_4(v47, v48, &type metadata for SensitiveContentAnalysisContentInteractionFlow.FlowState, v47, v49, v50, v51, v52, v61, v64, v67) & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_3();
      if (v53)
      {
        if (!v54)
        {
          return 0;
        }

        v57 = *v55 == *v56 && v53 == v54;
        return v57 || (sub_19393CA30() & 1) != 0;
      }

      if (!v54)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1937FD1DC()
{
  result = qword_1EAE43E60;
  if (!qword_1EAE43E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E60);
  }

  return result;
}

unint64_t sub_1937FD230()
{
  result = qword_1EAE43E68;
  if (!qword_1EAE43E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E68);
  }

  return result;
}

unint64_t sub_1937FD284()
{
  result = qword_1EAE43E70;
  if (!qword_1EAE43E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E70);
  }

  return result;
}

unint64_t sub_1937FD2D8()
{
  result = qword_1EAE43E78;
  if (!qword_1EAE43E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E78);
  }

  return result;
}

unint64_t sub_1937FD32C()
{
  result = qword_1EAE43E80;
  if (!qword_1EAE43E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E80);
  }

  return result;
}

unint64_t sub_1937FD380()
{
  result = qword_1EAE43E88;
  if (!qword_1EAE43E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E88);
  }

  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.hash(into:)()
{
  v1 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  if (*(v0 + v1[7] + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v2 = sub_1937FD564();
    OUTLINED_FUNCTION_133_1(v2, &type metadata for SensitiveContentAnalysisContentInteractionFlow.AgeGroup, v2);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v4 = sub_1937FD5B8();
    OUTLINED_FUNCTION_133_1(v4, &type metadata for SensitiveContentAnalysisContentInteractionFlow.EventDirection, v4);
  }

  MEMORY[0x193B18030](*(v0 + v1[9]));
  if (*(v0 + v1[10] + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  MEMORY[0x193B18030](*(v0 + v1[11]));
  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v5 = sub_1937FD60C();
    OUTLINED_FUNCTION_133_1(v5, &type metadata for SensitiveContentAnalysisContentInteractionFlow.SubContentType, v5);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v6 = sub_1937FD660();
    OUTLINED_FUNCTION_133_1(v6, &type metadata for SensitiveContentAnalysisContentInteractionFlow.FlowState, v6);
  }

  if (!*(v0 + v1[14] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19393CAD0();
  return sub_19393C640();
}

unint64_t sub_1937FD564()
{
  result = qword_1EAE43E90;
  if (!qword_1EAE43E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E90);
  }

  return result;
}

unint64_t sub_1937FD5B8()
{
  result = qword_1EAE43E98;
  if (!qword_1EAE43E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E98);
  }

  return result;
}

unint64_t sub_1937FD60C()
{
  result = qword_1EAE43EA0;
  if (!qword_1EAE43EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EA0);
  }

  return result;
}

unint64_t sub_1937FD660()
{
  result = qword_1EAE43EA8;
  if (!qword_1EAE43EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EA8);
  }

  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.AgeGroup.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static SensitiveContentAnalysisContentInteractionFlow.AgeGroup.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43EE8, &qword_1939A06D8);
  v3 = v0;
  v5 = *(v0 + 2);
  v4 = *(v0 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v16 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_84_2(v16, v17, v18, v19, &qword_1EAE43EE8, &qword_1939A06D8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v20 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_85(v20, v21, v22, v23, &qword_1EAE43EE8, &qword_1939A06D8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  if (v6 < (v5 + 3))
  {
    v24 = OUTLINED_FUNCTION_39(v4);
    v0 = OUTLINED_FUNCTION_84_2(v24, v25, v26, v27, &qword_1EAE43EE8, &qword_1939A06D8);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 3;
  v11 = v3 + 16 * v9;
  *(v11 + 32) = 1;
  *(v11 + 40) = 1;
  v12 = *(v3 + 24);
  if ((v5 + 4) > (v12 >> 1))
  {
    v28 = OUTLINED_FUNCTION_39(v12);
    v0 = OUTLINED_FUNCTION_85(v28, v29, v30, v31, &qword_1EAE43EE8, &qword_1939A06D8);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  *(v13 + 32) = 2;
  *(v13 + 40) = 1;
  return v14;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.AgeGroup.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x33317265764FLL;
  if (*v0 != 1)
  {
    v1 = 0x746C756441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x33317265646E55;
  }
}

void SensitiveContentAnalysisContentInteractionFlow.AgeGroup.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x33317265646E55 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x33317265646E55) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x33317265764FLL && v0 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x33317265764FLL, 0xE600000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x746C756441 && v0 == 0xE500000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x746C756441, 0xE500000000000000);
        OUTLINED_FUNCTION_89();
        v5 = 2;
        if ((v1 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t SensitiveContentAnalysisContentInteractionFlow.EventDirection.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1684956499;
  switch(*v0)
  {
    case 1:
      result = 0x65766965636552;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = OUTLINED_FUNCTION_20_0();
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.EventDirection.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1684956499 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1684956499, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x65766965636552 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7(0x65766965636552) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0xD000000000000016 && 0x8000000193A3FC20 == v0;
        if (v8 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, 0x8000000193A3FC20) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = OUTLINED_FUNCTION_20_0();
          if (v1 == v9 && v0 == v10)
          {

            v5 = 3;
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v9, v10);
            OUTLINED_FUNCTION_89();
            v5 = 3;
            if ((v1 & 1) == 0)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void SensitiveContentAnalysisContentInteractionFlow.SubContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.SubContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656B63697453;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_3();
      break;
    case 2:
      result = OUTLINED_FUNCTION_18_6();
      break;
    case 3:
      result = 0x6B636142706154;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.SubContentType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x72656B63697453 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x72656B63697453) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_17_3();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_18_6();
        v12 = v1 == v10 && v0 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6B636142706154 && v0 == 0xE700000000000000)
        {

          v5 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_22_7(0x6B636142706154);
          OUTLINED_FUNCTION_89();
          v5 = 3;
          if ((v1 & 1) == 0)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void SensitiveContentAnalysisContentInteractionFlow.FlowState.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static SensitiveContentAnalysisContentInteractionFlow.FlowState.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43ED0, &qword_1939A06C0);
  v3 = v0;
  v5 = *(v0 + 2);
  v4 = *(v0 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v35 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_84_2(v35, v36, v37, v38, &qword_1EAE43ED0, &qword_1939A06C0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v39 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_85(v39, v40, v41, v42, &qword_1EAE43ED0, &qword_1939A06C0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v43 = OUTLINED_FUNCTION_39(v4);
    v0 = sub_1934B0FCC(v43, v5 + 3, 1, v44, &qword_1EAE43ED0, &qword_1939A06C0);
    v3 = v0;
  }

  *(v3 + 16) = v11;
  v12 = v3 + 16 * v9;
  *(v12 + 32) = 1;
  *(v12 + 40) = 1;
  v13 = *(v3 + 24);
  if ((v5 + 4) > (v13 >> 1))
  {
    v45 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_84_2(v45, v46, v47, v48, &qword_1EAE43ED0, &qword_1939A06C0);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 4;
  v14 = v3 + 16 * v11;
  *(v14 + 32) = 2;
  *(v14 + 40) = 1;
  v15 = *(v3 + 24);
  if ((v5 + 5) > (v15 >> 1))
  {
    v49 = OUTLINED_FUNCTION_39(v15);
    v0 = OUTLINED_FUNCTION_85(v49, v50, v51, v52, &qword_1EAE43ED0, &qword_1939A06C0);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_4(v16);
  if ((v5 + 6) > (v18 >> 1))
  {
    v53 = OUTLINED_FUNCTION_39(v18);
    v17 = OUTLINED_FUNCTION_84_2(v53, v54, v55, v56, &qword_1EAE43ED0, &qword_1939A06C0);
  }

  *(v17 + 2) = v5 + 6;
  OUTLINED_FUNCTION_4(&v17[16 * v5 + 80]);
  if ((v5 + 7) > (v23 >> 1))
  {
    v57 = OUTLINED_FUNCTION_39(v23);
    v19 = OUTLINED_FUNCTION_85(v57, v58, v59, v60, &qword_1EAE43ED0, &qword_1939A06C0);
    v22 = v19;
  }

  OUTLINED_FUNCTION_47_5(v19, v20, v21, v22);
  OUTLINED_FUNCTION_4(v24);
  if ((v5 + 8) > (v26 >> 1))
  {
    v61 = OUTLINED_FUNCTION_39(v26);
    v25 = OUTLINED_FUNCTION_84_2(v61, v62, v63, v64, &qword_1EAE43ED0, &qword_1939A06C0);
  }

  *(v25 + 2) = v5 + 8;
  OUTLINED_FUNCTION_4(&v25[16 * v5 + 112]);
  if ((v5 + 9) > (v31 >> 1))
  {
    v65 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_85(v65, v66, v67, v68, &qword_1EAE43ED0, &qword_1939A06C0);
    v30 = v27;
  }

  OUTLINED_FUNCTION_47_5(v27, v28, v29, v30);
  *(v32 + 32) = 7;
  *(v32 + 40) = 1;
  return v33;
}

unint64_t SensitiveContentAnalysisContentInteractionFlow.FlowState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x646572756373624FLL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_22_42();
      break;
    case 2:
      result = OUTLINED_FUNCTION_16_47();
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.FlowState.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x646572756373624FLL && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x646572756373624FLL, 0xE800000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_22_42();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_16_47();
        v12 = v1 == v10 && v0 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v13 = v1 == 0xD000000000000013 && 0x8000000193A40380 == v0;
          if (v13 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A40380) & 1) != 0)
          {

            v5 = 3;
          }

          else
          {
            v14 = v1 == 0xD000000000000015 && 0x8000000193A40360 == v0;
            if (v14 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A40360) & 1) != 0)
            {

              v5 = 4;
            }

            else
            {
              v15 = v1 == 0xD000000000000012 && 0x8000000193A40340 == v0;
              if (v15 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A40340) & 1) != 0)
              {

                v5 = 5;
              }

              else
              {
                v16 = v1 == 0xD000000000000017 && 0x8000000193A40320 == v0;
                if (v16 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, 0x8000000193A40320) & 1) != 0)
                {

                  v5 = 6;
                }

                else if (v1 == 0xD000000000000014 && 0x8000000193A40300 == v0)
                {

                  v5 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_0_9(0xD000000000000014, 0x8000000193A40300);
                  OUTLINED_FUNCTION_89();
                  v5 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v5 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t sub_1937FE42C()
{
  result = qword_1EAE43EB0;
  if (!qword_1EAE43EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EB0);
  }

  return result;
}

unint64_t sub_1937FE484()
{
  result = qword_1EAE43EB8;
  if (!qword_1EAE43EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EB8);
  }

  return result;
}

unint64_t sub_1937FE4DC()
{
  result = qword_1EAE43EC0;
  if (!qword_1EAE43EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EC0);
  }

  return result;
}

unint64_t sub_1937FE534()
{
  result = qword_1EAE43EC8;
  if (!qword_1EAE43EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EC8);
  }

  return result;
}

uint64_t sub_1937FE598()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE288);
  __swift_project_value_buffer(v2, qword_1EAEAE288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v22, xmmword_1939526B0);
  *v1 = 1;
  *v0 = "ageGroup";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v8 = 2;
  *v7 = "eventDirection";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = 3;
  *v9 = "contentType";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_44(3 * v4);
  OUTLINED_FUNCTION_34_8(v11);
  *v12 = "clientBundleID";
  *(v12 + 8) = 14;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v14 = 5;
  *v13 = "harms";
  *(v13 + 8) = 5;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v15 = OUTLINED_FUNCTION_44(5 * v4);
  *v16 = 6;
  *v15 = "subContentType";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v18 = 7;
  *v17 = "state";
  *(v17 + 8) = 5;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v19 = OUTLINED_FUNCTION_44(7 * v4);
  *v20 = 8;
  *v19 = "eventID";
  *(v19 + 8) = 7;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  return sub_19393C410();
}

void sub_1937FE858()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
        OUTLINED_FUNCTION_160(*(v5 + 28));
        goto LABEL_12;
      case 2:
        v6 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
        OUTLINED_FUNCTION_160(*(v6 + 32));
        goto LABEL_12;
      case 3:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisContentInteractionFlow.ContentType.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 36)) = v9;
        continue;
      case 4:
      case 8:
        type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        goto LABEL_13;
      case 5:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisContentInteractionFlow.Harms.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 44)) = v9;
        continue;
      case 6:
        v7 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
        OUTLINED_FUNCTION_160(*(v7 + 48));
        goto LABEL_12;
      case 7:
        v8 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
        OUTLINED_FUNCTION_160(*(v8 + 52));
LABEL_12:
        sub_1934982A8();
LABEL_13:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937FEA58()
{
  v2 = v1;
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  v4 = result;
  if ((*(v0 + *(result + 28) + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_107();
    result = OUTLINED_FUNCTION_11_59(v23, 1, v5, &type metadata for SensitiveContentAnalysisContentInteractionFlow.AgeGroup, v6, &off_1F07F55D8);
    v2 = v1;
  }

  if (!v2)
  {
    if ((*(v0 + v4[8] + 9) & 1) != 0 || (OUTLINED_FUNCTION_0_107(), result = OUTLINED_FUNCTION_11_59(v23, 2, v7, &type metadata for SensitiveContentAnalysisContentInteractionFlow.EventDirection, v8, &off_1F07F5600), !v1))
    {
      v9 = *(v0 + v4[9]);
      v23[0] = v9;
      sub_1937FCCF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E38, &qword_1939A0500);
      sub_1937EFC3C(&qword_1EAE43E40, &qword_1EAE43E38, &qword_1939A0500);
      sub_19393C8A0();
      v10 = sub_1937FD1DC();
      result = OUTLINED_FUNCTION_25_40(v10, v11, v12, v13);
      if (result)
      {
        goto LABEL_11;
      }

      if (v9 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v9 <= 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_11_2();
        result = sub_19393C350();
        if (v1)
        {
          return result;
        }

LABEL_11:
        if (*(v0 + v4[10] + 8))
        {
          OUTLINED_FUNCTION_11_2();
          result = sub_19393C3C0();
          if (v1)
          {
            return result;
          }
        }

        v14 = *(v0 + v4[11]);
        v23[0] = v14;
        sub_1937FCD4C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E50, &qword_1939A0508);
        sub_1937EFC3C(&qword_1EAE43E58, &qword_1EAE43E50, &qword_1939A0508);
        sub_19393C8A0();
        v15 = sub_1937FD230();
        result = OUTLINED_FUNCTION_25_40(v15, v16, v17, v18);
        if (result)
        {
          goto LABEL_17;
        }

        if (v14 >= 0xFFFFFFFF80000000)
        {
          if (v14 <= 0x7FFFFFFF)
          {
            OUTLINED_FUNCTION_11_2();
            result = sub_19393C350();
            if (v1)
            {
              return result;
            }

LABEL_17:
            if ((*(v0 + v4[12] + 9) & 1) != 0 || (OUTLINED_FUNCTION_0_107(), result = OUTLINED_FUNCTION_11_59(v23, 6, v19, &type metadata for SensitiveContentAnalysisContentInteractionFlow.SubContentType, v20, &off_1F07F5628), !v1))
            {
              if ((*(v0 + v4[13] + 9) & 1) != 0 || (OUTLINED_FUNCTION_0_107(), result = OUTLINED_FUNCTION_11_59(v23, 7, v21, &type metadata for SensitiveContentAnalysisContentInteractionFlow.FlowState, v22, &off_1F07F5650), !v1))
              {
                if (*(v0 + v4[14] + 8))
                {
                  OUTLINED_FUNCTION_11_2();
                  return sub_19393C3C0();
                }
              }
            }

            return result;
          }

LABEL_26:
          __break(1u);
          return result;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_1937FEDB4(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE43EF0;

  return v1;
}

void sub_1937FEE50()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE2A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("AgeGroupUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_34_12();
  *v8 = "AgeGroupUnder13";
  *(v8 + 8) = 15;
  *(v8 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_25(v9, "AgeGroupOver13");
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_1_6();
  *v12 = "AgeGroupAdult";
  *(v12 + 1) = 13;
  v12[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937FF01C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE2B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBD0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("EventDirectionUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "EventDirectionSend");
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = v0;
  *v10 = "EventDirectionReceive";
  *(v10 + 8) = 21;
  *(v10 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  v12 = OUTLINED_FUNCTION_1_6();
  v13 = OUTLINED_FUNCTION_25(v12, "EventDirectionUnknownOrNotApplicable");
  (v7)(v13);
  OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  OUTLINED_FUNCTION_34_8(v14);
  *v15 = "EventDirectionTryingToCall";
  *(v15 + 8) = 26;
  *(v15 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937FF208()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE2D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "SubContentTypeUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_34_12();
  *v8 = "SubContentTypeSticker";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v9 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v10 = 2;
  *v9 = "SubContentTypeBackgroundImage";
  *(v9 + 8) = 29;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v11 = OUTLINED_FUNCTION_1_6();
  *v11 = "SubContentTypeInlineSticker";
  *(v11 + 1) = 27;
  v11[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  OUTLINED_FUNCTION_34_8(v12);
  *v13 = "SubContentTypeTapBack";
  *(v13 + 8) = 21;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937FF408()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE2E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_27_2(v5, xmmword_193951270);
  *v1 = 0;
  OUTLINED_FUNCTION_102("FlowStateUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "FlowStateObscured");
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_25(v10, "FlowStateHeededShield");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_1_6();
  v14 = OUTLINED_FUNCTION_25(v13, "FlowStateBypassedShield");
  (v7)(v14);
  OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  OUTLINED_FUNCTION_34_8(v15);
  v17 = OUTLINED_FUNCTION_25(v16, "FlowStateCanceledFirstScreen");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_25(v18, "FlowStateDismissedSecondScreen");
  (v7)(v20);
  v21 = (v1 + 6 * v4);
  v22 = v21 + dword_1EAEAE320;
  *v21 = 6;
  v23 = OUTLINED_FUNCTION_25(v22, "FlowStateHeededSecondScreen");
  (v7)(v23);
  v24 = OUTLINED_FUNCTION_44(7 * v4);
  *v25 = 7;
  v26 = OUTLINED_FUNCTION_25(v24, "FlowStateBypassedWithoutPasscode");
  (v7)(v26);
  v27 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v28 = 8;
  *v27 = "FlowStateBypassedWithPasscode";
  *(v27 + 8) = 29;
  *(v27 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SensitiveContentAnalysisContentInteractionFlow()
{
  result = qword_1EAE461B0;
  if (!qword_1EAE461B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

void SensitiveContentAnalysisContentInteractionFlow.ageGroup.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_37_0(*(v0 + 28));
}

void SensitiveContentAnalysisContentInteractionFlow.eventDirection.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.contentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.contentType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.clientBundleID.getter()
{
  type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.clientBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.harms.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.harms.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  *(v1 + *(result + 44)) = v2;
  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.subContentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_37_0(*(v0 + 48));
}

void SensitiveContentAnalysisContentInteractionFlow.state.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_37_0(*(v0 + 52));
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.eventID.getter()
{
  type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1937FFD9C@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.AgeGroup.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FFDC4@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisContentInteractionFlow.AgeGroup.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FFE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937FFF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193800024@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.EventDirection.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisContentInteractionFlow.EventDirection.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

IntelligencePlatformLibrary::SensitiveContentAnalysisContentInteractionFlow::ContentType sub_193800174@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SensitiveContentAnalysisContentInteractionFlow.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1938001B4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1938001E4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.SubContentType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisContentInteractionFlow.SubContentType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1938002FC@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.FlowState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193800324@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisContentInteractionFlow.FlowState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.hashValue.getter()
{
  sub_19393CAB0();
  SensitiveContentAnalysisContentInteractionFlow.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193800454()
{
  sub_19393CAB0();
  SensitiveContentAnalysisContentInteractionFlow.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1938004FC()
{
  result = qword_1EAE43F20;
  if (!qword_1EAE43F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F20);
  }

  return result;
}

unint64_t sub_19380055C()
{
  result = qword_1EAE43F28;
  if (!qword_1EAE43F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F28);
  }

  return result;
}

unint64_t sub_1938005E8()
{
  result = qword_1EAE43F40;
  if (!qword_1EAE43F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F40);
  }

  return result;
}

unint64_t sub_193800648()
{
  result = qword_1EAE43F48;
  if (!qword_1EAE43F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F48);
  }

  return result;
}

unint64_t sub_1938006D4()
{
  result = qword_1EAE43F60;
  if (!qword_1EAE43F60)
  {
    type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F60);
  }

  return result;
}

uint64_t sub_193800758()
{
  sub_19349D140(319);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198(319);
    OUTLINED_FUNCTION_4_0();
    if (!(!v2 & v1))
    {
      sub_19349D1FC(319, &qword_1EAE3A958, &type metadata for SensitiveContentAnalysisContentInteractionFlow.AgeGroup);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        sub_19349D1FC(319, &qword_1EAE3A8F8, &type metadata for SensitiveContentAnalysisContentInteractionFlow.EventDirection);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            sub_19349D1FC(319, &qword_1EAE3A908, &type metadata for SensitiveContentAnalysisContentInteractionFlow.SubContentType);
            if (v4 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A900, &type metadata for SensitiveContentAnalysisContentInteractionFlow.FlowState);
            if (v5 > 0x3F)
            {
              return v3;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SensitiveContentAnalysisResourcesInteraction.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F68, &qword_1939A0FA8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_193800B30(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE43F68, &qword_1939A0FA8, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE43F68, &qword_1939A0FA8);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_193800B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisResourcesInteraction.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F68, &qword_1939A0FA8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE43F68, &qword_1939A0FA8, v8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_193800CD4(v6, a1);
  }

  return result;
}

uint64_t sub_193800CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisResourcesInteraction.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F68, &qword_1939A0FA8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1938052A4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_193800CD4(v11, v36);
      v29 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SensitiveContentAnalysisResourcesInteraction.serialize()()
{
  v1 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F68, &qword_1939A0FA8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_193800B30(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE43F68, &qword_1939A0FA8, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE43F68, &qword_1939A0FA8);
  return v11;
}

id static SensitiveContentAnalysisResourcesInteraction.columns.getter()
{
  v224 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v12 = OUTLINED_FUNCTION_16_3();
  result = OUTLINED_FUNCTION_5_75(v12, 0xE800000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v22 = OUTLINED_FUNCTION_2_4(inited, v15, v16, v17, v18, v19, v20, v21, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v32 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v32);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_41();
  result = OUTLINED_FUNCTION_5_75(v33, v34);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v35 = swift_initStackObject();
  v43 = OUTLINED_FUNCTION_2_4(v35, v36, v37, v38, v39, v40, v41, v42, v215);
  OUTLINED_FUNCTION_5_10(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v53 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v53);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v54, v55, v56, v57, v0, 2, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v58 = swift_initStackObject();
  v66 = OUTLINED_FUNCTION_2_4(v58, v59, v60, v61, v62, v63, v64, v65, v216);
  OUTLINED_FUNCTION_5_10(v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v76 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v76);
  OUTLINED_FUNCTION_20_50();
  OUTLINED_FUNCTION_18_5();
  result = OUTLINED_FUNCTION_3_5(v77, v78);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v79 = swift_initStackObject();
  v87 = OUTLINED_FUNCTION_2_4(v79, v80, v81, v82, v83, v84, v85, v86, v217);
  OUTLINED_FUNCTION_5_10(v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
  v97 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v97);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v98, v99, v100, v101, v0, 2, 0);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v102 = swift_initStackObject();
  v110 = OUTLINED_FUNCTION_2_4(v102, v103, v104, v105, v106, v107, v108, v109, v218);
  OUTLINED_FUNCTION_5_10(v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
  v120 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v120);
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_11();
  result = OUTLINED_FUNCTION_5_75(v121, v122);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v219;
  v123 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
  v133 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v133);
  result = OUTLINED_FUNCTION_5_75(0xD000000000000011, 0x8000000193A40550);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v134 = swift_initStackObject();
  v142 = OUTLINED_FUNCTION_2_4(v134, v135, v136, v137, v138, v139, v140, v141, v219);
  OUTLINED_FUNCTION_5_10(v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
  v152 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v152);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_30_31();
  result = OUTLINED_FUNCTION_5_75(v153, v154);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_2(result);
  v155 = swift_initStackObject();
  v163 = OUTLINED_FUNCTION_2_4(v155, v156, v157, v158, v159, v160, v161, v162, v220);
  OUTLINED_FUNCTION_5_10(v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
  v173 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v173);
  result = OUTLINED_FUNCTION_5_75(0x6E696769726FLL, 0xE600000000000000);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2(result);
  v174 = swift_initStackObject();
  v182 = OUTLINED_FUNCTION_2_4(v174, v175, v176, v177, v178, v179, v180, v181, v221);
  OUTLINED_FUNCTION_5_10(v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
  v192 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v192);
  result = OUTLINED_FUNCTION_3_5(0x6E6F69676572, 0xE600000000000000);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v222;
  v193 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v193, v194, v195, v196, v197, v198, v199, v200, v201, v202);
  v203 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v203);
  result = OUTLINED_FUNCTION_5_75(0xD000000000000014, 0x8000000193A40570);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_7_2(result);
  v204 = swift_initStackObject();
  v212 = OUTLINED_FUNCTION_2_4(v204, v205, v206, v207, v208, v209, v210, v211, v222);
  *(v212 + 16) = v223;
  *(v212 + 32) = sub_19393C850();
  v213 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v214 = OUTLINED_FUNCTION_16_5();
  result = sub_19343D150(v214 | 0x44497400000000, 0xE700000000000000, 2, 0, v212, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v224;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_193801630(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = OUTLINED_FUNCTION_16_3();
  v8 = a1 == v6 && v7 == 0xE800000000000000;
  if (v8 || (v9 = v7, (OUTLINED_FUNCTION_59_0(v6, 0xE800000000000000) & 1) != 0))
  {
    type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    OUTLINED_FUNCTION_58_1();
    if (v10)
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_41();
  v11 = OUTLINED_FUNCTION_16_5() | 0x7269447400000000;
  v13 = a1 == v11 && v9 == v12;
  if (v13 || (OUTLINED_FUNCTION_59_0(v11, v12) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    OUTLINED_FUNCTION_58_1();
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v15 = OUTLINED_FUNCTION_42_1();
  v17 = a1 == v15 && v9 == v16;
  if (v17 || (OUTLINED_FUNCTION_59_0(v15, v16) & 1) != 0)
  {
    v18 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 36));
    if (v18 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v18 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18_5();
    v19 = OUTLINED_FUNCTION_20_50();
    v21 = a1 == v19 && v9 == v20;
    if (v21 || (OUTLINED_FUNCTION_59_0(v19, v20) & 1) != 0)
    {
      v22 = *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 40);
      goto LABEL_31;
    }

    v23 = a1 == 0x736D726168 && v9 == 0xE500000000000000;
    if (v23 || (OUTLINED_FUNCTION_59_0(0x736D726168, 0xE500000000000000) & 1) != 0)
    {
      v24 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 44));
      if (v24 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_78;
      }

      if (v24 <= 0x7FFFFFFF)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    OUTLINED_FUNCTION_19_11();
    v25 = OUTLINED_FUNCTION_22_5();
    v27 = a1 == v25 && v9 == v26;
    if (v27 || (OUTLINED_FUNCTION_59_0(v25, v26) & 1) != 0)
    {
      type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
      OUTLINED_FUNCTION_58_1();
      if (v28)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v3 = 0xD000000000000011;
    v29 = a1 == 0xD000000000000011 && 0x8000000193A40550 == v9;
    if (v29 || (OUTLINED_FUNCTION_59_0(0xD000000000000011, 0x8000000193A40550) & 1) != 0)
    {
      type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
      OUTLINED_FUNCTION_58_1();
      if (v30)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    OUTLINED_FUNCTION_30_31();
    v31 = OUTLINED_FUNCTION_31_5();
    v33 = a1 == v31 && v9 == v32;
    if (v33 || (OUTLINED_FUNCTION_59_0(v31, v32) & 1) != 0)
    {
      type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
      OUTLINED_FUNCTION_58_1();
      if (v34)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  v35 = a1 == 0x6E696769726FLL && v9 == 0xE600000000000000;
  if (v35 || (OUTLINED_FUNCTION_59_0(0x6E696769726FLL, 0xE600000000000000) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    OUTLINED_FUNCTION_58_1();
    if (v36)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v37 = a1 == 0x6E6F69676572 && v9 == 0xE600000000000000;
  if (v37 || (OUTLINED_FUNCTION_59_0(0x6E6F69676572, 0xE600000000000000) & 1) != 0)
  {
    v22 = *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 64);
    goto LABEL_31;
  }

LABEL_78:
  v38 = a1 == v3 + 3 && 0x8000000193A40570 == v9;
  if (v38 || (OUTLINED_FUNCTION_59_0(v3 + 3, 0x8000000193A40570) & 1) != 0)
  {
    type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    OUTLINED_FUNCTION_58_1();
    if (v39)
    {
      goto LABEL_7;
    }

LABEL_8:
    OUTLINED_FUNCTION_147();
LABEL_9:
    sub_1934948FC();
    return;
  }

  v40 = OUTLINED_FUNCTION_16_5() | 0x44497400000000;
  v41 = a1 == v40 && v9 == 0xE700000000000000;
  if (v41 || (OUTLINED_FUNCTION_59_0(v40, 0xE700000000000000) & 1) != 0)
  {
    v22 = *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 72);
LABEL_31:
    if (!*(v2 + v22 + 8))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v43 = v42;
  *v42 = a1;
  v42[1] = v9;
  v42[5] = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v43 + 2);
  sub_193800B30(v2, boxed_opaque_existential_1Tm);
  *(v43 + 48) = 1;
  swift_willThrow();
}

unint64_t sub_193801A74()
{
  result = qword_1EAE43F78;
  if (!qword_1EAE43F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F78);
  }

  return result;
}

unint64_t sub_193801AC8()
{
  result = qword_1EAE43F90;
  if (!qword_1EAE43F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F90);
  }

  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v11 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v16);
  v15 = a1 + v2[13];
  j__OUTLINED_FUNCTION_131(v15);
  v14 = a1 + v2[14];
  j__OUTLINED_FUNCTION_131(v14);
  v7 = a1 + v2[15];
  j__OUTLINED_FUNCTION_131(v7);
  v13 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[17];
  j__OUTLINED_FUNCTION_131(v8);
  v12 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1938052A4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  sub_193801A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F80, &qword_1939A0FB0);
  sub_1937EFC3C(&qword_1EAE43F88, &qword_1EAE43F80, &qword_1939A0FB0);
  sub_19393C8A0();

  *(a1 + v2[9]) = v17;
  *v11 = 0;
  v11[1] = 0;
  sub_193801AC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F98, &qword_1939A0FB8);
  sub_1937EFC3C(&qword_1EAE43FA0, &qword_1EAE43F98, &qword_1939A0FB8);
  sub_19393C8A0();

  *(a1 + v2[11]) = v17;
  *v16 = 0;
  *(v16 + 8) = 256;
  *v15 = 0;
  *(v15 + 8) = 256;
  *v14 = 0;
  *(v14 + 8) = 256;
  *v7 = 0;
  *(v7 + 8) = 256;
  *v13 = 0;
  v13[1] = 0;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v12 = 0;
  v12[1] = 0;
  return result;
}

BOOL static SensitiveContentAnalysisResourcesInteraction.== infix(_:_:)()
{
  type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_25_3();
  if (v1)
  {
    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v3 = sub_193802334();
    if ((OUTLINED_FUNCTION_25_4(v3, v4, &type metadata for SensitiveContentAnalysisResourcesInteraction.AgeGroup, v3, v5, v6, v7, v8, v94, v97, v100) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v10)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    v12 = sub_1938022E0();
    if ((OUTLINED_FUNCTION_25_4(v12, v13, &type metadata for SensitiveContentAnalysisResourcesInteraction.EventDirection, v12, v14, v15, v16, v17, v94, v97, v100) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_23_6();
  v18 = sub_193802094();
  if (OUTLINED_FUNCTION_25_4(v18, v19, &type metadata for SensitiveContentAnalysisResourcesInteraction.ContentType, v18, v20, v21, v22, v23, v94, v97, v100))
  {
    OUTLINED_FUNCTION_3();
    if (v26)
    {
      if (!v24)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v25);
      v29 = v29 && v27 == v28;
      if (!v29 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }

    OUTLINED_FUNCTION_23_6();
    v30 = sub_1938020E8();
    if (OUTLINED_FUNCTION_25_4(v30, v31, &type metadata for SensitiveContentAnalysisResourcesInteraction.Harms, v30, v32, v33, v34, v35, v95, v98, v101))
    {
      OUTLINED_FUNCTION_25_3();
      if (v37)
      {
        if ((v36 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v38)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        v39 = sub_19380228C();
        if ((OUTLINED_FUNCTION_25_4(v39, v40, &type metadata for SensitiveContentAnalysisResourcesInteraction.SubContentType, v39, v41, v42, v43, v44, v96, v99, v102) & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_25_3();
      if (v46)
      {
        if ((v45 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v47)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        v48 = sub_193802238();
        if ((OUTLINED_FUNCTION_25_4(v48, v49, &type metadata for SensitiveContentAnalysisResourcesInteraction.RequestedResource, v48, v50, v51, v52, v53, v96, v99, v102) & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_25_3();
      if (v55)
      {
        if ((v54 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v56)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        v57 = sub_1938021E4();
        if ((OUTLINED_FUNCTION_25_4(v57, v58, &type metadata for SensitiveContentAnalysisResourcesInteraction.UserOptedToShow, v57, v59, v60, v61, v62, v96, v99, v102) & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_25_3();
      if (v64)
      {
        if ((v63 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v65)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        v66 = sub_193802190();
        if ((OUTLINED_FUNCTION_25_4(v66, v67, &type metadata for SensitiveContentAnalysisResourcesInteraction.Origin, v66, v68, v69, v70, v71, v96, v99, v102) & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_3();
      if (v74)
      {
        if (!v72)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v73);
        v77 = v29 && v75 == v76;
        if (!v77 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v72)
      {
        return 0;
      }

      OUTLINED_FUNCTION_25_3();
      if (v79)
      {
        if ((v78 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v80)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        v81 = sub_19380213C();
        if ((OUTLINED_FUNCTION_25_4(v81, v82, &type metadata for SensitiveContentAnalysisResourcesInteraction.ReportToAppleVisibility, v81, v83, v84, v85, v86, v96, v99, v102) & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_3();
      if (v89)
      {
        if (!v87)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v88);
        v92 = v29 && v90 == v91;
        return v92 || (sub_19393CA30() & 1) != 0;
      }

      if (!v87)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_193802094()
{
  result = qword_1EAE43FA8;
  if (!qword_1EAE43FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FA8);
  }

  return result;
}

unint64_t sub_1938020E8()
{
  result = qword_1EAE43FB0;
  if (!qword_1EAE43FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FB0);
  }

  return result;
}

unint64_t sub_19380213C()
{
  result = qword_1EAE43FB8;
  if (!qword_1EAE43FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FB8);
  }

  return result;
}

unint64_t sub_193802190()
{
  result = qword_1EAE43FC0;
  if (!qword_1EAE43FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FC0);
  }

  return result;
}

unint64_t sub_1938021E4()
{
  result = qword_1EAE43FC8;
  if (!qword_1EAE43FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FC8);
  }

  return result;
}

unint64_t sub_193802238()
{
  result = qword_1EAE43FD0;
  if (!qword_1EAE43FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FD0);
  }

  return result;
}

unint64_t sub_19380228C()
{
  result = qword_1EAE43FD8;
  if (!qword_1EAE43FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FD8);
  }

  return result;
}

unint64_t sub_1938022E0()
{
  result = qword_1EAE43FE0;
  if (!qword_1EAE43FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FE0);
  }

  return result;
}

unint64_t sub_193802334()
{
  result = qword_1EAE43FE8;
  if (!qword_1EAE43FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FE8);
  }

  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.hash(into:)()
{
  v1 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  if (*(v0 + v1[7] + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v2 = sub_1938025D4();
    OUTLINED_FUNCTION_133_1(v2, &type metadata for SensitiveContentAnalysisResourcesInteraction.AgeGroup, v2);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v4 = sub_193802628();
    OUTLINED_FUNCTION_133_1(v4, &type metadata for SensitiveContentAnalysisResourcesInteraction.EventDirection, v4);
  }

  MEMORY[0x193B18030](*(v0 + v1[9]));
  if (*(v0 + v1[10] + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  MEMORY[0x193B18030](*(v0 + v1[11]));
  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v5 = sub_19380267C();
    OUTLINED_FUNCTION_133_1(v5, &type metadata for SensitiveContentAnalysisResourcesInteraction.SubContentType, v5);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v6 = sub_1938026D0();
    OUTLINED_FUNCTION_133_1(v6, &type metadata for SensitiveContentAnalysisResourcesInteraction.RequestedResource, v6);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v7 = sub_193802724();
    OUTLINED_FUNCTION_133_1(v7, &type metadata for SensitiveContentAnalysisResourcesInteraction.UserOptedToShow, v7);
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v8 = sub_193802778();
    OUTLINED_FUNCTION_133_1(v8, &type metadata for SensitiveContentAnalysisResourcesInteraction.Origin, v8);
  }

  if (*(v0 + v1[16] + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_100();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v9 = sub_1938027CC();
    OUTLINED_FUNCTION_133_1(v9, &type metadata for SensitiveContentAnalysisResourcesInteraction.ReportToAppleVisibility, v9);
  }

  if (!*(v0 + v1[18] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19393CAD0();
  return sub_19393C640();
}

unint64_t sub_1938025D4()
{
  result = qword_1EAE43FF0;
  if (!qword_1EAE43FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FF0);
  }

  return result;
}

unint64_t sub_193802628()
{
  result = qword_1EAE43FF8;
  if (!qword_1EAE43FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FF8);
  }

  return result;
}

unint64_t sub_19380267C()
{
  result = qword_1EAE44000;
  if (!qword_1EAE44000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44000);
  }

  return result;
}

unint64_t sub_1938026D0()
{
  result = qword_1EAE44008;
  if (!qword_1EAE44008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44008);
  }

  return result;
}

unint64_t sub_193802724()
{
  result = qword_1EAE44010;
  if (!qword_1EAE44010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44010);
  }

  return result;
}

unint64_t sub_193802778()
{
  result = qword_1EAE44018;
  if (!qword_1EAE44018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44018);
  }

  return result;
}

unint64_t sub_1938027CC()
{
  result = qword_1EAE44020;
  if (!qword_1EAE44020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44020);
  }

  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.AgeGroup.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x33317265764FLL;
  if (*v0 != 1)
  {
    v1 = 0x746C756441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x33317265646E55;
  }
}

void SensitiveContentAnalysisResourcesInteraction.AgeGroup.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x33317265646E55 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x33317265646E55) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x33317265764FLL && v0 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x33317265764FLL, 0xE600000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x746C756441 && v0 == 0xE500000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x746C756441, 0xE500000000000000);
        OUTLINED_FUNCTION_89();
        v5 = 2;
        if ((v1 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t SensitiveContentAnalysisResourcesInteraction.EventDirection.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1684956499;
  switch(*v0)
  {
    case 1:
      result = 0x65766965636552;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = OUTLINED_FUNCTION_20_0();
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisResourcesInteraction.EventDirection.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1684956499 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1684956499, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x65766965636552 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7(0x65766965636552) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0xD000000000000016 && 0x8000000193A3FC20 == v0;
        if (v8 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, 0x8000000193A3FC20) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = OUTLINED_FUNCTION_20_0();
          if (v1 == v9 && v0 == v10)
          {

            v5 = 3;
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v9, v10);
            OUTLINED_FUNCTION_89();
            v5 = 3;
            if ((v1 & 1) == 0)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void SensitiveContentAnalysisResourcesInteraction.SubContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisResourcesInteraction.SubContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656B63697453;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_3();
      break;
    case 2:
      result = OUTLINED_FUNCTION_18_6();
      break;
    case 3:
      result = 0x6B636142706154;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisResourcesInteraction.SubContentType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x72656B63697453 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x72656B63697453) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_17_3();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_18_6();
        v12 = v1 == v10 && v0 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6B636142706154 && v0 == 0xE700000000000000)
        {

          v5 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_22_7(0x6B636142706154);
          OUTLINED_FUNCTION_89();
          v5 = 3;
          if ((v1 & 1) == 0)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void SensitiveContentAnalysisResourcesInteraction.RequestedResource.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static SensitiveContentAnalysisResourcesInteraction.RequestedResource.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE44078, &qword_1939A1290);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v28 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_84_2(v28, v29, v30, v31, &qword_1EAE44078, &qword_1939A1290);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v32 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_85(v32, v33, v34, v35, &qword_1EAE44078, &qword_1939A1290);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v36 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v36, v2 + 3, 1, v37, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v38 = OUTLINED_FUNCTION_39(v10);
    v0 = OUTLINED_FUNCTION_84_2(v38, v39, v40, v41, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v42 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_85(v42, v43, v44, v45, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(&v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v46 = OUTLINED_FUNCTION_39(v16);
    v15 = OUTLINED_FUNCTION_84_2(v46, v47, v48, v49, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(&v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v50 = OUTLINED_FUNCTION_39(v19);
    v18 = OUTLINED_FUNCTION_85(v50, v51, v52, v53, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(&v18[16 * v17]);
  v23 = v2 + 8;
  if ((v2 + 8) > (v22 >> 1))
  {
    v54 = OUTLINED_FUNCTION_39(v22);
    v21 = OUTLINED_FUNCTION_84_2(v54, v55, v56, v57, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v21 + 2) = v23;
  OUTLINED_FUNCTION_4(&v21[16 * v20]);
  if ((v2 + 9) > (v25 >> 1))
  {
    v58 = OUTLINED_FUNCTION_39(v25);
    v24 = OUTLINED_FUNCTION_85(v58, v59, v60, v61, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v24 + 2) = v2 + 9;
  v26 = &v24[16 * v23];
  *(v26 + 4) = 7;
  v26[40] = 1;
  return v24;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.RequestedResource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6F736552776F6853;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_30_32();
      break;
    case 2:
      result = OUTLINED_FUNCTION_12_60();
      break;
    case 3:
      result = OUTLINED_FUNCTION_24_51();
      break;
    case 4:
      result = OUTLINED_FUNCTION_45_5();
      break;
    case 5:
      v2 = 2003789907;
      goto LABEL_10;
    case 6:
      result = OUTLINED_FUNCTION_23_47();
      break;
    case 7:
      v2 = 1701079368;
LABEL_10:
      result = v2 | 0x746E6F4300000000;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisResourcesInteraction.RequestedResource.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6F736552776F6853 && v0 == 0xED00007365637275;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6F736552776F6853, 0xED00007365637275) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_30_32();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_12_60();
        v12 = v1 == v10 && v0 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v13 = OUTLINED_FUNCTION_24_51();
          v15 = v1 == v13 && v0 == v14;
          if (v15 || (OUTLINED_FUNCTION_0_9(v13, v14) & 1) != 0)
          {

            v5 = 3;
          }

          else
          {
            v16 = OUTLINED_FUNCTION_45_5();
            v18 = v1 == v16 && v0 == v17;
            if (v18 || (OUTLINED_FUNCTION_0_9(v16, v17) & 1) != 0)
            {

              v5 = 4;
            }

            else
            {
              v19 = v1 == 0x746E6F43776F6853 && v0 == 0xEB00000000746E65;
              if (v19 || (OUTLINED_FUNCTION_0_9(0x746E6F43776F6853, 0xEB00000000746E65) & 1) != 0)
              {

                v5 = 5;
              }

              else
              {
                v20 = OUTLINED_FUNCTION_23_47();
                v22 = v1 == v20 && v0 == v21;
                if (v22 || (OUTLINED_FUNCTION_0_9(v20, v21) & 1) != 0)
                {

                  v5 = 6;
                }

                else if (v1 == 0x746E6F4365646948 && v0 == 0xEB00000000746E65)
                {

                  v5 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_0_9(0x746E6F4365646948, 0xEB00000000746E65);
                  OUTLINED_FUNCTION_89();
                  v5 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v5 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void SensitiveContentAnalysisResourcesInteraction.UserOptedToShow.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *sub_193803434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    OUTLINED_FUNCTION_17_2();
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    OUTLINED_FUNCTION_17_2();
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  v12 = v6 + 3;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v12;
  v13 = &v4[16 * v10];
  *(v13 + 4) = 1;
  v13[40] = 1;
  v14 = *(v4 + 3);
  if ((v6 + 4) > (v14 >> 1))
  {
    v4 = OUTLINED_FUNCTION_51((v14 > 1), v6 + 4, v3, v4);
  }

  *(v4 + 2) = v6 + 4;
  v15 = &v4[16 * v12];
  *(v15 + 4) = 2;
  v15[40] = 1;
  return v4;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.UserOptedToShow.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 28494;
  if (*v0 != 1)
  {
    v1 = 0x696C707041746F4ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562585;
  }
}

uint64_t SensitiveContentAnalysisResourcesInteraction.Origin.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6C6172656E6547;
  if (*v0 != 1)
  {
    v1 = 0x6E65767265746E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

void SensitiveContentAnalysisResourcesInteraction.Origin.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0xD000000000000019 && 0x8000000193A40590 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, 0x8000000193A40590) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6C6172656E6547 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7(0x6C6172656E6547) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x6E65767265746E49 && v0 == 0xEC0000006E6F6974)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x6E65767265746E49, 0xEC0000006E6F6974);
        OUTLINED_FUNCTION_89();
        v5 = 2;
        if ((v1 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void _s27IntelligencePlatformLibrary44SensitiveContentAnalysisResourcesInteractionV15UserOptedToShowOyAESgSScfC_0()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 7562585 && v0 == 0xE300000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(7562585, 0xE300000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 28494 && v0 == 0xE200000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(28494, 0xE200000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x696C707041746F4ELL && v0 == 0xED0000656C626163)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x696C707041746F4ELL, 0xED0000656C626163);
        OUTLINED_FUNCTION_89();
        v5 = 2;
        if ((v1 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t sub_1938038B8()
{
  result = qword_1EAE44028;
  if (!qword_1EAE44028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44028);
  }

  return result;
}

unint64_t sub_193803910()
{
  result = qword_1EAE44030;
  if (!qword_1EAE44030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44030);
  }

  return result;
}

unint64_t sub_193803968()
{
  result = qword_1EAE44038;
  if (!qword_1EAE44038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44038);
  }

  return result;
}

unint64_t sub_1938039C0()
{
  result = qword_1EAE44040;
  if (!qword_1EAE44040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44040);
  }

  return result;
}

unint64_t sub_193803A18()
{
  result = qword_1EAE44048;
  if (!qword_1EAE44048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44048);
  }

  return result;
}

unint64_t sub_193803A70()
{
  result = qword_1EAE44050;
  if (!qword_1EAE44050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44050);
  }

  return result;
}

unint64_t sub_193803AC8()
{
  result = qword_1EAE44058;
  if (!qword_1EAE44058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44058);
  }

  return result;
}

void sub_193803B54()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE300);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v38 = OUTLINED_FUNCTION_156();
  *(v38 + 16) = xmmword_1939526C0;
  v3 = v38 + v0 + dword_1EAEAE338;
  *(v38 + v0) = 1;
  *v3 = "ageGroup";
  *(v3 + 8) = 8;
  *(v3 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  (v5)(v6);
  v7 = OUTLINED_FUNCTION_3_1(v38 + v0 + v2);
  *v8 = 2;
  *v7 = "eventDirection";
  v7[1] = 14;
  v9 = OUTLINED_FUNCTION_41(v7);
  (v5)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v38 + v0 + 2 * v2));
  v11 = OUTLINED_FUNCTION_5_4(v10, "contentType");
  (v5)(v11);
  OUTLINED_FUNCTION_44(3 * v2);
  OUTLINED_FUNCTION_34_8(v12);
  *v13 = "clientBundleID";
  v13[1] = 14;
  v14 = OUTLINED_FUNCTION_41(v13);
  (v5)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v38 + v0 + 4 * v2);
  *v16 = 5;
  v17 = OUTLINED_FUNCTION_5_4(v15, "harms");
  (v5)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v2);
  *v19 = 6;
  *v18 = "subContentType";
  v18[1] = 14;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v5)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v38 + v0 + 6 * v2);
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_5_4(v21, "requestedResource");
  (v5)(v23);
  v24 = OUTLINED_FUNCTION_44(7 * v2);
  *v25 = 8;
  v26 = OUTLINED_FUNCTION_5_4(v24, "userOptedToShow");
  (v5)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v38 + v0 + 8 * v2);
  *v28 = 9;
  *v27 = "origin";
  v27[1] = 6;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v5)(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v2);
  *v31 = 10;
  *v30 = "region";
  v30[1] = 6;
  v32 = OUTLINED_FUNCTION_41(v30);
  (v5)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v38 + v0 + 10 * v2);
  *v34 = 11;
  v35 = OUTLINED_FUNCTION_5_4(v33, "reportToAppleVisible");
  (v5)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v38 + v0 + 11 * v2);
  *v37 = 12;
  *v36 = "eventID";
  *(v36 + 8) = 7;
  *(v36 + 16) = 2;
  v5();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193803E74()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v5 + 28));
        goto LABEL_15;
      case 2:
        v7 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v7 + 32));
        goto LABEL_15;
      case 3:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisResourcesInteraction.ContentType.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 36)) = v12;
        continue;
      case 4:
      case 10:
      case 12:
        type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        goto LABEL_16;
      case 5:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisResourcesInteraction.Harms.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 44)) = v12;
        continue;
      case 6:
        v8 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v8 + 48));
        goto LABEL_15;
      case 7:
        v9 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v9 + 52));
        goto LABEL_15;
      case 8:
        v6 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v6 + 56));
        goto LABEL_15;
      case 9:
        v11 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v11 + 60));
        goto LABEL_15;
      case 11:
        v10 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v10 + 68));
LABEL_15:
        sub_1934982A8();
LABEL_16:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1938040FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_24_50();
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_107();
    OUTLINED_FUNCTION_32_6(v61, 1, v10, &type metadata for SensitiveContentAnalysisResourcesInteraction.AgeGroup, v11, &off_1F07F5A88);
    v5 = v4;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_24_50();
    v59 = a2;
    v60 = a3;
    if ((v12 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_32_6(v61, 2, v13, &type metadata for SensitiveContentAnalysisResourcesInteraction.EventDirection, v14, &off_1F07F5AB0), !v4))
    {
      v15 = *(v3 + v8[9]);
      v61[0] = v15;
      sub_193801A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F80, &qword_1939A0FB0);
      sub_1937EFC3C(&qword_1EAE43F88, &qword_1EAE43F80, &qword_1939A0FB0);
      sub_19393C8A0();
      v16 = sub_193802094();
      if (OUTLINED_FUNCTION_25_40(v16, v17, v18, v19))
      {
        goto LABEL_11;
      }

      if (v15 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v15 <= 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_38_35(v15, 3, v20, v21, v22, v23, v24, v25, v58, a2, a3);
        if (v4)
        {
          return;
        }

LABEL_11:
        v26 = (v3 + v8[10]);
        v27 = v26[1];
        if (v27)
        {
          OUTLINED_FUNCTION_2_7(*v26, v27, 4);
          if (v4)
          {
            return;
          }
        }

        v28 = *(v3 + v8[11]);
        v61[0] = v28;
        sub_193801AC8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F98, &qword_1939A0FB8);
        sub_1937EFC3C(&qword_1EAE43FA0, &qword_1EAE43F98, &qword_1939A0FB8);
        sub_19393C8A0();
        v29 = sub_1938020E8();
        if (OUTLINED_FUNCTION_25_40(v29, v30, v31, v32))
        {
          goto LABEL_17;
        }

        if (v28 >= 0xFFFFFFFF80000000)
        {
          if (v28 <= 0x7FFFFFFF)
          {
            OUTLINED_FUNCTION_38_35(v28, 5, v33, v34, v35, v36, v37, v38, v58, v59, v60);
            if (v4)
            {
              return;
            }

LABEL_17:
            OUTLINED_FUNCTION_24_50();
            if ((v39 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_32_6(v61, 6, v40, &type metadata for SensitiveContentAnalysisResourcesInteraction.SubContentType, v41, &off_1F07F5AD8), !v4))
            {
              OUTLINED_FUNCTION_24_50();
              if ((v42 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_32_6(v61, 7, v43, &type metadata for SensitiveContentAnalysisResourcesInteraction.RequestedResource, v44, &off_1F07F5B00), !v4))
              {
                OUTLINED_FUNCTION_24_50();
                if ((v45 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_32_6(v61, 8, v46, &type metadata for SensitiveContentAnalysisResourcesInteraction.UserOptedToShow, v47, &off_1F07F5B28), !v4))
                {
                  OUTLINED_FUNCTION_24_50();
                  if ((v48 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_32_6(v61, 9, v49, &type metadata for SensitiveContentAnalysisResourcesInteraction.Origin, v50, &off_1F07F5B50), !v4))
                  {
                    v51 = (v3 + v8[16]);
                    v52 = v51[1];
                    if (!v52 || (OUTLINED_FUNCTION_2_7(*v51, v52, 10), !v4))
                    {
                      OUTLINED_FUNCTION_24_50();
                      if ((v53 & 1) != 0 || (OUTLINED_FUNCTION_0_107(), OUTLINED_FUNCTION_32_6(v61, 11, v54, &type metadata for SensitiveContentAnalysisResourcesInteraction.ReportToAppleVisibility, v55, &off_1F07F5B78), !v4))
                      {
                        v56 = (v3 + v8[18]);
                        v57 = v56[1];
                        if (v57)
                        {
                          OUTLINED_FUNCTION_2_7(*v56, v57, 12);
                        }
                      }
                    }
                  }
                }
              }
            }

            return;
          }

LABEL_34:
          __break(1u);
          return;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_33;
    }
  }
}

uint64_t sub_1938044DC(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE44098;

  return v1;
}

void sub_193804578()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAE318);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("AgeGroupUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  v3(v4);
  v5 = OUTLINED_FUNCTION_34_12();
  *v5 = "AgeGroupUnder13";
  v5[1] = 15;
  v6 = OUTLINED_FUNCTION_56_0(v5);
  v3(v6);
  v7 = OUTLINED_FUNCTION_69();
  v8 = OUTLINED_FUNCTION_25(v7, "AgeGroupOver13");
  v3(v8);
  v9 = OUTLINED_FUNCTION_1_6();
  v10 = OUTLINED_FUNCTION_25(v9, "AgeGroupAdult");
  v3(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19380471C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEAE330);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("EventDirectionUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_34_12();
  v9 = OUTLINED_FUNCTION_25(v8, "EventDirectionSend");
  v6(v9);
  v10 = OUTLINED_FUNCTION_69();
  *v10 = "EventDirectionReceive";
  *(v10 + 1) = 21;
  v11 = OUTLINED_FUNCTION_56_0(v10);
  v6(v11);
  v12 = OUTLINED_FUNCTION_1_6();
  v13 = OUTLINED_FUNCTION_25(v12, "EventDirectionUnknownOrNotApplicable");
  v6(v13);
  OUTLINED_FUNCTION_3_1(v0 + 4 * v3);
  OUTLINED_FUNCTION_34_8(v14);
  v16 = OUTLINED_FUNCTION_25(v15, "EventDirectionTryingToCall");
  v6(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1938048F0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE348);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBD0);
  *v0 = "SubContentTypeUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_34_12();
  *v9 = "SubContentTypeSticker";
  v9[1] = 21;
  v10 = OUTLINED_FUNCTION_41(v9);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_5_4(v11, "SubContentTypeBackgroundImage");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_1_6();
  v15 = OUTLINED_FUNCTION_5_4(v14, "SubContentTypeInlineSticker");
  (v7)(v15);
  OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  OUTLINED_FUNCTION_34_8(v16);
  *v17 = "SubContentTypeTapBack";
  *(v17 + 8) = 21;
  *(v17 + 16) = 2;
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193804ADC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE360);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_156();
  *(v3 + 16) = xmmword_193951270;
  v4 = v3 + v0 + dword_1EAEAE398;
  *(v3 + v0) = 0;
  *v4 = "RequestedResourceUnknown";
  *(v4 + 8) = 24;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_3_1(v3 + v0 + v2);
  *v9 = 1;
  *v8 = "RequestedResourceShowResources";
  v8[1] = 30;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v6)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v3 + v0 + 2 * v2);
  *v12 = 2;
  *v11 = "RequestedResourceBlockContact";
  v11[1] = 29;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v6)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v3 + v0 + 3 * v2));
  *v14 = "RequestedResourceWaysToGetHelp";
  *(v14 + 1) = 30;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  (v6)(v15);
  OUTLINED_FUNCTION_3_1(v3 + v0 + 4 * v2);
  OUTLINED_FUNCTION_34_8(v16);
  *v17 = "RequestedResourceMessageSomeone";
  v17[1] = 31;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  (v6)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v3 + v0 + 5 * v2);
  *v20 = 5;
  *v19 = "RequestedResourceUnsubscribe";
  v19[1] = 28;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v6)(v21);
  v22 = (v3 + v0 + 6 * v2);
  v23 = (v22 + dword_1EAEAE398);
  *v22 = 6;
  *v23 = "RequestedResourceShowContent";
  v23[1] = 28;
  v24 = OUTLINED_FUNCTION_1_3(v23);
  (v6)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v3 + v0 + 7 * v2);
  *v26 = 7;
  *v25 = "RequestedResourceReportToApple";
  v25[1] = 30;
  v27 = OUTLINED_FUNCTION_1_3(v25);
  (v6)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v3 + v0 + 8 * v2);
  *v29 = 8;
  *v28 = "RequestedResourceHideContent";
  *(v28 + 8) = 28;
  *(v28 + 16) = 2;
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193804DC0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE378);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("UserOptedToShowUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  v3(v4);
  v5 = OUTLINED_FUNCTION_34_12();
  v6 = OUTLINED_FUNCTION_25(v5, "UserOptedToShowYes");
  v3(v6);
  v7 = OUTLINED_FUNCTION_69();
  v8 = OUTLINED_FUNCTION_25(v7, "UserOptedToShowNo");
  v3(v8);
  v9 = OUTLINED_FUNCTION_1_6();
  v10 = OUTLINED_FUNCTION_25(v9, "UserOptedToShowNotApplicable");
  v3(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193804F60()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAE390);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("OriginUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  v3(v4);
  v5 = OUTLINED_FUNCTION_34_12();
  v6 = OUTLINED_FUNCTION_25(v5, "OriginAttachedToSpecificContent");
  v3(v6);
  v7 = OUTLINED_FUNCTION_69();
  *v7 = "OriginGeneral";
  *(v7 + 1) = 13;
  v8 = OUTLINED_FUNCTION_56_0(v7);
  v3(v8);
  v9 = OUTLINED_FUNCTION_1_6();
  v10 = OUTLINED_FUNCTION_25(v9, "OriginIntervention");
  v3(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193805104()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE3A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("ReportToAppleVisibilityUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  v3(v4);
  v5 = OUTLINED_FUNCTION_34_12();
  v6 = OUTLINED_FUNCTION_25(v5, "ReportToAppleVisibilityYes");
  v3(v6);
  v7 = OUTLINED_FUNCTION_69();
  v8 = OUTLINED_FUNCTION_25(v7, "ReportToAppleVisibilityNo");
  v3(v8);
  v9 = OUTLINED_FUNCTION_1_6();
  v10 = OUTLINED_FUNCTION_25(v9, "ReportToAppleVisibilityNotApplicable");
  v3(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t SensitiveContentAnalysisResourcesInteraction.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SensitiveContentAnalysisResourcesInteraction()
{
  result = qword_1EAE45DA0;
  if (!qword_1EAE45DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

void SensitiveContentAnalysisResourcesInteraction.ageGroup.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 28));
}

void SensitiveContentAnalysisResourcesInteraction.eventDirection.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

uint64_t SensitiveContentAnalysisResourcesInteraction.contentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.contentType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.clientBundleID.getter()
{
  type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisResourcesInteraction.clientBundleID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_19_57() + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.harms.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.harms.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  *(v1 + *(result + 44)) = v2;
  return result;
}

void SensitiveContentAnalysisResourcesInteraction.subContentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 48));
}

void SensitiveContentAnalysisResourcesInteraction.requestedResource.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 52));
}

void SensitiveContentAnalysisResourcesInteraction.userOptedToShow.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 56));
}

void SensitiveContentAnalysisResourcesInteraction.origin.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 60));
}

uint64_t SensitiveContentAnalysisResourcesInteraction.region.getter()
{
  type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisResourcesInteraction.region.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_19_57() + 64));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void SensitiveContentAnalysisResourcesInteraction.reportToAppleVisible.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 68));
}

uint64_t SensitiveContentAnalysisResourcesInteraction.eventID.getter()
{
  type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisResourcesInteraction.eventID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_19_57() + 72));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_193805BDC@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.AgeGroup.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193805C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.AgeGroup.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_193805C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193805D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193805E64@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.EventDirection.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193805E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.EventDirection.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

IntelligencePlatformLibrary::SensitiveContentAnalysisResourcesInteraction::ContentType sub_193805FB4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SensitiveContentAnalysisResourcesInteraction.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_193805FF4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193806024@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.SubContentType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380604C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.SubContentType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_19380613C@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.RequestedResource.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193806164@<X0>(char **a1@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.RequestedResource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193806254@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.UserOptedToShow.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380627C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.UserOptedToShow.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_19380636C@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.Origin.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193806394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.Origin.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_193806484@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.ReportToAppleVisibility.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1938064AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.ReportToAppleVisibility.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.hashValue.getter()
{
  sub_19393CAB0();
  SensitiveContentAnalysisResourcesInteraction.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1938065DC()
{
  sub_19393CAB0();
  SensitiveContentAnalysisResourcesInteraction.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193806684()
{
  result = qword_1EAE440C8;
  if (!qword_1EAE440C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE440C8);
  }

  return result;
}

unint64_t sub_1938066E4()
{
  result = qword_1EAE440D0;
  if (!qword_1EAE440D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE440D0);
  }

  return result;
}

unint64_t sub_193806770()
{
  result = qword_1EAE440E8;
  if (!qword_1EAE440E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE440E8);
  }

  return result;
}

unint64_t sub_1938067D0()
{
  result = qword_1EAE440F0;
  if (!qword_1EAE440F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE440F0);
  }

  return result;
}

unint64_t sub_1938068F8()
{
  result = qword_1EAE44138;
  if (!qword_1EAE44138)
  {
    type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44138);
  }

  return result;
}

uint64_t sub_19380697C()
{
  sub_19349D140(319);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198(319);
    OUTLINED_FUNCTION_4_0();
    if (!(!v2 & v1))
    {
      sub_19349D1FC(319, &qword_1EAE3A8C8, &type metadata for SensitiveContentAnalysisResourcesInteraction.AgeGroup);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        sub_19349D1FC(319, &qword_1EAE3A8E8, &type metadata for SensitiveContentAnalysisResourcesInteraction.EventDirection);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            sub_19349D1FC(319, &qword_1EAE3A8F0, &type metadata for SensitiveContentAnalysisResourcesInteraction.SubContentType);
            if (v4 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A910, &type metadata for SensitiveContentAnalysisResourcesInteraction.RequestedResource);
            if (v5 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A8E0, &type metadata for SensitiveContentAnalysisResourcesInteraction.UserOptedToShow);
            if (v6 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A8D0, &type metadata for SensitiveContentAnalysisResourcesInteraction.Origin);
            if (v7 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A8D8, &type metadata for SensitiveContentAnalysisResourcesInteraction.ReportToAppleVisibility);
            if (v8 > 0x3F)
            {
              return v3;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_193806C3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5126E8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5126E8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.UnifiedAssetFramework.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_76 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5126E8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44140, &qword_1939A1EE0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.UnifiedAssetFramework.attribute(_:)(void (*a1)(void))
{
  result = sub_19380704C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193807094(void (*a1)(void))
{
  result = sub_19380704C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1938070C4(uint64_t a1)
{
  result = sub_1938070EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1938070EC()
{
  result = qword_1EAE3A998;
  if (!qword_1EAE3A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A998);
  }

  return result;
}

_BYTE *_s21UnifiedAssetFrameworkOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingUnifiedAssetFrameworkLog.json()()
{
  v1 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44148, &qword_1939A1F68);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1938073D4(v0, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  sub_193807438();
  v16 = sub_19393C250();
  v18 = v17;
  (*(v3 + 8))(v7, v1);
  sub_19344E6DC(v15, &qword_1EAE44148, &qword_1939A1F68);
  v19 = v16;
  v20 = v18;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t sub_1938073D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_193807438()
{
  result = qword_1EAE44150;
  if (!qword_1EAE44150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE44148, &qword_1939A1F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44150);
  }

  return result;
}

uint64_t static AppleIntelligenceReportingUnifiedAssetFrameworkLog.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44148, &qword_1939A1F68);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;

  sub_19393C060();
  sub_193807438();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_81();
    return sub_193807CD0(v6, a1, v8);
  }

  return result;
}

uint64_t static AppleIntelligenceReportingUnifiedAssetFrameworkLog.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v33 = a5;
  v31 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44148, &qword_1939A1F68);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_6();
  v11 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  if (*sub_193809C8C() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    (*(v13 + 16))(v17, v19, v11);
    sub_193450688(a1, a2);
    sub_193807438();
    v20 = v37;
    sub_19393C280();
    if (v20)
    {
      return (*(v13 + 8))(v19, v11);
    }

    else
    {
      (*(v13 + 8))(v19, v11);
      OUTLINED_FUNCTION_2_81();
      v23 = v32;
      sub_193807CD0(v6, v32, v24);
      v25 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
      v26 = *(v25 + 20);
      sub_19344E6DC(v23 + v26, &qword_1EAE3A9E8, &qword_19394F800);
      v27 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v28 + 16))(v23 + v26, v31, v27);
      __swift_storeEnumTagSinglePayload(v23 + v26, 0, 1, v27);
      v29 = *(v25 + 24);
      sub_19344E6DC(v23 + v29, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v33, v23 + v29);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v22 = a3;
    *(v22 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44148, &qword_1939A1F68);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1938073D4(v0, v5);
  sub_1934470C8(v5, v1, v8);
  sub_193807438();
  v9 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE44148, &qword_1939A1F68);
  return v9;
}

int *sub_193807A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v15 || (sub_19393CA30() & 1) != 0)
  {
    v16 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
    sub_19375F0BC(v3 + *(v16 + 28), v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
    {
      result = sub_19344E6DC(v4, &qword_1EAE425B0, &qword_193993040);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    sub_193807CD0(v4, v14, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
    sub_193494798(v10, &off_1F07EDD08, a3);
    return sub_19375F18C(v14);
  }

  else
  {
    v18 = a1 == 0xD000000000000026 && 0x8000000193A408D0 == a2;
    if (v18 || (sub_19393CA30() & 1) != 0)
    {
      result = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
      if (*(v3 + result[8] + 26))
      {
        goto LABEL_8;
      }

      return sub_193494798(&type metadata for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState, &off_1F07F61E8, a3);
    }

    else
    {
      sub_19349AB64();
      swift_allocError();
      v20 = v19;
      *v19 = a1;
      v19[1] = a2;
      v19[5] = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20 + 2);
      sub_1938073D4(v3, boxed_opaque_existential_1Tm);
      *(v20 + 48) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_193807CD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193807D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x64616F6C6E776F64;
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 9);
  v11 = a1 == 0x64616F6C6E776F64 && a2 == 0xEE00737574617453;
  if (v11 || (v12 = v3[2], v18 = *(v3 + 24), v13 = *(v3 + 25), result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  v14 = a1 == 0xD000000000000012 && 0x8000000193A40900 == a2;
  if (v14 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v13)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  sub_19349AB64();
  swift_allocError();
  v16 = v15;
  *v15 = a1;
  v15[1] = a2;
  v15[5] = &type metadata for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState;
  v17 = swift_allocObject();
  v16[2] = v17;
  *(v17 + 16) = v8;
  *(v17 + 24) = v9;
  *(v17 + 25) = v10;
  *(v17 + 32) = v12;
  *(v17 + 40) = v18;
  *(v17 + 41) = v13;
  *(v16 + 48) = 1;
  swift_willThrow();
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193760F9C();
  v6 = a1 + v2[8];
  sub_193761094(v6);
  *a1 = *sub_193809C8C();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE425B0, &qword_193993040);
  v8 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  result = __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(v6 + 26) = 1;
  return result;
}

uint64_t static AppleIntelligenceReportingUnifiedAssetFrameworkLog.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B8, &qword_1939930B0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v15 = *(v14 + 28);
  v16 = *(v11 + 56);
  sub_19375F0BC(a1 + v15, v13);
  sub_19375F0BC(a2 + v15, &v13[v16]);
  OUTLINED_FUNCTION_31(v13);
  if (!v17)
  {
    sub_19375F0BC(v13, v9);
    OUTLINED_FUNCTION_31(&v13[v16]);
    if (!v17)
    {
      sub_19375F934(&v13[v16], v6);
      sub_19375FB68(&qword_1EAE42570);
      v19 = sub_19393C550();
      sub_19375F18C(v6);
      sub_19375F18C(v9);
      sub_19344E6DC(v13, &qword_1EAE425B0, &qword_193993040);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    sub_19375F18C(v9);
LABEL_9:
    sub_19344E6DC(v13, &qword_1EAE425B8, &qword_1939930B0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v13[v16]);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v13, &qword_1EAE425B0, &qword_193993040);
LABEL_13:
  v20 = *(v14 + 32);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 26);
  v23 = (a2 + v20);
  v24 = *(v23 + 26);
  if (v22)
  {
    if (*(v23 + 26))
    {
      return 1;
    }
  }

  else
  {
    v26 = *v23;
    v25 = v23[1];
    v27 = v23[2];
    v28 = *(v23 + 12);
    v29 = *(v21 + 12);
    v30 = *(v21 + 2);
    v35 = *v21;
    v36 = v30;
    v37 = v29;
    v38 = 0;
    if ((v24 & 1) == 0)
    {
      v31 = v26;
      v32 = v25 & 0x1FF;
      v33 = v27;
      v34 = v28 & 0x1FF;
      sub_19380831C();
      if (sub_19393C550())
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_19380831C()
{
  result = qword_1EAE44158;
  if (!qword_1EAE44158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44158);
  }

  return result;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  sub_19375F0BC(v1 + *(v9 + 28), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19375F934(v8, v5);
    sub_19393CAD0();
    sub_19375FB68(&qword_1EAE425C8);
    sub_19393C540();
    sub_19375F18C(v5);
  }

  v10 = (v1 + *(v9 + 32));
  if (*(v10 + 26) == 1)
  {
    return sub_19393CAD0();
  }

  v12 = *(v10 + 12);
  v14 = v10[1];
  v13 = v10[2];
  v15 = *v10;
  v16 = v14 & 0x1FF;
  v17 = v13;
  v18 = v12 & 0x1FF;
  sub_19393CAD0();
  sub_19380854C();
  return sub_19393C540();
}

unint64_t sub_19380854C()
{
  result = qword_1EAE44160;
  if (!qword_1EAE44160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44160);
  }

  return result;
}

void AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE44180, &qword_1939A2088);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v28 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_84_2(v28, v29, v30, v31, &qword_1EAE44180, &qword_1939A2088);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v32 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_85(v32, v33, v34, v35, &qword_1EAE44180, &qword_1939A2088);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v36 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v36, v2 + 3, 1, v37, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v38 = OUTLINED_FUNCTION_39(v10);
    v0 = OUTLINED_FUNCTION_84_2(v38, v39, v40, v41, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v42 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_85(v42, v43, v44, v45, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(&v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v46 = OUTLINED_FUNCTION_39(v16);
    v15 = OUTLINED_FUNCTION_84_2(v46, v47, v48, v49, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(&v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v50 = OUTLINED_FUNCTION_39(v19);
    v18 = OUTLINED_FUNCTION_85(v50, v51, v52, v53, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(&v18[16 * v17]);
  v23 = v2 + 8;
  if ((v2 + 8) > (v22 >> 1))
  {
    v54 = OUTLINED_FUNCTION_39(v22);
    v21 = OUTLINED_FUNCTION_84_2(v54, v55, v56, v57, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v21 + 2) = v23;
  OUTLINED_FUNCTION_4(&v21[16 * v20]);
  if ((v2 + 9) > (v25 >> 1))
  {
    v58 = OUTLINED_FUNCTION_39(v25);
    v24 = OUTLINED_FUNCTION_85(v58, v59, v60, v61, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v24 + 2) = v2 + 9;
  v26 = &v24[16 * v23];
  *(v26 + 4) = 7;
  v26[40] = 1;
  return v24;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_60();
      result = v5 - 3;
      break;
    case 2:
      OUTLINED_FUNCTION_11_60();
      result = v3 + 1;
      break;
    case 3:
      OUTLINED_FUNCTION_11_60();
      result = v4 - 6;
      break;
    case 4:
      OUTLINED_FUNCTION_11_60();
      result = v2 - 4;
      break;
    case 5:
      OUTLINED_FUNCTION_11_60();
      result = v6 - 9;
      break;
    case 6:
      OUTLINED_FUNCTION_11_60();
      result = v7 - 2;
      break;
    case 7:
      result = 0xD00000000000002BLL;
      break;
    default:
      result = 0xD00000000000002BLL;
      break;
  }

  return result;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v9 = v2 == 0xD00000000000002BLL && 0x8000000193A40A70 == v1;
  if (v9 || (OUTLINED_FUNCTION_0_9(0xD00000000000002BLL, 0x8000000193A40A70) & 1) != 0)
  {

    v7 = 0;
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v10 = v2 == 0xD000000000000028 && 0x8000000193A40A40 == v1;
  if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000028, 0x8000000193A40A40) & 1) != 0)
  {

    v7 = 1;
    goto LABEL_13;
  }

  v11 = v2 == 0xD00000000000002CLL && 0x8000000193A40A10 == v1;
  if (v11 || (OUTLINED_FUNCTION_0_9(0xD00000000000002CLL, 0x8000000193A40A10) & 1) != 0)
  {

    v8 = 1;
    v7 = 2;
  }

  else
  {
    v12 = v2 == 0xD000000000000025 && 0x8000000193A409E0 == v1;
    if (v12 || (OUTLINED_FUNCTION_0_9(0xD000000000000025, 0x8000000193A409E0) & 1) != 0)
    {

      v8 = 1;
      v7 = 3;
    }

    else
    {
      v13 = v2 == 0xD000000000000027 && 0x8000000193A409B0 == v1;
      if (v13 || (OUTLINED_FUNCTION_0_9(0xD000000000000027, 0x8000000193A409B0) & 1) != 0)
      {

        v8 = 1;
        v7 = 4;
      }

      else
      {
        v14 = v2 == 0xD000000000000022 && 0x8000000193A40980 == v1;
        if (v14 || (OUTLINED_FUNCTION_0_9(0xD000000000000022, 0x8000000193A40980) & 1) != 0)
        {

          v8 = 1;
          v7 = 5;
        }

        else
        {
          v15 = v2 == 0xD000000000000029 && 0x8000000193A40950 == v1;
          if (v15 || (OUTLINED_FUNCTION_0_9(0xD000000000000029, 0x8000000193A40950) & 1) != 0)
          {

            v8 = 1;
            v7 = 6;
          }

          else if (v2 == 0xD00000000000002BLL && 0x8000000193A40920 == v1)
          {

            v8 = 1;
            v7 = 7;
          }

          else
          {
            v8 = OUTLINED_FUNCTION_0_9(0xD00000000000002BLL, 0x8000000193A40920);

            v7 = 7;
            if ((v8 & 1) == 0)
            {
              v7 = 0;
            }
          }
        }
      }
    }
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

void AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE44178, &qword_1939A2080);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v10 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_84_2(v10, v11, v12, v13, &qword_1EAE44178, &qword_1939A2080);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v14 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_85(v14, v15, v16, v17, &qword_1EAE44178, &qword_1939A2080);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v18 = OUTLINED_FUNCTION_39(v1);
    v0 = OUTLINED_FUNCTION_84_2(v18, v19, v20, v21, &qword_1EAE44178, &qword_1939A2080);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x7263736275736E55;
  }

  return 0x6269726373627553;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2 == 0x6269726373627553 && v1 == 0xEA00000000006465;
    if (v9 || (OUTLINED_FUNCTION_0_9(0x6269726373627553, 0xEA00000000006465) & 1) != 0)
    {

      v7 = 0;
    }

    else
    {
      if (v2 != 0x7263736275736E55 || v1 != 0xEC00000064656269)
      {
        v8 = OUTLINED_FUNCTION_0_9(0x7263736275736E55, 0xEC00000064656269);

        v7 = v8 & 1;
        goto LABEL_14;
      }

      v7 = 1;
    }

    v8 = 1;
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_193808F20()
{
  result = qword_1EAE44168;
  if (!qword_1EAE44168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44168);
  }

  return result;
}

unint64_t sub_193808F78()
{
  result = qword_1EAE44170;
  if (!qword_1EAE44170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44170);
  }

  return result;
}

void sub_193808FCC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE3C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("event");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_48(v8, "unifiedAssetFrameworkSubscriptionState");
  (v7)(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19380911C()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
LABEL_7:
      sub_193498018();
    }

    else if (v1 == 1)
    {
      type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
      type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
      goto LABEL_7;
    }
  }
}

void sub_193809210()
{
  sub_1938092E4(v0);
  if (!v1 && (*(v0 + *(type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog() + 32) + 26) & 1) == 0)
  {
    sub_193447600();
  }
}

uint64_t sub_1938092E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  sub_19375F0BC(a1 + *(v9 + 28), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_193760D5C(v4);
  }

  sub_19375F934(v4, v8);
  sub_193447600();
  return sub_19375F18C(v8);
}

void sub_1938094A0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE3D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("downloadStatus");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_48(v8, "subscriptionStatus");
  (v7)(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1938095F0()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2 || v1 == 1)
    {
      sub_1934982A8();
    }
  }
}

uint64_t sub_1938096AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = *(v3 + 24);
  v9 = *(v3 + 25);
  if ((*(v3 + 9) & 1) == 0)
  {
    v10 = *(v3 + 8);
    v12 = *v3;
    v13 = v10 & 1;
    result = sub_193447324(&v12, 1, a2, &type metadata for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus, a3, &off_1F07F6258);
  }

  if (!v4 && (v9 & 1) == 0)
  {
    v12 = v7;
    v13 = v8 & 1;
    return sub_193447324(&v12, 2, a2, &type metadata for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus, a3, &off_1F07F6280);
  }

  return result;
}

void sub_1938097E4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE3F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = OUTLINED_FUNCTION_156();
  *(v5 + 16) = xmmword_193951270;
  v6 = v5 + v4 + MEMORY[0x1EAEAE428];
  *(v5 + v4) = 0;
  *v6 = "DownloadStatusUnknown";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v10 = *(v9 + 104);
  (v10)(v6, v7, v8);
  v11 = OUTLINED_FUNCTION_3_1(v5 + v4 + v2);
  *v12 = 1;
  *v11 = "UAFSubscriptionDownloadStatusNotDownloading";
  *(v11 + 8) = 43;
  *(v11 + 16) = 2;
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v5 + v4 + 2 * v2);
  *v14 = 2;
  v15 = OUTLINED_FUNCTION_0_0(v13, "UAFSubscriptionDownloadStatusDownloading");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + v4 + 3 * v2);
  *v17 = 3;
  v18 = OUTLINED_FUNCTION_0_0(v16, "UAFSubscriptionDownloadStatusDownloadStalled");
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + v4 + 4 * v2);
  *v20 = 4;
  v21 = OUTLINED_FUNCTION_0_0(v19, "UAFSubscriptionDownloadStatusComplete");
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + v4 + 5 * v2);
  *v23 = 5;
  v24 = OUTLINED_FUNCTION_0_0(v22, "UAFSubscriptionDownloadStatusOutOfSpace");
  (v10)(v24);
  v25 = (v5 + v4 + 6 * v2);
  v26 = v25 + MEMORY[0x1EAEAE428];
  *v25 = 6;
  v27 = OUTLINED_FUNCTION_0_0(v26, "UAFSubscriptionDownloadStatusError");
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v5 + v4 + 7 * v2);
  *v29 = 7;
  v30 = OUTLINED_FUNCTION_0_0(v28, "UAFSubscriptionDownloadStatusNetworkError");
  (v10)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v5 + v4 + 8 * v2);
  *v32 = 8;
  *v31 = "UAFSubscriptionDownloadStatusDowngradeError";
  *(v31 + 8) = 43;
  *(v31 + 16) = 2;
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193809ADC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE408);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("SubscriptionStatusUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = 1;
  *v8 = "Subscribed";
  *(v8 + 8) = 10;
  *(v8 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_48(v10, "Unsubscribed");
  (v7)(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  return sub_1934488AC(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog()
{
  result = qword_1EAE46350;
  if (!qword_1EAE46350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  return sub_1934488AC(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  return sub_1934488AC(v1 + *(v2 + 28), v0, &qword_1EAE425B0, &qword_193993040);
}

__n128 AppleIntelligenceReportingUnifiedAssetFrameworkLog.unifiedAssetFrameworkSubscriptionState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog() + 32));
  v3 = v2[1].n128_u64[0];
  v4 = v2[1].n128_u16[4];
  v5 = v2[1].n128_u8[10];
  result = *v2;
  *v0 = *v2;
  v0[1].n128_u64[0] = v3;
  v0[1].n128_u16[4] = v4;
  v0[1].n128_u8[10] = v5;
  return result;
}

__n128 AppleIntelligenceReportingUnifiedAssetFrameworkLog.unifiedAssetFrameworkSubscriptionState.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  v4 = a1[1].n128_u8[10];
  v5 = (v1 + *(type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog() + 32));
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v2;
  v5[1].n128_u16[4] = v3;
  v5[1].n128_u8[10] = v4;
  return result;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.downloadStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.subscriptionStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

void AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
}

uint64_t sub_19380A0C8@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380A0F0@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19380A14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19380A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_19380A348@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380A370@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 25);
  v3 = *(a2 + 25);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v4 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
    if (v4 != AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter())
    {
      return 0;
    }

LABEL_6:
    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3)
      {
        return 0;
      }

      v5 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
      if (v5 != AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter())
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 9))
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.hash(into:)()
{
  v1 = *(v0 + 25);
  if (*(v0 + 9) == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      v2 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
      return MEMORY[0x193B18030](v2);
    }
  }

  else
  {
    sub_19393CAD0();
    v4 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
    MEMORY[0x193B18030](v4);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.hashValue.getter()
{
  OUTLINED_FUNCTION_182_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v3 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_19380A6D8()
{
  OUTLINED_FUNCTION_182_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v3 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19380A7DC()
{
  sub_19393CAB0();
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19380A84C()
{
  result = qword_1EAE441B8;
  if (!qword_1EAE441B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE441B8);
  }

  return result;
}

unint64_t sub_19380A8D4()
{
  result = qword_1EAE441D0;
  if (!qword_1EAE441D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE441D0);
  }

  return result;
}

unint64_t sub_19380A930()
{
  result = qword_1EAE441D8;
  if (!qword_1EAE441D8)
  {
    type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE441D8);
  }

  return result;
}

void sub_19380A9B4()
{
  sub_193761CA8(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_193761CA8(319, &qword_1ED503B68, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
      if (v2 <= 0x3F)
      {
        sub_19380AAB0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19380AAB0()
{
  if (!qword_1EAE3A9A0)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAE3A9A0);
    }
  }
}

uint64_t CCAssistantSchemaTypeDecode(uint64_t result)
{
  if (result >= 0x2F)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCAssistantSchemaTypeAsString(uint64_t a1)
{
  if (a1 >= 0x2F)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E6B68[a1];
  }

  return v2;
}

_BYTE *CCAssistantSchemaTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCAssistantSchemaTypeFromString_sortedStrings, 0x2EuLL, 8uLL, &__block_literal_global);
  if (result)
  {
    return *(&CCAssistantSchemaTypeFromString_sortedEnums + (((result - CCAssistantSchemaTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCHomeDeviceTypeDecode(uint64_t result)
{
  if (result >= 0x2E)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCHomeEntityTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7430[a1];
  }

  return v2;
}

_BYTE *CCHomeEntityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCHomeEntityTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_3434);
  if (result)
  {
    return *(&CCHomeEntityTypeFromString_sortedEnums + (((result - CCHomeEntityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCHomeEntityTypeDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCHomeDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 0x2E)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7478[a1];
  }

  return v2;
}

_BYTE *CCHomeDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCHomeDeviceTypeFromString_sortedStrings, 0x2DuLL, 8uLL, &__block_literal_global_165);
  if (result)
  {
    return *(&CCHomeDeviceTypeFromString_sortedEnums + (((result - CCHomeDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCMediaEntityTypeDecode(uint64_t result)
{
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCMediaEntityTypeAsString(uint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7748[a1];
  }

  return v2;
}

_BYTE *CCMediaEntityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCMediaEntityTypeFromString_sortedStrings, 0xCuLL, 8uLL, &__block_literal_global_3867);
  if (result)
  {
    return *(&CCMediaEntityTypeFromString_sortedEnums + (((result - CCMediaEntityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCPhotosPetTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCPhotosPetTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7898[a1];
  }

  return v2;
}

_BYTE *CCPhotosPetTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCPhotosPetTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_3976);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCPhotosPetTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCRadioStationSignalTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCRadioStationSignalTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7928[a1];
  }

  return v2;
}

_BYTE *CCRadioStationSignalTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCRadioStationSignalTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_4229);
  if (result)
  {
    return *(&CCRadioStationSignalTypeFromString_sortedEnums + (((result - CCRadioStationSignalTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCSignificantLocationSubPremiseTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCSignificantLocationSubPremiseTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E79B8[a1];
  }

  return v2;
}

_BYTE *CCSignificantLocationSubPremiseTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCSignificantLocationSubPremiseTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_4466);
  if (result)
  {
    return *(&CCSignificantLocationSubPremiseTypeFromString_sortedEnums + (((result - CCSignificantLocationSubPremiseTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCSiriCompanionContextAudioSubscriptionStatusDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCSiriCompanionContextAudioSubscriptionStatusAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7C30[a1];
  }

  return v2;
}

_BYTE *CCSiriCompanionContextAudioSubscriptionStatusFromString(const void *a1)
{
  result = bsearch_b(a1, CCSiriCompanionContextAudioSubscriptionStatusFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_5431);
  if (result)
  {
    return *(&CCSiriCompanionContextAudioSubscriptionStatusFromString_sortedEnums + (((result - CCSiriCompanionContextAudioSubscriptionStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCSiriCompanionContextAudioMediaCategoryAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7C50[a1];
  }

  return v2;
}

_BYTE *CCSiriCompanionContextAudioMediaCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, CCSiriCompanionContextAudioMediaCategoryFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_30);
  if (result)
  {
    return *(&CCSiriCompanionContextAudioMediaCategoryFromString_sortedEnums + (((result - CCSiriCompanionContextAudioMediaCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCSiriCompanionContextAudioMediaCategoryDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCHomeServiceAreaTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7D28[a1];
  }

  return v2;
}

_BYTE *CCHomeServiceAreaTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCHomeServiceAreaTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_5812);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCHomeServiceAreaTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCHomeServiceAreaTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCAppIntentsExtractedEntityTypeAsString(uint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7E30[a1];
  }

  return v2;
}

_BYTE *CCAppIntentsExtractedEntityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCAppIntentsExtractedEntityTypeFromString_sortedStrings, 0xCuLL, 8uLL, &__block_literal_global_6333);
  if (result)
  {
    return *(&CCAppIntentsExtractedEntityTypeFromString_sortedEnums + (((result - CCAppIntentsExtractedEntityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCAppIntentsExtractedEntityTypeDecode(uint64_t result)
{
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusDecode(uint64_t result)
{
  if (result >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletPaymentsCommerceOrderEmailShippingInformationStatusDecode(uint64_t result)
{
  if (result >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletExtractedOrderContentExtractedEmailOrderContentTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletPaymentsCommerceOrderEmailEmailTypeDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletExtractedOrderContentOrderStatusDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8560[a1];
  }

  return v2;
}

_BYTE *CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_6718);
  if (result)
  {
    return *(&CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedEnums + (((result - CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCWalletPaymentsCommerceOrderEmailShippingInformationStatusAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8560[a1];
  }

  return v2;
}

_BYTE *CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_33);
  if (result)
  {
    return *(&CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedEnums + (((result - CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCWalletPaymentsCommerceOrderEmailEmailTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E85B0[a1];
  }

  return v2;
}

_BYTE *CCWalletPaymentsCommerceOrderEmailEmailTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletPaymentsCommerceOrderEmailEmailTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_59);
  if (result)
  {
    return *(&CCWalletPaymentsCommerceOrderEmailEmailTypeFromString_sortedEnums + (((result - CCWalletPaymentsCommerceOrderEmailEmailTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCWalletExtractedOrderContentExtractedEmailOrderContentTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E85F8[a1];
  }

  return v2;
}

_BYTE *CCWalletExtractedOrderContentExtractedEmailOrderContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletExtractedOrderContentExtractedEmailOrderContentTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_67);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCWalletExtractedOrderContentExtractedEmailOrderContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCWalletExtractedOrderContentOrderStatusAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8610[a1];
  }

  return v2;
}

_BYTE *CCWalletExtractedOrderContentOrderStatusFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletExtractedOrderContentOrderStatusFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_72);
  if (result)
  {
    return *(&CCWalletExtractedOrderContentOrderStatusFromString_sortedEnums + (((result - CCWalletExtractedOrderContentOrderStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeDecode(uint64_t result)
{
  if (result >= 0xC)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRestrictionContextDateExpressibleAsDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRestrictionContextPersonReachableAsDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolCompoundPredicateOperatorTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolQuerySortOrderDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierDecode(uint64_t result)
{
  if (result >= 0x1C)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeDecode(uint64_t result)
{
  if (result >= 0x17)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueDecimalSignDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolContainerDefinitionOriginDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolContainerDefinitionTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRuntimePlatformDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRuntimeRequirementDeviceStateDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypeDefinitionVersion1EnumerationKindDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolCoercionDefinitionCoercionDirectionDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIconStyleDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolDefinitionVersion1FlagDecode(uint64_t result)
{
  if ((result - 4) > 0x3C || ((1 << (result - 4)) & 0x1000000010001011) == 0)
  {
    if (result == 128)
    {
      v1 = 128;
    }

    else
    {
      v1 = 0;
    }

    if (result >= 3)
    {
      return v1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t CCToolKitToolAppDefinitionOriginDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolDefinitionVersion1AuthenticationPolicyDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolDefinitionVersion1ToolTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolInvocationOptionsInterfaceIdiomDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolInvocationOptionsInteractionModeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCToolKitToolNullValueAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *CCToolKitToolRuntimePlatformAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8F10[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRuntimePlatformFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRuntimePlatformFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_30_7059);
  if (result)
  {
    return *(&CCToolKitToolRuntimePlatformFromString_sortedEnums + (((result - CCToolKitToolRuntimePlatformFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeAsString(uint64_t a1)
{
  if (a1 >= 0x17)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8F58[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeFromString_sortedStrings, 0x16uLL, 8uLL, &__block_literal_global_98);
  if (result)
  {
    return *(&CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeFromString_sortedEnums + (((result - CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypeDefinitionVersion1EntityRuntimeFlagsAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"TransientAppEntity";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

uint64_t CCToolKitToolTypeDefinitionVersion1EntityRuntimeFlagsDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCToolKitToolTypeDefinitionVersion1EnumerationKindAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9010[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypeDefinitionVersion1EnumerationKindFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypeDefinitionVersion1EnumerationKindFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_114);
  if (result)
  {
    return *(&CCToolKitToolTypeDefinitionVersion1EnumerationKindFromString_sortedEnums + (((result - CCToolKitToolTypeDefinitionVersion1EnumerationKindFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueDecimalSignAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9030[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueDecimalSignFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueDecimalSignFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_122);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueDecimalSignFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9048[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_148);
  if (result)
  {
    return *(&CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9090[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_156);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E90A8[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_164);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierAsString(uint64_t a1)
{
  if (a1 >= 0x1C)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E90C0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierFromString_sortedStrings, 0x1BuLL, 8uLL, &__block_literal_global_247);
  if (result)
  {
    return *(&CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E91A0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_261);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionTypeFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E91C8[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_269);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E91E0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_292);
  if (result)
  {
    return *(&CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9220[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_312);
  if (result)
  {
    return *(&CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9258[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_320);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9270[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_352);
  if (result)
  {
    return *(&CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E92D0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_363);
  if (result)
  {
    return *(&CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextPersonReachableAsAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E92F0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextPersonReachableAsFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextPersonReachableAsFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_374);
  if (result)
  {
    return *(&CCToolKitToolRestrictionContextPersonReachableAsFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextPersonReachableAsFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextDateExpressibleAsAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9318[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextDateExpressibleAsFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextDateExpressibleAsFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_385);
  if (result)
  {
    return *(&CCToolKitToolRestrictionContextDateExpressibleAsFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextDateExpressibleAsFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolCompoundPredicateOperatorTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9338[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolCompoundPredicateOperatorTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolCompoundPredicateOperatorTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_393);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolCompoundPredicateOperatorTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolQuerySortOrderAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9350[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolQuerySortOrderFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolQuerySortOrderFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_401);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolQuerySortOrderFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9368[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_424);
  if (result)
  {
    return *(&CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeFromString_sortedEnums + (((result - CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRuntimeRequirementDeviceStateAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Unlocked";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E93A8[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_437);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIconStyleAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Tinted";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *CCToolKitToolToolDefinitionVersion1ToolTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E93C0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1ToolTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1ToolTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_456);
  if (result)
  {
    return *(&CCToolKitToolToolDefinitionVersion1ToolTypeFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1ToolTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolToolDefinitionVersion1FlagAsString(uint64_t a1)
{
  if (a1 <= 7)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v2 = @"IsDiscontinued";

        return v2;
      }

      if (a1 == 4)
      {
        v2 = @"IsUndiscoverable";

        return v2;
      }
    }

    else
    {
      if (!a1)
      {
        v2 = @"Unknown";

        return v2;
      }

      if (a1 == 1)
      {
        v2 = @"OpensAppWhenRun";

        return v2;
      }
    }

LABEL_40:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];

    return v2;
  }

  if (a1 <= 31)
  {
    if (a1 == 8)
    {
      v2 = @"DoesNotImplementPerform";

      return v2;
    }

    if (a1 == 16)
    {
      v2 = @"ShowsOpenWhenRun";

      return v2;
    }

    goto LABEL_40;
  }

  switch(a1)
  {
    case 0x20:
      v2 = @"OutputHasSnippet";

      break;
    case 0x40:
      v2 = @"OutputProvidesDialog";

      break;
    case 0x80:
      v2 = @"IsHomeResidentCompatible";

      return v2;
    default:
      goto LABEL_40;
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1FlagFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1FlagFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_482);
  if (result)
  {
    return *(&CCToolKitToolToolDefinitionVersion1FlagFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1FlagFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolToolDefinitionVersion1VisibilityFlagAsString(uint64_t a1)
{
  if (a1 < 5 && ((0x17u >> a1) & 1) != 0)
  {
    v2 = off_1E73E93E8[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1VisibilityFlagFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1VisibilityFlagFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_493);
  if (result)
  {
    return *(&CCToolKitToolToolDefinitionVersion1VisibilityFlagFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1VisibilityFlagFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCToolKitToolToolDefinitionVersion1VisibilityFlagDecode(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1939A29F4[a1];
  }
}

__CFString *CCToolKitToolToolDefinitionVersion1AuthenticationPolicyAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9410[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1AuthenticationPolicyFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1AuthenticationPolicyFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_504);
  if (result)
  {
    return *(&CCToolKitToolToolDefinitionVersion1AuthenticationPolicyFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1AuthenticationPolicyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolAppDefinitionOriginAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9430[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolAppDefinitionOriginFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolAppDefinitionOriginFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_512);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolAppDefinitionOriginFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolContainerDefinitionOriginAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9430[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolContainerDefinitionOriginFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolContainerDefinitionOriginFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_514);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolContainerDefinitionOriginFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolContainerDefinitionTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9448[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolContainerDefinitionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolContainerDefinitionTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_528);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionTypeFromString_sortedEnums + (((result - CCToolKitToolContainerDefinitionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9470[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_536);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolCoercionDefinitionCoercionDirectionAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Export";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *CCToolKitToolTriggerDefinitionVersion1FlagAsString(uint64_t a1)
{
  if (a1 < 5 && ((0x17u >> a1) & 1) != 0)
  {
    v2 = off_1E73E9488[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTriggerDefinitionVersion1FlagFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTriggerDefinitionVersion1FlagFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_552);
  if (result)
  {
    return *(&CCToolKitToolTriggerDefinitionVersion1FlagFromString_sortedEnums + (((result - CCToolKitToolTriggerDefinitionVersion1FlagFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCToolKitToolTriggerDefinitionVersion1FlagDecode(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1939A29F4[a1];
  }
}

__CFString *CCToolKitToolToolInvocationOptionsInteractionModeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E94B0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolInvocationOptionsInteractionModeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolInvocationOptionsInteractionModeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_566);
  if (result)
  {
    return *(&CCToolKitToolToolInvocationOptionsInteractionModeFromString_sortedEnums + (((result - CCToolKitToolToolInvocationOptionsInteractionModeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolToolInvocationOptionsInterfaceIdiomAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E94D8[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolInvocationOptionsInterfaceIdiomFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolInvocationOptionsInterfaceIdiomFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_583);
  if (result)
  {
    return *(&CCToolKitToolToolInvocationOptionsInterfaceIdiomFromString_sortedEnums + (((result - CCToolKitToolToolInvocationOptionsInterfaceIdiomFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}