void sub_19367A478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *_s8WirelessOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19367A590()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511598);
  v4 = __swift_project_value_buffer(v3, qword_1ED511598);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Device.Wireless.WiFi.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:30000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_44 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511598);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD0, &qword_193978B90);
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

unint64_t static Library.Streams.Device.Wireless.WiFi.attribute(_:)(void (*a1)(void))
{
  result = sub_19367A994(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367A9DC(void (*a1)(void))
{
  result = sub_19367A994(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367AA0C(uint64_t a1)
{
  result = sub_19367AA34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19367AA34()
{
  result = qword_1ED5048B8;
  if (!qword_1ED5048B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048B8);
  }

  return result;
}

_BYTE *_s4WiFiOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceWiFi.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for DeviceWiFi(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD8, &qword_193978C00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19367AD3C(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FCD8, &qword_193978C00, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3FCD8, &qword_193978C00);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19367AD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWiFi(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceWiFi.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD8, &qword_193978C00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FCD8, &qword_193978C00, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_19367AEE0(v8, a3);
  }

  return result;
}

uint64_t sub_19367AEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWiFi(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceWiFi.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD8, &qword_193978C00);
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
  if (*sub_19367BD48() == a3)
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
      sub_19367AEE0(v11, v36);
      v29 = type metadata accessor for DeviceWiFi(0);
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

uint64_t DeviceWiFi.serialize()()
{
  v1 = type metadata accessor for DeviceWiFi(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCD8, &qword_193978C00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_19367AD3C(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FCD8, &qword_193978C00, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FCD8, &qword_193978C00);
  return v11;
}

id static DeviceWiFi.columns.getter()
{
  v8 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(1145656147, 0xE400000000000000, 2, 0, v1, 13, 0);
  if (result)
  {
    inited[2].n128_u64[0] = result;
    sub_19343D230(inited);
    v4 = swift_initStackObject();
    v5 = OUTLINED_FUNCTION_22_15(v4, xmmword_193950B10);
    *(v5 + 16) = xmmword_193950B10;
    *(v5 + 32) = sub_19393C850();
    v6 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
    v7 = OUTLINED_FUNCTION_69_4();
    result = sub_19343D150(v7, 0xE800000000000000, 0, 0, v5, 12, 0);
    if (result)
    {
      v4[2].n128_u64[0] = result;
      sub_19343D230(v4);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19367B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1 == 1145656147 && a2 == 0xE400000000000000;
  if (v5 || (sub_19393CA30() & 1) != 0)
  {
    result = type metadata accessor for DeviceWiFi(0);
    if (*(v3 + *(result + 28) + 8))
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  v9 = a1 == OUTLINED_FUNCTION_69_4() && a2 == 0xE800000000000000;
  if (v9 || (sub_19393CA30() & 1) != 0)
  {
    result = type metadata accessor for DeviceWiFi(0);
    if (*(v3 + *(result + 32)) != 2)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  swift_allocError();
  v11 = v10;
  *v10 = a1;
  v10[1] = a2;
  v10[5] = type metadata accessor for DeviceWiFi(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11 + 2);
  sub_19367AD3C(v3, boxed_opaque_existential_1Tm);
  *(v11 + 48) = 1;
  swift_willThrow();
}

uint64_t DeviceWiFi.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for DeviceWiFi(0);
  v3 = v2[5];
  sub_193657C90(a1 + v3);
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  OUTLINED_FUNCTION_10_1();
  v6 = v2[8];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_19367BD48();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v5 = 0;
  v5[1] = 0;
  *(a1 + v6) = 2;
  return result;
}

BOOL static DeviceWiFi.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWiFi(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(v4 + 32);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 != 2)
  {
    return v13 != 2 && ((v12 ^ v13) & 1) == 0;
  }

  return v13 == 2;
}

uint64_t DeviceWiFi.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for DeviceWiFi(0);
  if (*(v1 + *(v2 + 28) + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v1 + *(v2 + 32)) != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t sub_19367B92C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB28);
  __swift_project_value_buffer(v0, qword_1EAEABB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "SSID";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "starting";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_19393C410();
}

uint64_t sub_19367BAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  while (1)
  {
    result = sub_19393C0E0();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v8 = type metadata accessor for DeviceWiFi(0);
      OUTLINED_FUNCTION_8_2(*(v8 + 32));
      sub_19393C0F0();
LABEL_8:
      v4 = 0;
    }

    else if (result == 1)
    {
      v7 = type metadata accessor for DeviceWiFi(0);
      OUTLINED_FUNCTION_8_2(*(v7 + 28));
      sub_19393C200();
      goto LABEL_8;
    }
  }
}

uint64_t sub_19367BB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for DeviceWiFi(0);
  v6 = result;
  if (*(v3 + *(result + 28) + 8))
  {
    result = sub_19393C3C0();
  }

  if (!v4 && *(v3 + *(v6 + 32)) != 2)
  {
    return sub_19393C2E0();
  }

  return result;
}

uint64_t sub_19367BC44(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = *aDevicewifi_0;

  return v1;
}

uint64_t sub_19367BC88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77D00 != -1)
  {
    OUTLINED_FUNCTION_0_75(&qword_1EAE77D00);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABB28);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t type metadata accessor for DeviceWiFi(uint64_t a1)
{
  result = qword_1ED50D890;
  if (!qword_1ED50D890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceWiFi.SSID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceWiFi(0) + 28));

  return v1;
}

uint64_t DeviceWiFi.SSID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DeviceWiFi(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DeviceWiFi.starting.setter(char a1)
{
  result = type metadata accessor for DeviceWiFi(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t DeviceWiFi.hashValue.getter()
{
  sub_19393CAB0();
  DeviceWiFi.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19367C0C4(uint64_t a1)
{
  sub_19393CAB0();
  DeviceWiFi.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_19367C104()
{
  result = qword_1EAE3FCF8;
  if (!qword_1EAE3FCF8)
  {
    type metadata accessor for DeviceWiFi(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FCF8);
  }

  return result;
}

void sub_19367C188(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED506698, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *_s12ModelCatalogOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s13SubscriptionsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19367C3E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5115F8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5115F8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.ModelCatalog.Subscriptions.ExplicitRequests.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_45 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5115F8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD00, &qword_193978D50);
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

unint64_t static Library.Streams.ModelCatalog.Subscriptions.ExplicitRequests.attribute(_:)(void (*a1)(void))
{
  result = sub_19367C7F0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367C838(void (*a1)(void))
{
  result = sub_19367C7F0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367C868(uint64_t a1)
{
  result = sub_19367C890();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19367C890()
{
  result = qword_1ED504618[0];
  if (!qword_1ED504618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED504618);
  }

  return result;
}

_BYTE *_s16ExplicitRequestsOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ModelCatalogExplicitRequests.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for ModelCatalogExplicitRequests(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD08, &qword_193978DD8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19367CB98(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FD08, &qword_193978DD8, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3FD08, &qword_193978DD8);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19367CB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogExplicitRequests(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ModelCatalogExplicitRequests.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD08, &qword_193978DD8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FD08, &qword_193978DD8, v10);
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_3_54();
    return sub_19367D71C(v8, a3, v12);
  }

  return result;
}

uint64_t static ModelCatalogExplicitRequests.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD08, &qword_193978DD8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_1();
  v11 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  if (*sub_19367E5B8() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v13 + 16))(v17, v19, v11);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v20, v21, v22, v23);
    v24 = v41;
    sub_19393C280();
    if (v24)
    {
      return (*(v13 + 8))(v19, v11);
    }

    else
    {
      (*(v13 + 8))(v19, v11);
      OUTLINED_FUNCTION_3_54();
      v27 = v36;
      sub_19367D71C(v6, v36, v28);
      v29 = type metadata accessor for ModelCatalogExplicitRequests(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v27 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v27 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v27 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v27 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v27 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v26 = a3;
    *(v26 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t ModelCatalogExplicitRequests.serialize()()
{
  v2 = type metadata accessor for ModelCatalogExplicitRequests(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD08, &qword_193978DD8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_19367CB98(v0, v1);
  sub_1934470C8(v1, v2, v6);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE3FD08, &qword_193978DD8, v8);
  v9 = sub_19393C290();
  sub_19344E6DC(v6, &qword_1EAE3FD08, &qword_193978DD8);
  return v9;
}

id static ModelCatalogExplicitRequests.columns.getter()
{
  v55 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000010, 0x8000000193A17C10);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v22[2].n128_u64[0] = sub_19393C850();
  v32 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A2BEF0);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  v33 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v43[2].n128_u64[0] = sub_19393C850();
  v53 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v54 = OUTLINED_FUNCTION_5_56();
  result = sub_19343D150(v54 & 0xFFFFFFFFFFFFLL | 0x6269000000000000, 0xE900000000000065, 0, 0, v43, 12, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v55;
  }

LABEL_7:
  __break(1u);
  return result;
}

int *sub_19367D3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_1();
  v9 = type metadata accessor for ModelCatalogSubscription(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = a1 == 0xD000000000000010 && 0x8000000193A17C10 == a2;
  if (v14 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193A17C10) & 1) != 0)
  {
    result = type metadata accessor for ModelCatalogExplicitRequests(0);
    v16 = result[7];
    goto LABEL_7;
  }

  v17 = a1 == 0xD000000000000011 && 0x8000000193A2BEF0 == a2;
  if (v17 || (OUTLINED_FUNCTION_59_0(0xD000000000000011, 0x8000000193A2BEF0) & 1) != 0)
  {
    result = type metadata accessor for ModelCatalogExplicitRequests(0);
    v16 = result[8];
LABEL_7:
    if (*(v3 + v16 + 8))
    {
      return sub_1934948FC();
    }

    goto LABEL_22;
  }

  v18 = OUTLINED_FUNCTION_5_56() & 0xFFFFFFFFFFFFLL | 0x7069000000000000;
  v20 = a1 == v18 && a2 == v19;
  if (v20 || (OUTLINED_FUNCTION_59_0(v18, v19) & 1) != 0)
  {
    v21 = type metadata accessor for ModelCatalogExplicitRequests(0);
    sub_19367D6AC(v3 + *(v21 + 36), v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
    {
      result = sub_19344E6DC(v4, &qword_1EAE3FD18, &qword_193978DE0);
LABEL_22:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    sub_19367D71C(v4, v13, type metadata accessor for ModelCatalogSubscription);
    sub_193494798(v9, &off_1F07DC6B0, a3);
    return sub_19367D77C(v13);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_5_56() & 0xFFFFFFFFFFFFLL | 0x6269000000000000;
    v24 = a1 == v22 && a2 == v23;
    if (v24 || (OUTLINED_FUNCTION_59_0(v22, 0xE900000000000065) & 1) != 0)
    {
      result = type metadata accessor for ModelCatalogExplicitRequests(0);
      if (*(v3 + result[10]) != 2)
      {
        return sub_1934948FC();
      }

      goto LABEL_22;
    }

    sub_19349AB64();
    swift_allocError();
    v26 = v25;
    *v25 = a1;
    v25[1] = a2;
    v25[5] = type metadata accessor for ModelCatalogExplicitRequests(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26 + 2);
    sub_19367CB98(v3, boxed_opaque_existential_1Tm);
    *(v26 + 48) = 1;
    swift_willThrow();
  }
}

uint64_t sub_19367D6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19367D71C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19367D77C(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogSubscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModelCatalogExplicitRequests.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ModelCatalogExplicitRequests(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = v2[9];
  sub_19367E910();
  v8 = v2[10];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_19367E5B8();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  sub_19344E6DC(a1 + v7, &qword_1EAE3FD18, &qword_193978DE0);
  v10 = type metadata accessor for ModelCatalogSubscription(0);
  result = __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v10);
  *(a1 + v8) = 2;
  return result;
}

BOOL static ModelCatalogExplicitRequests.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModelCatalogSubscription(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD20, &qword_193978E30);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ModelCatalogExplicitRequests(0);
  OUTLINED_FUNCTION_3();
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v19 = *v17 == *v18 && v15 == v16;
    if (!v19 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    v24 = *v22 == *v23 && v20 == v21;
    if (!v24 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v25 = *(v14 + 36);
  v26 = *(v10 + 48);
  sub_19367D6AC(a1 + v25, v13);
  sub_19367D6AC(a2 + v25, &v13[v26]);
  OUTLINED_FUNCTION_31(v13);
  if (v19)
  {
    OUTLINED_FUNCTION_31(&v13[v26]);
    if (v19)
    {
      sub_19344E6DC(v13, &qword_1EAE3FD18, &qword_193978DE0);
      goto LABEL_30;
    }

LABEL_27:
    sub_19344E6DC(v13, &qword_1EAE3FD20, &qword_193978E30);
    return 0;
  }

  sub_19367D6AC(v13, v9);
  OUTLINED_FUNCTION_31(&v13[v26]);
  if (v27)
  {
    sub_19367D77C(v9);
    goto LABEL_27;
  }

  sub_19367DC04(&v13[v26], v6);
  sub_19367DE68(&qword_1EAE3FD28, &protocol conformance descriptor for ModelCatalogSubscription);
  v29 = sub_19393C550();
  sub_19367D77C(v6);
  sub_19367D77C(v9);
  sub_19344E6DC(v13, &qword_1EAE3FD18, &qword_193978DE0);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v30 = *(v14 + 40);
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 != 2)
  {
    return v32 != 2 && ((v31 ^ v32) & 1) == 0;
  }

  return v32 == 2;
}

uint64_t sub_19367DC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ModelCatalogExplicitRequests.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogSubscription(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for ModelCatalogExplicitRequests(0);
  if (*(v1 + v9[7] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v1 + v9[8] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_19367D6AC(v1 + v9[9], v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19367DC04(v8, v5);
    OUTLINED_FUNCTION_103_0();
    sub_19367DE68(&qword_1EAE3FD30, &protocol conformance descriptor for ModelCatalogSubscription);
    sub_19393C540();
    sub_19367D77C(v5);
  }

  if (*(v1 + v9[10]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

uint64_t sub_19367DE68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModelCatalogSubscription(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19367DEAC()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB40);
  __swift_project_value_buffer(v0, qword_1EAEABB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "clientIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  v11 = OUTLINED_FUNCTION_0_0(v10, "legacyRequestName");
  (v9)(v11);
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  v14 = OUTLINED_FUNCTION_0_0(v13, "subscription");
  (v9)(v14);
  v15 = (v5 + 3 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "subscribe";
  *(v16 + 1) = 9;
  v16[16] = 2;
  (v9)();
  return sub_19393C410();
}

void sub_19367E0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  while (1)
  {
    v5 = sub_19393C0E0();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        v7 = *(type metadata accessor for ModelCatalogExplicitRequests(0) + 28);
        goto LABEL_9;
      case 2:
        v7 = *(type metadata accessor for ModelCatalogExplicitRequests(0) + 32);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v7);
        sub_19393C200();
        goto LABEL_10;
      case 3:
        type metadata accessor for ModelCatalogExplicitRequests(0);
        type metadata accessor for ModelCatalogSubscription(0);
        sub_193498018();
        goto LABEL_10;
      case 4:
        v8 = type metadata accessor for ModelCatalogExplicitRequests(0);
        OUTLINED_FUNCTION_8_2(*(v8 + 40));
        sub_19393C0F0();
LABEL_10:
        v4 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_19367E1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for ModelCatalogExplicitRequests(0);
  v6 = result;
  if (*(v3 + *(result + 28) + 8))
  {
    result = sub_19393C3C0();
  }

  if (!v4)
  {
    if (*(v3 + *(v6 + 32) + 8))
    {
      sub_19393C3C0();
    }

    result = sub_19367E2EC(v3);
    if (*(v3 + *(v6 + 40)) != 2)
    {
      return sub_19393C2E0();
    }
  }

  return result;
}

uint64_t sub_19367E2EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for ModelCatalogSubscription(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModelCatalogExplicitRequests(0);
  sub_19367D6AC(a1 + *(v8 + 36), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_19367E550(v4);
  }

  sub_19367DC04(v4, v7);
  sub_193447600();
  return sub_19367D77C(v7);
}

uint64_t sub_19367E44C(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3FD38;

  return v1;
}

uint64_t sub_19367E490@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77E10 != -1)
  {
    OUTLINED_FUNCTION_0_77(&qword_1EAE77E10);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABB40);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_19367E550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD18, &qword_193978DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModelCatalogExplicitRequests.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for ModelCatalogExplicitRequests(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for ModelCatalogExplicitRequests(uint64_t a1)
{
  result = qword_1ED50D5E0;
  if (!qword_1ED50D5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelCatalogExplicitRequests.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for ModelCatalogExplicitRequests(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t ModelCatalogExplicitRequests.clientIdentifier.getter()
{
  type metadata accessor for ModelCatalogExplicitRequests(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ModelCatalogExplicitRequests.clientIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ModelCatalogExplicitRequests(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ModelCatalogExplicitRequests.legacyRequestName.getter()
{
  type metadata accessor for ModelCatalogExplicitRequests(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ModelCatalogExplicitRequests.legacyRequestName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ModelCatalogExplicitRequests(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_19367E910()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for ModelCatalogSubscription(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t ModelCatalogExplicitRequests.subscription.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for ModelCatalogExplicitRequests(v2);
  return sub_19344865C(v1 + *(v3 + 36), v0, &qword_1EAE3FD18, &qword_193978DE0);
}

uint64_t ModelCatalogExplicitRequests.subscribe.setter(char a1)
{
  result = type metadata accessor for ModelCatalogExplicitRequests(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ModelCatalogExplicitRequests.hashValue.getter()
{
  sub_19393CAB0();
  ModelCatalogExplicitRequests.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19367EAE0(uint64_t a1)
{
  sub_19393CAB0();
  ModelCatalogExplicitRequests.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_19367EB20()
{
  result = qword_1EAE3FD48;
  if (!qword_1EAE3FD48)
  {
    type metadata accessor for ModelCatalogExplicitRequests(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FD48);
  }

  return result;
}

void sub_19367EBA4(uint64_t a1)
{
  sub_19367ECD8(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_19367ECD8(319, qword_1ED5047D0, type metadata accessor for ModelCatalogSubscription);
        if (v4 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED506698, MEMORY[0x1E69E6370]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_19367ECD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19367ED48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511658);
  v4 = __swift_project_value_buffer(v3, qword_1ED511658);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.ModelCatalog.Subscriptions.Decisions.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_46 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511658);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD50, &qword_193978F30);
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

unint64_t static Library.Streams.ModelCatalog.Subscriptions.Decisions.attribute(_:)(void (*a1)(void))
{
  result = sub_19367F158(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367F1A0(void (*a1)(void))
{
  result = sub_19367F158(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367F1D0(uint64_t a1)
{
  result = sub_19367F1F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19367F1F8()
{
  result = qword_1ED506E68[0];
  if (!qword_1ED506E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED506E68);
  }

  return result;
}

_BYTE *_s9DecisionsOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ModelCatalogSubscriptionDecisions.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD58, &qword_193978FA8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19367F500(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FD58, &qword_193978FA8, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3FD58, &qword_193978FA8);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19367F500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ModelCatalogSubscriptionDecisions.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD58, &qword_193978FA8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FD58, &qword_193978FA8, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_19367F6A4(v8, a3);
  }

  return result;
}

uint64_t sub_19367F6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ModelCatalogSubscriptionDecisions.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD58, &qword_193978FA8);
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
  if (*sub_1936807D8() == a3)
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
      sub_19367F6A4(v11, v36);
      v29 = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
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

uint64_t ModelCatalogSubscriptionDecisions.serialize()()
{
  v1 = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD58, &qword_193978FA8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_19367F500(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FD58, &qword_193978FA8, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FD58, &qword_193978FA8);
  return v11;
}

id static ModelCatalogSubscriptionDecisions.columns.getter()
{
  v5 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v3 = OUTLINED_FUNCTION_3_56();
  result = sub_19343D150(v3, 0xEB00000000656D61, 2, 0, v1, 13, 0);
  if (result)
  {
    *(inited + 32) = result;
    sub_19343D230(inited);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19367FCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = a1 == OUTLINED_FUNCTION_3_56() && a2 == v7;
  if (v8 || (sub_19393CA30() & 1) != 0)
  {
    result = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
    if (!*(v3 + *(result + 28) + 8))
    {
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  v10 = a1 == 0x6E6F697369636564 && a2 == 0xE900000000000073;
  if (v10 || (sub_19393CA30() & 1) != 0)
  {
    type metadata accessor for ModelCatalogSubscriptionDecisions(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD60, &qword_193978FB0);
    return sub_1934948FC();
  }

  sub_19349AB64();
  swift_allocError();
  v12 = v11;
  *v11 = a1;
  v11[1] = a2;
  v11[5] = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12 + 2);
  sub_19367F500(v3, boxed_opaque_existential_1Tm);
  *(v12 + 48) = 1;
  swift_willThrow();
}

uint64_t ModelCatalogSubscriptionDecisions.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
  v3 = v2[5];
  sub_193657C90(a1 + v3);
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1936807D8();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v6 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v6);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[8]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static ModelCatalogSubscriptionDecisions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_8:
  v11 = *(v4 + 32);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_193680074(v12, v13);
}

uint64_t ModelCatalogSubscriptionDecisions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
  if (*(v2 + *(v4 + 28) + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  v5 = *(v2 + *(v4 + 32));

  return sub_193680224(a1, v5);
}

uint64_t sub_193680074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscription(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_19368030C(v13, v10);
        sub_19368030C(v14, v7);
        sub_19367DE68(&qword_1EAE3FD28, &protocol conformance descriptor for ModelCatalogSubscription);
        v16 = sub_19393C550();
        sub_19367D77C(v7);
        sub_19367D77C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_193680224(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for ModelCatalogSubscription(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_19367DE68(&qword_1EAE3FD30, &protocol conformance descriptor for ModelCatalogSubscription);
    do
    {
      result = sub_19393C540();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_19368030C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogSubscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_193680370()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB58);
  __swift_project_value_buffer(v0, qword_1EAEABB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "triggerName";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "decisions";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_19393C410();
}

uint64_t sub_193680538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v10 = *(type metadata accessor for ModelCatalogSubscriptionDecisions(0) + 32);
      v11 = type metadata accessor for ModelCatalogSubscription(0);
      sub_193498238(v3 + v10, a2, v11, a3, &off_1F07DC6E0);
LABEL_8:
      v5 = 0;
    }

    else if (result == 1)
    {
      type metadata accessor for ModelCatalogSubscriptionDecisions(0);
      sub_19393C200();
      goto LABEL_8;
    }
  }
}

uint64_t sub_193680614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for ModelCatalogSubscriptionDecisions(0);
  v8 = result;
  if (*(v3 + *(result + 28) + 8))
  {
    result = sub_19393C3C0();
  }

  if (!v4)
  {
    v9 = *(v3 + *(v8 + 32));
    if (*(v9 + 16))
    {
      v10 = type metadata accessor for ModelCatalogSubscription(0);
      return sub_193451CFC(v9, 2, a2, v10, a3, &off_1F07DC6E0);
    }
  }

  return result;
}

uint64_t sub_1936806D4(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3FD68;

  return v1;
}

uint64_t sub_193680718@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77F20 != -1)
  {
    OUTLINED_FUNCTION_0_78(&qword_1EAE77F20);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABB58);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t type metadata accessor for ModelCatalogSubscriptionDecisions(uint64_t a1)
{
  result = qword_1ED50E470;
  if (!qword_1ED50E470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelCatalogSubscriptionDecisions.triggerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelCatalogSubscriptionDecisions(0) + 28));

  return v1;
}

uint64_t ModelCatalogSubscriptionDecisions.triggerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ModelCatalogSubscriptionDecisions(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ModelCatalogSubscriptionDecisions.decisions.getter()
{
  type metadata accessor for ModelCatalogSubscriptionDecisions(0);
}

uint64_t ModelCatalogSubscriptionDecisions.decisions.setter()
{
  v2 = *(OUTLINED_FUNCTION_0_79() + 32);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ModelCatalogSubscriptionDecisions.hashValue.getter()
{
  sub_19393CAB0();
  ModelCatalogSubscriptionDecisions.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193680B6C(uint64_t a1)
{
  sub_19393CAB0();
  ModelCatalogSubscriptionDecisions.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193680BAC()
{
  result = qword_1EAE3FD78;
  if (!qword_1EAE3FD78)
  {
    type metadata accessor for ModelCatalogSubscriptionDecisions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FD78);
  }

  return result;
}

void sub_193680C30(uint64_t a1)
{
  sub_193680D54(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_193658134();
      if (v3 <= 0x3F)
      {
        sub_193680D54(319, &qword_1ED506D38, type metadata accessor for ModelCatalogSubscription, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_193680D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_193680DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v23 - v8;
  v10 = sub_19393BE00();
  v24 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v14 || (result = OUTLINED_FUNCTION_59_0(0x65736143657375, 0xE700000000000000), (result & 1) != 0))
  {
    v15 = v3[1];
    if (v15 == 1)
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v23[0] = *v3;
    v23[1] = v15;
    return sub_193494798(&type metadata for ModelCatalogSubscription.UseCase, &off_1F07DC6C0, a3);
  }

  else
  {
    v16 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
    if (v16 || (OUTLINED_FUNCTION_59_0(0x6574656D61726170, 0xEA00000000007372) & 1) != 0)
    {
      v23[0] = v3[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FD80, &qword_1939790E8);
      return sub_1934948FC();
    }

    else
    {
      v17 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
      if (v17 || (OUTLINED_FUNCTION_59_0(0x6974617269707865, 0xEE00657461446E6FLL) & 1) != 0)
      {
        v18 = type metadata accessor for ModelCatalogSubscription(0);
        sub_1934DE90C(v3 + *(v18 + 24), v9);
        if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
        {
          result = sub_1934DFCD4(v9);
          goto LABEL_7;
        }

        v19 = v24;
        (*(v24 + 32))(v13, v9, v10);
        sub_1934948FC();
        return (*(v19 + 8))(v13, v10);
      }

      else
      {
        sub_19349AB64();
        swift_allocError();
        v21 = v20;
        *v20 = a1;
        v20[1] = a2;
        v20[5] = type metadata accessor for ModelCatalogSubscription(0);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21 + 2);
        sub_19368030C(v3, boxed_opaque_existential_1Tm);
        *(v21 + 48) = 1;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1936810E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x696669746E656469;
  v8 = *v3;
  v7 = v3[1];
  v9 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v9 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v7)
    {
      return sub_1934948FC();
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 40) = &type metadata for ModelCatalogSubscription.UseCase;
    *(v11 + 16) = v8;
    *(v11 + 24) = v7;
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_193681210@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = result == 1701667182 && a2 == 0xE400000000000000;
  if (v7 || (v9 = result, v11 = v3[2], v10 = v3[3], result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v5)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  result = 0x65756C6176;
  v12 = v9 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v12 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  swift_allocError();
  v14 = v13;
  *v13 = v9;
  v13[1] = a2;
  v13[5] = &type metadata for ModelCatalogSubscription.Parameter;
  v15 = swift_allocObject();
  v14[2] = v15;
  v15[2] = v6;
  v15[3] = v5;
  v15[4] = v11;
  v15[5] = v10;
  *(v14 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1936813AC()
{
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABB70);
  __swift_project_value_buffer(v1, qword_1EAEABB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBB0);
  *v5 = "useCase";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_10_0();
  v8();
  v9 = OUTLINED_FUNCTION_29_1();
  *v9 = "parameters";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v8();
  v10 = (v0 + 2 * v3);
  v11 = v10 + dword_1EAEABBA8;
  *v10 = 3;
  *v11 = "expirationDate";
  *(v11 + 1) = 14;
  v11[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v8();
  return sub_19393C410();
}

void sub_193681574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v8 = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 3:
        v10 = type metadata accessor for ModelCatalogSubscription(0);
        sub_1934976E4(v3 + *(v10 + 24), 2020175477, 0xE400000000000000, a2, a3);
LABEL_10:
        v5 = 0;
        break;
      case 2:
        sub_193498238(v3 + 16, a2, &type metadata for ModelCatalogSubscription.Parameter, a3, &off_1F07DC740);
        goto LABEL_10;
      case 1:
        sub_193498018();
        goto LABEL_10;
    }
  }
}

void sub_193681690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (*(v5 + 8) != 1)
  {
    sub_193447600();
  }

  if (!v4)
  {
    v9 = *(v5 + 16);
    if (*(v9 + 16))
    {
      sub_193451CFC(v9, 2, a2, &type metadata for ModelCatalogSubscription.Parameter, a3, &off_1F07DC740);
    }

    sub_19368174C(v5, a1, a2, a3);
  }
}

uint64_t sub_19368174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_19393BE00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ModelCatalogSubscription(0);
  sub_1934DE90C(a1 + *(v14 + 24), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1934DFCD4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_193451F04(v13, 3, 2020175477, 0xE400000000000000, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_19368196C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB88);
  __swift_project_value_buffer(v0, qword_1EAEABB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19394FAC0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 104))(v4, v5);
  return sub_19393C410();
}

uint64_t sub_193681B04()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABBA0);
  __swift_project_value_buffer(v0, &qword_1EAEABBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_4_2(v3, xmmword_19394FBE0);
  *v2 = "name";
  *(v2 + 8) = 4;
  *(v2 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_10_0();
  v5();
  v6 = OUTLINED_FUNCTION_29_1();
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v5();
  return sub_19393C410();
}

uint64_t sub_193681C90()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_19393C200();
    }
  }

  return result;
}

uint64_t ModelCatalogSubscription.useCase.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_19350CB08(v2, v3);
}

uint64_t ModelCatalogSubscription.useCase.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193456418(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ModelCatalogSubscription.parameters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ModelCatalogSubscription.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ModelCatalogSubscription(0) + 24);

  return sub_1934DE90C(v3, a1);
}

uint64_t type metadata accessor for ModelCatalogSubscription(uint64_t a1)
{
  result = qword_1ED50E480;
  if (!qword_1ED50E480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelCatalogSubscription.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ModelCatalogSubscription(0) + 24);

  return sub_193681EC4(a1, v3);
}

uint64_t sub_193681EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ModelCatalogSubscription.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = xmmword_1939526A0;
  v2 = *(type metadata accessor for ModelCatalogSubscription(0) + 24);
  sub_19393BE00();
  v3 = OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_193456418(*a1, a1[1]);
  *a1 = xmmword_1939526A0;
  a1[2] = MEMORY[0x1E69E7CC0];
  sub_193442B60(a1 + v2, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_8_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t ModelCatalogSubscription.UseCase.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

IntelligencePlatformLibrary::ModelCatalogSubscription::UseCase __swiftcall ModelCatalogSubscription.UseCase.init()()
{
  v1 = v0;

  *v1 = 0;
  v1[1] = 0;
  result.identifier.value._object = v3;
  result.identifier.value._countAndFlagsBits = v2;
  return result;
}

uint64_t static ModelCatalogSubscription.UseCase.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
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

uint64_t ModelCatalogSubscription.UseCase.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t ModelCatalogSubscription.UseCase.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_19393CAB0();
  if (v1)
  {
    v2 = sub_19393CAD0();
    OUTLINED_FUNCTION_116_3(v2);
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t ModelCatalogSubscription.Parameter.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ModelCatalogSubscription.Parameter.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

IntelligencePlatformLibrary::ModelCatalogSubscription::Parameter __swiftcall ModelCatalogSubscription.Parameter.init()()
{
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t static ModelCatalogSubscription.Parameter.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
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
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t ModelCatalogSubscription.Parameter.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t ModelCatalogSubscription.Parameter.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  if (v2)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_116_3(v3);
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_193682524(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_19393CAB0();
  ModelCatalogSubscription.Parameter.hash(into:)(v4);
  return sub_19393CB00();
}

BOOL static ModelCatalogSubscription.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v64 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61[-v12];
  v14 = *a1;
  v15 = a1[1];
  v17 = *a2;
  v16 = a2[1];
  if (v15 == 1)
  {
    sub_19350CB08(*a1, 1);
    if (v16 == 1)
    {
      sub_19350CB08(v17, 1);
      goto LABEL_25;
    }

    v22 = OUTLINED_FUNCTION_3_57();
    sub_19350CB08(v22, v23);
    goto LABEL_7;
  }

  if (v16 == 1)
  {
    v18 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v18, v19);
    sub_19350CB08(v17, 1);
    v20 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v20, v21);

LABEL_7:
    v24 = OUTLINED_FUNCTION_165_1();
    sub_193456418(v24, v25);
    v26 = OUTLINED_FUNCTION_3_57();
LABEL_21:
    sub_193456418(v26, v27);
    return 0;
  }

  if (!v15)
  {
    sub_19350CB08(*a1, 0);
    v37 = 0;
    if (!v16)
    {
      sub_19350CB08(v17, 0);
      sub_19350CB08(v14, 0);
      v38 = v17;
      v39 = 0;
      goto LABEL_23;
    }

LABEL_19:
    v42 = v37;
    sub_19350CB08(v17, v16);
    sub_19350CB08(v14, v42);
    v43 = OUTLINED_FUNCTION_3_57();
    sub_193456418(v43, v44);
    goto LABEL_20;
  }

  if (!v16)
  {
    v40 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v40, v41);
    v37 = v15;
    goto LABEL_19;
  }

  v28 = v14 == v17 && v15 == v16;
  if (!v28)
  {
    v62 = sub_19393CA30();
    v29 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v29, v30);
    v31 = OUTLINED_FUNCTION_3_57();
    sub_19350CB08(v31, v32);
    v33 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v33, v34);
    v35 = OUTLINED_FUNCTION_3_57();
    sub_193456418(v35, v36);
    if (v62)
    {
      goto LABEL_24;
    }

LABEL_20:

    v26 = OUTLINED_FUNCTION_165_1();
    goto LABEL_21;
  }

  sub_19350CB08(*a1, a1[1]);
  v45 = OUTLINED_FUNCTION_165_1();
  sub_19350CB08(v45, v46);
  v47 = OUTLINED_FUNCTION_165_1();
  sub_19350CB08(v47, v48);
  v38 = OUTLINED_FUNCTION_165_1();
LABEL_23:
  sub_193456418(v38, v39);
LABEL_24:

LABEL_25:
  v49 = OUTLINED_FUNCTION_165_1();
  sub_193456418(v49, v50);
  if ((sub_1934ECC9C(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v51 = *(type metadata accessor for ModelCatalogSubscription(0) + 24);
  v52 = *(v11 + 48);
  sub_1934DE90C(a1 + v51, v13);
  sub_1934DE90C(a2 + v51, &v13[v52]);
  OUTLINED_FUNCTION_31(v13);
  if (v28)
  {
    OUTLINED_FUNCTION_31(&v13[v52]);
    if (v28)
    {
      sub_193442B60(v13, &qword_1EAE3A9E8, &qword_19394F800);
      return 1;
    }

    goto LABEL_34;
  }

  sub_1934DE90C(v13, v10);
  OUTLINED_FUNCTION_31(&v13[v52]);
  if (v53)
  {
    (*(v64 + 8))(v10, v4);
LABEL_34:
    sub_193442B60(v13, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  v56 = v63;
  v55 = v64;
  (*(v64 + 32))(v63, &v13[v52], v4);
  OUTLINED_FUNCTION_0_80();
  sub_193682D34(v57, v58, MEMORY[0x1E6969550]);
  v59 = sub_19393C550();
  v60 = *(v55 + 8);
  v60(v56, v4);
  v60(v10, v4);
  sub_193442B60(v13, &qword_1EAE3A9E8, &qword_19394F800);
  return (v59 & 1) != 0;
}

uint64_t ModelCatalogSubscription.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = *(v2 + 8);
  if (v13 == 1 || (sub_19393CAD0(), !v13))
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  sub_1934ED064(a1, *(v2 + 16));
  v14 = type metadata accessor for ModelCatalogSubscription(0);
  sub_1934DE90C(v2 + *(v14 + 24), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v6 + 32))(v9, v12, v4);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_80();
  sub_193682D34(v16, v17, MEMORY[0x1E6969540]);
  sub_19393C540();
  return (*(v6 + 8))(v9, v4);
}

uint64_t ModelCatalogSubscription.hashValue.getter()
{
  sub_19393CAB0();
  ModelCatalogSubscription.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193682BFC(uint64_t a1)
{
  sub_19393CAB0();
  ModelCatalogSubscription.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193682C40()
{
  result = qword_1EAE3FDB8;
  if (!qword_1EAE3FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDB8);
  }

  return result;
}

unint64_t sub_193682C98()
{
  result = qword_1EAE3FDC0;
  if (!qword_1EAE3FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDC0);
  }

  return result;
}

uint64_t sub_193682D34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_193682DA4(uint64_t a1)
{
  sub_1935AB250(319, qword_1ED506DA0, &type metadata for ModelCatalogSubscription.UseCase, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1935AB250(319, &qword_1ED506D40, &type metadata for ModelCatalogSubscription.Parameter, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_19349D140(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_193682E88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *_s17AppleIntelligenceOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193682FC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5116B8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5116B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Availability.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_47 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5116B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDC8, &qword_193979378);
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

unint64_t static Library.Streams.AppleIntelligence.Availability.attribute(_:)(void (*a1)(void))
{
  result = sub_1936833D4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19368341C(void (*a1)(void))
{
  result = sub_1936833D4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19368344C(uint64_t a1)
{
  result = sub_193683474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193683474()
{
  result = qword_1ED508060;
  if (!qword_1ED508060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED508060);
  }

  return result;
}

_BYTE *_s12AvailabilityOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceAvailability.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AppleIntelligenceAvailability(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDD0, &qword_1939793F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19368377C(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FDD0, &qword_1939793F0, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3FDD0, &qword_1939793F0);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19368377C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceAvailability(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceAvailability.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDD0, &qword_1939793F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FDD0, &qword_1939793F0, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_193683920(v8, a3);
  }

  return result;
}

uint64_t sub_193683920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceAvailability(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceAvailability.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDD0, &qword_1939793F0);
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
  if (*sub_193686720() == a3)
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
      sub_193683920(v11, v36);
      v29 = type metadata accessor for AppleIntelligenceAvailability(0);
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

uint64_t AppleIntelligenceAvailability.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceAvailability(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FDD0, &qword_1939793F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_19368377C(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FDD0, &qword_1939793F0, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FDD0, &qword_1939793F0);
  return v11;
}

id static AppleIntelligenceAvailability.columns.getter()
{
  v87 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v11, v12, v13, v14, v0, 12, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v26[2].n128_u64[0] = sub_19393C850();
  v36 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v37, v38, v39, v40, v26, 12, 0);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_7_2(result);
  v41 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  v51[2].n128_u64[0] = sub_19393C850();
  v61 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD00000000000001ELL, 0x8000000193A2C0F0, 3, 0, v51, 0, 2);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  v62 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v72 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  v72[2].n128_u64[0] = sub_19393C850();
  v82 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v83, v84, v85, v86, v72, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v87;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_193684088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_38();
  v17 = a1 == 0xD000000000000018 && v16 == a2;
  if (!v17 && (OUTLINED_FUNCTION_59_0(0xD000000000000018, v16) & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v25 = a1 == 0xD000000000000021 && v24 == a2;
    if (v25 || (OUTLINED_FUNCTION_59_0(0xD000000000000021, v24) & 1) != 0)
    {
      result = type metadata accessor for AppleIntelligenceAvailability(0);
      v19 = result[8];
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_38();
    v27 = a1 == 0xD000000000000020 && v26 == a2;
    if (v27 || (OUTLINED_FUNCTION_59_0(0xD000000000000020, v26) & 1) != 0)
    {
      result = type metadata accessor for AppleIntelligenceAvailability(0);
      v28 = result[9];
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v31 = a1 == 0xD000000000000022 && v30 == a2;
      if (!v31 && (OUTLINED_FUNCTION_59_0(0xD000000000000022, v30) & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        v33 = a1 == 0xD00000000000001ELL && v32 == a2;
        if (v33 || (OUTLINED_FUNCTION_59_0(0xD00000000000001ELL, v32) & 1) != 0)
        {
          v34 = type metadata accessor for AppleIntelligenceAvailability(0);
          sub_1934DE90C(v3 + *(v34 + 44), v9);
          if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
          {
            result = sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
            goto LABEL_8;
          }

          v35 = v42;
          (*(v42 + 32))(v15, v9, v10);
          sub_1934948FC();
          return (*(v35 + 8))(v15, v10);
        }

        v36 = a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073;
        if (v36 || (OUTLINED_FUNCTION_59_0(0x65676175676E616CLL, 0xE900000000000073) & 1) != 0)
        {
          v43 = *(v3 + *(type metadata accessor for AppleIntelligenceAvailability(0) + 48));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
        }

        else
        {
          v37 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
          if (!v37 && (OUTLINED_FUNCTION_59_0(0x6E6F69676572, 0xE600000000000000) & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_11();
            swift_allocError();
            v40 = v39;
            *v39 = a1;
            v39[1] = a2;
            v39[5] = type metadata accessor for AppleIntelligenceAvailability(0);
            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v40 + 2);
            sub_19368377C(v3, boxed_opaque_existential_1Tm);
            *(v40 + 48) = 1;
            swift_willThrow();
          }

          result = type metadata accessor for AppleIntelligenceAvailability(0);
          v38 = v3 + result[13];
          if (*(v38 + 8))
          {
            goto LABEL_8;
          }

          v43 = *v38;
        }

        return sub_1934948FC();
      }

      result = type metadata accessor for AppleIntelligenceAvailability(0);
      v28 = result[10];
    }

    v29 = *(v3 + v28);
    if (v29 == 2)
    {
      goto LABEL_8;
    }

    LOBYTE(v43) = v29 & 1;
    return sub_1934948FC();
  }

  result = type metadata accessor for AppleIntelligenceAvailability(0);
  v19 = result[7];
LABEL_7:
  v20 = v3 + v19;
  v21 = *(v3 + v19);
  if (v21 == 3)
  {
LABEL_8:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v22 = *(v20 + 16);
  v23 = *(v20 + 8);
  LOWORD(v43) = v21;
  v44 = v23;
  v45 = v22 & 0x1FF;
  return sub_193494798(&type metadata for AppleIntelligenceAvailability.UseCaseInfo, &off_1F07DCA60, a3);
}

void sub_1936844D4(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  OUTLINED_FUNCTION_38();
  v8 = v6 == 0xD000000000000010 && v7 == a1;
  if (v8 || (v9 = v6, v10 = v2[1], v11 = *(v2 + 1), v17 = v2[16], v12 = v2[17], (OUTLINED_FUNCTION_5_5(0xD000000000000010, v7) & 1) != 0))
  {
    if (v5 == 2)
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v14 = v9 == 0xD000000000000022 && v13 == a1;
  if (v14 || (OUTLINED_FUNCTION_5_5(0xD000000000000022, v13) & 1) != 0)
  {
    if (v10 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v15 = v9 == 0x7473696C74696177 && a1 == 0xEE00737574617453;
  if (v15 || (OUTLINED_FUNCTION_5_5(0x7473696C74696177, 0xEE00737574617453) & 1) != 0)
  {
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  *v16 = v9;
  *(v16 + 8) = a1;
  *(v16 + 40) = &type metadata for AppleIntelligenceAvailability.UseCaseInfo;
  *(v16 + 16) = v5;
  *(v16 + 17) = v10;
  *(v16 + 24) = v11;
  *(v16 + 32) = v17;
  *(v16 + 33) = v12;
  *(v16 + 48) = 1;
  swift_willThrow();
}

uint64_t AppleIntelligenceAvailability.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceAvailability(0);
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  sub_1936878B0(v5);
  v6 = a1 + v2[8];
  sub_1936869A4(v6);
  v12 = v2[9];
  j__OUTLINED_FUNCTION_7_9();
  v7 = v2[10];
  j__OUTLINED_FUNCTION_7_9();
  v8 = v2[11];
  sub_19349C79C();
  v9 = a1 + v2[13];
  sub_193686CEC(v9);
  *a1 = *sub_193686720();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *v5 = xmmword_19396F4D0;
  *(v5 + 8) = 0;
  *v6 = xmmword_19396F4D0;
  *(v6 + 8) = 0;
  *(a1 + v12) = 2;
  *(a1 + v7) = 2;
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  result = __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v10);
  *(a1 + v2[12]) = MEMORY[0x1E69E7CC0];
  *v9 = 0;
  v9[8] = 1;
  return result;
}

uint64_t static AppleIntelligenceAvailability.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_19393BE00();
  OUTLINED_FUNCTION_9_17();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_6_48();
  if (v17)
  {
    if (v16 != 3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    if (v17)
    {
      return 0;
    }

    v19 = OUTLINED_FUNCTION_5_57(v18);
    if ((OUTLINED_FUNCTION_10_47(v19, v20, &type metadata for AppleIntelligenceAvailability.UseCaseInfo, v19) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_6_48();
  if (v17)
  {
    if (v21 != 3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    if (v22)
    {
      return 0;
    }

    v24 = OUTLINED_FUNCTION_5_57(v23);
    if ((OUTLINED_FUNCTION_10_47(v24, v25, &type metadata for AppleIntelligenceAvailability.UseCaseInfo, v24) & 1) == 0)
    {
      return 0;
    }
  }

  v26 = v15[9];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    return 0;
  }

  v29 = v15[10];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    return 0;
  }

  v32 = v15[11];
  v33 = *(v14 + 48);
  sub_1934DE90C(a1 + v32, v3);
  sub_1934DE90C(a2 + v32, v3 + v33);
  OUTLINED_FUNCTION_5_3(v3);
  if (v17)
  {
    OUTLINED_FUNCTION_5_3(v3 + v33);
    if (v17)
    {
      sub_193442B60(v3, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_33;
    }

LABEL_31:
    sub_193442B60(v3, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v3, v13);
  OUTLINED_FUNCTION_5_3(v3 + v33);
  if (v34)
  {
    (*(v7 + 8))(v13, v2);
    goto LABEL_31;
  }

  (*(v7 + 32))(v10, v3 + v33, v2);
  sub_1934DF3E8(&qword_1EAE3A848, MEMORY[0x1E6969550]);
  v35 = sub_19393C550();
  v36 = *(v7 + 8);
  v36(v10, v2);
  v36(v13, v2);
  sub_193442B60(v3, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  if (sub_19344FC94(*(a1 + v15[12]), *(a2 + v15[12])))
  {
    v37 = v15[13];
    v38 = (a1 + v37);
    v39 = *(a1 + v37 + 8);
    v40 = (a2 + v37);
    v41 = *(a2 + v37 + 8);
    if (v39)
    {
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v42 = *v40;
      v46[3] = *v38;
      v47 = 0;
      if (v41)
      {
        return 0;
      }

      v46[0] = v42;
      v43 = sub_1936853C8();
      if ((OUTLINED_FUNCTION_10_47(v43, v44, &type metadata for AppleIntelligenceAvailability.Region, v43) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t AppleIntelligenceAvailability.hash(into:)(uint64_t a1)
{
  sub_19393BE00();
  OUTLINED_FUNCTION_9_17();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = OUTLINED_FUNCTION_13_39();
  v12 = *(v1 + v11[7]);
  if (v12 == 3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_60(v12);
    sub_193685470();
    sub_19393C540();
  }

  v13 = *(v1 + v11[8]);
  if (v13 == 3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_60(v13);
    sub_193685470();
    sub_19393C540();
  }

  if (*(v1 + v11[9]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (*(v1 + v11[10]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  sub_1934DE90C(v1 + v11[11], v3);
  OUTLINED_FUNCTION_5_3(v3);
  if (v14)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v6 + 32))(v9, v3, v2);
    OUTLINED_FUNCTION_103_0();
    sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v6 + 8))(v9, v2);
  }

  sub_1934D11C8(a1, *(v1 + v11[12]));
  v15 = v1 + v11[13];
  if (*(v15 + 8) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v17[1] = *v15;
  OUTLINED_FUNCTION_103_0();
  sub_1936856C0();
  return sub_19393C540();
}

uint64_t AppleIntelligenceAvailability.Region.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

char *static AppleIntelligenceAvailability.Region.allCases.getter()
{
  v0 = sub_1936854C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v4 = OUTLINED_FUNCTION_1_60(v1);
    v0 = sub_1936854C4(v4, v5, v6, v7);
  }

  *(v0 + 2) = v2 + 1;
  *&v0[8 * v2 + 32] = 0;
  return v0;
}

uint64_t AppleIntelligenceAvailability.Region.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_2_9();
  if (v4 != v2 || v3 != 0xE700000000000000)
  {
    sub_19393CA30();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  result = 0;
  v4 = 1;
  switch(v2)
  {
    case 0:
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    default:
      v4 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

char *static AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.allCases.getter()
{
  v0 = sub_1936855C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_1_60(v1);
    v0 = sub_1936855C4(v16, v17, v18, v19);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = OUTLINED_FUNCTION_12_33(v1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v0 = sub_1936855C4((v1 > 1), v2 + 3, 1, v0);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v20 = OUTLINED_FUNCTION_1_60(v10);
    v0 = sub_1936855C4(v20, v21, v22, v23);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v0 = OUTLINED_FUNCTION_12_33(v13, v0);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  result = 0x6F4A746559746F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x64656E696F4ALL;
      break;
    case 3:
      result = 0x6465756575716544;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OUTLINED_FUNCTION_2_9();
  v8 = a1 == v6 && v7 == 0xE700000000000000;
  if (v8 || (OUTLINED_FUNCTION_0_9(v6, 0xE700000000000000) & 1) != 0)
  {

    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v12 = a1 == 0x6F4A746559746F4ELL && a2 == 0xEC00000064656E69;
  if (v12 || (OUTLINED_FUNCTION_0_9(0x6F4A746559746F4ELL, 0xEC00000064656E69) & 1) != 0)
  {

    v10 = 0;
LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  v13 = a1 == 0xD000000000000010 && 0x8000000193A2C1B0 == a2;
  if (v13 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, 0x8000000193A2C1B0) & 1) != 0)
  {

    v10 = 1;
    goto LABEL_13;
  }

  v14 = a1 == 0x64656E696F4ALL && a2 == 0xE600000000000000;
  if (v14 || (OUTLINED_FUNCTION_0_9(0x64656E696F4ALL, 0xE600000000000000) & 1) != 0)
  {

    v11 = 1;
    v10 = 2;
  }

  else if (a1 == 0x6465756575716544 && a2 == 0xE800000000000000)
  {

    v11 = 1;
    v10 = 3;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9(0x6465756575716544, 0xE800000000000000);

    v10 = 3;
    if ((v11 & 1) == 0)
    {
      v10 = 0;
    }
  }

LABEL_14:
  *a3 = v10;
  *(a3 + 8) = v11 & 1;
  *(a3 + 9) = 0;
  return result;
}

unint64_t sub_1936853C8()
{
  result = qword_1EAE3FDD8;
  if (!qword_1EAE3FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDD8);
  }

  return result;
}

unint64_t sub_19368541C()
{
  result = qword_1EAE3FDE0;
  if (!qword_1EAE3FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDE0);
  }

  return result;
}

unint64_t sub_193685470()
{
  result = qword_1EAE3FDE8;
  if (!qword_1EAE3FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDE8);
  }

  return result;
}

char *sub_1936854C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE10, &qword_193979510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1936855C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE08, &qword_193979508);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1936856C0()
{
  result = qword_1EAE3FDF0;
  if (!qword_1EAE3FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDF0);
  }

  return result;
}

unint64_t sub_193685718()
{
  result = qword_1EAE3FDF8;
  if (!qword_1EAE3FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FDF8);
  }

  return result;
}

unint64_t sub_193685770()
{
  result = qword_1EAE3FE00;
  if (!qword_1EAE3FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FE00);
  }

  return result;
}

void sub_1936857C4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA86A0);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_193952700;
  v6 = v5 + v4 + dword_1EAEA86D8;
  *(v5 + v4) = 1;
  *v6 = "appleIntelligenceUseCase";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v5 + v4 + v2);
  *v10 = 2;
  v11 = OUTLINED_FUNCTION_0_0(v9, "appleIntelligenceDiffusionUseCase");
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v5 + v4 + 2 * v2);
  *v13 = 3;
  v14 = OUTLINED_FUNCTION_0_0(v12, "isAppleIntelligenceToggleEnabled");
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v5 + v4 + 3 * v2);
  *v16 = 4;
  v17 = OUTLINED_FUNCTION_0_0(v15, "hasEngagedWithAppleIntelligenceCFU");
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v5 + v4 + 4 * v2);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_0_0(v18, "datePostedAppleIntelligenceCFU");
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v5 + v4 + 5 * v2);
  *v22 = 6;
  v23 = OUTLINED_FUNCTION_0_0(v21, "languages");
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v5 + v4 + 6 * v2);
  *v25 = 7;
  *v24 = "region";
  *(v24 + 8) = 6;
  *(v24 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193685A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v8 = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
      case 2:
        type metadata accessor for AppleIntelligenceAvailability(0);
        sub_193498018();
        goto LABEL_12;
      case 3:
        v11 = *(type metadata accessor for AppleIntelligenceAvailability(0) + 36);
        goto LABEL_8;
      case 4:
        v11 = *(type metadata accessor for AppleIntelligenceAvailability(0) + 40);
LABEL_8:
        OUTLINED_FUNCTION_8_2(v11);
        sub_19393C0F0();
        goto LABEL_12;
      case 5:
        v10 = type metadata accessor for AppleIntelligenceAvailability(0);
        sub_1934976E4(v3 + *(v10 + 44), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_12;
      case 6:
        v12 = type metadata accessor for AppleIntelligenceAvailability(0);
        OUTLINED_FUNCTION_8_2(*(v12 + 48));
        sub_19393C1B0();
        goto LABEL_12;
      case 7:
        type metadata accessor for AppleIntelligenceAvailability(0);
        sub_1934982A8();
LABEL_12:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193685BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = type metadata accessor for AppleIntelligenceAvailability(0);
  OUTLINED_FUNCTION_15_41();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_59();
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    v5 = v4;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_15_41();
    if (v11 || (OUTLINED_FUNCTION_3_59(), OUTLINED_FUNCTION_78_1(), sub_193447600(), (v5 = v4) == 0))
    {
      if (*(v6 + v10[9]) == 2 || (OUTLINED_FUNCTION_15_11(), sub_19393C2E0(), (v5 = v4) == 0))
      {
        if (*(v6 + v10[10]) == 2 || (OUTLINED_FUNCTION_15_11(), sub_19393C2E0(), (v5 = v4) == 0))
        {
          sub_193685D64(v6, a1, a2, a3);
          if (!v5)
          {
            if (*(*(v6 + v10[12]) + 16))
            {
              OUTLINED_FUNCTION_15_11();
              sub_19393C380();
            }

            if ((*(v6 + v10[13] + 8) & 1) == 0)
            {
              OUTLINED_FUNCTION_78_1();
              sub_193447324(v12, v13, v14, v15, v16, v17);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_193685D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_19393BE00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppleIntelligenceAvailability(0);
  sub_1934DE90C(a1 + *(v14 + 44), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1934DFCD4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_193451F04(v13, 5, 2020175477, 0xE400000000000000, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_193685F84()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABBB8);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19394FAC0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 0;
  *v4 = "RegionUnknown";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 104))(v4, v5);
  return sub_19393C410();
}

void sub_193686108()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA86B8);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBB0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + qword_1EAEA86F0;
  *v6 = 1;
  *v7 = "isDeviceEligible";
  *(v7 + 8) = 16;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  (v11)(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v13 = 2;
  *v12 = "shouldBlockAppleIntelligenceAssets";
  *(v12 + 8) = 34;
  *(v12 + 16) = 2;
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v15 = 3;
  *v14 = "waitlistStatus";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936862D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 3)
    {
      sub_1934982A8();
    }

    else if (v4 == 2 || v4 == 1)
    {
      sub_19393C0F0();
    }
  }
}

uint64_t sub_193686388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 1);
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 17);
  if (*v3 != 2)
  {
    result = sub_19393C2E0();
  }

  if (!v4)
  {
    if (v7 != 2)
    {
      result = sub_19393C2E0();
    }

    if ((v10 & 1) == 0)
    {
      v12 = v8;
      v13 = v9 & 1;
      return sub_193447324(&v12, 3, a2, &type metadata for AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus, a3, &off_1F07DCAF8);
    }
  }

  return result;
}

void sub_1936864CC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA86D0);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBD0;
  v6 = v5 + v4 + qword_1EAEA8708;
  *(v5 + v4) = 0;
  *v6 = "WaitlistStatusUnknown";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v5 + v4 + v2);
  *v10 = 1;
  *v9 = "WaitlistStatusNotYetJoined";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v11 = OUTLINED_FUNCTION_3_1(v5 + v4 + 2 * v2);
  *v12 = 2;
  *v11 = "WaitlistStatusJoinedOrDequeued";
  *(v11 + 8) = 30;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v13 = OUTLINED_FUNCTION_3_1(v5 + v4 + 3 * v2);
  *v14 = 3;
  *v13 = "WaitlistStatusJoined";
  *(v13 + 8) = 20;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v15 = OUTLINED_FUNCTION_3_1(v5 + v4 + 4 * v2);
  *v16 = 4;
  *v15 = "WaitlistStatusDequeued";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceAvailability.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AppleIntelligenceAvailability(v2);
  return sub_1934488AC(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceAvailability(uint64_t a1)
{
  result = qword_1ED50F3E0;
  if (!qword_1ED50F3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceAvailability.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AppleIntelligenceAvailability(v2);
  return sub_1934488AC(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

double AppleIntelligenceAvailability.appleIntelligenceUseCase.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceAvailability(v0);
  *&result = OUTLINED_FUNCTION_7_37(*(v1 + 28)).n128_u64[0];
  return result;
}

uint64_t AppleIntelligenceAvailability.appleIntelligenceUseCase.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  result = type metadata accessor for AppleIntelligenceAvailability(0);
  v6 = v1 + *(result + 28);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

double sub_1936869A4@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_19396F4D0;
  *(a1 + 16) = 0;
  return result;
}

double AppleIntelligenceAvailability.appleIntelligenceDiffusionUseCase.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceAvailability(v0);
  *&result = OUTLINED_FUNCTION_7_37(*(v1 + 32)).n128_u64[0];
  return result;
}

uint64_t AppleIntelligenceAvailability.appleIntelligenceDiffusionUseCase.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  result = type metadata accessor for AppleIntelligenceAvailability(0);
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t AppleIntelligenceAvailability.isAppleIntelligenceToggleEnabled.setter(char a1)
{
  result = type metadata accessor for AppleIntelligenceAvailability(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AppleIntelligenceAvailability.hasEngagedWithAppleIntelligenceCFU.setter(char a1)
{
  result = type metadata accessor for AppleIntelligenceAvailability(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AppleIntelligenceAvailability.datePostedAppleIntelligenceCFU.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AppleIntelligenceAvailability(v2);
  return sub_1934488AC(v1 + *(v3 + 44), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t AppleIntelligenceAvailability.languages.getter()
{
  type metadata accessor for AppleIntelligenceAvailability(0);
}

uint64_t AppleIntelligenceAvailability.languages.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_58() + 48);

  *(v1 + v2) = v0;
  return result;
}

uint64_t AppleIntelligenceAvailability.region.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AppleIntelligenceAvailability(v2);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t AppleIntelligenceAvailability.region.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for AppleIntelligenceAvailability(0);
  v5 = v1 + *(result + 52);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_193686DC0@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceAvailability.Region.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193686DE8@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceAvailability.Region.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193686E18()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceAvailability.Region.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_193686E68()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_193686F54(uint64_t a1)
{
  sub_19393CAB0();
  v1 = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t sub_193686FAC(uint64_t a1)
{
  sub_19393CAB0();
  v1 = AppleIntelligenceAvailability.Region.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

void AppleIntelligenceAvailability.UseCaseInfo.waitlistStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.waitlistStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return result;
}

void AppleIntelligenceAvailability.UseCaseInfo.init()(uint64_t a1@<X8>)
{
  *a1 = 514;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t sub_193687178@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936871A0@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static AppleIntelligenceAvailability.UseCaseInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[17];
  v5 = *a2;
  v6 = a2[1];
  if (v2 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v5 == 2 || ((v5 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v6 == 2 || ((v6 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v4)
  {
    if ((a2[17] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[17])
    {
      return 0;
    }

    v8 = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
    if (v8 != AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter())
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[17];
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  v4 = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
  return MEMORY[0x193B18030](v4);
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_2_61();
  sub_19393CAB0();
  AppleIntelligenceAvailability.UseCaseInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193687424()
{
  OUTLINED_FUNCTION_2_61();
  sub_19393CAB0();
  AppleIntelligenceAvailability.UseCaseInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceAvailability.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceAvailability.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936874B0(uint64_t a1)
{
  sub_19393CAB0();
  AppleIntelligenceAvailability.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193687554()
{
  result = qword_1EAE3FE58;
  if (!qword_1EAE3FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FE58);
  }

  return result;
}

unint64_t sub_1936875B0()
{
  result = qword_1EAE3FE60;
  if (!qword_1EAE3FE60)
  {
    type metadata accessor for AppleIntelligenceAvailability(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FE60);
  }

  return result;
}

uint64_t sub_193687634(uint64_t a1)
{
  sub_19349D140(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    OUTLINED_FUNCTION_0_81(v4, &qword_1ED506D28, &type metadata for AppleIntelligenceAvailability.UseCaseInfo);
    if (v6 > 0x3F)
    {
      return v4;
    }

    OUTLINED_FUNCTION_0_81(v4, &qword_1ED506698, MEMORY[0x1E69E6370]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_193687794(319, qword_1ED507ED8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v2 = v8;
      if (v9 <= 0x3F)
      {
        OUTLINED_FUNCTION_0_81(v8, &qword_1ED506D20, &type metadata for AppleIntelligenceAvailability.Region);
        v2 = v10;
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_193687794(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for AppleIntelligenceAvailability.UseCaseInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[18])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAvailability.UseCaseInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1936878D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511718);
  v4 = __swift_project_value_buffer(v3, qword_1ED511718);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.PlanGenerationTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_193687AFC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193687B34(void (*a1)(void))
{
  result = sub_193687AFC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193687B9C(uint64_t a1)
{
  result = sub_193687BC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193687BC4()
{
  result = qword_1ED5068B0;
  if (!qword_1ED5068B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068B0);
  }

  return result;
}

_BYTE *_s23PlanGenerationTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowPlanGenerationTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v23 = v1;
  v24 = v2;
  v3 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  OUTLINED_FUNCTION_6_49();
  sub_19368AFF8(v0, v14, v18);
  sub_1934470C8(v14, v10, v17);
  sub_19393C080();
  sub_193687E74();
  sub_19393C250();
  (*(v5 + 8))(v9, v3);
  sub_19344E6DC(v17, &qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_193687E74()
{
  result = qword_1EAE3FE78;
  if (!qword_1EAE3FE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3FE70, &qword_193979978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FE78);
  }

  return result;
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;

  sub_19393C060();
  sub_193687E74();
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_21_35();
    return sub_193689208(v9, a3, v11);
  }

  return result;
}

void static IntelligenceFlowPlanGenerationTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v33 = v3;
  v34 = v2;
  v32 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_6();
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  if (*sub_1936945BC() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    (*(v14 + 16))(v18, v21, v12);
    sub_193450688(v10, v8);
    sub_193687E74();
    sub_19393C280();
    (*(v14 + 8))(v21, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_21_35();
      v24 = v33;
      sub_193689208(v1, v33, v25);
      v26 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
      v27 = *(v26 + 20);
      sub_19344E6DC(v24 + v27, &qword_1EAE3A9E8, &qword_19394F800);
      v28 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v29 + 16))(v24 + v27, v32, v28);
      __swift_storeEnumTagSinglePayload(v24 + v27, 0, 1, v28);
      v30 = *(v26 + 24);
      sub_19344E6DC(v24 + v30, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v34, v24 + v30);
    }
  }

  else
  {
    v22 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
    *v23 = v6;
    *(v23 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.serialize()()
{
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  OUTLINED_FUNCTION_6_49();
  sub_19368AFF8(v0, v5, v9);
  sub_1934470C8(v5, v1, v8);
  sub_193687E74();
  sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FE70, &qword_193979978);
  return OUTLINED_FUNCTION_13_0();
}

void sub_193688448()
{
  OUTLINED_FUNCTION_26();
  v130 = v1;
  v131 = v0;
  v3 = v2;
  v5 = v4;
  v129 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE98, &qword_193979990);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v122 = &v120 - v9;
  v121 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v120 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE90, &unk_193979E60);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v120 - v15;
  v124 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v123 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE88, &qword_193979988);
  OUTLINED_FUNCTION_47(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v120 - v21;
  v127 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v126 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v25);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v120 - v27;
  v29 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE80, &qword_193979980);
  OUTLINED_FUNCTION_47(v34);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v120 - v36;
  v38 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  v42 = v41 - v40;
  v44 = v5 == v43 && v3 == v39;
  if (v44 || (sub_19393CA30() & 1) != 0)
  {
    v45 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v46 = OUTLINED_FUNCTION_35_3(*(v45 + 28));
    sub_193448758(v46, v37, v47, v48);
    v49 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v49, v50, v38);
    if (!v44)
    {
      v55 = OUTLINED_FUNCTION_54_15();
      sub_193689208(v55, v42, v56);
      sub_193494798(v38, &off_1F07DCF10, v129);
      v57 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata;
      v58 = v42;
LABEL_12:
      sub_19368B43C(v58, v57);
      goto LABEL_13;
    }

    v51 = &qword_1EAE3FE80;
    v52 = &qword_193979980;
    goto LABEL_9;
  }

  v59 = v5 == 0x6D617473656D6974 && v3 == 0xE900000000000070;
  if (v59 || (OUTLINED_FUNCTION_10_33(0x6D617473656D6974, 0xE900000000000070) & 1) != 0)
  {
    v60 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v61 = OUTLINED_FUNCTION_35_3(*(v60 + 32));
    sub_193448758(v61, v28, v62, v63);
    OUTLINED_FUNCTION_6_3(v28, 1, v29);
    if (!v44)
    {
      sub_193689208(v28, v33, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v29, &off_1F07BD958, v129);
      v57 = type metadata accessor for MonotonicTimestamp;
      v58 = v33;
      goto LABEL_12;
    }

    v51 = &qword_1EAE3B498;
    v52 = &unk_193959120;
    v53 = v28;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v65 = v5 == 0xD000000000000010 && v64 == v3;
  if (v65 || (OUTLINED_FUNCTION_10_33(0xD000000000000010, v64) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    OUTLINED_FUNCTION_6_36();
    if (v44)
    {
      goto LABEL_11;
    }

    v66 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGRequestContext;
    v67 = &off_1F07DD020;
LABEL_29:
    sub_193494798(v66, v67, v129);
    goto LABEL_13;
  }

  v68 = v5 == 0x74706D6F72506770 && v3 == 0xED00003172656954;
  if (v68 || (OUTLINED_FUNCTION_10_33(0x74706D6F72506770, 0xED00003172656954) & 1) != 0)
  {
    v69 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v70 = OUTLINED_FUNCTION_35_3(*(v69 + 40));
    v37 = v128;
    sub_193448758(v70, v128, v71, v72);
    v73 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v73, v74, v127);
    if (!v44)
    {
      v75 = OUTLINED_FUNCTION_54_15();
      v76 = v126;
      sub_193689208(v75, v126, v77);
      OUTLINED_FUNCTION_13_0();
      sub_193494798(v78, v79, v80);
      v81 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1;
LABEL_38:
      v57 = v81;
      v58 = v76;
      goto LABEL_12;
    }

    v51 = &qword_1EAE3FE88;
    v52 = &qword_193979988;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v83 = v5 == 0xD000000000000015 && v82 == v3;
  if (v83 || (OUTLINED_FUNCTION_10_33(0xD000000000000015, v82) & 1) != 0)
  {
    v84 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v85 = OUTLINED_FUNCTION_35_3(*(v84 + 44));
    v37 = v125;
    sub_193448758(v85, v125, v86, v87);
    v88 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v88, v89, v124);
    if (!v44)
    {
      v90 = OUTLINED_FUNCTION_54_15();
      v76 = v123;
      sub_193689208(v90, v123, v91);
      OUTLINED_FUNCTION_13_0();
      sub_193494798(v92, v93, v94);
      v81 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1;
      goto LABEL_38;
    }

    v51 = &qword_1EAE3FE90;
    v52 = &unk_193979E60;
LABEL_9:
    v53 = v37;
LABEL_10:
    sub_19344E6DC(v53, v51, v52);
LABEL_11:
    v54 = v129;
    *v129 = 0u;
    *(v54 + 1) = 0u;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_38();
  v96 = v5 == 0xD000000000000017 && v95 == v3;
  if (v96 || (OUTLINED_FUNCTION_10_33(0xD000000000000017, v95) & 1) != 0)
  {
    v97 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v98 = OUTLINED_FUNCTION_35_3(*(v97 + 48));
    v37 = v122;
    sub_193448758(v98, v122, v99, v100);
    v101 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v101, v102, v121);
    if (!v44)
    {
      v103 = OUTLINED_FUNCTION_54_15();
      v76 = v120;
      sub_193689208(v103, v120, v104);
      OUTLINED_FUNCTION_13_0();
      sub_193494798(v105, v106, v107);
      v81 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext;
      goto LABEL_38;
    }

    v51 = &qword_1EAE3FE98;
    v52 = &qword_193979990;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v109 = v5 == 0xD000000000000019 && v108 == v3;
  if (v109 || (OUTLINED_FUNCTION_10_33(0xD000000000000019, v108) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    OUTLINED_FUNCTION_6_36();
    if (v44)
    {
      goto LABEL_11;
    }

    v66 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext;
    v67 = &off_1F07DD060;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_38();
  v111 = v5 == 0xD00000000000001ELL && v110 == v3;
  if (v111 || (OUTLINED_FUNCTION_10_33(0xD00000000000001ELL, v110) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    OUTLINED_FUNCTION_6_36();
    if (v44)
    {
      goto LABEL_11;
    }

    v66 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext;
    v67 = &off_1F07DD070;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_38();
  v113 = v5 == 0xD000000000000015 && v112 == v3;
  if (v113 || (OUTLINED_FUNCTION_10_33(0xD000000000000015, v112) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);

    sub_193494798(&type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanContext, &off_1F07DD080, v129);
  }

  else
  {
    v114 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v114);
    v116 = v115;
    *v115 = v5;
    v115[1] = v3;
    v117 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    OUTLINED_FUNCTION_126(v117);
    OUTLINED_FUNCTION_6_49();
    sub_19368AFF8(v131, v118, v119);
    *(v116 + 48) = 1;
    swift_willThrow();
  }

LABEL_13:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193688D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6E69616D6F64;
  v8 = *v3;
  v7 = v3[1];
  v9 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v9 || (v11 = v3[2], v12 = *(v3 + 24), result = OUTLINED_FUNCTION_42_9(0x6E69616D6F64, 0xE600000000000000, a1), (result & 1) != 0))
  {
    if (v7)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  v13 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v13 || (result = OUTLINED_FUNCTION_42_9(1701080931, 0xE400000000000000, a1), (result & 1) != 0))
  {
    if ((v12 & 1) == 0)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v14 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
  v16 = v15;
  *v15 = a1;
  v15[1] = a2;
  v15[5] = &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError;
  OUTLINED_FUNCTION_184();
  v17 = swift_allocObject();
  v16[2] = v17;
  *(v17 + 16) = v8;
  *(v17 + 24) = v7;
  *(v17 + 32) = v11;
  *(v17 + 40) = v12;
  *(v16 + 48) = 1;
  swift_willThrow();
}

void sub_193688EDC()
{
  OUTLINED_FUNCTION_26();
  v39 = v1;
  v5 = v4;
  v7 = v6;
  v38 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_61_4();
  v15 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_98_6();
  v18 = v7 == 0x7365757165526669 && v5 == 0xEB00000000644974;
  if (v18 || (OUTLINED_FUNCTION_0_18(0x7365757165526669, 0xEB00000000644974) & 1) != 0)
  {
    sub_193448758(v39, v0, &qword_1EAE3BCA0, &unk_19395C320);
    v19 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v19, v20, v15);
    if (!v18)
    {
      OUTLINED_FUNCTION_1_61();
      sub_193689208(v0, v3, v22);
      sub_193494798(v15, &off_1F07C3F90, v38);
      OUTLINED_FUNCTION_0_82();
      v24 = v3;
LABEL_11:
      sub_19368B43C(v24, v23);
      goto LABEL_12;
    }

    v21 = v0;
  }

  else
  {
    v25 = v7 == 0x53676E6974736F70 && v5 == 0xED000064496E6170;
    if (v25 || (OUTLINED_FUNCTION_0_18(0x53676E6974736F70, 0xED000064496E6170) & 1) != 0)
    {
      if ((*(v39 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0) + 20) + 8) & 1) == 0)
      {
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v26 = v7 == 0x6C6379436E616C70 && v5 == 0xEB00000000644965;
    if (!v26 && (OUTLINED_FUNCTION_0_18(0x6C6379436E616C70, 0xEB00000000644965) & 1) == 0)
    {
      v32 = sub_19349AB64();
      v33 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v32);
      v35 = OUTLINED_FUNCTION_63_12(v33, v34);
      v36 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v35);
      v37 = OUTLINED_FUNCTION_126(v36);
      sub_19368AFF8(v39, v37, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata);
      OUTLINED_FUNCTION_74_10();

      goto LABEL_12;
    }

    v27 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
    v28 = OUTLINED_FUNCTION_35_3(*(v27 + 24));
    sub_193448758(v28, v13, v29, v30);
    OUTLINED_FUNCTION_6_3(v13, 1, v15);
    if (!v18)
    {
      OUTLINED_FUNCTION_1_61();
      sub_193689208(v13, v2, v31);
      sub_193494798(v15, &off_1F07C3F90, v38);
      OUTLINED_FUNCTION_0_82();
      v24 = v2;
      goto LABEL_11;
    }

    v21 = v13;
  }

  sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  *v38 = 0u;
  *(v38 + 16) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193689208(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void sub_19368927C()
{
  OUTLINED_FUNCTION_26();
  v5 = v0;
  v7 = v6;
  OUTLINED_FUNCTION_7_38();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v10);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v12 = v1 == v4 && v7 == 0xE600000000000000;
  if (v12 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v5, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v12)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_1_61();
      v16 = OUTLINED_FUNCTION_56_15(v13, v14, v15);
      OUTLINED_FUNCTION_80_0(v16, v17, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_82();
      sub_19368B43C(v3, v18);
    }
  }

  else
  {
    v19 = sub_19349AB64();
    v20 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v19);
    v22 = OUTLINED_FUNCTION_51_0(v20, v21);
    v23 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(v22);
    OUTLINED_FUNCTION_152(v23);
    OUTLINED_FUNCTION_22_31();
    sub_19368AFF8(v5, v24, v25);
    OUTLINED_FUNCTION_65_1();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193689410()
{
  OUTLINED_FUNCTION_184_0();
  v35 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_98_6();
  v15 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_61_4();
  v18 = v8 == 0x6E6F73616572 && v6 == 0xE600000000000000;
  if (!v18 && (OUTLINED_FUNCTION_14_30(0x6E6F73616572, 0xE600000000000000) & 1) == 0)
  {
    v19 = v8 == 0x64496B6E696CLL && v6 == 0xE600000000000000;
    if (v19 || (OUTLINED_FUNCTION_14_30(0x64496B6E696CLL, 0xE600000000000000) & 1) != 0)
    {
      v20 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
      sub_193448758(v1 + *(v20 + 20), v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v3, 1, v15);
      if (!v18)
      {
        OUTLINED_FUNCTION_1_61();
        sub_193689208(v3, v0, v22);
        sub_193494798(v15, &off_1F07C3F90, v35);
        OUTLINED_FUNCTION_0_82();
        v24 = v0;
LABEL_19:
        sub_19368B43C(v24, v23);
        goto LABEL_18;
      }

      v21 = v3;
    }

    else
    {
      v25 = v8 == 0xD000000000000011 && 0x8000000193A197E0 == v6;
      if (!v25 && (OUTLINED_FUNCTION_14_30(0xD000000000000011, 0x8000000193A197E0) & 1) == 0)
      {
        v30 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
        *v31 = v8;
        v31[1] = v6;
        v32 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
        OUTLINED_FUNCTION_126(v32);
        OUTLINED_FUNCTION_25_31();
        sub_19368AFF8(v1, v33, v34);
        OUTLINED_FUNCTION_74_10();

        goto LABEL_18;
      }

      v26 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
      sub_193448758(v1 + *(v26 + 24), v13, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v13, 1, v15);
      if (!v18)
      {
        OUTLINED_FUNCTION_1_61();
        OUTLINED_FUNCTION_56_15(v27, v28, v29);
        sub_193494798(v15, &off_1F07C3F90, v35);
        OUTLINED_FUNCTION_0_82();
        v24 = v2;
        goto LABEL_19;
      }

      v21 = v13;
    }

    sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_17;
  }

  if (*(v1 + 9))
  {
LABEL_17:
    *v35 = 0u;
    *(v35 + 16) = 0u;
    goto LABEL_18;
  }

  sub_1934948FC();
LABEL_18:
  OUTLINED_FUNCTION_183();
}

void sub_193689760()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_66_19();
  OUTLINED_FUNCTION_7_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  v12 = v2 == v5 && v1 == 0xE600000000000000;
  if (!v12)
  {
    v10 = OUTLINED_FUNCTION_59_0(v5, 0xE600000000000000);
    if ((v10 & 1) == 0)
    {
      v19 = v2 == 0x746E496C65646F6DLL && v1 == 0xEE00656361667265;
      if (!v19 && (OUTLINED_FUNCTION_59_0(0x746E496C65646F6DLL, 0xEE00656361667265) & 1) == 0)
      {
        v20 = sub_19349AB64();
        v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
        v23 = OUTLINED_FUNCTION_19_0(v21, v22);
        v24 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(v23);
        OUTLINED_FUNCTION_152(v24);
        v25 = OUTLINED_FUNCTION_141();
        sub_19368AFF8(v25, v26, v27);
        OUTLINED_FUNCTION_65_1();

        goto LABEL_10;
      }

      if ((*(v0 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0) + 20) + 9) & 1) == 0)
      {
        OUTLINED_FUNCTION_51_17();
        sub_1934948FC();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_94_9(v10, v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v12)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_61();
  v16 = OUTLINED_FUNCTION_56_15(v13, v14, v15);
  OUTLINED_FUNCTION_80_0(v16, v17, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_82();
  sub_19368B43C(v4, v18);
LABEL_10:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368995C()
{
  OUTLINED_FUNCTION_184_0();
  v38 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_98_6();
  v15 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_61_4();
  v18 = v8 == 0x64496B6E696CLL && v6 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_0_18(0x64496B6E696CLL, 0xE600000000000000) & 1) != 0)
  {
    sub_193448758(v1, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v15);
    if (!v18)
    {
      OUTLINED_FUNCTION_1_61();
      sub_193689208(v3, v0, v20);
      sub_193494798(v15, &off_1F07C3F90, v38);
      OUTLINED_FUNCTION_0_82();
      v22 = v0;
LABEL_11:
      sub_19368B43C(v22, v21);
      goto LABEL_12;
    }

    v19 = v3;
  }

  else
  {
    v23 = v8 == 0xD000000000000011 && 0x8000000193A197E0 == v6;
    if (!v23 && (OUTLINED_FUNCTION_0_18(0xD000000000000011, 0x8000000193A197E0) & 1) == 0)
    {
      v26 = OUTLINED_FUNCTION_33_20();
      v28 = v8 == v26 && v6 == v27;
      if (!v28 && (OUTLINED_FUNCTION_0_18(v26, v27) & 1) == 0)
      {
        v30 = sub_19349AB64();
        v31 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
        v33 = OUTLINED_FUNCTION_63_12(v31, v32);
        v34 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v33);
        OUTLINED_FUNCTION_126(v34);
        v35 = OUTLINED_FUNCTION_141();
        sub_19368AFF8(v35, v36, v37);
        OUTLINED_FUNCTION_74_10();

        goto LABEL_12;
      }

      type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
      OUTLINED_FUNCTION_65_15();
      if (v29)
      {
        OUTLINED_FUNCTION_64_14(v29);
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v24 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
    sub_193448758(v1 + *(v24 + 20), v13, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v13, 1, v15);
    if (!v18)
    {
      OUTLINED_FUNCTION_1_61();
      sub_193689208(v13, v2, v25);
      sub_193494798(v15, &off_1F07C3F90, v38);
      OUTLINED_FUNCTION_0_82();
      v22 = v2;
      goto LABEL_11;
    }

    v19 = v13;
  }

  sub_19344E6DC(v19, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  *v38 = 0u;
  *(v38 + 16) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_183();
}

uint64_t sub_193689C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x65686374614D7369;
  v7 = *v3;
  v8 = a1 == 0x65686374614D7369 && a2 == 0xE900000000000064;
  if (v8 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v7 == 2)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    v10 = sub_19349AB64();
    v11 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v10);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesMatchMetadata;
    *(v12 + 16) = v7;
    OUTLINED_FUNCTION_23_2(v11, v12);
  }

  return result;
}

void sub_193689D80(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_61_17();
  v10 = v10 && a2 == v9;
  if (v10 || (v11 = *(v3 + 32), v12 = *(v3 + 40), v46 = v11, (OUTLINED_FUNCTION_42_9(v8, v9, a1) & 1) != 0))
  {
    if (v4 != 1)
    {
      OUTLINED_FUNCTION_60_17();
      OUTLINED_FUNCTION_59_16(v13, &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, &off_1F07DCF00, v14, v15, v16, v17, v18, v41);
      sub_193494798(v19, v20, v21);
      goto LABEL_17;
    }
  }

  else
  {
    v22 = OUTLINED_FUNCTION_33_20();
    if (a1 != v22 || a2 != v23)
    {
      v22 = OUTLINED_FUNCTION_42_9(v22, v23, a1);
      if ((v22 & 1) == 0)
      {
        v31 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v31);
        *v32 = a1;
        v32[1] = a2;
        v32[5] = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceFailed;
        v33 = swift_allocObject();
        OUTLINED_FUNCTION_34_29(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);

        OUTLINED_FUNCTION_76_13();
        goto LABEL_17;
      }
    }

    if (v12)
    {
      OUTLINED_FUNCTION_59_16(v22, MEMORY[0x1E69E6158], v24, v25, v26, v27, v28, v29, v46);
      sub_1934948FC();
      goto LABEL_17;
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
LABEL_17:
  OUTLINED_FUNCTION_71_17();
}

void sub_193689EE8()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_66_19();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v12 = v5 == 0xD000000000000011 && v11 == v1;
  if (!v12)
  {
    v10 = OUTLINED_FUNCTION_59_0(0xD000000000000011, v11);
    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v20 = v5 == 0xD000000000000010 && v19 == v1;
      if (v20 || (v21 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_59_0(v21, v22) & 1) != 0))
      {
        if (*(v0 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0) + 20)) != 3)
        {
          OUTLINED_FUNCTION_51_17();
          sub_193494798(v23, v24, v25);
          goto LABEL_10;
        }
      }

      else
      {
        v26 = OUTLINED_FUNCTION_40_22();
        v28 = v5 == v26 && v1 == v27;
        if (!v28 && (OUTLINED_FUNCTION_59_0(v26, v27) & 1) == 0)
        {
          v30 = sub_19349AB64();
          v31 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
          v33 = OUTLINED_FUNCTION_19_0(v31, v32);
          v34 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v33);
          OUTLINED_FUNCTION_152(v34);
          OUTLINED_FUNCTION_24_33();
          sub_19368AFF8(v0, v35, v36);
          OUTLINED_FUNCTION_65_1();

          goto LABEL_10;
        }

        type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
        OUTLINED_FUNCTION_65_15();
        if (v29)
        {
          OUTLINED_FUNCTION_64_14(v29);
          OUTLINED_FUNCTION_51_17();
          sub_1934948FC();
          goto LABEL_10;
        }
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_94_9(v10, v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v12)
  {
    sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_61();
  v16 = OUTLINED_FUNCTION_56_15(v13, v14, v15);
  OUTLINED_FUNCTION_80_0(v16, v17, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_82();
  sub_19368B43C(v3, v18);
LABEL_10:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368A118(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_61_17();
  v10 = v10 && a2 == v9;
  if (v10 || (v11 = *(v3 + 32), v12 = *(v3 + 40), v46 = v11, (OUTLINED_FUNCTION_42_9(v8, v9, a1) & 1) != 0))
  {
    if (v4 != 1)
    {
      OUTLINED_FUNCTION_60_17();
      OUTLINED_FUNCTION_59_16(v13, &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, &off_1F07DCF00, v14, v15, v16, v17, v18, v41);
      sub_193494798(v19, v20, v21);
      goto LABEL_17;
    }
  }

  else
  {
    v22 = OUTLINED_FUNCTION_40_22();
    if (a1 != v22 || a2 != v23)
    {
      v22 = OUTLINED_FUNCTION_42_9(v22, v23, a1);
      if ((v22 & 1) == 0)
      {
        v31 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v31);
        *v32 = a1;
        v32[1] = a2;
        v32[5] = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed;
        v33 = swift_allocObject();
        OUTLINED_FUNCTION_34_29(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);

        OUTLINED_FUNCTION_76_13();
        goto LABEL_17;
      }
    }

    if (v12)
    {
      OUTLINED_FUNCTION_59_16(v22, MEMORY[0x1E69E6158], v24, v25, v26, v27, v28, v29, v46);
      sub_1934948FC();
      goto LABEL_17;
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
LABEL_17:
  OUTLINED_FUNCTION_71_17();
}

uint64_t objectdestroy_5Tm_0()
{
  if (*(v0 + 24) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_19368A2C8()
{
  OUTLINED_FUNCTION_26();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v10);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v13 = v7 == 0xD000000000000011 && v12 == v5;
  if (v13 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v3, v1, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v13)
    {
      sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_1_61();
      v17 = OUTLINED_FUNCTION_56_15(v14, v15, v16);
      OUTLINED_FUNCTION_80_0(v17, v18, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_82();
      sub_19368B43C(v2, v19);
    }
  }

  else
  {
    v20 = sub_19349AB64();
    v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
    v23 = OUTLINED_FUNCTION_51_0(v21, v22);
    v24 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(v23);
    OUTLINED_FUNCTION_152(v24);
    OUTLINED_FUNCTION_23_34();
    sub_19368AFF8(v3, v25, v26);
    OUTLINED_FUNCTION_65_1();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368A4D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_111_1();
  v11 = *v3;
  v10 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = a1 == v7 && a2 == v8;
  if (v14 || (v15 = v9, (OUTLINED_FUNCTION_10_33(v7, v8) & 1) != 0))
  {
    if (v10 == 1)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      sub_193494798(&type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, &off_1F07DCF00, a3);
    }
  }

  else
  {
    v16 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
    v18 = v17;
    *v17 = a1;
    v17[1] = a2;
    v17[5] = v15;
    OUTLINED_FUNCTION_184();
    v19 = swift_allocObject();
    v18[2] = v19;
    *(v19 + 16) = v11;
    *(v19 + 24) = v10;
    *(v19 + 32) = v12;
    *(v19 + 40) = v13;
    *(v18 + 48) = 1;
    swift_willThrow();

    sub_19350CB08(v11, v10);
  }

  OUTLINED_FUNCTION_71_17();
}

uint64_t objectdestroy_2Tm_2()
{
  if (*(v0 + 24) != 1)
  {
  }

  OUTLINED_FUNCTION_184();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_19368A660()
{
  OUTLINED_FUNCTION_184_0();
  v36 = v1;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = *v0;
  OUTLINED_FUNCTION_38();
  v18 = v5 == 0xD000000000000010 && v17 == v3;
  if (!v18)
  {
    v19 = OUTLINED_FUNCTION_27_0();
    if ((OUTLINED_FUNCTION_5_5(v19, v20) & 1) == 0)
    {
      v25 = OUTLINED_FUNCTION_24_3();
      v26 = v18 && v3 == 0xE500000000000000;
      if (!v26 && (OUTLINED_FUNCTION_5_5(v25, 0xE500000000000000) & 1) == 0)
      {
        v29 = OUTLINED_FUNCTION_22_16();
        if (v18 && v3 == 0xE600000000000000)
        {
          if (v16 >> 62 != 2)
          {
            goto LABEL_24;
          }
        }

        else if ((OUTLINED_FUNCTION_5_5(v29, 0xE600000000000000) & 1) == 0 || (v16 & 0xC000000000000000) != 0x8000000000000000)
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_31_4((v16 & 0x3FFFFFFFFFFFFFFFLL));
        sub_193494798(&type metadata for IntelligenceFlowPlanGenerationTelemetry.PGRequestFailed, &off_1F07DCF40, v36);
        goto LABEL_25;
      }

      if (v16 >> 62 == 1)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_25_31();
        sub_19368AFF8(v27, v10, v28);
        sub_193494798(v6, &off_1F07DCF30, v36);
        v23 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded;
        v24 = v10;
        goto LABEL_8;
      }

LABEL_24:
      v31 = sub_19349AB64();
      v32 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v31);
      OUTLINED_FUNCTION_64(v32, v33);
      *(v34 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGRequestContext;
      *(v34 + 16) = v16;
      OUTLINED_FUNCTION_23_2(v35, v34);

      goto LABEL_25;
    }
  }

  if (v16 >> 62)
  {
    goto LABEL_24;
  }

  swift_projectBox();
  OUTLINED_FUNCTION_22_31();
  sub_19368AFF8(v21, v15, v22);
  sub_193494798(v11, &off_1F07DCF20, v36);
  v23 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted;
  v24 = v15;
LABEL_8:
  sub_19368B43C(v24, v23);
LABEL_25:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368A8D0()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  OUTLINED_FUNCTION_7_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  v12 = v0 == v3 && v5 == 0xE600000000000000;
  if (!v12)
  {
    v10 = OUTLINED_FUNCTION_59_0(v3, 0xE600000000000000);
    if ((v10 & 1) == 0)
    {
      v19 = v0 == 0x74706D6F7270 && v5 == 0xE600000000000000;
      if (!v19 && (OUTLINED_FUNCTION_59_0(0x74706D6F7270, 0xE600000000000000) & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_52_17();
        v22 = v12 && v5 == 0xE700000000000000;
        if (!v22 && (OUTLINED_FUNCTION_59_0(v21, 0xE700000000000000) & 1) == 0)
        {
          v23 = sub_19349AB64();
          v24 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v23);
          v26 = OUTLINED_FUNCTION_19_0(v24, v25);
          v27 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v26);
          OUTLINED_FUNCTION_152(v27);
          v28 = OUTLINED_FUNCTION_141();
          sub_19368AFF8(v28, v29, v30);
          OUTLINED_FUNCTION_65_1();

          goto LABEL_17;
        }
      }

      type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(0);
      OUTLINED_FUNCTION_65_15();
      if (v20)
      {
        OUTLINED_FUNCTION_64_14(v20);
        OUTLINED_FUNCTION_51_17();
        sub_1934948FC();
        goto LABEL_17;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_94_9(v10, v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v12)
  {
    sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1_61();
  v16 = OUTLINED_FUNCTION_56_15(v13, v14, v15);
  OUTLINED_FUNCTION_80_0(v16, v17, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_82();
  sub_19368B43C(v2, v18);
LABEL_17:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368AAE0()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_66_19();
  OUTLINED_FUNCTION_7_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v11 = v1 == v4 && v0 == 0xE600000000000000;
  if (!v11)
  {
    v9 = OUTLINED_FUNCTION_59_0(v4, 0xE600000000000000);
    if ((v9 & 1) == 0)
    {
      v18 = v1 == 0x655274706D6F7270 && v0 == 0xEE0065736E6F7073;
      if (!v18 && (OUTLINED_FUNCTION_59_0(0x655274706D6F7270, 0xEE0065736E6F7073) & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_52_17();
        v21 = v11 && v0 == 0xE700000000000000;
        if (!v21 && (OUTLINED_FUNCTION_59_0(v20, 0xE700000000000000) & 1) == 0)
        {
          v22 = sub_19349AB64();
          v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
          v25 = OUTLINED_FUNCTION_19_0(v23, v24);
          v26 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v25);
          OUTLINED_FUNCTION_152(v26);
          v27 = OUTLINED_FUNCTION_141();
          sub_19368AFF8(v27, v28, v29);
          OUTLINED_FUNCTION_65_1();

          goto LABEL_17;
        }
      }

      type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(0);
      OUTLINED_FUNCTION_65_15();
      if (v19)
      {
        OUTLINED_FUNCTION_64_14(v19);
        OUTLINED_FUNCTION_51_17();
        sub_1934948FC();
        goto LABEL_17;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_94_9(v9, v10, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v11)
  {
    sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1_61();
  v15 = OUTLINED_FUNCTION_56_15(v12, v13, v14);
  OUTLINED_FUNCTION_80_0(v15, v16, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_82();
  sub_19368B43C(v3, v17);
LABEL_17:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368ACF4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v14 = v4 == 0xD000000000000010 && v13 == v1;
  if (v14 || (v15 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_0_18(v15, v16) & 1) != 0))
  {
    v17 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0);
    v18 = &off_1F07DCF50;
    v19 = v6;
LABEL_7:
    sub_193494798(v17, v18, v19);
    goto LABEL_8;
  }

  v20 = v4 == 0x6465646E65 && v1 == 0xE500000000000000;
  if (v20 || (OUTLINED_FUNCTION_0_18(0x6465646E65, 0xE500000000000000) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
    v17 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
    v18 = &off_1F07DCF60;
    v19 = v6;
    goto LABEL_7;
  }

  v21 = v4 == 0x64656C696166 && v1 == 0xE600000000000000;
  if (v21 || (OUTLINED_FUNCTION_0_18(0x64656C696166, 0xE600000000000000) & 1) != 0)
  {
    v22 = v0 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 24);
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 32);
    v26 = *(v22 + 40);
    v27 = *(v22 + 24);
    v40 = *v22;
    v41 = v23;
    v42 = v24;
    v43 = v27;
    v44 = v25;
    v45 = v26;
    sub_19350CB08(v40, v23);

    sub_193494798(&type metadata for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceFailed, &off_1F07DCF80, v6);
    sub_193456418(v40, v41);
  }

  else
  {
    v28 = v4 == 0x64496563617274 && v1 == 0xE700000000000000;
    if (v28 || (OUTLINED_FUNCTION_0_18(0x64496563617274, 0xE700000000000000) & 1) != 0)
    {
      v29 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
      sub_193448758(v0 + *(v29 + 28), v10, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v10, 1, v11);
      if (v14)
      {
        sub_19344E6DC(v10, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_104();
      }

      else
      {
        OUTLINED_FUNCTION_1_61();
        v31 = sub_193689208(v10, v2, v30);
        OUTLINED_FUNCTION_80_0(v31, v32, &off_1F07C3F90);
        OUTLINED_FUNCTION_0_82();
        sub_19368B43C(v2, v33);
      }
    }

    else
    {
      v34 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
      *v35 = v4;
      v35[1] = v1;
      v36 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
      OUTLINED_FUNCTION_152(v36);
      v37 = OUTLINED_FUNCTION_141();
      sub_19368AFF8(v37, v38, v39);
      OUTLINED_FUNCTION_65_1();
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19368AFF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void sub_19368B06C()
{
  v5 = OUTLINED_FUNCTION_38_25();
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = *v0;
  OUTLINED_FUNCTION_38();
  v13 = v2 == v4 && v12 == v1;
  if (!v13)
  {
    v14 = OUTLINED_FUNCTION_27_0();
    if ((OUTLINED_FUNCTION_5_5(v14, v15) & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_24_3();
      v19 = v13 && v1 == 0xE500000000000000;
      if (!v19 && (OUTLINED_FUNCTION_5_5(v18, 0xE500000000000000) & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_22_16();
        if (v13 && v1 == 0xE600000000000000)
        {
          if (v11 >> 62 != 2)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if ((OUTLINED_FUNCTION_5_5(v22, 0xE600000000000000) & 1) == 0)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_14_8();
          if (!v13)
          {
            goto LABEL_25;
          }
        }

        OUTLINED_FUNCTION_31_4((v11 & 0x3FFFFFFFFFFFFFFFLL));
        v16 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed;
        v17 = &off_1F07DCFB0;
        goto LABEL_8;
      }

      if (v11 >> 62 == 1)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_24_33();
        sub_19368AFF8(v20, v10, v21);
        sub_193494798(v6, &off_1F07DCFA0, v3);
        sub_19368B43C(v10, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
        goto LABEL_26;
      }

LABEL_25:
      v24 = sub_19349AB64();
      v25 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v24);
      OUTLINED_FUNCTION_64(v25, v26);
      *(v27 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext;
      *(v27 + 16) = v11;
      OUTLINED_FUNCTION_23_2(v28, v27);

      goto LABEL_26;
    }
  }

  if (v11 >> 62)
  {
    goto LABEL_25;
  }

  v16 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesStarted;
  v17 = &off_1F07DCF90;
LABEL_8:
  sub_193494798(v16, v17, v3);
LABEL_26:
  OUTLINED_FUNCTION_72_0();
}

void sub_19368B264()
{
  v5 = OUTLINED_FUNCTION_38_25();
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = *v0;
  OUTLINED_FUNCTION_38();
  v13 = v2 == v4 && v12 == v1;
  if (!v13)
  {
    v14 = OUTLINED_FUNCTION_27_0();
    if ((OUTLINED_FUNCTION_5_5(v14, v15) & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_24_3();
      v19 = v13 && v1 == 0xE500000000000000;
      if (!v19 && (OUTLINED_FUNCTION_5_5(v18, 0xE500000000000000) & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_22_16();
        if (v13 && v1 == 0xE600000000000000)
        {
          if (v11 >> 62 != 2)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if ((OUTLINED_FUNCTION_5_5(v22, 0xE600000000000000) & 1) == 0)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_14_8();
          if (!v13)
          {
            goto LABEL_25;
          }
        }

        OUTLINED_FUNCTION_31_4((v11 & 0x3FFFFFFFFFFFFFFFLL));
        v16 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanFailed;
        v17 = &off_1F07DCFE0;
        goto LABEL_8;
      }

      if (v11 >> 62 == 1)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_23_34();
        sub_19368AFF8(v20, v10, v21);
        sub_193494798(v6, &off_1F07DCFD0, v3);
        sub_19368B43C(v10, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
        goto LABEL_26;
      }

LABEL_25:
      v24 = sub_19349AB64();
      v25 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v24);
      OUTLINED_FUNCTION_64(v25, v26);
      *(v27 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext;
      *(v27 + 16) = v11;
      OUTLINED_FUNCTION_23_2(v28, v27);

      goto LABEL_26;
    }
  }

  if (v11 >> 62)
  {
    goto LABEL_25;
  }

  v16 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanStarted;
  v17 = &off_1F07DCFC0;
LABEL_8:
  sub_193494798(v16, v17, v3);
LABEL_26:
  OUTLINED_FUNCTION_72_0();
}

uint64_t sub_19368B43C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_19368B4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = a1 == 0xD000000000000010 && 0x8000000193A1E8E0 == a2;
  if (v7 || (v8 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5(v8, v9) & 1) != 0))
  {
    if (!(v6 >> 62))
    {
      v10 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted;
      v11 = &off_1F07DCFF0;
      return sub_193494798(v10, v11, a3);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_24_3();
    v14 = v7 && a2 == 0xE500000000000000;
    if (!v14 && (OUTLINED_FUNCTION_5_5(v13, 0xE500000000000000) & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_22_16();
      if (v7 && a2 == 0xE600000000000000)
      {
        if (v6 >> 62 != 2)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v15, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v7)
        {
          goto LABEL_25;
        }
      }

      OUTLINED_FUNCTION_31_4((v6 & 0x3FFFFFFFFFFFFFFFLL));
      v10 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanFailed;
      v11 = &off_1F07DD010;
      return sub_193494798(v10, v11, a3);
    }

    if (v6 >> 62 == 1)
    {
      v10 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanEnded;
      v11 = &off_1F07DD000;
      return sub_193494798(v10, v11, a3);
    }
  }

LABEL_25:
  v17 = sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
  OUTLINED_FUNCTION_64(v18, v19);
  *(v20 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanContext;
  *(v20 + 16) = v6;
  OUTLINED_FUNCTION_23_2(v21, v20);
}

uint64_t OUTLINED_FUNCTION_63_12(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

IntelligencePlatformLibrary::IntelligenceFlowPlanGenerationTelemetry::PGGeneratePlanStarted IntelligenceFlowPlanGenerationTelemetry.init()@<W0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193694738();
  v6 = v2[8];
  v7 = sub_1935092CC();
  v8 = v2[9];
  sub_19343E518(v7);
  v9 = v2[10];
  sub_19369499C();
  v10 = v2[11];
  sub_193694AB8();
  v11 = v2[12];
  v12 = sub_193694BD4();
  v32 = v2[13];
  sub_19343E518(v12);
  v33 = v2[14];
  sub_19343E51C((a1 + v33));
  *a1 = *sub_1936945BC();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v13 = sub_19393BE00();
  OUTLINED_FUNCTION_16_1(a1 + v3, v14, v15, v13);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3FE80, &qword_193979980);
  v16 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  OUTLINED_FUNCTION_16_1(a1 + v5, v17, v18, v16);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  v19 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_16_1(a1 + v6, v20, v21, v19);
  sub_1934354B4(*(a1 + v8));
  *(a1 + v8) = 0xF000000000000007;
  sub_19344E6DC(a1 + v9, &qword_1EAE3FE88, &qword_193979988);
  v22 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(0);
  OUTLINED_FUNCTION_16_1(a1 + v9, v23, v24, v22);
  sub_19344E6DC(a1 + v10, &qword_1EAE3FE90, &unk_193979E60);
  v25 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(0);
  OUTLINED_FUNCTION_16_1(a1 + v10, v26, v27, v25);
  sub_19344E6DC(a1 + v11, &qword_1EAE3FE98, &qword_193979990);
  v28 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
  OUTLINED_FUNCTION_16_1(a1 + v11, v29, v30, v28);
  sub_1934354B4(*(a1 + v32));
  *(a1 + v32) = 0xF000000000000007;
  sub_1934354B4(*(a1 + v33));
  *(a1 + v33) = 0xF000000000000007;
  result.exists.value = sub_19368EB78(&v34).exists.value;
  *(a1 + v2[15]) = v34;
  return result;
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v122 = a2;
  v123 = a1;
  v108 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  v103 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE98, &qword_193979990);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_53_1();
  v104 = v7;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FEA0, &qword_193979B70);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  v107 = v9;
  v10 = OUTLINED_FUNCTION_22_2();
  v113 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v10);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_289();
  v105 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE90, &unk_193979E60);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_53_1();
  v109 = v15;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FEA8, &qword_193979B78);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  v112 = v17;
  v18 = OUTLINED_FUNCTION_22_2();
  v117 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v18);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_289();
  v110 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE88, &qword_193979988);
  OUTLINED_FUNCTION_47(v21);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_53_1();
  v114 = v23;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FEB0, &qword_193979B80);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_53_1();
  v116 = v25;
  v26 = OUTLINED_FUNCTION_22_2();
  v120 = type metadata accessor for MonotonicTimestamp(v26);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_289();
  v118 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v29);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_53_1();
  v119 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v103 - v34;
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE80, &qword_193979980);
  OUTLINED_FUNCTION_47(v37);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v103 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FEB8, &qword_193979B88) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v103 - v43;
  v121 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  v45 = *(v121 + 28);
  v46 = *(v41 + 56);
  sub_1934486F8(v123 + v45, v44, &qword_1EAE3FE80, &qword_193979980);
  v47 = v122 + v45;
  v48 = v122;
  sub_1934486F8(v47, &v44[v46], &qword_1EAE3FE80, &qword_193979980);
  OUTLINED_FUNCTION_31(v44);
  if (!v49)
  {
    sub_1934486F8(v44, v40, &qword_1EAE3FE80, &qword_193979980);
    OUTLINED_FUNCTION_31(&v44[v46]);
    if (!v49)
    {
      OUTLINED_FUNCTION_18_36();
      sub_19368C6A8(&v44[v46], v2, v53);
      OUTLINED_FUNCTION_17_34();
      sub_19368E3D0(v54, v55, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata);
      v56 = sub_19393C550();
      sub_19368E328();
      sub_19368E328();
      sub_19344E6DC(v44, &qword_1EAE3FE80, &qword_193979980);
      if ((v56 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_19_43();
    sub_19368E328();
LABEL_9:
    v50 = &qword_1EAE3FEB8;
    v51 = &qword_193979B88;
    v52 = v44;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_31(&v44[v46]);
  if (!v49)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v44, &qword_1EAE3FE80, &qword_193979980);
LABEL_11:
  v57 = v121;
  v58 = *(v121 + 32);
  v59 = *(v32 + 48);
  v60 = &qword_1EAE3B498;
  v61 = v123;
  sub_1934486F8(v123 + v58, v35, &qword_1EAE3B498, &unk_193959120);
  sub_1934486F8(v48 + v58, &v35[v59], &qword_1EAE3B498, &unk_193959120);
  v62 = v120;
  OUTLINED_FUNCTION_38_0(v35, 1);
  if (v49)
  {
    OUTLINED_FUNCTION_31(&v35[v59]);
    if (v49)
    {
      sub_19344E6DC(v35, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_24;
    }
  }

  else
  {
    sub_1934486F8(v35, v119, &qword_1EAE3B498, &unk_193959120);
    OUTLINED_FUNCTION_31(&v35[v59]);
    if (!v63)
    {
      OUTLINED_FUNCTION_9_57();
      v66 = &v35[v59];
      v59 = v118;
      sub_19368C6A8(v66, v118, v67);
      OUTLINED_FUNCTION_7_39();
      sub_19368E3D0(v68, v69, &protocol conformance descriptor for MonotonicTimestamp);
      v60 = sub_19393C550();
      v62 = type metadata accessor for MonotonicTimestamp;
      sub_19368E328();
      sub_19368E328();
      sub_19344E6DC(v35, &qword_1EAE3B498, &unk_193959120);
      if ((v60 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      OUTLINED_FUNCTION_24_34();
      if (v49)
      {
        OUTLINED_FUNCTION_48_20();
        if (v59)
        {
LABEL_30:
          sub_1934354B4(v60);
          sub_1934354B4(v62);
          goto LABEL_21;
        }

        sub_1934354B4(v60);
      }

      else
      {
        v125 = v60;
        if ((v70 & ~v62) == 0)
        {
LABEL_29:
          OUTLINED_FUNCTION_31_31();

          goto LABEL_30;
        }

        v124 = v62;
        OUTLINED_FUNCTION_31_31();
        sub_19368C654();
        OUTLINED_FUNCTION_29_24();
        sub_19393C550();
        OUTLINED_FUNCTION_69_11();
        OUTLINED_FUNCTION_108_4();
        sub_1934354B4(v60);
        if ((v62 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v71 = v57[10];
      v72 = *(v115 + 48);
      OUTLINED_FUNCTION_33_21();
      OUTLINED_FUNCTION_27_26();
      v73 = OUTLINED_FUNCTION_50_19();
      OUTLINED_FUNCTION_38_0(v73, v74);
      if (v49)
      {
        OUTLINED_FUNCTION_31(v71 + v72);
        if (v49)
        {
          sub_19344E6DC(v71, &qword_1EAE3FE88, &qword_193979988);
LABEL_42:
          v71 = v57[11];
          v81 = *(v111 + 48);
          OUTLINED_FUNCTION_33_21();
          OUTLINED_FUNCTION_27_26();
          v82 = OUTLINED_FUNCTION_50_19();
          OUTLINED_FUNCTION_38_0(v82, v83);
          if (v49)
          {
            OUTLINED_FUNCTION_31(v71 + v81);
            if (v49)
            {
              sub_19344E6DC(v71, &qword_1EAE3FE90, &unk_193979E60);
LABEL_52:
              v71 = v57[12];
              v90 = *(v106 + 48);
              v60 = &qword_1EAE3FE98;
              OUTLINED_FUNCTION_33_21();
              OUTLINED_FUNCTION_27_26();
              v91 = OUTLINED_FUNCTION_50_19();
              v62 = v108;
              OUTLINED_FUNCTION_38_0(v91, v92);
              if (v49)
              {
                OUTLINED_FUNCTION_31(v71 + v90);
                if (v49)
                {
                  sub_19344E6DC(v71, &qword_1EAE3FE98, &qword_193979990);
                  goto LABEL_63;
                }
              }

              else
              {
                sub_1934486F8(v71, v104, &qword_1EAE3FE98, &qword_193979990);
                OUTLINED_FUNCTION_31(v71 + v90);
                if (!v93)
                {
                  OUTLINED_FUNCTION_10_48();
                  v94 = v71 + v90;
                  v90 = v103;
                  sub_19368C6A8(v94, v103, v95);
                  OUTLINED_FUNCTION_8_43();
                  v98 = sub_19368E3D0(v96, v97, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext);
                  v60 = OUTLINED_FUNCTION_53(v98);
                  v62 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext;
                  sub_19368E328();
                  sub_19368E328();
                  sub_19344E6DC(v71, &qword_1EAE3FE98, &qword_193979990);
                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_21;
                  }

LABEL_63:
                  OUTLINED_FUNCTION_24_34();
                  if (v49)
                  {
                    OUTLINED_FUNCTION_48_20();
                    if (v90)
                    {
                      goto LABEL_30;
                    }

                    sub_1934354B4(v60);
                  }

                  else
                  {
                    v125 = v60;
                    if ((v99 & ~v62) == 0)
                    {
                      goto LABEL_29;
                    }

                    v124 = v62;
                    OUTLINED_FUNCTION_31_31();
                    sub_19368C600();
                    OUTLINED_FUNCTION_29_24();
                    sub_19393C550();
                    OUTLINED_FUNCTION_69_11();
                    OUTLINED_FUNCTION_108_4();
                    sub_1934354B4(v60);
                    if ((v62 & 1) == 0)
                    {
                      goto LABEL_21;
                    }
                  }

                  OUTLINED_FUNCTION_24_34();
                  if (v49)
                  {
                    OUTLINED_FUNCTION_48_20();
                    if (v90)
                    {
                      goto LABEL_30;
                    }

                    sub_1934354B4(v60);
                  }

                  else
                  {
                    v125 = v60;
                    if ((v100 & ~v62) == 0)
                    {
                      goto LABEL_29;
                    }

                    v124 = v62;
                    OUTLINED_FUNCTION_31_31();
                    sub_19368C5AC();
                    OUTLINED_FUNCTION_29_24();
                    sub_19393C550();
                    OUTLINED_FUNCTION_69_11();
                    OUTLINED_FUNCTION_108_4();
                    sub_1934354B4(v60);
                    if ((v62 & 1) == 0)
                    {
                      goto LABEL_21;
                    }
                  }

                  v101 = v57[15];
                  v102 = *(v61 + v101);
                  v124 = *(v48 + v101);
                  v125 = v102;
                  sub_19368C558();

                  OUTLINED_FUNCTION_29_24();
                  v64 = sub_19393C550();

                  OUTLINED_FUNCTION_108_4();
                  return v64 & 1;
                }

                OUTLINED_FUNCTION_11_38();
                sub_19368E328();
              }

              v50 = &qword_1EAE3FEA0;
              v51 = &qword_193979B70;
              goto LABEL_61;
            }
          }

          else
          {
            sub_1934486F8(v71, v109, &qword_1EAE3FE90, &unk_193979E60);
            OUTLINED_FUNCTION_31(v71 + v81);
            if (!v84)
            {
              OUTLINED_FUNCTION_13_40();
              sub_19368C6A8(v71 + v81, v105, v85);
              OUTLINED_FUNCTION_12_34();
              v88 = sub_19368E3D0(v86, v87, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1);
              v89 = OUTLINED_FUNCTION_53(v88);
              sub_19368E328();
              sub_19368E328();
              sub_19344E6DC(v71, &qword_1EAE3FE90, &unk_193979E60);
              if ((v89 & 1) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_52;
            }

            OUTLINED_FUNCTION_23_35();
          }

          v50 = &qword_1EAE3FEA8;
          v51 = &qword_193979B78;
LABEL_61:
          v52 = v71;
          goto LABEL_20;
        }
      }

      else
      {
        sub_1934486F8(v71, v114, &qword_1EAE3FE88, &qword_193979988);
        OUTLINED_FUNCTION_31(v71 + v72);
        if (!v75)
        {
          OUTLINED_FUNCTION_15_42();
          sub_19368C6A8(v71 + v72, v110, v76);
          OUTLINED_FUNCTION_14_40();
          v79 = sub_19368E3D0(v77, v78, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1);
          v80 = OUTLINED_FUNCTION_53(v79);
          sub_19368E328();
          sub_19368E328();
          sub_19344E6DC(v71, &qword_1EAE3FE88, &qword_193979988);
          if ((v80 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_42;
        }

        OUTLINED_FUNCTION_16_30();
        sub_19368E328();
      }

      v50 = &qword_1EAE3FEB0;
      v51 = &qword_193979B80;
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_22_32();
  }

  v50 = &qword_1EAE3B958;
  v51 = &qword_193957B50;
  v52 = v35;
LABEL_20:
  sub_19344E6DC(v52, v50, v51);
LABEL_21:
  v64 = 0;
  return v64 & 1;
}

unint64_t sub_19368C558()
{
  result = qword_1EAE3FEC0;
  if (!qword_1EAE3FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FEC0);
  }

  return result;
}

unint64_t sub_19368C5AC()
{
  result = qword_1EAE3FEC8;
  if (!qword_1EAE3FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FEC8);
  }

  return result;
}

unint64_t sub_19368C600()
{
  result = qword_1EAE3FED0;
  if (!qword_1EAE3FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FED0);
  }

  return result;
}

unint64_t sub_19368C654()
{
  result = qword_1EAE3FEF0;
  if (!qword_1EAE3FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FEF0);
  }

  return result;
}

uint64_t sub_19368C6A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v77 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  v70 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE98, &qword_193979990);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_53_1();
  v76 = v7;
  v8 = OUTLINED_FUNCTION_22_2();
  v75 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_289();
  v69 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE90, &unk_193979E60);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_53_1();
  v74 = v13;
  v14 = OUTLINED_FUNCTION_22_2();
  v73 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v14);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_289();
  v68 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE88, &qword_193979988);
  OUTLINED_FUNCTION_47(v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_53_1();
  v72 = v19;
  v20 = OUTLINED_FUNCTION_22_2();
  v71 = type metadata accessor for MonotonicTimestamp(v20);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_289();
  v67 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v23);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_150();
  v25 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE80, &qword_193979980);
  OUTLINED_FUNCTION_47(v30);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v67 - v32;
  v34 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  v35 = v0;
  sub_1934486F8(v0 + v34[7], v33, &qword_1EAE3FE80, &qword_193979980);
  v36 = OUTLINED_FUNCTION_50_19();
  if (__swift_getEnumTagSinglePayload(v36, v37, v25) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_18_36();
    sub_19368C6A8(v33, v29, v38);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_17_34();
    sub_19368E3D0(v39, v40, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_19_43();
    sub_19368E328();
  }

  sub_1934486F8(v0 + v34[8], v1, &qword_1EAE3B498, &unk_193959120);
  if (__swift_getEnumTagSinglePayload(v1, 1, v71) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_9_57();
    v41 = v1;
    v1 = v67;
    sub_19368C6A8(v41, v67, v42);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_7_39();
    v45 = sub_19368E3D0(v43, v44, &protocol conformance descriptor for MonotonicTimestamp);
    OUTLINED_FUNCTION_33(v45);
    OUTLINED_FUNCTION_22_32();
  }

  v46 = v73;
  OUTLINED_FUNCTION_40_23();
  if (v47)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v78 = v1;
    OUTLINED_FUNCTION_103_0();
    sub_19368CDA4();

    OUTLINED_FUNCTION_66_1(v48, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGRequestContext);
  }

  v49 = v77;
  v50 = v75;
  v51 = v72;
  sub_1934486F8(v35 + v34[10], v72, &qword_1EAE3FE88, &qword_193979988);
  if (__swift_getEnumTagSinglePayload(v51, 1, v46) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_42();
    sub_19368C6A8(v51, v68, v52);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_14_40();
    sub_19368E3D0(v53, v54, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_16_30();
    sub_19368E328();
  }

  v55 = v74;
  sub_1934486F8(v35 + v34[11], v74, &qword_1EAE3FE90, &unk_193979E60);
  if (__swift_getEnumTagSinglePayload(v55, 1, v50) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_13_40();
    sub_19368C6A8(v55, v69, v56);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_12_34();
    sub_19368E3D0(v57, v58, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_23_35();
  }

  v59 = v76;
  sub_1934486F8(v35 + v34[12], v76, &qword_1EAE3FE98, &qword_193979990);
  if (__swift_getEnumTagSinglePayload(v59, 1, v49) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_10_48();
    v50 = v70;
    sub_19368C6A8(v59, v70, v60);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_8_43();
    v63 = sub_19368E3D0(v61, v62, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext);
    OUTLINED_FUNCTION_33(v63);
    OUTLINED_FUNCTION_11_38();
    sub_19368E328();
  }

  OUTLINED_FUNCTION_40_23();
  if (v47)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v78 = v50;
    OUTLINED_FUNCTION_103_0();
    sub_19368CDF8();

    OUTLINED_FUNCTION_66_1(v64, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext);
  }

  OUTLINED_FUNCTION_40_23();
  if (v47)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v78 = v50;
    OUTLINED_FUNCTION_103_0();
    sub_19368CE4C();

    OUTLINED_FUNCTION_66_1(v65, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext);
  }

  v78 = *(v35 + v34[15]);
  sub_19368CEA0();
  return sub_19393C540();
}

unint64_t sub_19368CDA4()
{
  result = qword_1EAE3FF08;
  if (!qword_1EAE3FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF08);
  }

  return result;
}

unint64_t sub_19368CDF8()
{
  result = qword_1EAE3FF28;
  if (!qword_1EAE3FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF28);
  }

  return result;
}

unint64_t sub_19368CE4C()
{
  result = qword_1EAE3FF30;
  if (!qword_1EAE3FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF30);
  }

  return result;
}

unint64_t sub_19368CEA0()
{
  result = qword_1EAE3FF38;
  if (!qword_1EAE3FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF38);
  }

  return result;
}

void IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

char *static IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3FFB8, &qword_193979C50);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v9 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v9, v2 + 1, 1, v10, &qword_1EAE3FFB8, &qword_193979C50);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < v6)
  {
    v11 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v11, v6, 1, v12, &qword_1EAE3FFB8, &qword_193979C50);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  return v0;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.description.getter()
{
  if (*(v0 + 8))
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
  }

  else if (v2 == 0xD000000000000010 && 0x8000000193A19A00 == v1)
  {

    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9(0xD000000000000010, 0x8000000193A19A00);
  }

  *v0 = 0;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

void IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

char *static IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3FFB0, &qword_193979C48);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v13, v2 + 1, 1, v14, &qword_1EAE3FFB0, &qword_193979C48);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v15, v2 + 2, 1, v16, &qword_1EAE3FFB0, &qword_193979C48);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v17, v2 + 3, 1, v18, &qword_1EAE3FFB0, &qword_193979C48);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934B0FCC(v19, v2 + 4, 1, v20, &qword_1EAE3FFB0, &qword_193979C48);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

unint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v9 = v2 == 0xD000000000000015 && 0x8000000193A19A90 == v1;
  if (v9 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A19A90) & 1) != 0)
  {

    v7 = 0;
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v10 = v2 == 0xD000000000000020 && 0x8000000193A19A60 == v1;
  if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000020, 0x8000000193A19A60) & 1) != 0)
  {

    v7 = 1;
    goto LABEL_13;
  }

  if (v2 == 0xD000000000000033 && 0x8000000193A19A20 == v1)
  {

    v8 = 1;
    v7 = 2;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0xD000000000000033, 0x8000000193A19A20);

    v7 = 2;
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

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGRequestContext.== infix(_:_:)(uint64_t a1, unint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_3_4();
  v5 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  v14 = OUTLINED_FUNCTION_47(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v21 = *v2;
  v22 = *a2;
  if (!(v21 >> 62))
  {
    if (!(v22 >> 62))
    {
      v27 = swift_projectBox();
      v28 = swift_projectBox();
      sub_19368E2C8(v27, v20, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted);
      sub_19368E2C8(v28, v17, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted);

      v26 = static IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted.== infix(_:_:)(v20, v17);
      sub_19368E328();
      sub_19368E328();
      goto LABEL_7;
    }

LABEL_11:
    v26 = 0;
    return v26 & 1;
  }

  if (v21 >> 62 != 1)
  {
    if (v22 >> 62 == 2)
    {
      v29 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v30 = *(v29 + 40);
      v31 = *(v29 + 32);
      v32 = v22 & 0x3FFFFFFFFFFFFFFFLL;
      v33 = *(v32 + 32);
      v34 = *(v32 + 40);
      v39 = *(v29 + 16);
      v40 = v31;
      v41 = v30;
      v36 = *(v32 + 16);
      v37 = v33;
      v38 = v34;

      v26 = static IntelligenceFlowPlanGenerationTelemetry.PGRequestFailed.== infix(_:_:)(&v39, &v36);

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v22 >> 62 != 1)
  {
    goto LABEL_11;
  }

  v23 = swift_projectBox();
  v24 = swift_projectBox();
  sub_19368E2C8(v23, v12, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded);
  sub_19368E2C8(v24, v9, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded);

  static IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.== infix(_:_:)();
  v26 = v25;
  sub_19368E328();
  sub_19368E328();
LABEL_7:

LABEL_10:

  return v26 & 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestContext.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = *v0 >> 62;
  if (!v10)
  {
    v12 = swift_projectBox();
    sub_19368E2C8(v12, v9, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted);
    sub_19368E3D0(&qword_1EAE3FF50, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    return sub_19368E328();
  }

  if (v10 == 1)
  {
    v11 = swift_projectBox();
    sub_19368E2C8(v11, v5, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded);
    sub_19368E3D0(&qword_1EAE3FF48, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    return sub_19368E328();
  }

  OUTLINED_FUNCTION_31_4((*v0 & 0x3FFFFFFFFFFFFFFFLL));
  sub_19368E1CC();
  return sub_19393C540();
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext.== infix(_:_:)(char a1, unint64_t a2)
{
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_91_11();
  if (!v12)
  {
    if (!(a2 >> 62))
    {
      v16 = *(a2 + 16);
      LOBYTE(v27) = *(v3 + 16);
      LOBYTE(v23) = v16;

      static IntelligenceFlowPlanGenerationTelemetry.PGOverridesStarted.== infix(_:_:)(&v27, &v23);
      OUTLINED_FUNCTION_127_6();
      goto LABEL_7;
    }

LABEL_11:
    a1 = 0;
    return a1 & 1;
  }

  if (v12 != 1)
  {
    if (a2 >> 62 == 2)
    {
      OUTLINED_FUNCTION_37_23();
      v17 = *(v10 + 16);
      v28 = v18;
      v29 = v19;
      v30 = *(v10 + 48);
      v23 = *(a2 + 16);
      v24 = v20;
      v25 = v21;
      v26 = *(a2 + 48);
      v27 = v17;

      static IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.== infix(_:_:)(&v27, &v23);
      OUTLINED_FUNCTION_127_6();

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a2 >> 62 != 1)
  {
    goto LABEL_11;
  }

  v13 = swift_projectBox();
  v14 = swift_projectBox();
  sub_19368E2C8(v13, v2, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
  sub_19368E2C8(v14, v10, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);

  static IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.== infix(_:_:)();
  a1 = v15;
  sub_19368E328();
  sub_19368E328();
LABEL_7:

LABEL_10:

  return a1 & 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v4 = *v0 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = swift_projectBox();
      sub_19368E2C8(v5, v1, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
      v6 = sub_19368E3D0(&qword_1EAE3FF60, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
      OUTLINED_FUNCTION_33(v6);
      return sub_19368E328();
    }

    OUTLINED_FUNCTION_31_4((*v0 & 0x3FFFFFFFFFFFFFFFLL));
    sub_19368E220();
  }

  else
  {
    sub_19368E274();
  }

  return sub_19393C540();
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext.== infix(_:_:)(char a1, unint64_t a2)
{
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_91_11();
  if (!v12)
  {
    if (!(a2 >> 62))
    {
      v15 = *(a2 + 16);
      LOBYTE(v24) = *(v3 + 16);
      LOBYTE(v21) = v15;

      static IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanStarted.== infix(_:_:)(&v24, &v21);
      OUTLINED_FUNCTION_127_6();
      goto LABEL_7;
    }

LABEL_11:
    a1 = 0;
    return a1 & 1;
  }

  if (v12 != 1)
  {
    if (a2 >> 62 == 2)
    {
      OUTLINED_FUNCTION_37_23();
      v24 = *(v10 + 16);
      v25 = v16;
      v26 = v17;
      v21 = *(a2 + 16);
      v22 = v18;
      v23 = v19;

      static IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanFailed.== infix(_:_:)(&v24, &v21);
      OUTLINED_FUNCTION_127_6();

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a2 >> 62 != 1)
  {
    goto LABEL_11;
  }

  v13 = swift_projectBox();
  v14 = swift_projectBox();
  sub_19368E2C8(v13, v2, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
  sub_19368E2C8(v14, v10, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);

  a1 = static IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded.== infix(_:_:)(v2, v10);
  sub_19368E328();
  sub_19368E328();
LABEL_7:

LABEL_10:

  return a1 & 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v4 = *v0 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = swift_projectBox();
      sub_19368E2C8(v5, v1, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
      v6 = sub_19368E3D0(&qword_1EAE3FF78, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
      OUTLINED_FUNCTION_33(v6);
      return sub_19368E328();
    }

    OUTLINED_FUNCTION_31_4((*v0 & 0x3FFFFFFFFFFFFFFFLL));
    sub_19368E37C();
  }

  else
  {
    sub_19368E418();
  }

  return sub_19393C540();
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanContext.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v19) = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v16) = v5;

        v6 = static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanEnded.== infix(_:_:)(&v19, &v16);
LABEL_9:
        v8 = v6;

        goto LABEL_10;
      }
    }

    else if (v3 >> 62 == 2)
    {
      v9 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v9 + 40);
      v11 = *(v9 + 32);
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v19 = *(v9 + 16);
      v20 = v11;
      v21 = v10;
      v16 = *(v12 + 16);
      v17 = v13;
      v18 = v14;

      v6 = static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanFailed.== infix(_:_:)(&v19, &v16);
      goto LABEL_9;
    }

LABEL_11:
    v8 = 0;
    return v8 & 1;
  }

  if (v3 >> 62)
  {
    goto LABEL_11;
  }

  v7 = *(v3 + 16);
  LOBYTE(v19) = *(v2 + 16);
  LOBYTE(v16) = v7;

  v8 = static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.== infix(_:_:)(&v19, &v16);

LABEL_10:

  return v8 & 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanContext.hash(into:)(uint64_t a1)
{
  v2 = *v1 >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      sub_19368E4C0();
    }

    else
    {
      OUTLINED_FUNCTION_31_4((*v1 & 0x3FFFFFFFFFFFFFFFLL));
      sub_19368E46C();
    }
  }

  else
  {
    sub_19368E514();
  }

  return sub_19393C540();
}

unint64_t sub_19368E1CC()
{
  result = qword_1EAE3FF40;
  if (!qword_1EAE3FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF40);
  }

  return result;
}

unint64_t sub_19368E220()
{
  result = qword_1EAE3FF58;
  if (!qword_1EAE3FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF58);
  }

  return result;
}

unint64_t sub_19368E274()
{
  result = qword_1EAE3FF68;
  if (!qword_1EAE3FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF68);
  }

  return result;
}

uint64_t sub_19368E2C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_19368E328()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_19368E37C()
{
  result = qword_1EAE3FF70;
  if (!qword_1EAE3FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF70);
  }

  return result;
}

uint64_t sub_19368E3D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19368E418()
{
  result = qword_1EAE3FF80;
  if (!qword_1EAE3FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF80);
  }

  return result;
}

unint64_t sub_19368E46C()
{
  result = qword_1EAE3FF88;
  if (!qword_1EAE3FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF88);
  }

  return result;
}

unint64_t sub_19368E4C0()
{
  result = qword_1EAE3FF90;
  if (!qword_1EAE3FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF90);
  }

  return result;
}

unint64_t sub_19368E514()
{
  result = qword_1EAE3FF98;
  if (!qword_1EAE3FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF98);
  }

  return result;
}

unint64_t sub_19368E56C()
{
  result = qword_1EAE3FFA0;
  if (!qword_1EAE3FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FFA0);
  }

  return result;
}

unint64_t sub_19368E5C4()
{
  result = qword_1EAE3FFA8;
  if (!qword_1EAE3FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FFA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_20()
{
  sub_193438388(v0);

  return sub_193438388(v1);
}

void sub_19368E648()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABBD0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v5, xmmword_193951270);
  *v0 = "eventMetadata";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "timestamp");
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 101;
  v12 = OUTLINED_FUNCTION_0_0(v10, "pgRequestContext");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v14 = 102;
  *v13 = "pgPromptTier1";
  *(v13 + 8) = 13;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v16 = 103;
  *v15 = "pgPromptResponseTier1";
  *(v15 + 8) = 21;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v18 = 104;
  v19 = OUTLINED_FUNCTION_0_0(v17, "pgModelInferenceContext");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v21 = 201;
  v22 = OUTLINED_FUNCTION_0_0(v20, "pgOverridesRequestContext");
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v1 + 7 * v4);
  *v24 = 301;
  v25 = OUTLINED_FUNCTION_0_0(v23, "pgPrescribedPlanRequestContext");
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v1 + 8 * v4);
  *v27 = 401;
  *v26 = "pgGeneratePlanContext";
  *(v26 + 8) = 21;
  *(v26 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19368E8F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    if (!(!v3 & v2))
    {
      switch(v4)
      {
        case 'e':
          goto LABEL_11;
        case 'f':
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(0);
          OUTLINED_FUNCTION_10_2();
          goto LABEL_20;
        case 'g':
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(0);
          OUTLINED_FUNCTION_10_2();
          goto LABEL_20;
        case 'h':
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
          OUTLINED_FUNCTION_10_2();
          goto LABEL_20;
        default:
          JUMPOUT(0);
      }
    }

    switch(v4)
    {
      case 401:
        sub_193498018();
        OUTLINED_FUNCTION_111_7();
        v6 = swift_allocObject();
        IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.init()();
        sub_1934354B4(0xF000000000000007);
        v7 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 60);

        *(v1 + v7) = v6;
        break;
      case 2:
        type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
        type metadata accessor for MonotonicTimestamp(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_20;
      case 201:
      case 301:
LABEL_11:
        type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
        goto LABEL_20;
      case 1:
        type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
        type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
        OUTLINED_FUNCTION_10_2();
LABEL_20:
        sub_193498018();
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::IntelligenceFlowPlanGenerationTelemetry::PGGeneratePlanStarted sub_19368EB78@<W0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  v2 = swift_allocObject();
  result.exists.value = IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.init()().exists.value;
  *a1 = v2;
  return result;
}

void sub_19368EBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19368EDD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_35_1();
    sub_19368EEE8();
    v5 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    if ((~*(v3 + v5[9]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_59_17();
    }

    OUTLINED_FUNCTION_35_1();
    sub_19368F000();
    OUTLINED_FUNCTION_35_1();
    sub_19368F118();
    OUTLINED_FUNCTION_35_1();
    sub_19368F230();
    if ((~*(v3 + v5[13]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_59_17();
    }

    if ((~*(v3 + v5[14]) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_59_17();
    }

    OUTLINED_FUNCTION_111_7();
    swift_allocObject();

    IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.init()();
    sub_19368C558();
    v6 = sub_19393C550();

    if ((v6 & 1) == 0)
    {

      OUTLINED_FUNCTION_59_17();
    }
  }
}

void sub_19368EDD0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 28));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3FE80, &qword_193979980);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v11, v12);
    OUTLINED_FUNCTION_17(v1, 1);
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368EEE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for MonotonicTimestamp(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 32));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v11, v12);
    OUTLINED_FUNCTION_17(v1, 2);
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368F000()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 40));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3FE88, &qword_193979988);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v11, v12);
    OUTLINED_FUNCTION_17(v1, 102);
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368F118()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 44));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3FE90, &unk_193979E60);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v11, v12);
    OUTLINED_FUNCTION_17(v1, 103);
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368F230()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 48));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3FE98, &qword_193979990);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v11, v12);
    OUTLINED_FUNCTION_17(v1, 104);
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368F3AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABBE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_65_16();
  *(v2 + 16) = xmmword_19394FBE0;
  v3 = (v2 + v0);
  v4 = v2 + v0 + dword_1EAEABC20;
  *v3 = 0;
  *v4 = "PGFailureReasonUnknown";
  *(v4 + 8) = 22;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_52();
  *v9 = 1;
  v10 = OUTLINED_FUNCTION_48(v8, "PGFailureReasonRecoverableError");
  v6(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}