_BYTE *_s6DaemonV20AttributionOverridesC19WeatherDataProviderOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B616A318()
{
  result = qword_1EDAB0970;
  if (!qword_1EDAB0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0970);
  }

  return result;
}

uint64_t EventSignificance.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    EventSignificance.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 13)
    {
      v9 = 12;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::EventSignificance_optional __swiftcall EventSignificance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EventSignificance.rawValue.getter()
{
  result = 0x4843544157;
  switch(*v0)
  {
    case 1:
      result = 0x4E4954454C4C5542;
      break;
    case 2:
      result = 0x434E454752454D45;
      break;
    case 3:
      v2 = 0x4D4552545845;
      goto LABEL_12;
    case 4:
      result = 0x5453414345524F46;
      break;
    case 5:
      result = 0x4C415F4C41434F4CLL;
      break;
    case 6:
      v2 = 0x47415353454DLL;
LABEL_12:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x45000000000000;
      break;
    case 7:
      result = 0x4B4F4F4C54554FLL;
      break;
    case 8:
      result = 0x54524F504552;
      break;
    case 9:
      result = 0x4E454D4554415453;
      break;
    case 0xA:
      result = 0x474E494E524157;
      break;
    case 0xB:
      result = 0x59524F5349564441;
      break;
    case 0xC:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B616A618()
{
  result = qword_1EB926620;
  if (!qword_1EB926620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926620);
  }

  return result;
}

uint64_t sub_1B616A690@<X0>(uint64_t *a1@<X8>)
{
  result = EventSignificance.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EventSignificance(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B616A82C()
{
  result = qword_1EDAAF8D8;
  if (!qword_1EDAAF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF8D8);
  }

  return result;
}

double static HourForecastDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5(a1);
  *aHourforecast_2 = a1;
  *&aHourforecast_2[8] = a2;

  return result;
}

uint64_t (*static HourForecastDescriptor.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B616A920@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aHourforecast_2[8];
  *a1 = *aHourforecast_2;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B616A970(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aHourforecast_2 = v2;
  *&aHourforecast_2[8] = v1;
  sub_1B6220784();

  return result;
}

uint64_t *sub_1B616A9D4()
{
  if (qword_1EDAB1330 != -1)
  {
    OUTLINED_FUNCTION_0_61(&qword_1EDAB1330);
  }

  return &qword_1EDAB1338;
}

double static HourForecastDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EDAB1330 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_61(&qword_1EDAB1330);
  }

  OUTLINED_FUNCTION_3_5(a1);
  qword_1EDAB1338 = v3;
  qword_1EDAB1340 = a2;

  return result;
}

uint64_t (*static HourForecastDescriptor.version.modify())(uint64_t a1)
{
  if (qword_1EDAB1330 != -1)
  {
    OUTLINED_FUNCTION_0_61(&qword_1EDAB1330);
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1B616AAF4@<D0>(void *a1@<X8>)
{
  sub_1B616A9D4();
  swift_beginAccess();
  v2 = qword_1EDAB1340;
  *a1 = qword_1EDAB1338;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B616AB48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B616A9D4();
  swift_beginAccess();
  qword_1EDAB1338 = v2;
  qword_1EDAB1340 = v1;

  return result;
}

_BYTE *storeEnumTagSinglePayload for HourForecastDescriptor(_BYTE *result, int a2, int a3)
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

BOOL Array<A>.contains(_:)(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 16) != 4)
  {
    return 0;
  }

  v3 = *(a1 + 32) > a3 || *(a1 + 48) < a3;
  return !v3 && *(a1 + 40) <= a2 && *(a1 + 56) >= a2;
}

uint64_t Array<A>.minLongitude.getter(uint64_t result)
{
  if (!*(result + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.minLatitude.getter(uint64_t result)
{
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.maxLongitude.getter(uint64_t result)
{
  if (*(result + 16) < 3uLL)
  {
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.maxLatitude.getter(uint64_t result)
{
  if (*(result + 16) < 4uLL)
  {
    __break(1u);
  }

  return result;
}

void Array<A>.center.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    __break(1u);
  }

  else if (v1 >= 4)
  {
    CLLocationCoordinate2DMake(*(a1 + 40) + (*(a1 + 56) - *(a1 + 40)) * 0.5, *(a1 + 32) + (*(a1 + 48) - *(a1 + 32)) * 0.5);
    return;
  }

  __break(1u);
}

uint64_t WDSJWTMescalSigner.__allocating_init()()
{
  v0 = swift_allocObject();
  WDSJWTMescalSigner.init()();
  return v0;
}

id sub_1B616AD6C@<X0>(uint64_t *a1@<X8>)
{
  sub_1B602370C(0, &qword_1EDAB0998, 0x1E698C7D8);
  result = sub_1B616ADD0(0x65726F7473707061, 0xE900000000000064, 49, 0xE100000000000000);
  *a1 = result;
  return result;
}

id sub_1B616ADD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B62211B4();

  v5 = sub_1B62211B4();

  v6 = [swift_getObjCClassFromMetadata() bagForProfile:v4 profileVersion:v5];

  return v6;
}

uint64_t WDSJWTMescalSigner.sign(data:bundleIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EDAB4B00 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v6 = sub_1B6220B34();
  __swift_project_value_buffer(v6, qword_1EDAC2AC8);
  v7 = sub_1B6220B14();
  v8 = sub_1B62217F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B6020000, v7, v8, "About to request a signature", v9, 2u);
    MEMORY[0x1B8C91C90](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926640, &qword_1B6230280);
  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;

  sub_1B604D8AC(a1, a2);
  return sub_1B6220924();
}

uint64_t sub_1B616AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1B62210E4();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_1B62210D4();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B616B0B0, 0, 0);
}

uint64_t sub_1B616B0B0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[8];
  sub_1B602370C(0, &unk_1EDAB0408, 0x1E698C9F0);
  sub_1B602C5F4(&qword_1EDAB0E00, MEMORY[0x1E6966698], MEMORY[0x1E6966690]);
  sub_1B6221064();
  sub_1B604D8AC(v6, v5);
  sub_1B616B6E0(v6, v5, v2);
  sub_1B60362A8(v6, v5);
  sub_1B6221054();
  (*(v3 + 8))(v2, v4);
  v7 = sub_1B61758A0(v1);
  v9 = v8;
  v0[15] = v7;
  v0[16] = v8;
  sub_1B6220864();
  v10 = v0[6];
  v0[17] = v10;
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1B616B270;

  return MEMORY[0x1EEDEE018](v7, v9, 1, v10);
}

uint64_t sub_1B616B270(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[19] = v2;

  if (v2)
  {
    v6 = v4[16];
    v5 = v4[17];
    v7 = v4[15];

    sub_1B60362A8(v7, v6);
    v8 = sub_1B616B4F0;
  }

  else
  {
    v9 = v4[17];
    sub_1B60362A8(v4[15], v4[16]);

    v8 = sub_1B616B3B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B616B3B4()
{
  if (qword_1EDAB4B00 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC2AC8);
  v2 = sub_1B6220B14();
  v3 = sub_1B62217F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B6020000, v2, v3, "Signed successfully", v4, 2u);
    MEMORY[0x1B8C91C90](v4, -1, -1);
  }

  v5 = *(v0 + 56);
  v8 = *(v0 + 24);

  *v5 = v8;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B616B4F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WDSJWTMescalSigner.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B616B5D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6049918;

  return sub_1B616AFC0(a1, v4, v5, v6);
}

void sub_1B616B6E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_1B616B850(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1B616B77C(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_1B616B77C(uint64_t a1, uint64_t a2)
{
  sub_1B62210E4();
  sub_1B602C5F4(&qword_1EDAB0E00, MEMORY[0x1E6966698], MEMORY[0x1E6966690]);
  return sub_1B6221044();
}

uint64_t sub_1B616B850(uint64_t a1, uint64_t a2)
{
  result = sub_1B621D4A4();
  if (!result || (result = sub_1B621D4C4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B621D4B4();
      sub_1B62210E4();
      sub_1B602C5F4(&qword_1EDAB0E00, MEMORY[0x1E6966698], MEMORY[0x1E6966690]);
      return sub_1B6221044();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double static NewsDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5(a1);
  *aNews_8 = a1;
  qword_1EB926650 = a2;

  return result;
}

uint64_t (*static NewsDescriptor.name.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B616B9D0@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EB926650;
  *a1 = *aNews_8;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B616BA20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aNews_8 = v2;
  qword_1EB926650 = v1;
  sub_1B6220784();

  return result;
}

uint64_t *sub_1B616BA84()
{
  if (qword_1EDAB1588 != -1)
  {
    OUTLINED_FUNCTION_0_63(&qword_1EDAB1588);
  }

  return &qword_1EDAB1590;
}

double static NewsDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EDAB1588 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_63(&qword_1EDAB1588);
  }

  OUTLINED_FUNCTION_3_5(a1);
  qword_1EDAB1590 = v3;
  qword_1EDAB1598 = a2;

  return result;
}

uint64_t (*static NewsDescriptor.version.modify())(uint64_t a1)
{
  if (qword_1EDAB1588 != -1)
  {
    OUTLINED_FUNCTION_0_63(&qword_1EDAB1588);
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1B616BBA4@<D0>(void *a1@<X8>)
{
  sub_1B616BA84();
  swift_beginAccess();
  v2 = qword_1EDAB1598;
  *a1 = qword_1EDAB1590;
  a1[1] = v2;
  sub_1B6220784();
  return result;
}

double sub_1B616BBF8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B616BA84();
  swift_beginAccess();
  qword_1EDAB1590 = v2;
  qword_1EDAB1598 = v1;

  return result;
}

_BYTE *storeEnumTagSinglePayload for NewsDescriptor(_BYTE *result, int a2, int a3)
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

unint64_t WDSSignature.header.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_1B621D6F4();
  v6 = [v5 base64EncodedStringWithOptions_];

  v7 = sub_1B62211D4();
  v9 = v8;

  sub_1B6221B34();

  MEMORY[0x1B8C90530](v7, v9);

  MEMORY[0x1B8C90530](0x3D79656B3BLL, 0xE500000000000000);
  MEMORY[0x1B8C90530](v3, v4);
  MEMORY[0x1B8C90530](0x3D657461643BLL, 0xE600000000000000);
  MEMORY[0x1B8C90530](v1, v2);
  return 0xD000000000000010;
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

uint64_t sub_1B616BE3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B616BE7C(uint64_t result, int a2, int a3)
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

uint64_t sub_1B616BED8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = (*a1 & 1) == 0;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;

  sub_1B616BF40();

  return v3;
}

void sub_1B616BF40()
{
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EB924448 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (v1 == 1)
  {
    type metadata accessor for Settings.DaemonStore();
    swift_initStaticObject();
    sub_1B60A2A5C();
    v0 = sub_1B621DC84();
    sub_1B616DF64(v0);
  }
}

uint64_t sub_1B616C020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F70, &qword_1B6230470);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v41 - v16;
  v18 = type metadata accessor for DailyWeatherStatistics(0);
  MEMORY[0x1EEE9AC00](v18);
  v45 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v41 - v21;
  v23 = *(a4 + 8);
  v44 = *a4;
  v47 = a2;
  v48 = v44;
  v43 = v23;
  v49 = v23;
  v46 = a1;
  v24 = sub_1B616C484(a1, a2, a3, &v48);
  v26 = v25;
  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v27 = sub_1B6220B34();
  __swift_project_value_buffer(v27, qword_1EB942B10);
  sub_1B6220784();
  v28 = sub_1B6220B14();
  v29 = sub_1B62217F4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v41[1] = v14;
    v42 = a3;
    v31 = v30;
    v32 = v18;
    v33 = swift_slowAlloc();
    v48 = v33;
    *v31 = 141558275;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_1B602EEB0(v24, v26, &v48);
    _os_log_impl(&dword_1B6020000, v28, v29, "Attempting to read daily statistics from cache; key=%{private,mask.hash}s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v34 = v33;
    v18 = v32;
    MEMORY[0x1B8C91C90](v34, -1, -1);
    a3 = v42;
    MEMORY[0x1B8C91C90](v31, -1, -1);
  }

  sub_1B616C63C(v24, v26, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1B602724C(v17, &qword_1EB925F70, &qword_1B6230470);
    v48 = v44;
    v49 = v43;
    sub_1B610AA40(v46, v47, a3, &v48, a5, a6);
    v35 = swift_allocObject();
    *(v35 + 16) = v24;
    *(v35 + 24) = v26;
    *(v35 + 32) = a5;
    *(v35 + 40) = a6;
    sub_1B6220784();
    v36 = sub_1B62208D4();
    sub_1B6220954();

    v37 = swift_allocObject();
    *(v37 + 16) = v24;
    *(v37 + 24) = v26;
    v38 = sub_1B62208D4();
    v39 = sub_1B6220974();
  }

  else
  {

    sub_1B616E1E8(v17, v22);
    sub_1B616E24C(v22, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F60, &qword_1B622D0B8);
    swift_allocObject();
    v39 = sub_1B6220994();
    sub_1B616E2B0(v22);
  }

  return v39;
}

uint64_t sub_1B616C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  sub_1B6221B34();
  v6 = CLLocationCoordinate2D.cacheKey.getter();

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v7 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v7);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v8 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v8);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v9 = sub_1B6195268(a1);
  MEMORY[0x1B8C90530](v9);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  if (v5)
  {
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v11 = sub_1B6221F04();
    v10 = v12;
  }

  MEMORY[0x1B8C90530](v11, v10);

  v13 = sub_1B60701A0();
  MEMORY[0x1B8C90530](v13);

  return v6;
}

void sub_1B616C63C(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50, &unk_1B6226F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_1B6220BD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EB942B10);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v50 = v7;
    v51 = v8;
    v16 = v15;
    v62 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1B602EEB0(v52, a2, &v62);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve daily statistics from cache; key=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = v16;
    v7 = v50;
    v8 = v51;
    MEMORY[0x1B8C91C90](v17, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  if (*(v54 + 16) == 1)
  {
    if (sub_1B60A059C(v18))
    {
      sub_1B6220D44();
      v65 = MEMORY[0x1E69E6158];
      v66 = MEMORY[0x1E69D62D8];
      v62 = v52;
      v63 = a2;
      sub_1B6220784();
      sub_1B6220CD4();
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v19 = sub_1B6220DD4();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v19);
      sub_1B6220D14();

      sub_1B602724C(v6, &qword_1EB924B50, &unk_1B6226F30);
      (*(v8 + 8))(v10, v7);
      v26 = v55;
      if (v55)
      {
        v27 = v56;
        v28 = v57;
        v30 = v58;
        v29 = v59;
        v31 = v60;
        v62 = v55;
        v63 = v56;
        v64 = v57;
        v65 = v58;
        v66 = v59;
        v67 = v60;
        v54 = v61;
        v68 = v61;
        sub_1B6220784();
        v32 = sub_1B6220B14();
        v33 = sub_1B62217F4();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v51 = v29;
          v35 = v34;
          v36 = swift_slowAlloc();
          v50 = v31;
          v37 = v36;
          v55 = v36;
          *v35 = 141558275;
          *(v35 + 4) = 1752392040;
          *(v35 + 12) = 2081;
          *(v35 + 14) = sub_1B602EEB0(v52, a2, &v55);
          _os_log_impl(&dword_1B6020000, v32, v33, "Successfully retrieved daily statistics from cache; key=%{private,mask.hash}s", v35, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v37);
          v38 = v37;
          v31 = v50;
          MEMORY[0x1B8C91C90](v38, -1, -1);
          v39 = v35;
          v29 = v51;
          MEMORY[0x1B8C91C90](v39, -1, -1);
        }

        if (qword_1EDAAF1F0 != -1)
        {
          swift_once();
        }

        sub_1B61DAE90(xmmword_1EDAAF1F8, *(&xmmword_1EDAAF1F8 + 1), qword_1EDAAF208, dword_1EDAAF210 | ((word_1EDAAF214 | (byte_1EDAAF216 << 16)) << 32), v40, v41, v42, v43, v49, v50, v51, v52, v53, v54);

        sub_1B60729F4(v26, v27, v28, v30, v29, v31, v54);
      }

      else
      {
        sub_1B6220784();
        v45 = sub_1B6220B14();
        v46 = sub_1B62217F4();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v62 = v48;
          *v47 = 141558275;
          *(v47 + 4) = 1752392040;
          *(v47 + 12) = 2081;
          *(v47 + 14) = sub_1B602EEB0(v52, a2, &v62);
          _os_log_impl(&dword_1B6020000, v45, v46, "Could not find daily statistics in cache; key=%{private,mask.hash}s", v47, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x1B8C91C90](v48, -1, -1);
          MEMORY[0x1B8C91C90](v47, -1, -1);
        }

        v44 = type metadata accessor for DailyWeatherStatistics(0);
        __swift_storeEnumTagSinglePayload(v53, 1, 1, v44);
      }

      return;
    }

    v20 = sub_1B6220B14();
    v21 = sub_1B62217E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Cannot retrieve cached daily statistics due to missing store";
      goto LABEL_13;
    }
  }

  else
  {
    v20 = sub_1B6220B14();
    v21 = sub_1B62217E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Daily statistics cache is disabled - returning nil";
LABEL_13:
      _os_log_impl(&dword_1B6020000, v20, v21, v23, v22, 2u);
      MEMORY[0x1B8C91C90](v22, -1, -1);
    }
  }

  v24 = type metadata accessor for DailyWeatherStatistics(0);
  v25 = v53;

  __swift_storeEnumTagSinglePayload(v25, 1, 1, v24);
}

uint64_t sub_1B616CEA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6)
{
  v12 = type metadata accessor for DailyWeatherStatistics(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v15 = sub_1B6220B34();
  __swift_project_value_buffer(v15, qword_1EB942B10);
  sub_1B6220784();
  v16 = sub_1B6220B14();
  v17 = sub_1B62217F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22[1] = a2;
    v20 = v19;
    v23 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    *(v18 + 14) = sub_1B602EEB0(a3, a4, &v23);
    _os_log_impl(&dword_1B6020000, v16, v17, "Successfully fetched daily statistics. key=%{private,mask.hash}s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1B8C91C90](v20, -1, -1);
    MEMORY[0x1B8C91C90](v18, -1, -1);
  }

  sub_1B616D0D8(a1, a3, a4, a5, a6);
  sub_1B616E24C(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F60, &qword_1B622D0B8);
  swift_allocObject();
  return sub_1B6220994();
}

void sub_1B616D0D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = sub_1B621D8F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DailyWeatherStatistics(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 16) != 1)
  {
    if (qword_1EB9244E0 != -1)
    {
      swift_once();
    }

    v30 = sub_1B6220B34();
    __swift_project_value_buffer(v30, qword_1EB942B10);
    v64 = sub_1B6220B14();
    v31 = sub_1B62217E4();
    if (!os_log_type_enabled(v64, v31))
    {
      goto LABEL_13;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Daily statistics cache is disabled - not caching";
    goto LABEL_12;
  }

  v21 = sub_1B60A059C(v18);
  if (!v21)
  {
    if (qword_1EB9244E0 != -1)
    {
      swift_once();
    }

    v34 = sub_1B6220B34();
    __swift_project_value_buffer(v34, qword_1EB942B10);
    v64 = sub_1B6220B14();
    v31 = sub_1B62217E4();
    if (!os_log_type_enabled(v64, v31))
    {
      goto LABEL_13;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Cannot cache daily statistics due to missing store";
LABEL_12:
    _os_log_impl(&dword_1B6020000, v64, v31, v33, v32, 2u);
    MEMORY[0x1B8C91C90](v32, -1, -1);
LABEL_13:
    v35 = v64;

    return;
  }

  v22 = v21;
  sub_1B616E24C(a1, v20);
  v23 = type metadata accessor for Metadata(0);
  (*(v14 + 16))(v16, a1 + *(v23 + 20), v13);
  sub_1B6220784();
  sub_1B61D8DFC();
  v64 = v22;
  v60 = a3;
  v61 = v6;
  v58 = v14;
  v59 = a2;
  v24 = v65;
  v62 = v66;
  v25 = v67;
  v26 = v68;
  v28 = v69;
  v27 = v70;
  v29 = v71;
  sub_1B6220D34();
  v63 = v24;
  v65 = v24;
  v66 = v62;
  v67 = v25;
  v68 = v26;
  v69 = v28;
  v70 = v27;
  v71 = v29;
  sub_1B6220D04();
  v57 = v29;
  v36 = v25;
  v37 = v26;
  v38 = v36;

  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v39 = sub_1B6220B34();
  __swift_project_value_buffer(v39, qword_1EB942B10);
  v40 = v60;
  sub_1B6220784();

  v41 = sub_1B6220B14();
  v42 = sub_1B62217F4();

  v55 = v27;

  v56 = v28;

  v53 = v37;

  v54 = v38;

  if (!os_log_type_enabled(v41, v42))
  {

    goto LABEL_16;
  }

  v52 = v41;
  v43 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v65 = v44;
  *v43 = 141558531;
  *(v43 + 4) = 1752392040;
  *(v43 + 12) = 2081;
  *(v43 + 14) = sub_1B602EEB0(v59, v40, &v65);
  *(v43 + 22) = 2080;
  sub_1B6220D84();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    sub_1B60CDD24();
    v46 = v45;
    v48 = v47;
    (*(v58 + 8))(v12, v13);
    v49 = sub_1B602EEB0(v46, v48, &v65);

    *(v43 + 24) = v49;
    v50 = v52;
    _os_log_impl(&dword_1B6020000, v52, v42, "Just cached daily statistics; key=%{private,mask.hash}s. It expires %s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v44, -1, -1);
    MEMORY[0x1B8C91C90](v43, -1, -1);

LABEL_16:
    sub_1B616DB18();

    return;
  }

  __break(1u);
}

void sub_1B616D9AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EB9244E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B6220B34();
  __swift_project_value_buffer(v5, qword_1EB942B10);
  sub_1B6220784();
  oslog = sub_1B6220B14();
  v6 = sub_1B62217E4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1B602EEB0(a2, a3, &v10);
    _os_log_impl(&dword_1B6020000, oslog, v6, "Failed to fetch daily statistics. key=%{private,mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B8C91C90](v8, -1, -1);
    MEMORY[0x1B8C91C90](v7, -1, -1);
  }
}

void sub_1B616DB18()
{
  v0 = sub_1B621D8F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v4 = sub_1B6220BD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (sub_1B60A059C(v8))
  {
    sub_1B6220D64();
    v14[3] = v0;
    v14[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v14);
    type metadata accessor for WeatherClock();
    static WeatherClock.date.getter();
    sub_1B621D854();
    (*(v1 + 8))(v3, v0);
    sub_1B6220CF4();
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1B6220DC4();

    (*(v5 + 8))(v7, v4);
    if (qword_1EB9244E0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EB942B10);
    v10 = sub_1B6220B14();
    v11 = sub_1B62217F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B6020000, v10, v11, "Purged expired daily weather statistics", v12, 2u);
      MEMORY[0x1B8C91C90](v12, -1, -1);
    }
  }
}

double sub_1B616DF64(uint64_t a1)
{
  if (sub_1B60A059C(a1))
  {
    sub_1B6220D64();
    sub_1B6220DB4();
  }

  return result;
}

uint64_t sub_1B616E1E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyWeatherStatistics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B616E24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyWeatherStatistics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B616E2B0(uint64_t a1)
{
  v2 = type metadata accessor for DailyWeatherStatistics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WDSJWTAuthenticatorServiceProxy.__allocating_init()()
{
  v0 = swift_allocObject();
  WDSJWTAuthenticatorServiceProxy.init()();
  return v0;
}

uint64_t sub_1B616E344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

id sub_1B616E37C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1B616E3D4();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1B616E3D4()
{
  v0 = sub_1B6220674();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B616F3F8();
  if (qword_1EDAAFA78 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6220574();
  __swift_project_value_buffer(v4, qword_1EDAAFA80);
  v5 = sub_1B6220564();
  v7 = sub_1B616E530(v5, v6);
  sub_1B6220554();
  v8 = sub_1B6220664();
  (*(v1 + 8))(v3, v0);
  [v7 setRemoteObjectInterface_];

  return v7;
}

id sub_1B616E530(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B62211B4();

  v4 = [v2 initWithServiceName_];

  return v4;
}

void *WDSJWTAuthenticatorServiceProxy.init()()
{
  v1 = sub_1B6220514();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B6220504();
  sub_1B6220534();
  swift_allocObject();
  v2 = sub_1B6220524();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  return v0;
}

uint64_t WDSJWTAuthenticatorServiceProxy.deinit()
{

  return v0;
}

uint64_t WDSJWTAuthenticatorServiceProxy.__deallocating_deinit()
{
  WDSJWTAuthenticatorServiceProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t WDSJWTAuthenticatorServiceProxy.generateToken(session:url:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925C18, &unk_1B622D9A0);
  swift_allocObject();
  return sub_1B62209D4();
}

void sub_1B616E70C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_1B616E37C();
  [v13 activate];

  v14 = *(a5 + 32);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v38 = sub_1B616F378;
  v39 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1B619262C;
  v37 = &block_descriptor_3;
  v16 = _Block_copy(&aBlock);
  v17 = v14;

  v18 = [v17 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);

  sub_1B6221A84();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926658, &unk_1B62304D8);
  if (swift_dynamicCast())
  {
    sub_1B6220784();
    v19 = sub_1B62211B4();

    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = sub_1B616F340;
    v20[5] = v12;
    v38 = sub_1B616F3EC;
    v39 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1B616F240;
    v37 = &block_descriptor_11;
    v21 = _Block_copy(&aBlock);

    [v33 generateTokenWithUrl:v19 completion:v21];
    swift_unknownObjectRelease();
    _Block_release(v21);
  }

  else
  {

    if (qword_1EDAB4B00 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AC8);
    v23 = sub_1B6220B14();
    v24 = sub_1B62217E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136446210;
      if (qword_1EDAAFA78 != -1)
      {
        swift_once();
      }

      v27 = sub_1B6220574();
      __swift_project_value_buffer(v27, qword_1EDAAFA80);
      v28 = sub_1B6220564();
      v30 = sub_1B602EEB0(v28, v29, &aBlock);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1B6020000, v23, v24, "Remote object proxy remote interface mismatch for: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v25, -1, -1);
    }

    sub_1B616F398();
    v31 = swift_allocError();
    *v32 = 0;
    a3();
  }
}

void sub_1B616EB6C(void *a1, void (*a2)(void *))
{
  if (qword_1EDAB4B00 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6220B34();
  __swift_project_value_buffer(v4, qword_1EDAC2AC8);
  v5 = a1;
  v6 = sub_1B6220B14();
  v7 = sub_1B62217E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446466;
    if (qword_1EDAAFA78 != -1)
    {
      swift_once();
    }

    v10 = sub_1B6220574();
    __swift_project_value_buffer(v10, qword_1EDAAFA80);
    v11 = sub_1B6220564();
    v13 = sub_1B602EEB0(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
    v15 = sub_1B6221234();
    v17 = sub_1B602EEB0(v15, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1B6020000, v6, v7, "Failed to get remote object proxy for: %{public}s with error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v9, -1, -1);
    MEMORY[0x1B8C91C90](v8, -1, -1);
  }

  sub_1B616F398();
  v18 = swift_allocError();
  *v19 = a1;
  v20 = a1;
  a2(v18);
}

void sub_1B616EDC0(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void *, uint64_t))
{
  if (a1)
  {
    v39[0] = 0;
    v39[1] = 0;
    sub_1B62211C4();
  }

  if (a2)
  {
    v7 = qword_1EDAB4B00;
    v8 = a2;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2AC8);
    v10 = v8;
    v11 = sub_1B6220B14();
    v12 = sub_1B62217E4();

    if (os_log_type_enabled(v11, v12))
    {
      v37 = a3;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39[0] = v14;
      *v13 = 136446466;
      if (qword_1EDAAFA78 != -1)
      {
        swift_once();
      }

      v15 = sub_1B6220574();
      __swift_project_value_buffer(v15, qword_1EDAAFA80);
      v16 = sub_1B6220564();
      v18 = sub_1B602EEB0(v16, v17, v39);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      v19 = v10;
      v20 = [v19 description];
      v21 = sub_1B62211D4();
      v23 = v22;

      v24 = sub_1B602EEB0(v21, v23, v39);

      *(v13 + 14) = v24;
      _os_log_impl(&dword_1B6020000, v11, v12, "Failed to generate jwt token for: %{public}s with error: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v14, -1, -1);
      MEMORY[0x1B8C91C90](v13, -1, -1);

      a3 = v37;
    }

    else
    {
    }

    v38 = v10;
    a3();

    v36 = v38;
  }

  else
  {
    if (qword_1EDAB4B00 != -1)
    {
      swift_once();
    }

    v25 = sub_1B6220B34();
    __swift_project_value_buffer(v25, qword_1EDAC2AC8);
    v26 = sub_1B6220B14();
    v27 = sub_1B62217E4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136446210;
      if (qword_1EDAAFA78 != -1)
      {
        swift_once();
      }

      v30 = sub_1B6220574();
      __swift_project_value_buffer(v30, qword_1EDAAFA80);
      v31 = sub_1B6220564();
      v33 = sub_1B602EEB0(v31, v32, v39);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1B6020000, v26, v27, "Failed to generate jwt token for: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1B8C91C90](v29, -1, -1);
      MEMORY[0x1B8C91C90](v28, -1, -1);
    }

    sub_1B616F398();
    v34 = swift_allocError();
    *v35 = 1;
    a3();
    v36 = v34;
  }
}

void sub_1B616F240(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1B616F340(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1B616F398()
{
  result = qword_1EDAAEC38;
  if (!qword_1EDAAEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEC38);
  }

  return result;
}

unint64_t sub_1B616F3F8()
{
  result = qword_1EDAAEA90;
  if (!qword_1EDAAEA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAAEA90);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13WeatherDaemon31WDSJWTAuthenticatorServiceProxyC6ErrorsO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B616F454(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B616F4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B616F504(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 HourWeatherStatistics.temperature.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t HourWeatherStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926660, &qword_1B6230570);
  OUTLINED_FUNCTION_2();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926668, &qword_1B6230578);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B616F920();
  v14 = v33;
  sub_1B62220D4();
  if (!v14)
  {
    v15 = v7;
    LOBYTE(v34) = 0;
    v30 = sub_1B6221DC4();
    v16 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    sub_1B616F974();
    sub_1B62220D4();
    LOBYTE(v34) = 0;
    v17 = sub_1B6221D74();
    v19 = v15;
    v21 = v32;
    if ((v18 & 1) == 0)
    {
      v33 = v17;
      LOBYTE(v34) = 1;
      v26 = sub_1B6221D74();
      if ((v27 & 1) == 0)
      {
        v28 = sub_1B616FA1C(v30, v33, v26);
        if (v29)
        {
          LOBYTE(v34) = 0;
          v33 = "v24@?0@NSString8@NSError16";
          sub_1B6221B94();
          swift_allocError();
          sub_1B616FA90();
          sub_1B6221B74();
          swift_willThrow();
          (*(v21 + 8))(v19, v3);
          (*(v10 + 8))(v13, v8);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v30 = v28;
      }
    }

    v37 = 1;
    sub_1B616F9C8();
    sub_1B6221D84();
    (*(v21 + 8))(v19, v3);
    (*(v10 + 8))(v13, v8);
    v22 = v35;
    v23 = v36;
    v24 = v34;
    v25 = v31;
    *v31 = v30;
    *(v25 + 1) = v24;
    v25[3] = v22;
    *(v25 + 32) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B616F920()
{
  result = qword_1EB926670;
  if (!qword_1EB926670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926670);
  }

  return result;
}

unint64_t sub_1B616F974()
{
  result = qword_1EB926678;
  if (!qword_1EB926678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926678);
  }

  return result;
}

unint64_t sub_1B616F9C8()
{
  result = qword_1EB926680;
  if (!qword_1EB926680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926680);
  }

  return result;
}

uint64_t sub_1B616FA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B61B3364(a2, a3);
  if ((v5 & 1) == 0)
  {
    v6 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v7 = (v6 * 24) >> 64;
      v8 = 24 * v6;
      if (v7 == v8 >> 63)
      {
        v9 = __OFADD__(v8, a1);
        v10 = v8 + a1;
        if (!v9)
        {
          result = v10 + 1;
          if (!__OFADD__(v10, 1))
          {
            return result;
          }

LABEL_10:
          __break(1u);
          return result;
        }

LABEL_9:
        __break(1u);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_1B616FA90()
{
  result = qword_1EB926688;
  if (!qword_1EB926688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926660, &qword_1B6230570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926688);
  }

  return result;
}

uint64_t sub_1B616FAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B6221CD4();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B616FB68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B616FAF4(*a1, a1[1], &unk_1F2D922F8);
  *a2 = result;
  return result;
}

uint64_t sub_1B616FBA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6086D2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B616FBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B616FAF4(a1, a2, &unk_1F2D922F8);
  *a3 = result;
  return result;
}

uint64_t sub_1B616FC04(uint64_t a1)
{
  v2 = sub_1B616F920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B616FC40(uint64_t a1)
{
  v2 = sub_1B616F920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B616FCA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B616FAF4(*a1, a1[1], &unk_1F2D92348);
  *a2 = result;
  return result;
}

uint64_t sub_1B616FCD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6086D70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B616FD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B616FAF4(a1, a2, &unk_1F2D92348);
  *a3 = result;
  return result;
}

uint64_t sub_1B616FD3C(uint64_t a1)
{
  v2 = sub_1B616F974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B616FD78(uint64_t a1)
{
  v2 = sub_1B616F974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static HourWeatherStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
      if (v2 && *(a1 + 24) == *(a2 + 24))
      {
        return 1;
      }
    }

    return 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

uint64_t HourWeatherStatistics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926690, &qword_1B6230580);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  v15 = *(v1 + 16);
  v16 = v10;
  v14 = v11;
  v21 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B616F920();
  sub_1B62220F4();
  LOBYTE(v17) = 0;
  sub_1B6221EB4();
  if (!v2)
  {
    v17 = v16;
    v18 = v15;
    v19 = v14;
    v20 = v21;
    v22 = 1;
    sub_1B616FFA8();
    sub_1B6221E74();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1B616FFA8()
{
  result = qword_1EB926698;
  if (!qword_1EB926698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926698);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B6170074(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6170094(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

_BYTE *sub_1B61700E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B61701C4()
{
  result = qword_1EB9266A0;
  if (!qword_1EB9266A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266A0);
  }

  return result;
}

unint64_t sub_1B617021C()
{
  result = qword_1EB9266A8;
  if (!qword_1EB9266A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266A8);
  }

  return result;
}

unint64_t sub_1B6170274()
{
  result = qword_1EB9266B0;
  if (!qword_1EB9266B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266B0);
  }

  return result;
}

unint64_t sub_1B61702CC()
{
  result = qword_1EB9266B8;
  if (!qword_1EB9266B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266B8);
  }

  return result;
}

unint64_t sub_1B6170324()
{
  result = qword_1EB9266C0;
  if (!qword_1EB9266C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266C0);
  }

  return result;
}

unint64_t sub_1B617037C()
{
  result = qword_1EB9266C8;
  if (!qword_1EB9266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266C8);
  }

  return result;
}

uint64_t GeoJSON.Feature<>.country.getter()
{
  if (*(v0 + 40) == 1)
  {
    return 0;
  }

  v1 = *(v0 + 48);
  sub_1B6220784();
  return v1;
}

uint64_t GeoJSON.Feature<>.channel.getter()
{
  if (*(v0 + 40) == 1)
  {
    return 0;
  }

  v1 = *(v0 + 32);
  sub_1B6220784();
  return v1;
}

uint64_t sub_1B61704E4(unint64_t a1, double a2, double a3)
{
  switch(a1 >> 62)
  {
    case 1uLL:
      v19 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v19;
      v25 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v6 = &qword_1EB9266D8;
      v7 = &qword_1B62309B0;
      sub_1B60C99C4(&v23, v22, &qword_1EB9266D8, &qword_1B62309B0);
      v10 = Array<A>.contains(_:);
      goto LABEL_6;
    case 2uLL:
      v11 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v11;
      v12 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v25 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v26 = v12;
      v6 = &qword_1EB9266D0;
      v7 = &qword_1B62309A8;
      sub_1B60C99C4(&v23, v22, &qword_1EB9266D0, &qword_1B62309A8);
      v13 = sub_1B6170698(a2, a3);
      break;
    case 3uLL:
      v14 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v14;
      v25 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v6 = &qword_1EB9266E8;
      v7 = &qword_1B62309C0;
      sub_1B60C99C4(&v23, v22, &qword_1EB9266E8, &qword_1B62309C0);
      sub_1B6170744(a2, a3, v15, v16, v17, v18);
      break;
    default:
      v5 = *(a1 + 32);
      v23 = *(a1 + 16);
      v24 = v5;
      v25 = *(a1 + 48);
      v6 = &qword_1EB9266E0;
      v7 = &qword_1B62309B8;
      sub_1B60C99C4(&v23, v22, &qword_1EB9266E0, &qword_1B62309B8);
      v10 = Array<A>.contains(_:);
LABEL_6:
      v8.n128_f64[0] = a2;
      v9.n128_f64[0] = a3;
      v13 = sub_1B617387C(v10, v8, v9);
      break;
  }

  v20 = v13;
  sub_1B602724C(&v23, v6, v7);
  return v20 & 1;
}

uint64_t sub_1B6170698(double a1, double a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    if (*(v3 + 16) != 4)
    {
      return 0;
    }

    v4.f64[0] = a2;
    v4.f64[1] = a1;
    v5 = vuzp1_s16(*&a1, vmovn_s64(vcgeq_f64(*(v3 + 48), v4)));
    LODWORD(v4.f64[0]) = vuzp1_s16(vmovn_s64(vcgeq_f64(v4, *(v3 + 32))), *&a1).u32[0];
    HIDWORD(v4.f64[0]) = v5.i32[1];
    if ((vminv_u16(*&v4.f64[0]) & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(v2 + 24);
  if ((~v6 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v8 = sub_1B61704E4(v6, a1, a2);
  sub_1B615206C(v6);
  return v8 & 1;
}

void sub_1B6170744(double a1, double a2, double a3, double a4, __n128 a5, __n128 a6)
{
  v7 = *(v6 + 8);
  if (!v7)
  {
    return;
  }

  a5.n128_f64[0] = a2;
  a6.n128_f64[0] = a1;
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = v7 + 32;
  v11.f64[0] = a2;
  *&v11.f64[1] = a6.n128_u64[0];
  v270 = v11;
  v274 = a6;
  v275 = a5;
  while (1)
  {
LABEL_3:
    if (v8 == v9)
    {
      return;
    }

    v12 = (v10 + (v8 << 6));
    v13 = v12[3];
    v14 = *v12;
    v15 = v12[1];
    v307 = v12[2];
    v308 = v13;
    v305 = v14;
    v306 = v15;
    ++v8;
    if (!v15 || *(v15 + 16) == 4 && *(v15 + 32) <= a5.n128_f64[0] && *(v15 + 48) >= a5.n128_f64[0] && *(v15 + 40) <= a6.n128_f64[0] && *(v15 + 56) >= a6.n128_f64[0])
    {
      v16 = *(&v306 + 1);
      if ((~*(&v306 + 1) & 0xF000000000000007) != 0)
      {
        break;
      }
    }
  }

  switch(*(&v306 + 1) >> 62)
  {
    case 1:
      v61 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v62 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v63 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v64 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v65 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v66 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (!v61 || *(v61 + 16) == 4 && *(v61 + 32) <= a5.n128_f64[0] && *(v61 + 48) >= a5.n128_f64[0] && *(v61 + 40) <= a6.n128_f64[0] && *(v61 + 56) >= a6.n128_f64[0])
      {
        if (v62)
        {
          v272 = v10;
          sub_1B60C99C4(&v305, &v301, &qword_1EB9266D0, &qword_1B62309A8);
          sub_1B615243C(v16);
          sub_1B6220784();
          sub_1B6220784();
          sub_1B6173BE0(v63, v64);
          Array<A>.contains(_:)(v62, v274.n128_f64[0], v275.n128_f64[0]);
          v68 = v67;

          sub_1B6173C28(v63, v64, v65, v66);
          sub_1B615206C(v16);
          sub_1B602724C(&v305, &qword_1EB9266D0, &qword_1B62309A8);
          v10 = v272;
          a6.n128_u64[0] = v274.n128_u64[0];
          a5.n128_u64[0] = v275.n128_u64[0];
          if (v68)
          {
            return;
          }
        }
      }

      goto LABEL_3;
    case 2:
      v31 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v301 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v302 = v31;
      v32 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v303 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v304 = v32;
      if (v302 && (*(v302 + 16) != 4 || *(v302 + 32) > a5.n128_f64[0] || *(v302 + 48) < a5.n128_f64[0] || *(v302 + 40) > a6.n128_f64[0] || *(v302 + 56) < a6.n128_f64[0]) || (~*(&v302 + 1) & 0xF000000000000007) == 0)
      {
        goto LABEL_3;
      }

      break;
    case 3:
      v53 = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v323[0] = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v323[1] = v53;
      v323[2] = *((*(&v306 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v54 = *(&v306 + 1);
      v55 = v10;
      sub_1B60C99C4(&v305, &v301, &qword_1EB9266D0, &qword_1B62309A8);
      sub_1B615243C(v54);
      sub_1B60C99C4(v323, &v301, &qword_1EB9266E8, &qword_1B62309C0);
      sub_1B6170744(v274.n128_f64[0], v275.n128_f64[0]);
      v57 = v56;
      v58 = v323;
      v59 = &qword_1EB9266E8;
      v60 = &qword_1B62309C0;
LABEL_48:
      sub_1B602724C(v58, v59, v60);
      sub_1B615206C(v54);
      sub_1B602724C(&v305, &qword_1EB9266D0, &qword_1B62309A8);
      v10 = v55;
      a6.n128_u64[0] = v274.n128_u64[0];
      a5.n128_u64[0] = v275.n128_u64[0];
      if (v57)
      {
        return;
      }

      goto LABEL_3;
    default:
      v18 = *(*(&v306 + 1) + 16);
      v17 = *(*(&v306 + 1) + 24);
      v20 = *(*(&v306 + 1) + 32);
      v19 = *(*(&v306 + 1) + 40);
      v21 = *(*(&v306 + 1) + 48);
      v22 = *(*(&v306 + 1) + 56);
      if (v18 && (*(v18 + 16) != 4 || *(v18 + 32) > a5.n128_f64[0] || *(v18 + 48) < a5.n128_f64[0] || *(v18 + 40) > a6.n128_f64[0] || *(v18 + 56) < a6.n128_f64[0]))
      {
        goto LABEL_3;
      }

      if (!v17)
      {
        goto LABEL_3;
      }

      v23 = *(v17 + 16);
      if (!v23)
      {
        goto LABEL_3;
      }

      v271 = v10;
      v264 = v9;
      sub_1B60C99C4(&v305, &v301, &qword_1EB9266D0, &qword_1B62309A8);
      sub_1B615243C(v16);
      sub_1B6220784();
      sub_1B6220784();
      sub_1B6173BE0(v20, v19);
      v24 = sub_1B6220784();
      sub_1B60F7978(v24, v274.n128_f64[0], v275.n128_f64[0]);
      v257 = v16;
      v26 = v25;

      if (v26)
      {
        v27 = v23 - 1;
        if (v23 == 1)
        {

          goto LABEL_235;
        }

        if (*(v17 + 16) < v23)
        {
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
          return;
        }

        sub_1B6220784();
        v28 = 40;
        if (!v27)
        {
LABEL_234:

          swift_bridgeObjectRelease_n();
LABEL_235:
          sub_1B6173C28(v20, v19, v21, v22);
          sub_1B615206C(v257);
          goto LABEL_236;
        }

        while (1)
        {
          v29 = sub_1B6220784();
          sub_1B60F7978(v29, v274.n128_f64[0], v275.n128_f64[0]);
          if (v30)
          {
            break;
          }

          v28 += 8;
          if (!--v27)
          {
            goto LABEL_234;
          }
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      sub_1B6173C28(v20, v19, v21, v22);
      sub_1B615206C(v257);
      goto LABEL_73;
  }

  switch(*(&v302 + 1) >> 62)
  {
    case 1:
      v78 = *(&v306 + 1);
      v265 = v9;
      v79 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v80 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v81 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v82 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v83 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v84 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      if (v79)
      {
        if (*(v79 + 16) != 4 || (v85 = *(v79 + 32), v86 = vuzp1_s16(*&v85.f64[0], vmovn_s64(vcgeq_f64(*(v79 + 48), v270))), *&v85.f64[0] = vmovn_s64(vcgeq_f64(v270, v85)), LODWORD(v85.f64[0]) = vuzp1_s16(*&v85.f64[0], *&v85.f64[0]).u32[0], HIDWORD(v85.f64[0]) = v86.i32[1], (vminv_u16(*&v85.f64[0]) & 1) == 0))
        {
          v87 = v10;
LABEL_77:
          sub_1B60C99C4(&v305, &v297, &qword_1EB9266D0, &qword_1B62309A8);
          sub_1B602724C(&v305, &qword_1EB9266D0, &qword_1B62309A8);
          a6.n128_u64[0] = v274.n128_u64[0];
          a5.n128_u64[0] = v275.n128_u64[0];
          v9 = v265;
          v10 = v87;
          goto LABEL_3;
        }
      }

      v87 = v10;
      if (!v80)
      {
        goto LABEL_77;
      }

      v88 = *(&v302 + 1);
      sub_1B60C99C4(&v305, &v297, &qword_1EB9266D0, &qword_1B62309A8);
      sub_1B615243C(v78);
      sub_1B60C99C4(&v301, &v297, &qword_1EB9266D0, &qword_1B62309A8);
      sub_1B615243C(v88);
      sub_1B6220784();
      sub_1B6220784();
      sub_1B6173BE0(v81, v82);
      Array<A>.contains(_:)(v80, v274.n128_f64[0], v275.n128_f64[0]);
      v259 = v89;

      sub_1B6173C28(v81, v82, v83, v84);
      sub_1B615206C(v88);
      sub_1B602724C(&v301, &qword_1EB9266D0, &qword_1B62309A8);
      sub_1B615206C(v78);
      sub_1B602724C(&v305, &qword_1EB9266D0, &qword_1B62309A8);
      a6.n128_u64[0] = v274.n128_u64[0];
      a5.n128_u64[0] = v275.n128_u64[0];
      v9 = v265;
      v10 = v87;
      if (v259)
      {
        return;
      }

      goto LABEL_3;
    case 2:
      v69 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v297 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v298 = v69;
      v70 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v299 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v300 = v70;
      if (!v298 || *(v298 + 16) == 4 && (v71 = *(v298 + 32), v72 = vuzp1_s16(*&v71.f64[0], vmovn_s64(vcgeq_f64(*(v298 + 48), v270))), *&v71.f64[0] = vmovn_s64(vcgeq_f64(v270, v71)), LODWORD(v71.f64[0]) = vuzp1_s16(*&v71.f64[0], *&v71.f64[0]).u32[0], HIDWORD(v71.f64[0]) = v72.i32[1], (vminv_u16(*&v71.f64[0]))) && (v73 = *(&v298 + 1), (~*(&v298 + 1) & 0xF000000000000007) != 0))
      {
        v273 = v10;
        switch(*(&v298 + 1) >> 62)
        {
          case 1:
            v266 = v9;
            v107 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v95 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v108 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v109 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
            v110 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            if (!v107 || *(v107 + 16) == 4 && (v111 = *(v107 + 32), v112 = vuzp1_s16(*&v111.f64[0], vmovn_s64(vcgeq_f64(*(v107 + 48), v270))), *&v111.f64[0] = vmovn_s64(vcgeq_f64(v270, v111)), LODWORD(v111.f64[0]) = vuzp1_s16(*&v111.f64[0], *&v111.f64[0]).u32[0], HIDWORD(v111.f64[0]) = v112.i32[1], (vminv_u16(*&v111.f64[0]) & 1) != 0))
            {
              v113 = *(&v306 + 1);
              if (v95)
              {
                v254 = *(&v298 + 1);
                v261 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
                v121 = *(&v302 + 1);
                v246 = *(&v302 + 1);
                sub_1B60C99C4(&v305, &v293, &qword_1EB9266D0, &qword_1B62309A8);
                sub_1B615243C(v113);
                sub_1B60C99C4(&v301, &v293, &qword_1EB9266D0, &qword_1B62309A8);
                sub_1B615243C(v121);
                sub_1B60C99C4(&v297, &v293, &qword_1EB9266D0, &qword_1B62309A8);
                sub_1B615243C(v254);
                sub_1B6220784();
                sub_1B6220784();
                sub_1B6173BE0(v108, v109);
                Array<A>.contains(_:)(v95, v274.n128_f64[0], v275.n128_f64[0]);
                LOBYTE(v95) = v122;

                sub_1B6173C28(v108, v109, v110, v261);
                sub_1B615206C(v254);
                sub_1B602724C(&v297, &qword_1EB9266D0, &qword_1B62309A8);
                sub_1B615206C(v246);
              }

              else
              {
                sub_1B60C99C4(&v305, &v293, &qword_1EB9266D0, &qword_1B62309A8);
                sub_1B615243C(v113);
                sub_1B60C99C4(&v301, &v293, &qword_1EB9266D0, &qword_1B62309A8);
              }
            }

            else
            {
              v113 = *(&v306 + 1);
              sub_1B60C99C4(&v305, &v293, &qword_1EB9266D0, &qword_1B62309A8);
              sub_1B615243C(v113);
              sub_1B60C99C4(&v301, &v293, &qword_1EB9266D0, &qword_1B62309A8);
              LOBYTE(v95) = 0;
            }

            v9 = v266;
            sub_1B602724C(&v301, &qword_1EB9266D0, &qword_1B62309A8);
            v106 = v113;
            goto LABEL_114;
          case 2:
            v97 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v293 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v294 = v97;
            v98 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
            v295 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v296 = v98;
            if (!v294 || *(v294 + 16) == 4 && (v99 = *(v294 + 32), v100 = vuzp1_s16(*&v99.f64[0], vmovn_s64(vcgeq_f64(*(v294 + 48), v270))), *&v99.f64[0] = vmovn_s64(vcgeq_f64(v270, v99)), LODWORD(v99.f64[0]) = vuzp1_s16(*&v99.f64[0], *&v99.f64[0]).u32[0], HIDWORD(v99.f64[0]) = v100.i32[1], (vminv_u16(*&v99.f64[0]))) && (~*(&v294 + 1) & 0xF000000000000007) != 0)
            {
              switch(*(&v294 + 1) >> 62)
              {
                case 1:
                  v136 = *(&v298 + 1);
                  v137 = *(&v302 + 1);
                  v263 = *(&v306 + 1);
                  v268 = v9;
                  v139 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                  v138 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                  v95 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                  v141 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                  v140 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
                  if (!v139 || *(v139 + 16) == 4 && (v142 = *(v139 + 32), v143 = vuzp1_s16(*&v142.f64[0], vmovn_s64(vcgeq_f64(*(v139 + 48), v270))), *&v142.f64[0] = vmovn_s64(vcgeq_f64(v270, v142)), LODWORD(v142.f64[0]) = vuzp1_s16(*&v142.f64[0], *&v142.f64[0]).u32[0], HIDWORD(v142.f64[0]) = v143.i32[1], (vminv_u16(*&v142.f64[0]))) && (v243 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28), v250 = *(&v294 + 1), v138))
                  {
                    sub_1B60C99C4(&v305, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v263);
                    sub_1B60C99C4(&v301, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v137);
                    sub_1B60C99C4(&v297, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v136);
                    sub_1B60C99C4(&v293, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v250);
                    sub_1B6220784();
                    sub_1B6220784();
                    sub_1B6173BE0(v95, v243);
                    Array<A>.contains(_:)(v138, v274.n128_f64[0], v275.n128_f64[0]);
                    v237 = v140;
                    v144 = v141;
                    v145 = v95;
                    LOBYTE(v95) = v146;

                    sub_1B6173C28(v145, v243, v144, v237);
                    sub_1B615206C(v250);
                    sub_1B602724C(&v293, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615206C(v136);
                  }

                  else
                  {
                    sub_1B60C99C4(&v305, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v263);
                    sub_1B60C99C4(&v301, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v137);
                    sub_1B60C99C4(&v297, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    LOBYTE(v95) = 0;
                  }

                  sub_1B602724C(&v297, &qword_1EB9266D0, &qword_1B62309A8);
                  sub_1B615206C(v137);
                  v101 = v263;
                  v9 = v268;
                  break;
                case 2:
                  v256 = *(&v298 + 1);
                  v262 = *(&v306 + 1);
                  v123 = *(&v302 + 1);
                  v129 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                  v289 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                  v290 = v129;
                  v130 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                  v291 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                  v292 = v130;
                  if (v290)
                  {
                    if (*(v290 + 16) != 4 || (v131 = *(v290 + 32), v132 = vuzp1_s16(*&v131.f64[0], vmovn_s64(vcgeq_f64(*(v290 + 48), v270))), *&v131.f64[0] = vmovn_s64(vcgeq_f64(v270, v131)), LODWORD(v131.f64[0]) = vuzp1_s16(*&v131.f64[0], *&v131.f64[0]).u32[0], HIDWORD(v131.f64[0]) = v132.i32[1], (vminv_u16(*&v131.f64[0]) & 1) == 0))
                    {
                      sub_1B60C99C4(&v305, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v262);
                      sub_1B60C99C4(&v301, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v123);
                      v128 = &v285;
                      goto LABEL_122;
                    }
                  }

                  v251 = *(&v294 + 1);
                  v269 = v9;
                  v244 = *(&v290 + 1);
                  if ((~*(&v290 + 1) & 0xF000000000000007) == 0)
                  {
                    sub_1B60C99C4(&v305, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v262);
                    sub_1B60C99C4(&v301, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v123);
                    v150 = &v285;
                    goto LABEL_150;
                  }

                  switch(*(&v290 + 1) >> 62)
                  {
                    case 1:
                      v174 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      v173 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                      v175 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
                      v240 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                      v176 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                      v177 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
                      if (v174)
                      {
                        if (*(v174 + 16) != 4)
                        {
                          goto LABEL_176;
                        }

                        v178 = *(v174 + 32);
                        v179 = vuzp1_s16(*&v178.f64[0], vmovn_s64(vcgeq_f64(*(v174 + 48), v270)));
                        *&v178.f64[0] = vmovn_s64(vcgeq_f64(v270, v178));
                        LODWORD(v178.f64[0]) = vuzp1_s16(*&v178.f64[0], *&v178.f64[0]).u32[0];
                        HIDWORD(v178.f64[0]) = v179.i32[1];
                        if ((vminv_u16(*&v178.f64[0]) & 1) == 0)
                        {
                          goto LABEL_176;
                        }
                      }

                      if (!v173)
                      {
                        goto LABEL_176;
                      }

                      sub_1B60C99C4(&v305, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v262);
                      sub_1B60C99C4(&v301, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v123);
                      sub_1B60C99C4(&v297, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v256);
                      sub_1B60C99C4(&v293, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v251);
                      sub_1B60C99C4(&v289, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      v180 = v244;
                      sub_1B615243C(v244);
                      sub_1B6220784();
                      sub_1B6220784();
                      sub_1B6173BE0(v240, v175);
                      Array<A>.contains(_:)(v173, v274.n128_f64[0], v275.n128_f64[0]);
                      LOBYTE(v95) = v181;

                      sub_1B6173C28(v240, v175, v176, v177);
                      goto LABEL_174;
                    case 2:
                      v164 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                      v285 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      v286 = v164;
                      v165 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                      v287 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                      v288 = v165;
                      if (v286 && (*(v286 + 16) != 4 || (v166 = *(v286 + 32), v167 = vuzp1_s16(*&v166.f64[0], vmovn_s64(vcgeq_f64(*(v286 + 48), v270))), *&v166.f64[0] = vmovn_s64(vcgeq_f64(v270, v166)), LODWORD(v166.f64[0]) = vuzp1_s16(*&v166.f64[0], *&v166.f64[0]).u32[0], HIDWORD(v166.f64[0]) = v167.i32[1], (vminv_u16(*&v166.f64[0]) & 1) == 0)) || (v168 = *(&v286 + 1), (~*(&v286 + 1) & 0xF000000000000007) == 0))
                      {
                        sub_1B60C99C4(&v305, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                        sub_1B615243C(v262);
                        sub_1B60C99C4(&v301, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                        sub_1B615243C(v123);
                        sub_1B60C99C4(&v297, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                        sub_1B615243C(v256);
                        v169 = &v281;
                        goto LABEL_177;
                      }

                      switch(*(&v286 + 1) >> 62)
                      {
                        case 1:
                          v201 = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                          v318[0] = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                          v318[1] = v201;
                          v318[2] = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                          sub_1B60C99C4(&v305, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v262);
                          sub_1B60C99C4(&v301, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v123);
                          sub_1B60C99C4(&v297, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v256);
                          sub_1B60C99C4(&v293, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          v190 = v251;
                          sub_1B615243C(v251);
                          sub_1B60C99C4(&v289, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          v191 = v244;
                          sub_1B615243C(v244);
                          sub_1B60C99C4(&v285, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v168);
                          v192 = &qword_1EB9266D8;
                          v193 = &qword_1B62309B0;
                          sub_1B60C99C4(v318, &v281, &qword_1EB9266D8, &qword_1B62309B0);
                          LOBYTE(v95) = sub_1B617387C(Array<A>.contains(_:), v274, v275);
                          v194 = v318;
                          goto LABEL_200;
                        case 2:
                          v196 = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                          v281 = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                          v282 = v196;
                          v197 = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                          v283 = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                          v284 = v197;
                          if (v282 && (*(v282 + 16) != 4 || (v198 = *(v282 + 32), v199 = vuzp1_s16(*&v198.f64[0], vmovn_s64(vcgeq_f64(*(v282 + 48), v270))), *&v198.f64[0] = vmovn_s64(vcgeq_f64(v270, v198)), LODWORD(v198.f64[0]) = vuzp1_s16(*&v198.f64[0], *&v198.f64[0]).u32[0], HIDWORD(v198.f64[0]) = v199.i32[1], (vminv_u16(*&v198.f64[0]) & 1) == 0)) || (v200 = *(&v282 + 1), (~*(&v282 + 1) & 0xF000000000000007) == 0))
                          {
                            sub_1B60C99C4(&v305, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                            sub_1B615243C(v262);
                            sub_1B60C99C4(&v301, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                            sub_1B615243C(v123);
                            sub_1B60C99C4(&v297, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                            sub_1B615243C(v256);
                            sub_1B60C99C4(&v293, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                            sub_1B615243C(v251);
                            v195 = &v277;
                            goto LABEL_196;
                          }

                          switch(*(&v282 + 1) >> 62)
                          {
                            case 1:
                              v215 = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                              v315[0] = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                              v315[1] = v215;
                              v315[2] = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                              sub_1B60C99C4(&v305, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v262);
                              sub_1B60C99C4(&v301, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v123);
                              sub_1B60C99C4(&v297, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v256);
                              sub_1B60C99C4(&v293, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v251);
                              sub_1B60C99C4(&v289, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              v180 = v244;
                              sub_1B615243C(v244);
                              sub_1B60C99C4(&v285, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v168);
                              sub_1B60C99C4(&v281, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v200);
                              v212 = &qword_1EB9266D8;
                              v213 = &qword_1B62309B0;
                              sub_1B60C99C4(v315, &v277, &qword_1EB9266D8, &qword_1B62309B0);
                              LOBYTE(v95) = sub_1B617387C(Array<A>.contains(_:), v274, v275);
                              v214 = v315;
                              goto LABEL_224;
                            case 2:
                              v216 = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                              v277 = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                              v278 = v216;
                              v217 = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                              v279 = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                              v280 = v217;
                              if (!v278 || *(v278 + 16) == 4 && (v218 = *(v278 + 32), v219 = vuzp1_s16(*&v218.f64[0], vmovn_s64(vcgeq_f64(*(v278 + 48), v270))), *&v218.f64[0] = vmovn_s64(vcgeq_f64(v270, v218)), LODWORD(v218.f64[0]) = vuzp1_s16(*&v218.f64[0], *&v218.f64[0]).u32[0], HIDWORD(v218.f64[0]) = v219.i32[1], (vminv_u16(*&v218.f64[0]))) && (v220 = *(&v278 + 1), (~*(&v278 + 1) & 0xF000000000000007) != 0))
                              {
                                switch(*(&v278 + 1) >> 62)
                                {
                                  case 1:
                                    v227 = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                                    v312[0] = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                                    v312[1] = v227;
                                    v312[2] = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                                    sub_1B60C99C4(&v305, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v262);
                                    sub_1B60C99C4(&v301, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v123);
                                    sub_1B60C99C4(&v297, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v256);
                                    sub_1B60C99C4(&v293, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v251);
                                    sub_1B60C99C4(&v289, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v244);
                                    sub_1B60C99C4(&v285, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v168);
                                    sub_1B60C99C4(&v281, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v200);
                                    sub_1B60C99C4(&v277, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v220);
                                    v224 = &qword_1EB9266D8;
                                    v225 = &qword_1B62309B0;
                                    sub_1B60C99C4(v312, v276, &qword_1EB9266D8, &qword_1B62309B0);
                                    LOBYTE(v95) = sub_1B617387C(Array<A>.contains(_:), v274, v275);
                                    v226 = v312;
                                    goto LABEL_230;
                                  case 2:
                                    v228 = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                                    v309[0] = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                                    v309[1] = v228;
                                    v229 = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
                                    v309[2] = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                                    v309[3] = v229;
                                    sub_1B60C99C4(&v305, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v262);
                                    sub_1B60C99C4(&v301, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v123);
                                    sub_1B60C99C4(&v297, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v256);
                                    sub_1B60C99C4(&v293, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v251);
                                    sub_1B60C99C4(&v289, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v244);
                                    sub_1B60C99C4(&v285, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v168);
                                    sub_1B60C99C4(&v281, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v200);
                                    sub_1B60C99C4(&v277, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v220);
                                    sub_1B60C99C4(v309, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    LOBYTE(v95) = sub_1B6170698(v274.n128_f64[0], v275.n128_f64[0]);
                                    v226 = v309;
                                    v230 = &qword_1EB9266D0;
                                    v231 = &qword_1B62309A8;
                                    goto LABEL_231;
                                  case 3:
                                    v232 = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                                    v310[0] = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                                    v310[1] = v232;
                                    v310[2] = *((*(&v278 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                                    sub_1B60C99C4(&v305, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v262);
                                    sub_1B60C99C4(&v301, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v123);
                                    sub_1B60C99C4(&v297, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v256);
                                    sub_1B60C99C4(&v293, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v251);
                                    sub_1B60C99C4(&v289, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v244);
                                    sub_1B60C99C4(&v285, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v168);
                                    sub_1B60C99C4(&v281, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v200);
                                    sub_1B60C99C4(&v277, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v220);
                                    v224 = &qword_1EB9266E8;
                                    v225 = &qword_1B62309C0;
                                    sub_1B60C99C4(v310, v276, &qword_1EB9266E8, &qword_1B62309C0);
                                    sub_1B6170744(v274.n128_f64[0], v275.n128_f64[0]);
                                    LOBYTE(v95) = v233;
                                    v226 = v310;
                                    goto LABEL_230;
                                  default:
                                    v223 = *(*(&v278 + 1) + 32);
                                    v311[0] = *(*(&v278 + 1) + 16);
                                    v311[1] = v223;
                                    v311[2] = *(*(&v278 + 1) + 48);
                                    sub_1B60C99C4(&v305, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v262);
                                    sub_1B60C99C4(&v301, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v123);
                                    sub_1B60C99C4(&v297, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v256);
                                    sub_1B60C99C4(&v293, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v251);
                                    sub_1B60C99C4(&v289, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v244);
                                    sub_1B60C99C4(&v285, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v168);
                                    sub_1B60C99C4(&v281, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v200);
                                    sub_1B60C99C4(&v277, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615243C(v220);
                                    v224 = &qword_1EB9266E0;
                                    v225 = &qword_1B62309B8;
                                    sub_1B60C99C4(v311, v276, &qword_1EB9266E0, &qword_1B62309B8);
                                    LOBYTE(v95) = sub_1B617387C(Array<A>.contains(_:), v274, v275);
                                    v226 = v311;
LABEL_230:
                                    v230 = v224;
                                    v231 = v225;
LABEL_231:
                                    sub_1B602724C(v226, v230, v231);
                                    sub_1B615206C(v220);
                                    sub_1B602724C(&v277, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615206C(v200);
                                    sub_1B602724C(&v281, &qword_1EB9266D0, &qword_1B62309A8);
                                    sub_1B615206C(v168);
                                    break;
                                }
                              }

                              else
                              {
                                sub_1B60C99C4(&v305, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                sub_1B615243C(v262);
                                sub_1B60C99C4(&v301, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                sub_1B615243C(v123);
                                sub_1B60C99C4(&v297, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                sub_1B615243C(v256);
                                sub_1B60C99C4(&v293, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                sub_1B615243C(v251);
                                sub_1B60C99C4(&v289, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                sub_1B615243C(v244);
                                sub_1B60C99C4(&v285, v276, &qword_1EB9266D0, &qword_1B62309A8);
                                LOBYTE(v95) = 0;
                              }

                              sub_1B602724C(&v285, &qword_1EB9266D0, &qword_1B62309A8);
                              v182 = v244;
                              goto LABEL_175;
                            case 3:
                              v221 = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                              v313[0] = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                              v313[1] = v221;
                              v313[2] = *((*(&v282 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                              sub_1B60C99C4(&v305, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v262);
                              sub_1B60C99C4(&v301, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v123);
                              sub_1B60C99C4(&v297, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v256);
                              sub_1B60C99C4(&v293, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v251);
                              sub_1B60C99C4(&v289, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              v180 = v244;
                              sub_1B615243C(v244);
                              sub_1B60C99C4(&v285, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v168);
                              sub_1B60C99C4(&v281, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v200);
                              v212 = &qword_1EB9266E8;
                              v213 = &qword_1B62309C0;
                              sub_1B60C99C4(v313, &v277, &qword_1EB9266E8, &qword_1B62309C0);
                              sub_1B6170744(v274.n128_f64[0], v275.n128_f64[0]);
                              LOBYTE(v95) = v222;
                              v214 = v313;
                              goto LABEL_224;
                            default:
                              v211 = *(*(&v282 + 1) + 32);
                              v314[0] = *(*(&v282 + 1) + 16);
                              v314[1] = v211;
                              v314[2] = *(*(&v282 + 1) + 48);
                              sub_1B60C99C4(&v305, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v262);
                              sub_1B60C99C4(&v301, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v123);
                              sub_1B60C99C4(&v297, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v256);
                              sub_1B60C99C4(&v293, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v251);
                              sub_1B60C99C4(&v289, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              v180 = v244;
                              sub_1B615243C(v244);
                              sub_1B60C99C4(&v285, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v168);
                              sub_1B60C99C4(&v281, &v277, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615243C(v200);
                              v212 = &qword_1EB9266E0;
                              v213 = &qword_1B62309B8;
                              sub_1B60C99C4(v314, &v277, &qword_1EB9266E0, &qword_1B62309B8);
                              LOBYTE(v95) = sub_1B617387C(Array<A>.contains(_:), v274, v275);
                              v214 = v314;
LABEL_224:
                              sub_1B602724C(v214, v212, v213);
                              sub_1B615206C(v200);
                              sub_1B602724C(&v281, &qword_1EB9266D0, &qword_1B62309A8);
                              sub_1B615206C(v168);
                              sub_1B602724C(&v285, &qword_1EB9266D0, &qword_1B62309A8);
                              break;
                          }

                          break;
                        case 3:
                          v202 = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                          v316[0] = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                          v316[1] = v202;
                          v316[2] = *((*(&v286 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                          sub_1B60C99C4(&v305, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v262);
                          sub_1B60C99C4(&v301, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v123);
                          sub_1B60C99C4(&v297, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v256);
                          sub_1B60C99C4(&v293, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          v190 = v251;
                          sub_1B615243C(v251);
                          sub_1B60C99C4(&v289, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          v191 = v244;
                          sub_1B615243C(v244);
                          sub_1B60C99C4(&v285, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v168);
                          v192 = &qword_1EB9266E8;
                          v193 = &qword_1B62309C0;
                          sub_1B60C99C4(v316, &v281, &qword_1EB9266E8, &qword_1B62309C0);
                          sub_1B6170744(v274.n128_f64[0], v275.n128_f64[0]);
                          LOBYTE(v95) = v203;
                          v194 = v316;
                          goto LABEL_200;
                        default:
                          v189 = *(*(&v286 + 1) + 32);
                          v317[0] = *(*(&v286 + 1) + 16);
                          v317[1] = v189;
                          v317[2] = *(*(&v286 + 1) + 48);
                          sub_1B60C99C4(&v305, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v262);
                          sub_1B60C99C4(&v301, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v123);
                          sub_1B60C99C4(&v297, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v256);
                          sub_1B60C99C4(&v293, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          v190 = v251;
                          sub_1B615243C(v251);
                          sub_1B60C99C4(&v289, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          v191 = v244;
                          sub_1B615243C(v244);
                          sub_1B60C99C4(&v285, &v281, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v168);
                          v192 = &qword_1EB9266E0;
                          v193 = &qword_1B62309B8;
                          sub_1B60C99C4(v317, &v281, &qword_1EB9266E0, &qword_1B62309B8);
                          LOBYTE(v95) = sub_1B617387C(Array<A>.contains(_:), v274, v275);
                          v194 = v317;
LABEL_200:
                          sub_1B602724C(v194, v192, v193);
                          sub_1B615206C(v168);
                          sub_1B602724C(&v285, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615206C(v191);
                          sub_1B602724C(&v289, &qword_1EB9266D0, &qword_1B62309A8);
                          v204 = v190;
                          goto LABEL_209;
                      }

LABEL_174:
                      v182 = v180;
LABEL_175:
                      sub_1B615206C(v182);
                      goto LABEL_208;
                    case 3:
                      v170 = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                      v319[0] = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                      v319[1] = v170;
                      v319[2] = *((*(&v290 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                      sub_1B60C99C4(&v305, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v262);
                      sub_1B60C99C4(&v301, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v123);
                      sub_1B60C99C4(&v297, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v256);
                      sub_1B60C99C4(&v293, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v251);
                      sub_1B60C99C4(&v289, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v244);
                      sub_1B60C99C4(v319, &v285, &qword_1EB9266E8, &qword_1B62309C0);
                      sub_1B6170744(v274.n128_f64[0], v275.n128_f64[0]);
                      LOBYTE(v95) = v171;
                      sub_1B602724C(v319, &qword_1EB9266E8, &qword_1B62309C0);
                      sub_1B615206C(v244);
                      sub_1B602724C(&v289, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615206C(v251);
                      sub_1B602724C(&v293, &qword_1EB9266D0, &qword_1B62309A8);
                      v172 = v256;
                      goto LABEL_211;
                    default:
                      v155 = *(*(&v290 + 1) + 16);
                      v156 = *(*(&v290 + 1) + 24);
                      v235 = *(*(&v290 + 1) + 32);
                      v157 = *(*(&v290 + 1) + 56);
                      v239 = *(*(&v290 + 1) + 48);
                      if (!v155 || *(v155 + 16) == 4 && (v158 = *(v155 + 32), v159 = vuzp1_s16(*&v158.f64[0], vmovn_s64(vcgeq_f64(*(v155 + 48), v270))), *&v158.f64[0] = vmovn_s64(vcgeq_f64(v270, v158)), LODWORD(v158.f64[0]) = vuzp1_s16(*&v158.f64[0], *&v158.f64[0]).u32[0], HIDWORD(v158.f64[0]) = v159.i32[1], (vminv_u16(*&v158.f64[0]) & 1) != 0))
                      {
                        if (v156)
                        {
                          v160 = *(v156 + 16);
                          if (!v160)
                          {
                            sub_1B60C99C4(&v305, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                            sub_1B615243C(v262);
                            sub_1B60C99C4(&v301, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                            sub_1B615243C(v123);
                            sub_1B60C99C4(&v297, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                            sub_1B615243C(v256);
                            sub_1B60C99C4(&v293, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                            sub_1B615243C(v251);
                            v195 = &v285;
LABEL_196:
                            sub_1B60C99C4(&v289, v195, &qword_1EB9266D0, &qword_1B62309A8);
                            goto LABEL_197;
                          }

                          sub_1B60C99C4(&v305, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v262);
                          sub_1B60C99C4(&v301, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v123);
                          sub_1B60C99C4(&v297, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v256);
                          sub_1B60C99C4(&v293, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v251);
                          sub_1B60C99C4(&v289, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615243C(v244);
                          sub_1B6220784();
                          sub_1B6220784();
                          sub_1B6173BE0(v235, *(&v235 + 1));
                          v161 = sub_1B6220784();
                          sub_1B60F7978(v161, v274.n128_f64[0], v275.n128_f64[0]);
                          v163 = v162;

                          if ((v163 & 1) == 0)
                          {

                            goto LABEL_190;
                          }

                          if (v160 == 1)
                          {
                          }

                          else
                          {
                            sub_1B60F7D94();
                            v206 = v205;
                            v208 = v207 >> 1;
                            while (v208 != v206)
                            {
                              if (v206 >= v208)
                              {
                                goto LABEL_244;
                              }

                              v209 = sub_1B6220784();
                              sub_1B60F7978(v209, v274.n128_f64[0], v275.n128_f64[0]);
                              if (v210)
                              {

                                swift_unknownObjectRelease();
LABEL_190:
                                sub_1B6173C28(v235, *(&v235 + 1), v239, v157);
                                sub_1B615206C(v244);
LABEL_197:
                                LOBYTE(v95) = 0;
LABEL_208:
                                sub_1B602724C(&v289, &qword_1EB9266D0, &qword_1B62309A8);
                                v204 = v251;
LABEL_209:
                                sub_1B615206C(v204);
                                goto LABEL_210;
                              }

                              ++v206;
                            }

                            swift_unknownObjectRelease();
                          }

                          sub_1B6173C28(v235, *(&v235 + 1), v239, v157);
                          sub_1B615206C(v244);
                          LOBYTE(v95) = 1;
                          goto LABEL_208;
                        }
                      }

LABEL_176:
                      sub_1B60C99C4(&v305, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v262);
                      sub_1B60C99C4(&v301, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v123);
                      sub_1B60C99C4(&v297, &v285, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v256);
                      v169 = &v285;
LABEL_177:
                      sub_1B60C99C4(&v293, v169, &qword_1EB9266D0, &qword_1B62309A8);
                      LOBYTE(v95) = 0;
LABEL_210:
                      sub_1B602724C(&v293, &qword_1EB9266D0, &qword_1B62309A8);
                      v172 = v256;
LABEL_211:
                      sub_1B615206C(v172);
                      break;
                  }

                  goto LABEL_212;
                case 3:
                  v133 = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
                  v320[0] = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                  v320[1] = v133;
                  v320[2] = *((*(&v294 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                  v95 = *(&v302 + 1);
                  v247 = *(&v302 + 1);
                  v134 = *(&v294 + 1);
                  v101 = *(&v306 + 1);
                  sub_1B60C99C4(&v305, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                  sub_1B615243C(v101);
                  sub_1B60C99C4(&v301, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                  sub_1B615243C(v95);
                  sub_1B60C99C4(&v297, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                  sub_1B615243C(v73);
                  sub_1B60C99C4(&v293, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                  sub_1B615243C(v134);
                  sub_1B60C99C4(v320, &v289, &qword_1EB9266E8, &qword_1B62309C0);
                  sub_1B6170744(v274.n128_f64[0], v275.n128_f64[0]);
                  LOBYTE(v95) = v135;
                  sub_1B602724C(v320, &qword_1EB9266E8, &qword_1B62309C0);
                  sub_1B615206C(v134);
                  sub_1B602724C(&v293, &qword_1EB9266D0, &qword_1B62309A8);
                  sub_1B615206C(v73);
                  sub_1B602724C(&v297, &qword_1EB9266D0, &qword_1B62309A8);
                  v105 = v247;
                  goto LABEL_91;
                default:
                  v255 = *(&v298 + 1);
                  v262 = *(&v306 + 1);
                  v123 = *(&v302 + 1);
                  v124 = *(*(&v294 + 1) + 16);
                  v125 = *(*(&v294 + 1) + 24);
                  if (!v124 || *(v124 + 16) == 4 && (v126 = *(v124 + 32), v127 = vuzp1_s16(*&v126.f64[0], vmovn_s64(vcgeq_f64(*(v124 + 48), v270))), *&v126.f64[0] = vmovn_s64(vcgeq_f64(v270, v126)), LODWORD(v126.f64[0]) = vuzp1_s16(*&v126.f64[0], *&v126.f64[0]).u32[0], HIDWORD(v126.f64[0]) = v127.i32[1], (vminv_u16(*&v126.f64[0]) & 1) != 0))
                  {
                    v234 = *(*(&v294 + 1) + 32);
                    v238 = *(*(&v294 + 1) + 48);
                    v252 = *(&v294 + 1);
                    v269 = v9;
                    if (!v125 || (v151 = *(v125 + 16)) == 0)
                    {
                      sub_1B60C99C4(&v305, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v262);
                      sub_1B60C99C4(&v301, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                      sub_1B615243C(v123);
                      v150 = &v289;
LABEL_150:
                      sub_1B60C99C4(&v297, v150, &qword_1EB9266D0, &qword_1B62309A8);
                      goto LABEL_151;
                    }

                    sub_1B60C99C4(&v305, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v262);
                    sub_1B60C99C4(&v301, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v123);
                    sub_1B60C99C4(&v297, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v255);
                    sub_1B60C99C4(&v293, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615243C(v252);
                    sub_1B6220784();
                    sub_1B6220784();
                    sub_1B6173BE0(v234, *(&v234 + 1));
                    v152 = sub_1B6220784();
                    sub_1B60F7978(v152, v274.n128_f64[0], v275.n128_f64[0]);
                    v154 = v153;

                    if ((v154 & 1) == 0)
                    {

                      goto LABEL_162;
                    }

                    if (v151 == 1)
                    {
                    }

                    else
                    {
                      sub_1B60F7D94();
                      v184 = v183;
                      v186 = v185 >> 1;
                      while (v186 != v184)
                      {
                        if (v184 >= v186)
                        {
                          goto LABEL_243;
                        }

                        v187 = sub_1B6220784();
                        sub_1B60F7978(v187, v274.n128_f64[0], v275.n128_f64[0]);
                        if (v188)
                        {

                          swift_unknownObjectRelease();
LABEL_162:
                          sub_1B6173C28(v234, *(&v234 + 1), v238, *(&v238 + 1));
                          sub_1B615206C(v252);
                          sub_1B602724C(&v293, &qword_1EB9266D0, &qword_1B62309A8);
                          sub_1B615206C(v255);
LABEL_151:
                          LOBYTE(v95) = 0;
LABEL_212:
                          v9 = v269;
                          goto LABEL_213;
                        }

                        ++v184;
                      }

                      swift_unknownObjectRelease();
                    }

                    sub_1B6173C28(v234, *(&v234 + 1), v238, *(&v238 + 1));
                    sub_1B615206C(v252);
                    sub_1B602724C(&v293, &qword_1EB9266D0, &qword_1B62309A8);
                    sub_1B615206C(v255);
                    LOBYTE(v95) = 1;
                    goto LABEL_212;
                  }

                  sub_1B60C99C4(&v305, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                  sub_1B615243C(v262);
                  sub_1B60C99C4(&v301, &v289, &qword_1EB9266D0, &qword_1B62309A8);
                  sub_1B615243C(v123);
                  v128 = &v289;
LABEL_122:
                  sub_1B60C99C4(&v297, v128, &qword_1EB9266D0, &qword_1B62309A8);
                  LOBYTE(v95) = 0;
LABEL_213:
                  sub_1B602724C(&v297, &qword_1EB9266D0, &qword_1B62309A8);
                  sub_1B615206C(v123);
                  v101 = v262;
                  break;
              }
            }

            else
            {
              v101 = *(&v306 + 1);
              sub_1B60C99C4(&v305, &v289, &qword_1EB9266D0, &qword_1B62309A8);
              sub_1B615243C(v101);
              sub_1B60C99C4(&v301, &v289, &qword_1EB9266D0, &qword_1B62309A8);
              LOBYTE(v95) = 0;
            }

LABEL_92:
            sub_1B602724C(&v301, &qword_1EB9266D0, &qword_1B62309A8);
            v106 = v101;
LABEL_114:
            sub_1B615206C(v106);
            goto LABEL_137;
          case 3:
            v102 = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v321[0] = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v321[1] = v102;
            v321[2] = *((*(&v298 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v103 = *(&v302 + 1);
            v101 = *(&v306 + 1);
            sub_1B60C99C4(&v305, &v293, &qword_1EB9266D0, &qword_1B62309A8);
            sub_1B615243C(v101);
            sub_1B60C99C4(&v301, &v293, &qword_1EB9266D0, &qword_1B62309A8);
            sub_1B615243C(v103);
            sub_1B60C99C4(&v297, &v293, &qword_1EB9266D0, &qword_1B62309A8);
            sub_1B615243C(v73);
            sub_1B60C99C4(v321, &v293, &qword_1EB9266E8, &qword_1B62309C0);
            sub_1B6170744(v274.n128_f64[0], v275.n128_f64[0]);
            LOBYTE(v95) = v104;
            sub_1B602724C(v321, &qword_1EB9266E8, &qword_1B62309C0);
            sub_1B615206C(v73);
            sub_1B602724C(&v297, &qword_1EB9266D0, &qword_1B62309A8);
            v105 = v103;
LABEL_91:
            sub_1B615206C(v105);
            goto LABEL_92;
          default:
            v91 = *(*(&v298 + 1) + 16);
            v90 = *(*(&v298 + 1) + 24);
            v92 = *(*(&v298 + 1) + 56);
            if (v91)
            {
              if (*(v91 + 16) != 4 || (v93 = *(v91 + 32), v94 = vuzp1_s16(*&v93.f64[0], vmovn_s64(vcgeq_f64(*(v91 + 48), v270))), *&v93.f64[0] = vmovn_s64(vcgeq_f64(v270, v93)), LODWORD(v93.f64[0]) = vuzp1_s16(*&v93.f64[0], *&v93.f64[0]).u32[0], HIDWORD(v93.f64[0]) = v94.i32[1], (vminv_u16(*&v93.f64[0]) & 1) == 0))
              {
                v95 = *(&v306 + 1);
                sub_1B60C99C4(&v305, &v293, &qword_1EB9266D0, &qword_1B62309A8);
LABEL_83:
                sub_1B615243C(v95);
                sub_1B60C99C4(&v301, &v293, &qword_1EB9266D0, &qword_1B62309A8);
                LOBYTE(v90) = 0;
                goto LABEL_136;
              }
            }

            if (!v90)
            {
              v95 = *(&v306 + 1);
              sub_1B60C99C4(&v305, &v293, &qword_1EB9266D0, &qword_1B62309A8);
              sub_1B615243C(v95);
              sub_1B60C99C4(&v301, &v293, &qword_1EB9266D0, &qword_1B62309A8);
              goto LABEL_136;
            }

            v260 = *(&v306 + 1);
            if (!*(v90 + 16))
            {
              sub_1B60C99C4(&v305, &v293, &qword_1EB9266D0, &qword_1B62309A8);
              v95 = v260;
              goto LABEL_83;
            }

            v236 = *(v90 + 16);
            v242 = *(*(&v298 + 1) + 48);
            v114 = *(&v298 + 1);
            v115 = *(&v302 + 1);
            v267 = *(*(&v298 + 1) + 32);
            v249 = *(*(&v298 + 1) + 40);
            sub_1B60C99C4(&v305, &v293, &qword_1EB9266D0, &qword_1B62309A8);
            sub_1B615243C(v260);
            sub_1B60C99C4(&v301, &v293, &qword_1EB9266D0, &qword_1B62309A8);
            v245 = v115;
            sub_1B615243C(v115);
            sub_1B60C99C4(&v297, &v293, &qword_1EB9266D0, &qword_1B62309A8);
            sub_1B615243C(v114);
            sub_1B6220784();
            sub_1B6220784();
            sub_1B6173BE0(v267, v249);
            v116 = sub_1B6220784();
            sub_1B60F7978(v116, v274.n128_f64[0], v275.n128_f64[0]);
            v117 = v92;
            v119 = v118;

            if ((v119 & 1) == 0)
            {

              sub_1B6173C28(v267, v249, v242, v117);
              sub_1B615206C(v114);
LABEL_117:
              sub_1B602724C(&v297, &qword_1EB9266D0, &qword_1B62309A8);
              sub_1B615206C(v245);
              LOBYTE(v90) = 0;
              goto LABEL_135;
            }

            v120 = v236 - 1;
            if (v236 != 1)
            {
              if (*(v90 + 16) < v236)
              {
                goto LABEL_242;
              }

              sub_1B6220784();
              v147 = 40;
              while (1)
              {
                v148 = sub_1B6220784();
                sub_1B60F7978(v148, v274.n128_f64[0], v275.n128_f64[0]);
                if (v149)
                {
                  break;
                }

                v147 += 8;
                if (!--v120)
                {

                  swift_bridgeObjectRelease_n();
                  sub_1B6173C28(v267, v249, v242, v117);
                  sub_1B615206C(v114);
                  goto LABEL_134;
                }
              }

              swift_bridgeObjectRelease_n();
              sub_1B6173C28(v267, v249, v242, v117);
              sub_1B615206C(v114);
              goto LABEL_117;
            }

            sub_1B6173C28(v267, v249, v242, v117);
            sub_1B615206C(v114);
LABEL_134:
            sub_1B602724C(&v297, &qword_1EB9266D0, &qword_1B62309A8);
            sub_1B615206C(v245);
            LOBYTE(v90) = 1;
LABEL_135:
            v95 = v260;
LABEL_136:
            sub_1B602724C(&v301, &qword_1EB9266D0, &qword_1B62309A8);
            sub_1B615206C(v95);
            LOBYTE(v95) = v90;
LABEL_137:
            sub_1B602724C(&v305, &qword_1EB9266D0, &qword_1B62309A8);
            a6.n128_u64[0] = v274.n128_u64[0];
            a5.n128_u64[0] = v275.n128_u64[0];
            v10 = v273;
            if (v95)
            {
              return;
            }

            break;
        }
      }

      else
      {
        v74 = v10;
        sub_1B60C99C4(&v305, &v293, &qword_1EB9266D0, &qword_1B62309A8);
        sub_1B602724C(&v305, &qword_1EB9266D0, &qword_1B62309A8);
        a6.n128_u64[0] = v274.n128_u64[0];
        a5.n128_u64[0] = v275.n128_u64[0];
        v10 = v74;
      }

      goto LABEL_3;
    case 3:
      v75 = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v322[0] = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v322[1] = v75;
      v322[2] = *((*(&v302 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v76 = *(&v302 + 1);
      v54 = *(&v306 + 1);
      v55 = v10;
      sub_1B60C99C4(&v305, &v297, &qword_1EB9266D0, &qword_1B62309A8);
      sub_1B615243C(v54);
      sub_1B60C99C4(&v301, &v297, &qword_1EB9266D0, &qword_1B62309A8);
      sub_1B615243C(v76);
      sub_1B60C99C4(v322, &v297, &qword_1EB9266E8, &qword_1B62309C0);
      sub_1B6170744(v274.n128_f64[0], v275.n128_f64[0]);
      v57 = v77;
      sub_1B602724C(v322, &qword_1EB9266E8, &qword_1B62309C0);
      sub_1B615206C(v76);
      v58 = &v301;
      v59 = &qword_1EB9266D0;
      v60 = &qword_1B62309A8;
      goto LABEL_48;
    default:
      v264 = v9;
      v34 = *(*(&v302 + 1) + 16);
      v33 = *(*(&v302 + 1) + 24);
      v36 = *(*(&v302 + 1) + 48);
      v35 = *(*(&v302 + 1) + 56);
      v271 = v10;
      if (v34 && (*(v34 + 16) != 4 || (v37 = *(v34 + 32), v38 = vuzp1_s16(*&v37.f64[0], vmovn_s64(vcgeq_f64(*(v34 + 48), v270))), *&v37.f64[0] = vmovn_s64(vcgeq_f64(v270, v37)), LODWORD(v37.f64[0]) = vuzp1_s16(*&v37.f64[0], *&v37.f64[0]).u32[0], HIDWORD(v37.f64[0]) = v38.i32[1], (vminv_u16(*&v37.f64[0]) & 1) == 0)) || !v33 || (v258 = *(&v306 + 1), !*(v33 + 16)))
      {
        sub_1B60C99C4(&v305, &v297, &qword_1EB9266D0, &qword_1B62309A8);
        goto LABEL_73;
      }

      v248 = *(v33 + 16);
      v253 = *(*(&v302 + 1) + 32);
      v39 = *(&v302 + 1);
      v40 = *(*(&v302 + 1) + 40);
      sub_1B60C99C4(&v305, &v297, &qword_1EB9266D0, &qword_1B62309A8);
      sub_1B615243C(v258);
      sub_1B60C99C4(&v301, &v297, &qword_1EB9266D0, &qword_1B62309A8);
      v41 = v39;
      v42 = v39;
      v43 = v36;
      v44 = v40;
      sub_1B615243C(v42);
      sub_1B6220784();
      sub_1B6220784();
      sub_1B6173BE0(v253, v40);
      v45 = sub_1B6220784();
      sub_1B60F7978(v45, v274.n128_f64[0], v275.n128_f64[0]);
      v46 = v35;
      v48 = v47;

      if ((v48 & 1) == 0)
      {

        sub_1B6173C28(v253, v40, v43, v46);
        v96 = v41;
LABEL_98:
        sub_1B615206C(v96);
        sub_1B602724C(&v301, &qword_1EB9266D0, &qword_1B62309A8);
        sub_1B615206C(v258);
LABEL_73:
        sub_1B602724C(&v305, &qword_1EB9266D0, &qword_1B62309A8);
        a6.n128_u64[0] = v274.n128_u64[0];
        a5.n128_u64[0] = v275.n128_u64[0];
        v9 = v264;
        v10 = v271;
        goto LABEL_3;
      }

      v241 = v46;
      v49 = v248 - 1;
      if (v248 != 1)
      {
        if (*(v33 + 16) < v248)
        {
          goto LABEL_241;
        }

        sub_1B6220784();
        v50 = 40;
        while (1)
        {
          v51 = sub_1B6220784();
          sub_1B60F7978(v51, v274.n128_f64[0], v275.n128_f64[0]);
          if (v52)
          {
            break;
          }

          v50 += 8;
          if (!--v49)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_238;
          }
        }

        swift_bridgeObjectRelease_n();
        sub_1B6173C28(v253, v44, v43, v241);
        v96 = v41;
        goto LABEL_98;
      }

LABEL_238:
      sub_1B6173C28(v253, v44, v43, v241);
      sub_1B615206C(v41);
      sub_1B602724C(&v301, &qword_1EB9266D0, &qword_1B62309A8);
      sub_1B615206C(v258);
LABEL_236:
      sub_1B602724C(&v305, &qword_1EB9266D0, &qword_1B62309A8);
      return;
  }
}

uint64_t sub_1B617387C(uint64_t (*a1)(__n128, __n128), __n128 a2, __n128 a3)
{
  v4 = *v3;
  if (!*v3 || *(v4 + 16) == 4 && (*&v5.f64[0] = a3.n128_u64[0], *&v5.f64[1] = a2.n128_u64[0], v6.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(v5, *(v4 + 32))), a2.n128_u64[0]).u32[0], v6.i32[1] = vuzp1_s16(*&a2, vmovn_s64(vcgeq_f64(*(v4 + 48), v5))).i32[1], (vminv_u16(v6))) && v3[1])
  {
    return a1(a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B61738E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  switch(*v8 >> 62)
  {
    case 1uLL:
      *&v42 = OUTLINED_FUNCTION_1_38((v9 & 0x3FFFFFFFFFFFFFFFLL)).n128_u64[0];
      v11 = &qword_1EB9266D8;
      v12 = &qword_1B62309B0;
      OUTLINED_FUNCTION_0_64(v43, v44, v45, v46, v47, v48, v49, v50, v56, v57, v58, v59, v60, v61, v62, v63, v42);
      goto LABEL_6;
    case 2uLL:
      v21 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
      v22 = v21[2];
      v64[0] = v21[1];
      v64[1] = v22;
      v23 = v21[4];
      v64[2] = v21[3];
      v64[3] = v23;
      v11 = &qword_1EB9266D0;
      v12 = &qword_1B62309A8;
      OUTLINED_FUNCTION_0_64(a1, a2, a3, a4, a5, a6, a7, a8, v56, v57, v58, v59, v60, v61, v62, v63);
      v24 = OUTLINED_FUNCTION_2_36();
      v26 = sub_1B6170698(v24, v25);
      break;
    case 3uLL:
      *&v27 = OUTLINED_FUNCTION_1_38((v9 & 0x3FFFFFFFFFFFFFFFLL)).n128_u64[0];
      v11 = &qword_1EB9266E8;
      v12 = &qword_1B62309C0;
      OUTLINED_FUNCTION_0_64(v28, v29, v30, v31, v32, v33, v34, v35, v56, v57, v58, v59, v60, v61, v62, v63, v27);
      v36 = OUTLINED_FUNCTION_2_36();
      sub_1B6170744(v36, v37, v38, v39, v40, v41);
      break;
    default:
      *&v10 = OUTLINED_FUNCTION_1_38(v9).n128_u64[0];
      v11 = &qword_1EB9266E0;
      v12 = &qword_1B62309B8;
      OUTLINED_FUNCTION_0_64(v13, v14, v15, v16, v17, v18, v19, v20, v56, v57, v58, v59, v60, v61, v62, v63, v10);
LABEL_6:
      v51.n128_f64[0] = OUTLINED_FUNCTION_2_36();
      v26 = sub_1B617387C(v52, v51, v53);
      break;
  }

  v54 = v26;
  sub_1B602724C(v64, v11, v12);
  return v54 & 1;
}

uint64_t sub_1B6173A1C()
{
  if (*v0 >> 62 != 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
  {
    v1 = *((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  sub_1B6220784();
  v2 = sub_1B6173A88(v1);

  return v2;
}

uint64_t sub_1B6173A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B60AA5F0(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v16 = *v4;
      v17 = v5;
      v6 = v4[3];
      v18 = v4[2];
      v19 = v6;
      sub_1B60C99C4(&v16, &v13, &qword_1EB9266D0, &qword_1B62309A8);
      v20 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1B60AA5F0(v7 > 1, v8 + 1, 1);
        v2 = v20;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9266D0, &qword_1B62309A8);
      v15 = &protocol witness table for <> GeoJSON<A>.Feature;
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v17;
      v9[1] = v16;
      v9[2] = v10;
      v11 = v19;
      v9[3] = v18;
      v9[4] = v11;
      *(v2 + 16) = v8 + 1;
      sub_1B60273A4(&v13, v2 + 40 * v8 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double sub_1B6173BE0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    sub_1B6220784();

    sub_1B6220784();
  }

  return result;
}

double sub_1B6173C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B6173C8C()
{
  v1 = sub_1B621D3A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v37 - v8;
  v10 = *v0;
  sub_1B621D374();
  sub_1B605C810();
  v12 = *(v11 + 16);
  v13 = v11;
  if (v12 >= *(v11 + 24) >> 1)
  {
    sub_1B605C810();
    v13 = v34;
  }

  *(v13 + 16) = v12 + 1;
  v14 = v13;
  v17 = *(v2 + 32);
  v16 = v2 + 32;
  v15 = v17;
  v42 = (*(v16 + 48) + 32) & ~*(v16 + 48);
  v41 = *(v16 + 40);
  v17(v13 + v42 + v41 * v12, v9, v1);
  sub_1B621D374();
  v18 = *(v14 + 16);
  if (v18 >= *(v14 + 24) >> 1)
  {
    sub_1B605C810();
    v14 = v35;
  }

  *(v14 + 16) = v18 + 1;
  v39 = v15;
  v15(v14 + v42 + v18 * v41, v6, v1);
  v19 = *(v10 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v37[0] = v14;
    v37[1] = v16;
    v38 = v1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1B603C6EC(0, v19, 0);
    v20 = v43;
    v21 = (v10 + 32);
    v22 = 16 * *(v43 + 16);
    OUTLINED_FUNCTION_0_44();
    v25 = 0x74617265706D6574;
    do
    {
      if (*v21)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if (*v21)
      {
        v27 = 0xEB00000000657275;
      }

      else
      {
        v27 = 0xED00006E6F697461;
      }

      v43 = v20;
      v28 = *(v20 + 24);
      v29 = v23 + 1;
      if (v23 >= v28 >> 1)
      {
        sub_1B603C6EC(v28 > 1, v23 + 1, 1);
        OUTLINED_FUNCTION_0_44();
        v20 = v43;
      }

      *(v20 + 16) = v29;
      v30 = v20 + v22;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      v22 += 16;
      ++v21;
      v23 = v29;
      --v19;
    }

    while (v19);
    v1 = v38;
    v14 = v37[0];
  }

  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68, &qword_1B622B910);
  sub_1B60358B4();
  sub_1B6221174();

  v31 = v40;
  sub_1B621D374();

  v32 = *(v14 + 16);
  if (v32 >= *(v14 + 24) >> 1)
  {
    sub_1B605C810();
    v14 = v36;
  }

  *(v14 + 16) = v32 + 1;
  v39(v14 + v42 + v32 * v41, v31, v1);
  return v14;
}

uint64_t ConditionToken.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    ConditionToken.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 13)
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::ConditionToken_optional __swiftcall ConditionToken.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B61741B0()
{
  result = qword_1EB9266F0;
  if (!qword_1EB9266F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266F0);
  }

  return result;
}

unint64_t sub_1B6174228@<X0>(unint64_t *a1@<X8>)
{
  result = ConditionToken.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B61742BC()
{
  result = qword_1EB9266F8;
  if (!qword_1EB9266F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926700, &qword_1B6230BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9266F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionToken(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B617442C()
{
  result = qword_1EDAB0230;
  if (!qword_1EDAB0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0230);
  }

  return result;
}

uint64_t WeatherAvailableDataSetsStore.__allocating_init()()
{
  v0 = swift_allocObject();
  WeatherAvailableDataSetsStore.init()();
  return v0;
}

void *WeatherAvailableDataSetsStore.init()()
{
  v2 = v0;
  v3 = sub_1B6220EC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAAF1D8 != -1)
  {
    swift_once();
  }

  if (qword_1EDAAF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926710, &qword_1B6230CC0);
    sub_1B6175124();

    v7 = sub_1B6220E74();
    if (!v1)
    {
      *(v0 + 16) = v7;
      (*(v4 + 104))(v6, *MEMORY[0x1E69D62C0], v3);
      sub_1B6220F04();
      (*(v4 + 8))(v6, v3);

      return v2;
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EDAC2AB0);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Failed to create weather available data sets database", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }

    sub_1B61750D0();
    swift_allocError();
    swift_willThrow();
  }

  swift_deallocPartialClassInstance();
  return v2;
}

double sub_1B61747DC(__n128 a1)
{
  sub_1B6220D54();
  sub_1B6220DA4();

  return result;
}

uint64_t WeatherAvailableDataSetsStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B617487C()
{
  v0 = sub_1B6220B34();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6220E84();
  __swift_allocate_value_buffer(v4, qword_1EDAAF1B8);
  v5 = __swift_project_value_buffer(v4, qword_1EDAAF1B8);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDAC2AB0);
  (*(v1 + 16))(v3, v6, v0);
  static Database.Location.protectedLocation(_:logger:)(0xD00000000000001ELL, 0x80000001B623E7A0, v3, v5);
  return (*(v1 + 8))(v3, v0);
}

uint64_t static WeatherAvailableDataSetsStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDAAF1B0 != -1)
  {
    OUTLINED_FUNCTION_0_65(&qword_1EDAAF1B0);
  }

  v2 = sub_1B6220E84();
  v3 = __swift_project_value_buffer(v2, qword_1EDAAF1B8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static WeatherAvailableDataSetsStore.location.setter(uint64_t a1)
{
  if (qword_1EDAAF1B0 != -1)
  {
    OUTLINED_FUNCTION_0_65(&qword_1EDAAF1B0);
  }

  v2 = sub_1B6220E84();
  v3 = __swift_project_value_buffer(v2, qword_1EDAAF1B8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static WeatherAvailableDataSetsStore.location.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDAAF1B0 != -1)
  {
    OUTLINED_FUNCTION_0_65(&qword_1EDAAF1B0);
  }

  v1 = sub_1B6220E84();
  __swift_project_value_buffer(v1, qword_1EDAAF1B8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static WeatherAvailableDataSetsStore.preferredCacheSize.getter@<X0>(void *a1@<X8>)
{
  *a1 = 32;
  v2 = *MEMORY[0x1E69D6298];
  v3 = sub_1B6220EA4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B6174C80()
{
  v0 = sub_1B6220E24();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B6220E54();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B6220E04();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6220EA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1B6220C84();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6220E84();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = sub_1B6220EB4();
  if (qword_1EDAAF1B0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_1EDAAF1B8);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  static AssertionOptions.weatherAssertions.getter();
  *v10 = 32;
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6298], v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6248], v23);
  v19 = v26;
  (*(v24 + 104))(v26, *MEMORY[0x1E69D6270], v25);
  v20 = v27;
  (*(v28 + 104))(v27, *MEMORY[0x1E69D6260], v29);
  v30 = 1;
  result = Database.init(location:assertions:journalingMode:recoveryMode:preferredCacheSize:vacuumMode:busyTimeout:)(v17, v13, v19, v20, v10, v6, 0x100000000uLL);
  qword_1EDAAF1E0 = result;
  return result;
}

unint64_t sub_1B61750D0()
{
  result = qword_1EB926708;
  if (!qword_1EB926708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926708);
  }

  return result;
}

unint64_t sub_1B6175124()
{
  result = qword_1EDAAF010;
  if (!qword_1EDAAF010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926710, &qword_1B6230CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherAvailableDataSetsStore.Errors(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B6175294()
{
  result = qword_1EB926718;
  if (!qword_1EB926718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926718);
  }

  return result;
}

unint64_t sub_1B61752F8()
{
  result = qword_1EB926730;
  if (!qword_1EB926730)
  {
    type metadata accessor for Weather(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926730);
  }

  return result;
}

uint64_t WDSHMACSigner.__allocating_init(signatureRoundingInterval:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WDSHMACSigner.init(signatureRoundingInterval:)(a1);
  return v2;
}

BOOL sub_1B6175390(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1B61753E4(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v54 = *MEMORY[0x1E69E9840];
  v48[0] = a1;
  v48[1] = a2;
  *&v51 = a1;
  *(&v51 + 1) = a2;
  sub_1B6220784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926760, &qword_1B6230F30);
  if (swift_dynamicCast())
  {
    sub_1B60273A4(v49, &v52);
    __swift_project_boxed_opaque_existential_1(&v52, v53);
    OUTLINED_FUNCTION_4_26();
    sub_1B621D534();
    v49[0] = v51;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    goto LABEL_59;
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1B602724C(v49, &qword_1EB926768, &qword_1B6230F38);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v49[0] = a1;
    *(&v49[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v49;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1B6221BA4();
  }

  sub_1B6176CB0(v5, v6, &v52);
  v7 = *(&v52 + 1);
  v8 = v52;
  if (*(&v52 + 1) >> 60 != 15)
  {
    v49[0] = v52;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v49[0] = MEMORY[0x1B8C8C8F0](v9);
  *(&v49[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v49[0]);
  v43[2] = v48;
  v11 = sub_1B6176DCC(sub_1B61773A0, v43);
  v13 = *(&v49[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v49[0]);
  switch(*(&v49[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v49[0]) - LODWORD(v49[0]);
      if (__OFSUB__(DWORD1(v49[0]), v49[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v49[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v49[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v49[0] + 16);
      v21 = *(*&v49[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1B621D6C4();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v43[4] = v4;
      v44 = v8;
      v45 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v46 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v47 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v51 + 7) = 0;
      *&v51 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v49[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = OUTLINED_FUNCTION_10_20();
      v28 = sub_1B6176C54(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_1B6221334();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1B6221374();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v52 = v14;
      *(&v52 + 1) = v47;
      v31 = *(&v52 + v29);
    }

    else
    {
      v30 = v46;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1B6221BA4();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v35 = OUTLINED_FUNCTION_10_20();
      v18 = sub_1B6176C54(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_10_20();
    v18 = sub_1B6221344();
LABEL_46:
    *(&v51 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      OUTLINED_FUNCTION_14_19();
      sub_1B621D6E4();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B621D6E4();
    sub_1B602FF58(v44, v45);
    goto LABEL_58;
  }

  sub_1B602FF58(v44, v45);
LABEL_59:
  v38 = OUTLINED_FUNCTION_302();
  sub_1B604D8AC(v38, v39);

  v40 = OUTLINED_FUNCTION_302();
  sub_1B60362A8(v40, v41);
  return OUTLINED_FUNCTION_302();
}

uint64_t sub_1B61758A0(uint64_t a1)
{
  v2 = sub_1B62210D4();
  v7 = v2;
  v8 = sub_1B617741C(qword_1EDAB0E08, MEMORY[0x1E6966670], MEMORY[0x1E6966668]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(boxed_opaque_existential_1, a1, v2);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  OUTLINED_FUNCTION_4_26();
  sub_1B621D534();
  __swift_destroy_boxed_opaque_existential_1(v6);
  (*(v4 + 8))(a1, v2);
  return OUTLINED_FUNCTION_302();
}

uint64_t sub_1B61759CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926738, &qword_1B6230E00);
  v8 = v2;
  v9 = sub_1B602CAF4(&qword_1EDAB0458, &qword_1EB926738, &qword_1B6230E00, MEMORY[0x1E69664B0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(boxed_opaque_existential_1, a1, v2);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_1B621D534();
  __swift_destroy_boxed_opaque_existential_1(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t sub_1B6175B14(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_302();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v10 = sub_1B602CAF4(&qword_1EDAAF6C8, &qword_1EB926758, &qword_1B6230F28, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1B6177190(*v4 + 32, *v4 + 32 + *(*v4 + 16), &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t WDSHMACSigner.init(signatureRoundingInterval:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t WDSHMACSigner.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void WDSHMACSigner.createSignature(with:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v204 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926738, &qword_1B6230E00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v200 = &v187 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926740, &unk_1B6230E08);
  OUTLINED_FUNCTION_2();
  v202 = v6;
  v203 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v201 = &v187 - v7;
  sub_1B6221084();
  OUTLINED_FUNCTION_2();
  v206 = v9;
  v207 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v199 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v205 = &v187 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F58, &qword_1B62263E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v187 - v14;
  v212 = sub_1B621D474();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v211 = &v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B6221224();
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v187 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v214 = &v187 - v33;
  v34 = sub_1B621D6A4();
  if (v35 >> 60 == 15)
  {
    v36 = sub_1B61769DC();
    OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v36);
    *v37 = 0;
    swift_willThrow();
    return;
  }

  v208 = v34;
  v209 = v35;
  v213 = v26;
  v210 = v28;
  v198 = type metadata accessor for WDSAuthenticationContext(0);
  v38 = *(v221 + 16);
  sub_1B621D754();
  if ((v38 * 60) >> 64 != (60 * v38) >> 63)
  {
    __break(1u);
    return;
  }

  v196 = v15;
  v197 = a1;
  v195 = v17;
  sub_1B621D744();
  v39 = v210;
  v40 = v214;
  (*(v210 + 32))(v214, v31, v213);
  v41 = *(v221 + 24);
  v42 = sub_1B621D814();
  v43 = [v41 stringFromDate_];

  v44 = sub_1B62211D4();
  v46 = v45;

  sub_1B6221214();
  OUTLINED_FUNCTION_15_16();
  v192 = v44;
  v47 = sub_1B62211E4();
  v49 = v48;
  v52 = *(v22 + 8);
  v50 = v22 + 8;
  v51 = v52;
  (v52)(v25, v20);
  if (v49 >> 60 == 15)
  {

    v53 = sub_1B61769DC();
    OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v53);
    OUTLINED_FUNCTION_9_21(v54, 1);
    sub_1B602FF58(v208, v209);
    (*(v39 + 8))(v40, v213);
    return;
  }

  v193 = v46;
  v221 = v47;
  v194 = v49;
  sub_1B6221214();
  OUTLINED_FUNCTION_15_16();
  v55 = sub_1B62211E4();
  v57 = v56;
  v191 = v51;
  (v51)(v25, v20);
  if (v57 >> 60 == 15)
  {
    OUTLINED_FUNCTION_13_16();
    v58 = sub_1B61769DC();
    OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v58);
    OUTLINED_FUNCTION_9_21(v59, 2);
    v60 = OUTLINED_FUNCTION_2_37();
    v62 = OUTLINED_FUNCTION_17_16(v60, v61);
    sub_1B602FF58(v62, v63);
    (*(v39 + 8))(v214, v213);
    return;
  }

  v190 = v50;
  v64 = v20;
  v65 = v196;
  sub_1B621D3D4();
  v66 = v212;
  v67 = v39;
  if (__swift_getEnumTagSinglePayload(v65, 1, v212) == 1)
  {
    OUTLINED_FUNCTION_13_16();
    sub_1B602724C(v65, &qword_1EB924F58, &qword_1B62263E0);
    v68 = sub_1B61769DC();
    v69 = OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v68);
    OUTLINED_FUNCTION_5_30(v69, v70);
    sub_1B602FF58(v55, v57);
    v71 = OUTLINED_FUNCTION_2_37();
    v73 = OUTLINED_FUNCTION_17_16(v71, v72);
    sub_1B602FF58(v73, v74);
LABEL_15:
    (*(v67 + 8))(v214, v213);
    return;
  }

  v188 = v55;
  v189 = v57;
  v75 = v66;
  v76 = v195;
  v77 = v211;
  (*(v195 + 32))(v211, v65, v75);
  sub_1B621D434();
  v78 = sub_1B621D454();
  if (!v79)
  {
    OUTLINED_FUNCTION_13_16();
    v95 = sub_1B61769DC();
    v96 = OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v95);
    OUTLINED_FUNCTION_5_30(v96, v97);
    v98 = OUTLINED_FUNCTION_0_66();
    sub_1B602FF58(v98, v99);
    v100 = OUTLINED_FUNCTION_2_37();
    v102 = OUTLINED_FUNCTION_17_16(v100, v101);
    sub_1B602FF58(v102, v103);
    (*(v76 + 8))(v77, v75);
    goto LABEL_15;
  }

  v219 = v78;
  v220 = v79;
  v217 = 12079;
  v218 = 0xE200000000000000;
  v215 = 0;
  v216 = 0xE000000000000000;
  sub_1B602C004();
  sub_1B6221A64();

  sub_1B6221214();
  OUTLINED_FUNCTION_15_16();
  v80 = sub_1B62211E4();
  v82 = v81;

  v83 = v191;
  (v191)(v25, v64);
  if (v82 >> 60 == 15)
  {
    OUTLINED_FUNCTION_13_16();
    v84 = sub_1B61769DC();
    v85 = OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v84);
    OUTLINED_FUNCTION_5_30(v85, v86);
    v87 = OUTLINED_FUNCTION_0_66();
    sub_1B602FF58(v87, v88);
    v89 = OUTLINED_FUNCTION_2_37();
    v91 = OUTLINED_FUNCTION_17_16(v89, v90);
    sub_1B602FF58(v91, v92);
    v93 = OUTLINED_FUNCTION_3_31();
    v94(v93);
    goto LABEL_15;
  }

  v104 = (v197 + *(v198 + 32));
  v105 = v83;
  v106 = *v104;
  v107 = v104[1];
  sub_1B6220784();
  sub_1B6221214();
  OUTLINED_FUNCTION_15_16();
  v198 = v106;
  v108 = sub_1B62211E4();
  v110 = v109;
  v111 = OUTLINED_FUNCTION_12();
  v105(v111);
  v112 = v214;
  if (v110 >> 60 == 15)
  {

    OUTLINED_FUNCTION_13_16();
    v113 = sub_1B61769DC();
    OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v113);
    OUTLINED_FUNCTION_9_21(v114, 4);
    sub_1B602FF58(v80, v82);
    v115 = OUTLINED_FUNCTION_0_66();
    sub_1B602FF58(v115, v116);
    v117 = OUTLINED_FUNCTION_2_37();
  }

  else
  {
    v121 = OUTLINED_FUNCTION_12();
    if (sub_1B6175390(v121, v122))
    {

      v123 = sub_1B61769DC();
      OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v123);
      *v124 = 0;
      swift_willThrow();
      v125 = OUTLINED_FUNCTION_277();
      sub_1B602FF58(v125, v126);
      sub_1B602FF58(v80, v82);
      v127 = OUTLINED_FUNCTION_0_66();
      sub_1B602FF58(v127, v128);
      v129 = OUTLINED_FUNCTION_2_37();
      sub_1B602FF58(v129, v130);
      v119 = OUTLINED_FUNCTION_12();
      goto LABEL_22;
    }

    v133 = v194;
    if (!sub_1B6175390(v221, v194))
    {
      v140 = v82;
      v141 = v188;
      v142 = v189;
      if (sub_1B6175390(v188, v189))
      {

        v143 = sub_1B61769DC();
        OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v143);
        OUTLINED_FUNCTION_9_21(v144, 2);
        v145 = OUTLINED_FUNCTION_277();
        sub_1B602FF58(v145, v146);
        sub_1B602FF58(v80, v140);
        v147 = v141;
        v148 = v142;
      }

      else
      {
        v149 = v140;
        if (sub_1B6175390(v80, v140))
        {

          v150 = sub_1B61769DC();
          v151 = OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v150);
          OUTLINED_FUNCTION_5_30(v151, v152);
          v153 = OUTLINED_FUNCTION_277();
          sub_1B602FF58(v153, v154);
          v155 = v80;
        }

        else
        {
          v156 = OUTLINED_FUNCTION_277();
          if (!sub_1B6175390(v156, v157))
          {
            v219 = v208;
            v220 = v209;
            sub_1B604D8AC(v208, v209);
            v166 = v205;
            sub_1B6221074();
            v167 = *(v206 + 16);
            v168 = v149;
            v196 = v149;
            v167(v199, v166, v207);
            sub_1B62210C4();
            sub_1B617741C(&qword_1EDAB0450, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
            v169 = v201;
            sub_1B6221094();
            v219 = v188;
            v220 = v189;
            sub_1B6176A30();
            v170 = v203;
            sub_1B62210A4();
            v187 = v80;
            v219 = v80;
            v220 = v168;
            OUTLINED_FUNCTION_7_23();
            v171 = v221;
            v172 = v194;
            v219 = v221;
            v220 = v194;
            OUTLINED_FUNCTION_7_23();
            v219 = v108;
            v220 = v110;
            OUTLINED_FUNCTION_7_23();
            v173 = v200;
            sub_1B62210B4();
            v174 = sub_1B61759CC(v173);
            v200 = v175;
            v176 = OUTLINED_FUNCTION_277();
            sub_1B602FF58(v176, v177);
            sub_1B602FF58(v187, v196);
            v178 = OUTLINED_FUNCTION_0_66();
            sub_1B602FF58(v178, v179);
            v180 = OUTLINED_FUNCTION_17_16(v171, v172);
            sub_1B602FF58(v180, v181);
            (*(v202 + 8))(v169, v170);
            (*(v206 + 8))(v205, v207);
            v182 = OUTLINED_FUNCTION_3_31();
            v183(v182);
            (*(v210 + 8))(v214, v213);
            v184 = v204;
            v185 = v193;
            *v204 = v192;
            v184[1] = v185;
            v186 = v200;
            v184[2] = v174;
            v184[3] = v186;
            v184[4] = v198;
            v184[5] = v107;
            return;
          }

          v158 = sub_1B61769DC();
          OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v158);
          OUTLINED_FUNCTION_9_21(v159, 4);
          v160 = OUTLINED_FUNCTION_277();
          sub_1B602FF58(v160, v161);
          v155 = v80;
        }

        sub_1B602FF58(v155, v140);
        v147 = OUTLINED_FUNCTION_0_66();
      }

      sub_1B602FF58(v147, v148);
      v162 = OUTLINED_FUNCTION_17_16(v221, v133);
      sub_1B602FF58(v162, v163);
      v164 = OUTLINED_FUNCTION_3_31();
      v165(v164);
      (*(v210 + 8))(v214, v213);
      return;
    }

    v134 = sub_1B61769DC();
    OUTLINED_FUNCTION_127(&type metadata for WDSHMACSigner.Errors, v134);
    OUTLINED_FUNCTION_9_21(v135, 1);
    v136 = OUTLINED_FUNCTION_277();
    sub_1B602FF58(v136, v137);
    sub_1B602FF58(v80, v82);
    v138 = OUTLINED_FUNCTION_0_66();
    sub_1B602FF58(v138, v139);
    v117 = OUTLINED_FUNCTION_12();
  }

  v119 = OUTLINED_FUNCTION_17_16(v117, v118);
LABEL_22:
  sub_1B602FF58(v119, v120);
  v131 = OUTLINED_FUNCTION_3_31();
  v132(v131);
  (*(v210 + 8))(v112, v213);
}

unint64_t sub_1B61769DC()
{
  result = qword_1EB926748;
  if (!qword_1EB926748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926748);
  }

  return result;
}

unint64_t sub_1B6176A30()
{
  result = qword_1EDAB0988;
  if (!qword_1EDAB0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WDSHMACSigner.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B6176C00()
{
  result = qword_1EB926750;
  if (!qword_1EB926750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926750);
  }

  return result;
}

uint64_t sub_1B6176C54(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1B6221384();
    OUTLINED_FUNCTION_11_19(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1B8C90570](15, a1 >> 16);
    OUTLINED_FUNCTION_11_19(v3);
    return v4 | 8;
  }
}

uint64_t sub_1B6176CB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1B621D644();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1B621D4D4();
      swift_allocObject();
      v8 = sub_1B621D494();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1B621D6B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1B6176D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1B6177250(sub_1B61773FC, v5, a1, a2);
}

uint64_t sub_1B6176DCC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1B60362A8(v7, v6);
      *v5 = xmmword_1B6230DF0;
      sub_1B60362A8(0, 0xC000000000000000);
      v14 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v14 < v7)
      {
        goto LABEL_23;
      }

      if (sub_1B621D4A4() && __OFSUB__(v7, sub_1B621D4C4()))
      {
        goto LABEL_24;
      }

      sub_1B621D4D4();
      swift_allocObject();
      v15 = sub_1B621D484();

      v13 = v15;
LABEL_16:
      if (v14 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1B61772B4(v7, v7 >> 32, a1, v16);

      v12 = v13 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1B60362A8(v7, v6);
      v19 = v7;
      v20 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1B6230DF0;
      sub_1B60362A8(0, 0xC000000000000000);
      sub_1B621D654();
      v7 = v19;
      v11 = sub_1B61772B4(*(v19 + 16), *(v19 + 24), a1, v10);
      if (v3)
      {
        v12 = v20 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v12;
      }

      else
      {
        v4 = v11;
        v12 = v20 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v12;
      }

      return v4;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v19, v21, v21);
      if (!v3)
      {
        return v19;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1B60362A8(v7, v6);
      v21[0] = v7;
      LOWORD(v21[1]) = v6;
      BYTE2(v21[1]) = BYTE2(v6);
      BYTE3(v21[1]) = BYTE3(v6);
      BYTE4(v21[1]) = BYTE4(v6);
      BYTE5(v21[1]) = BYTE5(v6);
      BYTE6(v21[1]) = BYTE6(v6);
      a1(&v19, v21, v21 + BYTE6(v6));
      if (!v3)
      {
        v4 = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v5 = v21[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1B6177190@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1B621D644();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1B8C8C880]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1B8C8C8A0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B6177208(uint64_t result)
{
  if (result)
  {
    result = sub_1B6221B44();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B6177250(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1B61772B4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), __n128 a4)
{
  result = sub_1B621D4A4();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_1B621D4C4();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_1B621D4B4();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = a3(&v15, &v9[v10], &v9[v10 + v14]);
  if (!v4)
  {
    return v15;
  }

  return result;
}

void *sub_1B6177368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1B6176D78(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1B61773BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B6177208(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1B617741C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Urgency.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    Urgency.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 5)
    {
      v9 = 4;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::Urgency_optional __swiftcall Urgency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Urgency.rawValue.getter()
{
  result = 0x54414944454D4D49;
  switch(*v0)
  {
    case 1:
      result = 0x4445544345505845;
      break;
    case 2:
      result = 0x455255545546;
      break;
    case 3:
      result = 1414742352;
      break;
    case 4:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B617763C()
{
  result = qword_1EB926770;
  if (!qword_1EB926770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926770);
  }

  return result;
}

uint64_t sub_1B61776B4@<X0>(uint64_t *a1@<X8>)
{
  result = Urgency.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Urgency(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B6177850()
{
  result = qword_1EDAAF738;
  if (!qword_1EDAAF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF738);
  }

  return result;
}

uint64_t sub_1B61778A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherRequestOptions(0);
  sub_1B6177A8C(a1 + *(v15 + 48), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B602724C(v11, &qword_1EB924F20, &unk_1B6226380);
    sub_1B6220784();
  }

  else
  {
    sub_1B6177AFC(v11, v14);
    v16 = sub_1B621D8F4();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
    a2 = sub_1B618AD70(a2, a3, v8);
    sub_1B602724C(v8, &qword_1EB924600, &qword_1B6223420);
    sub_1B6177B60(v14);
  }

  return a2;
}

uint64_t sub_1B6177A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6177AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6177B60(uint64_t a1)
{
  v2 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t WeatherModel.logName.getter()
{
  type metadata accessor for WeatherModel(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6177E08(v0, v3);
  v4 = 0x696C617551726961;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v4 = 0x57746E6572727563;
      break;
    case 2u:
    case 3u:
      v4 = 0x7473616365726F66;
      break;
    case 4u:
      v4 = 0xD000000000000010;
      break;
    case 5u:
      v4 = 0xD000000000000010;
      break;
    case 6u:
      v4 = 0x6369726F74736968;
      break;
    case 7u:
      v4 = 0x6E6F697461636F6CLL;
      break;
    case 8u:
      v4 = 0x6F46656E6972616DLL;
      break;
    case 9u:
      v4 = 1937204590;
      break;
    case 0xAu:
      OUTLINED_FUNCTION_3_32();
      v4 = 0x4172617551726961;
      break;
    case 0xBu:
      OUTLINED_FUNCTION_3_32();
      v4 = 0x4372617551726961;
      break;
    case 0xCu:
      v4 = 0xD000000000000011;
      break;
    case 0xDu:
      v4 = 0x6E65764565646974;
      break;
    default:
      break;
  }

  sub_1B6177E6C(v3);
  return v4;
}

uint64_t sub_1B6177E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6177E6C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherModel.MissingProductError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B6177FA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t CurrentWeather.asOf.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_11() + 20);

  return sub_1B603D764(v0, v2);
}

uint64_t CurrentWeather.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverLowAltPct.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverMidAltPct.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverHighAltPct.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 36)) = v1;
  return result;
}

uint64_t CurrentWeather.conditionCode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CurrentWeather(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t CurrentWeather.daylight.setter(char a1)
{
  result = type metadata accessor for CurrentWeather(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t CurrentWeather.humidity.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmount1h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmount6h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 56)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmount24h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 60)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmountNext1h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 64)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmountNext6h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 68)) = v1;
  return result;
}

uint64_t CurrentWeather.precipitationAmountNext24h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 72)) = v1;
  return result;
}

void CurrentWeather.precipitationAmountPrevious1hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 76);

  *(v1 + v2) = v0;
}

void CurrentWeather.precipitationAmountPrevious6hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 80);

  *(v1 + v2) = v0;
}

void CurrentWeather.precipitationAmountPrevious24hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 84);

  *(v1 + v2) = v0;
}

void CurrentWeather.precipitationAmountNext1hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 88);

  *(v1 + v2) = v0;
}

void CurrentWeather.precipitationAmountNext6hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 92);

  *(v1 + v2) = v0;
}

void CurrentWeather.precipitationAmountNext24hByType.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_11() + 96);

  *(v1 + v2) = v0;
}

uint64_t CurrentWeather.precipitationIntensity.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 100)) = v1;
  return result;
}

uint64_t CurrentWeather.perceivedPrecipitationIntensity.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 104)) = v1;
  return result;
}

uint64_t CurrentWeather.pressureTrend.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CurrentWeather(0);
  *(v1 + *(result + 112)) = v2;
  return result;
}

uint64_t CurrentWeather.snowfallAmount1h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 116)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmount6h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 120)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmount24h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 124)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmountNext1h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 128)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmountNext6h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 132)) = v1;
  return result;
}

uint64_t CurrentWeather.snowfallAmountNext24h.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 136)) = v1;
  return result;
}

uint64_t CurrentWeather.sunrise.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_28_6() + 140);

  return sub_1B6058CE0(v2, v0);
}

uint64_t CurrentWeather.sunrise.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_11() + 140);

  return sub_1B603D764(v0, v2);
}

uint64_t CurrentWeather.sunset.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_28_6() + 144);

  return sub_1B6058CE0(v2, v0);
}

uint64_t CurrentWeather.sunset.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_11() + 144);

  return sub_1B603D764(v0, v2);
}

uint64_t CurrentWeather.temperature.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 148)) = v1;
  return result;
}

uint64_t CurrentWeather.uvIndex.setter()
{
  result = OUTLINED_FUNCTION_23_11();
  *(v1 + *(result + 168)) = v0;
  return result;
}

uint64_t CurrentWeather.visibility.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 172)) = v1;
  return result;
}

uint64_t CurrentWeather.windSpeed.setter()
{
  result = OUTLINED_FUNCTION_24_8();
  *(v0 + *(result + 184)) = v1;
  return result;
}

uint64_t CurrentWeather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v168 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v125 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v125 - v9;
  v11 = type metadata accessor for Metadata(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926778, &qword_1B6231218);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v125 - v17;
  v19 = a1[3];
  v172 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B6179FEC();
  v169 = v18;
  v20 = v171;
  sub_1B62220D4();
  if (!v20)
  {
    v165 = v7;
    v166 = v10;
    v171 = v15;
    LOBYTE(v179) = 0;
    OUTLINED_FUNCTION_19_12();
    sub_1B617B858(v21, v22, &protocol conformance descriptor for Metadata);
    OUTLINED_FUNCTION_32_7();
    sub_1B6221DD4();
    v23 = sub_1B621D8F4();
    LOBYTE(v179) = 1;
    OUTLINED_FUNCTION_18_14();
    v26 = sub_1B617B858(v24, v25, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_8_23();
    sub_1B6221D24();
    LOBYTE(v177) = 2;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v27 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0.0;
    }

    LOBYTE(v177) = 3;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v30 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0.0;
    }

    LOBYTE(v177) = 4;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v32 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0.0;
    }

    LOBYTE(v177) = 5;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v34 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0.0;
    }

    LOBYTE(v179) = 6;
    sub_1B60FDA64();
    OUTLINED_FUNCTION_12_17();
    sub_1B6221DD4();
    v37 = v183;
    OUTLINED_FUNCTION_7_18(7);
    v38 = sub_1B6221DA4();
    OUTLINED_FUNCTION_7_18(8);
    sub_1B6221DB4();
    v181 = v37;
    v162 = v26;
    v161 = v39;
    LOBYTE(v177) = 9;
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_16_18(v40, v41);
    v42 = OUTLINED_FUNCTION_10_15();
    v43 = 0.0;
    if (!v28)
    {
      v42 = 0.0;
    }

    v164 = v42;
    OUTLINED_FUNCTION_5_31(10);
    OUTLINED_FUNCTION_16_18(v44, v45);
    v46 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v46 = 0.0;
    }

    v163 = v46;
    OUTLINED_FUNCTION_5_31(11);
    OUTLINED_FUNCTION_16_18(v47, v48);
    v49 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0.0;
    }

    OUTLINED_FUNCTION_5_31(12);
    OUTLINED_FUNCTION_16_18(v51, v52);
    v53 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v54 = v53;
    }

    else
    {
      v54 = 0.0;
    }

    OUTLINED_FUNCTION_5_31(13);
    OUTLINED_FUNCTION_16_18(v55, v56);
    v57 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0.0;
    }

    OUTLINED_FUNCTION_5_31(14);
    OUTLINED_FUNCTION_16_18(v59, v60);
    v61 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v43 = v61;
    }

    LOBYTE(v179) = 15;
    sub_1B617A040();
    OUTLINED_FUNCTION_12_17();
    v160 = sub_1B6221D14();
    v159 = v58;
    v158 = v54;
    v157 = v50;
    v62 = v163;
    v63 = v164;
    LOBYTE(v179) = 16;
    OUTLINED_FUNCTION_12_17();
    v156 = OUTLINED_FUNCTION_29_8(v64, v65, v66, v67);
    LOBYTE(v179) = 17;
    OUTLINED_FUNCTION_12_17();
    v155 = OUTLINED_FUNCTION_29_8(v68, v69, v70, v71);
    LOBYTE(v179) = 18;
    OUTLINED_FUNCTION_12_17();
    v154 = OUTLINED_FUNCTION_29_8(v72, v73, v74, v75);
    LOBYTE(v179) = 19;
    OUTLINED_FUNCTION_12_17();
    v153 = OUTLINED_FUNCTION_29_8(v76, v77, v78, v79);
    v152 = v23;
    v150 = v43;
    v80 = v63;
    LOBYTE(v179) = 20;
    OUTLINED_FUNCTION_12_17();
    v151 = OUTLINED_FUNCTION_29_8(v81, v82, v83, v84);
    LOBYTE(v177) = 21;
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_32_7();
    sub_1B6221D24();
    v85 = OUTLINED_FUNCTION_10_15();
    v86 = 0.0;
    if (v28)
    {
      v87 = v85;
    }

    else
    {
      v87 = 0.0;
    }

    OUTLINED_FUNCTION_1_40(22);
    v88 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v88 = 0.0;
    }

    v149 = v88;
    OUTLINED_FUNCTION_1_40(23);
    v142 = v179;
    LODWORD(v141) = v180;
    LOBYTE(v177) = 24;
    sub_1B60FDAB8();
    OUTLINED_FUNCTION_15_17();
    sub_1B6221D24();
    v89 = v179;
    if (v179 == 3)
    {
      v89 = 2;
    }

    v148 = v89;
    OUTLINED_FUNCTION_1_40(25);
    v90 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v90 = 0.0;
    }

    v147 = v90;
    OUTLINED_FUNCTION_1_40(26);
    v91 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v91 = 0.0;
    }

    v146 = v91;
    OUTLINED_FUNCTION_1_40(27);
    v92 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v92 = 0.0;
    }

    v145 = v92;
    OUTLINED_FUNCTION_1_40(28);
    v93 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v93 = 0.0;
    }

    v144 = v93;
    OUTLINED_FUNCTION_1_40(29);
    v94 = OUTLINED_FUNCTION_10_15();
    if (!v28)
    {
      v94 = 0.0;
    }

    v143 = v94;
    OUTLINED_FUNCTION_1_40(30);
    v95 = OUTLINED_FUNCTION_10_15();
    if (v28)
    {
      v86 = v95;
    }

    LOBYTE(v179) = 31;
    OUTLINED_FUNCTION_8_23();
    sub_1B6221D24();
    LOBYTE(v179) = 32;
    OUTLINED_FUNCTION_8_23();
    sub_1B6221D24();
    OUTLINED_FUNCTION_7_18(33);
    sub_1B6221DB4();
    v162 = v96;
    LOBYTE(v177) = 34;
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_32_7();
    sub_1B6221D24();
    v97 = v179;
    LODWORD(v136) = v180;
    LOBYTE(v177) = 35;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v135 = v179;
    LODWORD(v134) = v180;
    LOBYTE(v177) = 36;
    OUTLINED_FUNCTION_3_33();
    sub_1B6221D24();
    v140 = v179;
    v139 = v180;
    LOBYTE(v175) = 37;
    sub_1B6221D24();
    v98 = v177;
    v138 = v178;
    LOBYTE(v175) = 38;
    v137 = sub_1B6221DC4();
    LOBYTE(v175) = 39;
    sub_1B6221DB4();
    v133 = v99;
    LOBYTE(v173) = 40;
    OUTLINED_FUNCTION_32_7();
    sub_1B6221D24();
    v132 = v175;
    v131 = v176;
    v182 = 41;
    sub_1B6221D24();
    v130 = v173;
    v129 = v174;
    v182 = 42;
    sub_1B6221DB4();
    v128 = v100;
    v101 = v142;
    if (v141)
    {
      v101 = 0;
    }

    v127 = v101;
    if (v136)
    {
      v102 = 0;
    }

    else
    {
      v102 = v97;
    }

    v142 = v102;
    v103 = v135;
    if (v134)
    {
      v103 = 0;
    }

    v141 = v103;
    (*(v171 + 8))(v169, v170);
    v104 = type metadata accessor for CurrentWeather(0);
    v105 = v104[5];
    v106 = v167;
    v107 = v152;
    __swift_storeEnumTagSinglePayload(v167 + v105, 1, 1, v152);
    v108 = v104[28];
    v134 = (v106 + v104[27]);
    *(v106 + v108) = 3;
    v126 = v104[35];
    v109 = OUTLINED_FUNCTION_22_8(v126);
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v107);
    v171 = v104[36];
    v112 = OUTLINED_FUNCTION_22_8(v171);
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v107);
    v115 = v104[39];
    v135 = (v106 + v104[38]);
    v169 = (v106 + v115);
    v116 = v104[41];
    v136 = (v106 + v104[40]);
    v152 = (v106 + v116);
    v117 = v104[45];
    v170 = (v106 + v104[44]);
    v118 = v106 + v117;
    sub_1B603D8D8(v13, v106);
    sub_1B603D764(v166, v106 + v105);
    *(v106 + v104[6]) = v29;
    *(v106 + v104[7]) = v31;
    *(v106 + v104[8]) = v33;
    *(v106 + v104[9]) = v35;
    *(v106 + v104[10]) = v181;
    *(v106 + v104[11]) = v38 & 1;
    OUTLINED_FUNCTION_17_17(v104[12]);
    *(v106 + v104[13]) = v80;
    *(v106 + v104[14]) = v62;
    OUTLINED_FUNCTION_17_17(v104[15]);
    OUTLINED_FUNCTION_17_17(v104[16]);
    OUTLINED_FUNCTION_17_17(v104[17]);
    OUTLINED_FUNCTION_17_17(v104[18]);
    OUTLINED_FUNCTION_25_8(v104[19]);
    OUTLINED_FUNCTION_25_8(v104[20]);
    OUTLINED_FUNCTION_25_8(v104[21]);
    OUTLINED_FUNCTION_25_8(v104[22]);
    OUTLINED_FUNCTION_25_8(v104[23]);
    OUTLINED_FUNCTION_25_8(v104[24]);
    *(v106 + v104[25]) = v87;
    OUTLINED_FUNCTION_17_17(v104[26]);
    v119 = v134;
    *v134 = v127;
    *(v119 + 8) = 0;
    *(v106 + v108) = v148;
    OUTLINED_FUNCTION_17_17(v104[29]);
    OUTLINED_FUNCTION_17_17(v104[30]);
    OUTLINED_FUNCTION_17_17(v104[31]);
    OUTLINED_FUNCTION_17_17(v104[32]);
    OUTLINED_FUNCTION_17_17(v104[33]);
    *(v106 + v104[34]) = v86;
    sub_1B603D764(v165, v106 + v126);
    sub_1B603D764(v168, v106 + v171);
    OUTLINED_FUNCTION_17_17(v104[37]);
    v120 = v135;
    *v135 = v142;
    *(v120 + 8) = 0;
    v121 = v169;
    *v169 = v141;
    *(v121 + 8) = 0;
    v122 = v136;
    *v136 = v140;
    *(v122 + 8) = v139;
    v123 = v152;
    *v152 = v98;
    *(v123 + 8) = v138;
    OUTLINED_FUNCTION_25_8(v104[42]);
    OUTLINED_FUNCTION_17_17(v104[43]);
    v124 = v170;
    *v170 = v132;
    *(v124 + 8) = v131;
    *v118 = v130;
    *(v118 + 8) = v129;
    OUTLINED_FUNCTION_17_17(v104[46]);
  }

  return __swift_destroy_boxed_opaque_existential_1(v172);
}

unint64_t sub_1B6179FEC()
{
  result = qword_1EDAB2078;
  if (!qword_1EDAB2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2078);
  }

  return result;
}

unint64_t sub_1B617A040()
{
  result = qword_1EDAB11C8;
  if (!qword_1EDAB11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB11C8);
  }

  return result;
}

uint64_t sub_1B617A094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1716482913 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001B623D7A0 == a2;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001B623D7C0 == a2;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000001B623D7E0 == a2;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F697469646E6F63 && a2 == 0xED000065646F436ELL;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746867696C796164 && a2 == 0xE800000000000000;
                if (v12 || (sub_1B6221F24() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1B6221F24() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x80000001B623E820 == a2;
                    if (v14 || (sub_1B6221F24() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x80000001B623E840 == a2;
                      if (v15 || (sub_1B6221F24() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x80000001B623E860 == a2;
                        if (v16 || (sub_1B6221F24() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001B623E880 == a2;
                          if (v17 || (sub_1B6221F24() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000019 && 0x80000001B623E8A0 == a2;
                            if (v18 || (sub_1B6221F24() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001ALL && 0x80000001B623E8C0 == a2;
                              if (v19 || (sub_1B6221F24() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000023 && 0x80000001B623E8E0 == a2;
                                if (v20 || (sub_1B6221F24() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000023 && 0x80000001B623E910 == a2;
                                  if (v21 || (sub_1B6221F24() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000024 && 0x80000001B623E940 == a2;
                                    if (v22 || (sub_1B6221F24() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD00000000000001FLL && 0x80000001B623E970 == a2;
                                      if (v23 || (sub_1B6221F24() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD00000000000001FLL && 0x80000001B623E990 == a2;
                                        if (v24 || (sub_1B6221F24() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000020 && 0x80000001B623E9B0 == a2;
                                          if (v25 || (sub_1B6221F24() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000016 && 0x80000001B623CEF0 == a2;
                                            if (v26 || (sub_1B6221F24() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001FLL && 0x80000001B623D840 == a2;
                                              if (v27 || (sub_1B6221F24() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
                                                if (v28 || (sub_1B6221F24() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x6572757373657270 && a2 == 0xED0000646E657254;
                                                  if (v29 || (sub_1B6221F24() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000010 && 0x80000001B623E9E0 == a2;
                                                    if (v30 || (sub_1B6221F24() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000010 && 0x80000001B623EA00 == a2;
                                                      if (v31 || (sub_1B6221F24() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000011 && 0x80000001B623EA20 == a2;
                                                        if (v32 || (sub_1B6221F24() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000014 && 0x80000001B623EA40 == a2;
                                                          if (v33 || (sub_1B6221F24() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000014 && 0x80000001B623EA60 == a2;
                                                            if (v34 || (sub_1B6221F24() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000015 && 0x80000001B623EA80 == a2;
                                                              if (v35 || (sub_1B6221F24() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
                                                                if (v36 || (sub_1B6221F24() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x7465736E7573 && a2 == 0xE600000000000000;
                                                                  if (v37 || (sub_1B6221F24() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                                                                    if (v38 || (sub_1B6221F24() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000013 && 0x80000001B623D880 == a2;
                                                                      if (v39 || (sub_1B6221F24() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000013 && 0x80000001B623D8A0 == a2;
                                                                        if (v40 || (sub_1B6221F24() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000013 && 0x80000001B623EAA0 == a2;
                                                                          if (v41 || (sub_1B6221F24() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000013 && 0x80000001B623EAC0 == a2;
                                                                            if (v42 || (sub_1B6221F24() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
                                                                              if (v43 || (sub_1B6221F24() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                                                                                if (v44 || (sub_1B6221F24() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0x65726944646E6977 && a2 == 0xED00006E6F697463;
                                                                                  if (v45 || (sub_1B6221F24() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0x74737547646E6977 && a2 == 0xE800000000000000;
                                                                                    if (v46 || (sub_1B6221F24() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else if (a1 == 0x65657053646E6977 && a2 == 0xE900000000000064)
                                                                                    {

                                                                                      return 42;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v48 = sub_1B6221F24();

                                                                                      if (v48)
                                                                                      {
                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        return 43;
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

uint64_t sub_1B617AD00(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
      result = 1716482913;
      break;
    case 2:
      result = 0x766F4364756F6C63;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 28:
    case 29:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6F697469646E6F63;
      break;
    case 7:
      result = 0x746867696C796164;
      break;
    case 8:
      result = 0x79746964696D7568;
      break;
    case 9:
    case 10:
    case 30:
      result = 0xD000000000000015;
      break;
    case 11:
    case 21:
      result = 0xD000000000000016;
      break;
    case 12:
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
    case 16:
      result = 0xD000000000000023;
      break;
    case 17:
      result = 0xD000000000000024;
      break;
    case 18:
    case 19:
    case 22:
      result = 0xD00000000000001FLL;
      break;
    case 20:
      result = 0xD000000000000020;
      break;
    case 23:
    case 24:
      v3 = 0x757373657270;
      goto LABEL_13;
    case 25:
    case 26:
      result = 0xD000000000000010;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 31:
      result = 0x657369726E7573;
      break;
    case 32:
      result = 0x7465736E7573;
      break;
    case 33:
      result = 0x74617265706D6574;
      break;
    case 34:
      result = 0xD000000000000013;
      break;
    case 35:
      result = 0xD000000000000013;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 37:
      result = 0xD000000000000013;
      break;
    case 38:
      result = 0x7865646E497675;
      break;
    case 39:
      result = 0x696C696269736976;
      break;
    case 40:
      v3 = 0x6944646E6977;
LABEL_13:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
      break;
    case 41:
      result = 0x74737547646E6977;
      break;
    case 42:
      result = 0x65657053646E6977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B617B10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B617A094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B617B134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B617ACF8();
  *a1 = result;
  return result;
}

uint64_t sub_1B617B15C(uint64_t a1)
{
  v2 = sub_1B6179FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B617B198(uint64_t a1)
{
  v2 = sub_1B6179FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrentWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926780, &qword_1B6231220);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6179FEC();
  sub_1B62220F4();
  v20 = 0;
  type metadata accessor for Metadata(0);
  OUTLINED_FUNCTION_19_12();
  sub_1B617B858(v11, v12, &protocol conformance descriptor for Metadata);
  OUTLINED_FUNCTION_13_17();
  sub_1B6221EC4();
  if (!v2)
  {
    v13 = type metadata accessor for CurrentWeather(0);
    v20 = 1;
    sub_1B621D8F4();
    OUTLINED_FUNCTION_18_14();
    sub_1B617B858(v14, v15, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(2);
    OUTLINED_FUNCTION_2_38(3);
    OUTLINED_FUNCTION_2_38(4);
    OUTLINED_FUNCTION_2_38(5);
    v20 = *(v3 + v13[10]);
    v21 = 6;
    sub_1B60FE980();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221EC4();
    v20 = 7;
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E94();
    OUTLINED_FUNCTION_2_38(8);
    OUTLINED_FUNCTION_2_38(9);
    OUTLINED_FUNCTION_2_38(10);
    OUTLINED_FUNCTION_2_38(11);
    OUTLINED_FUNCTION_2_38(12);
    OUTLINED_FUNCTION_2_38(13);
    OUTLINED_FUNCTION_2_38(14);
    OUTLINED_FUNCTION_26_9(v13[19]);
    v21 = 15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926788, &qword_1B6231228);
    sub_1B617B8A0();
    OUTLINED_FUNCTION_9_2();
    v19[1] = v17;
    v19[2] = v16;
    OUTLINED_FUNCTION_13_17();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_26_9(v13[20]);
    OUTLINED_FUNCTION_7_24(16);
    OUTLINED_FUNCTION_26_9(v13[21]);
    OUTLINED_FUNCTION_7_24(17);
    OUTLINED_FUNCTION_26_9(v13[22]);
    OUTLINED_FUNCTION_7_24(18);
    OUTLINED_FUNCTION_26_9(v13[23]);
    OUTLINED_FUNCTION_7_24(19);
    OUTLINED_FUNCTION_26_9(v13[24]);
    OUTLINED_FUNCTION_7_24(20);
    OUTLINED_FUNCTION_2_38(21);
    OUTLINED_FUNCTION_2_38(22);
    OUTLINED_FUNCTION_4_1(v13[27]);
    OUTLINED_FUNCTION_0_67(23);
    sub_1B6221E44();
    v20 = *(v3 + v13[28]);
    v21 = 24;
    sub_1B60FE9D4();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(25);
    OUTLINED_FUNCTION_2_38(26);
    OUTLINED_FUNCTION_2_38(27);
    OUTLINED_FUNCTION_2_38(28);
    OUTLINED_FUNCTION_2_38(29);
    OUTLINED_FUNCTION_2_38(30);
    v20 = 31;
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    v20 = 32;
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221E74();
    OUTLINED_FUNCTION_2_38(33);
    OUTLINED_FUNCTION_4_1(v13[38]);
    OUTLINED_FUNCTION_0_67(34);
    sub_1B6221E44();
    OUTLINED_FUNCTION_4_1(v13[39]);
    OUTLINED_FUNCTION_0_67(35);
    sub_1B6221E44();
    OUTLINED_FUNCTION_4_1(v13[40]);
    OUTLINED_FUNCTION_0_67(36);
    sub_1B6221E44();
    OUTLINED_FUNCTION_4_1(v13[41]);
    OUTLINED_FUNCTION_0_67(37);
    sub_1B6221E44();
    v20 = 38;
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_13_17();
    sub_1B6221EB4();
    OUTLINED_FUNCTION_2_38(39);
    OUTLINED_FUNCTION_4_1(v13[44]);
    OUTLINED_FUNCTION_0_67(40);
    sub_1B6221E64();
    OUTLINED_FUNCTION_4_1(v13[45]);
    OUTLINED_FUNCTION_0_67(41);
    sub_1B6221E44();
    OUTLINED_FUNCTION_2_38(42);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B617B858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B617B8A0()
{
  result = qword_1EDAB0DE8;
  if (!qword_1EDAB0DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB926788, &qword_1B6231228);
    sub_1B617B924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0DE8);
  }

  return result;
}

unint64_t sub_1B617B924()
{
  result = qword_1EDAB11D0;
  if (!qword_1EDAB11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB11D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CurrentWeather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD6)
  {
    if (a2 + 42 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 42) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 43;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v5 = v6 - 43;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CurrentWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD5)
  {
    v6 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 42;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B617BB40()
{
  result = qword_1EB926790;
  if (!qword_1EB926790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB926790);
  }

  return result;
}

unint64_t sub_1B617BB98()
{
  result = qword_1EDAB2068;
  if (!qword_1EDAB2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2068);
  }

  return result;
}

unint64_t sub_1B617BBF0()
{
  result = qword_1EDAB2070;
  if (!qword_1EDAB2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2070);
  }

  return result;
}

void ForecastCondition.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for ForecastCondition(0);
    OUTLINED_FUNCTION_103_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
    OUTLINED_FUNCTION_66();
    sub_1B6221A04();
    v1 = OUTLINED_FUNCTION_93_0();
    type metadata accessor for PrecipitationConditionParameter(v1);
    sub_1B6077C6C(&unk_1EDAAFD50, type metadata accessor for PrecipitationConditionParameter, &protocol conformance descriptor for PrecipitationConditionParameter);
    OUTLINED_FUNCTION_56_1();
    sub_1B6077C6C(v2, type metadata accessor for PrecipitationConditionParameter, v3);
    OUTLINED_FUNCTION_21_11();
    OUTLINED_FUNCTION_73_1();
    sub_1B62214E4();
    v4 = OUTLINED_FUNCTION_66();
    ForecastToken.write(to:)(v4);
    v5 = OUTLINED_FUNCTION_66();
    PollutantType.write(to:)(v5);
    v6 = OUTLINED_FUNCTION_66();
    PollutantType.write(to:)(v6);
  }

  OUTLINED_FUNCTION_95_1();
}

void static HistoricalFact.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12, char a13)
{
  OUTLINED_FUNCTION_12_0();
  v16 = v15;
  v18 = v17;
  v19 = type metadata accessor for Metadata(0);
  v20 = OUTLINED_FUNCTION_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_70_0(v16);
  if (!v13)
  {
    if (a13 == 2)
    {
      v21 = 1;
    }

    else
    {
      if (a13 != 1)
      {
        goto LABEL_8;
      }

      v21 = 0;
    }

    OUTLINED_FUNCTION_70_0(v16);
    v22 = a12 - 1;
    if (v22 <= 2)
    {
      OUTLINED_FUNCTION_106_1();
      v23 = sub_1B6221274();
      v25 = v24;
      OUTLINED_FUNCTION_106_1();
      v26 = sub_1B6221274();
      v34 = v33;
      v43 = v26;
      OUTLINED_FUNCTION_106_1();
      v40 = sub_1B6221274();
      v42 = v35;
      sub_1B6181A20();
      sub_1B6181A74();
      v41 = sub_1B62214D4();
      v36 = OUTLINED_FUNCTION_106_1();
      static Metadata.read(from:)(v36, v37);
      *v18 = v21;
      *(v18 + 1) = v22;
      *(v18 + 8) = v23;
      *(v18 + 16) = v25;
      *(v18 + 24) = v43;
      *(v18 + 32) = v34;
      *(v18 + 40) = v40;
      *(v18 + 48) = v42;
      *(v18 + 56) = v41;
      type metadata accessor for HistoricalFact(0);
      OUTLINED_FUNCTION_2_6();
      sub_1B604CB80(v14, v18 + v38, v39);
      goto LABEL_9;
    }

LABEL_8:
    sub_1B6220694();
    OUTLINED_FUNCTION_1_41();
    v29 = sub_1B6077C6C(v27, v28, MEMORY[0x1E69D64F8]);
    v30 = OUTLINED_FUNCTION_17_18(v29);
    OUTLINED_FUNCTION_43_2(v30, v31);
    OUTLINED_FUNCTION_14_1();
    (*(v32 + 104))();
    swift_willThrow();
  }

LABEL_9:
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_13();
}

void HistoricalFact.write(to:)()
{
  OUTLINED_FUNCTION_101_1();
  sub_1B6220854();
  if (!v0)
  {
    OUTLINED_FUNCTION_84_1();
    sub_1B6220854();
    OUTLINED_FUNCTION_84_1();
    sub_1B6221284();
    OUTLINED_FUNCTION_84_1();
    sub_1B6221284();
    OUTLINED_FUNCTION_84_1();
    sub_1B6221284();
    sub_1B6181A20();
    sub_1B6181A74();
    sub_1B62214E4();
    type metadata accessor for HistoricalFact(0);
    OUTLINED_FUNCTION_84_1();
    Metadata.write(to:)();
  }
}

void static HistoricalFact.Argument.read(from:)(uint64_t a2@<X8>)
{
  v4 = sub_1B6221274();
  if (!v2)
  {
    v6 = v4;
    v7 = v5;
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_31_4();
    sub_1B62219F4();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
    *(a2 + 24) = v8;
  }
}

uint64_t HistoricalFact.Argument.write(to:)(uint64_t a1)
{
  result = sub_1B6221284();
  if (!v1)
  {
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0, &qword_1B622D410);
    OUTLINED_FUNCTION_5_32();
    return sub_1B6221A04();
  }

  return result;
}

uint64_t sub_1B617C350@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = OUTLINED_FUNCTION_88_1(a1);
  if (!v2)
  {
    if (v12 == 1)
    {
      v5 = 0;
      goto LABEL_6;
    }

    if (v12 == 2)
    {
      v5 = 1;
LABEL_6:
      *a2 = v5;
      return result;
    }

    sub_1B6220694();
    OUTLINED_FUNCTION_1_41();
    v8 = sub_1B6077C6C(v6, v7, MEMORY[0x1E69D64F8]);
    v9 = OUTLINED_FUNCTION_17_18(v8);
    OUTLINED_FUNCTION_43_2(v9, v10);
    OUTLINED_FUNCTION_14_1();
    (*(v11 + 104))();
    return swift_willThrow();
  }

  return result;
}

void static WeatherComparison.read(from:)()
{
  OUTLINED_FUNCTION_90_1();
  v3 = v2;
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_32();
  if (!v0)
  {
    if (v21 == 1)
    {
      v8 = OUTLINED_FUNCTION_31_4();
      static WeatherComparison.Condition.read(from:)(v8, v9);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
      v10 = OUTLINED_FUNCTION_31_4();
      static Urgency.read(from:)(v10, v11);
      OUTLINED_FUNCTION_31_4();
      sub_1B621D764();
      *v3 = v22;
      *(v3 + 8) = v21;
      *(v3 + 16) = v20;
      *(v3 + 24) = v19;
      v12 = type metadata accessor for WeatherComparison(0);
      (*(v6 + 32))(v3 + *(v12 + 36), v1, v4);
    }

    else
    {
      sub_1B6220694();
      OUTLINED_FUNCTION_1_41();
      v15 = sub_1B6077C6C(v13, v14, MEMORY[0x1E69D64F8]);
      v16 = OUTLINED_FUNCTION_17_18(v15);
      OUTLINED_FUNCTION_43_2(v16, v17);
      OUTLINED_FUNCTION_14_1();
      (*(v18 + 104))();
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_37_1();
}

uint64_t WeatherComparison.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  result = sub_1B6220854();
  if (!v0)
  {
    v2 = OUTLINED_FUNCTION_66();
    WeatherComparison.Condition.write(to:)(v2);
    OUTLINED_FUNCTION_66();
    sub_1B6220854();
    OUTLINED_FUNCTION_66();
    sub_1B6220854();
    v3 = OUTLINED_FUNCTION_66();
    Urgency.write(to:)(v3);
    type metadata accessor for WeatherComparison(0);
    OUTLINED_FUNCTION_66();
    return sub_1B621D774();
  }

  return result;
}

void static DailyForecast.read(from:)()
{
  OUTLINED_FUNCTION_112_1();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_6_2();
  v6 = type metadata accessor for Metadata(v5);
  v7 = OUTLINED_FUNCTION_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_68_1();
  static Metadata.read(from:)(v4, v8);
  if (!v1)
  {
    type metadata accessor for DayForecast(0);
    sub_1B6077C6C(&qword_1EDAB0848, type metadata accessor for DayForecast, &protocol conformance descriptor for DayForecast);
    OUTLINED_FUNCTION_54_0();
    v11 = sub_1B6077C6C(v9, type metadata accessor for DayForecast, v10);
    v12 = OUTLINED_FUNCTION_100_1(v11);
    OUTLINED_FUNCTION_2_6();
    sub_1B604CB80(v2, v0, v13);
    *(v0 + *(type metadata accessor for DailyForecast(0) + 20)) = v12;
  }

  OUTLINED_FUNCTION_113_1();
}

void DailyForecast.write(to:)(uint64_t a1)
{
  Metadata.write(to:)();
  if (!v1)
  {
    type metadata accessor for DailyForecast(0);
    type metadata accessor for DayForecast(0);
    sub_1B6077C6C(&qword_1EDAB0848, type metadata accessor for DayForecast, &protocol conformance descriptor for DayForecast);
    OUTLINED_FUNCTION_54_0();
    v4 = sub_1B6077C6C(v2, type metadata accessor for DayForecast, v3);
    OUTLINED_FUNCTION_20_12(v4);
  }
}

void static PeriodicForecast.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_112_1();
  v16 = v15;
  OUTLINED_FUNCTION_88_1(v17);
  if (!v13)
  {
    type metadata accessor for DayPartForecast(0);
    OUTLINED_FUNCTION_53_2();
    sub_1B6077C6C(v18, v14, &protocol conformance descriptor for DayPartForecast);
    OUTLINED_FUNCTION_6_22();
    sub_1B6077C6C(v19, v14, v20);
    v21 = sub_1B62214D4();
    *v16 = a13;
    *(v16 + 8) = v21;
  }

  OUTLINED_FUNCTION_113_1();
}

uint64_t PeriodicForecast.write(to:)(uint64_t a1)
{
  result = sub_1B6220854();
  if (!v1)
  {
    type metadata accessor for DayPartForecast(0);
    OUTLINED_FUNCTION_53_2();
    sub_1B6077C6C(v4, v2, &protocol conformance descriptor for DayPartForecast);
    OUTLINED_FUNCTION_6_22();
    sub_1B6077C6C(v5, v2, v6);
    return sub_1B62214E4();
  }

  return result;
}

void WeatherChange.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for WeatherChange(0);
    OUTLINED_FUNCTION_103_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    v1 = OUTLINED_FUNCTION_93_0();
    type metadata accessor for TrendDeviation(v1);
    sub_1B6077C6C(&qword_1EDAB01D0, type metadata accessor for TrendDeviation, &protocol conformance descriptor for TrendDeviation);
    OUTLINED_FUNCTION_51_2();
    v4 = sub_1B6077C6C(v2, type metadata accessor for TrendDeviation, v3);
    OUTLINED_FUNCTION_20_12(v4);
  }
}

uint64_t ForecastSummary.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  result = sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for ForecastSummary(0);
    OUTLINED_FUNCTION_103_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
    OUTLINED_FUNCTION_66();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    v2 = OUTLINED_FUNCTION_5_32();
    CardinalDirection.write(to:)(v2);
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D0, &qword_1B6231550);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    return sub_1B6221A04();
  }

  return result;
}

void NextHourForecast.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for NextHourForecast(0);
    OUTLINED_FUNCTION_66_1();
    v1 = OUTLINED_FUNCTION_93_0();
    type metadata accessor for ForecastCondition(v1);
    sub_1B6077C6C(&qword_1EDAB0058, type metadata accessor for ForecastCondition, &protocol conformance descriptor for ForecastCondition);
    OUTLINED_FUNCTION_50_1();
    sub_1B6077C6C(v2, type metadata accessor for ForecastCondition, v3);
    OUTLINED_FUNCTION_21_11();
    OUTLINED_FUNCTION_73_1();
    sub_1B62214E4();
    v4 = OUTLINED_FUNCTION_93_0();
    type metadata accessor for ForecastSummary(v4);
    sub_1B6077C6C(&qword_1EDAB0160, type metadata accessor for ForecastSummary, &protocol conformance descriptor for ForecastSummary);
    OUTLINED_FUNCTION_49_3();
    sub_1B6077C6C(v5, type metadata accessor for ForecastSummary, v6);
    OUTLINED_FUNCTION_21_11();
    OUTLINED_FUNCTION_73_1();
    sub_1B62214E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    v7 = OUTLINED_FUNCTION_93_0();
    type metadata accessor for ForecastMinute(v7);
    sub_1B6077C6C(&qword_1EDAB0208, type metadata accessor for ForecastMinute, &protocol conformance descriptor for ForecastMinute);
    OUTLINED_FUNCTION_48_3();
    v10 = sub_1B6077C6C(v8, type metadata accessor for ForecastMinute, v9);
    OUTLINED_FUNCTION_20_12(v10);
  }
}

void static ResponseType.read(from:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  OUTLINED_FUNCTION_88_1(a1);
  if (!v2)
  {
    OUTLINED_FUNCTION_69_1();
    if (v4 >= 9)
    {
      sub_1B6220694();
      OUTLINED_FUNCTION_1_41();
      v7 = sub_1B6077C6C(v5, v6, MEMORY[0x1E69D64F8]);
      v8 = OUTLINED_FUNCTION_17_18(v7);
      OUTLINED_FUNCTION_43_2(v8, v9);
      OUTLINED_FUNCTION_14_1();
      (*(v10 + 104))();
      swift_willThrow();
    }

    else
    {
      *a2 = v4;
    }
  }
}

void static HourlyForecast.read(from:)()
{
  OUTLINED_FUNCTION_112_1();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_6_2();
  v6 = type metadata accessor for Metadata(v5);
  v7 = OUTLINED_FUNCTION_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_68_1();
  static Metadata.read(from:)(v4, v8);
  if (!v1)
  {
    type metadata accessor for HourForecast(0);
    sub_1B6077C6C(&qword_1EDAB07E8, type metadata accessor for HourForecast, &protocol conformance descriptor for HourForecast);
    OUTLINED_FUNCTION_57_0();
    v11 = sub_1B6077C6C(v9, type metadata accessor for HourForecast, v10);
    v12 = OUTLINED_FUNCTION_100_1(v11);
    OUTLINED_FUNCTION_2_6();
    sub_1B604CB80(v2, v0, v13);
    *(v0 + *(type metadata accessor for HourlyForecast(0) + 20)) = v12;
  }

  OUTLINED_FUNCTION_113_1();
}

void HourlyForecast.write(to:)(uint64_t a1)
{
  Metadata.write(to:)();
  if (!v1)
  {
    type metadata accessor for HourlyForecast(0);
    type metadata accessor for HourForecast(0);
    sub_1B6077C6C(&qword_1EDAB07E8, type metadata accessor for HourForecast, &protocol conformance descriptor for HourForecast);
    OUTLINED_FUNCTION_57_0();
    v4 = sub_1B6077C6C(v2, type metadata accessor for HourForecast, v3);
    OUTLINED_FUNCTION_20_12(v4);
  }
}

void Metadata.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for Metadata(0);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_66();
    sub_1B621D774();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
    OUTLINED_FUNCTION_66();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8, &qword_1B6231558);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[8]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[9]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_65_1(v1[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0, &qword_1B622D410);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_65_1(v1[11]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_65_1(v1[12]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267E0, &qword_1B6231560);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267E8, &qword_1B6231568);
    sub_1B60722F8();
    sub_1B607234C();
    v2 = OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_75_0(v2);
    OUTLINED_FUNCTION_65_1(v1[15]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267F0, &qword_1B6231570);
    sub_1B60723A0();
    sub_1B60723F4();
    OUTLINED_FUNCTION_15_18();
    sub_1B6221A04();
  }

  OUTLINED_FUNCTION_95_1();
}

uint64_t sub_1B617D868(uint64_t a1)
{
  result = OUTLINED_FUNCTION_88_1(a1);
  if (!v1 && v9 != 1)
  {
    sub_1B6220694();
    OUTLINED_FUNCTION_1_41();
    v5 = sub_1B6077C6C(v3, v4, MEMORY[0x1E69D64F8]);
    v6 = OUTLINED_FUNCTION_17_18(v5);
    OUTLINED_FUNCTION_43_2(v6, v7);
    OUTLINED_FUNCTION_14_1();
    (*(v8 + 104))();
    return swift_willThrow();
  }

  return result;
}

void static PrecipitationConditionParameter.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_6_2();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_86_0();
  sub_1B6220844();
  if (!v14)
  {
    if (a13 == 2)
    {
      v16 = 1;
    }

    else
    {
      if (a13 != 1)
      {
        sub_1B6220694();
        OUTLINED_FUNCTION_1_41();
        sub_1B6077C6C(v18, v19, MEMORY[0x1E69D64F8]);
        swift_allocError();
        OUTLINED_FUNCTION_10_6();
        (*(v20 + 104))();
        swift_willThrow();
        goto LABEL_2;
      }

      v16 = 0;
    }

    sub_1B621D764();
    *v13 = v16;
    type metadata accessor for PrecipitationConditionParameter(0);
    OUTLINED_FUNCTION_102();
    v17();
  }

LABEL_2:
  OUTLINED_FUNCTION_113_1();
}

uint64_t PrecipitationConditionParameter.write(to:)()
{
  OUTLINED_FUNCTION_101_1();
  result = sub_1B6220854();
  if (!v0)
  {
    type metadata accessor for PrecipitationConditionParameter(0);
    OUTLINED_FUNCTION_84_1();
    return sub_1B621D774();
  }

  return result;
}

void AirQuality.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for AirQuality(0);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8, &qword_1B6231558);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267E0, &qword_1B6231560);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    sub_1B6072648();
    sub_1B607269C();
    OUTLINED_FUNCTION_1_39();
    sub_1B62214E4();
    OUTLINED_FUNCTION_65_1(*(v1 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0, &qword_1B622D410);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267F8, &qword_1B6231578);
    sub_1B6072934();
    sub_1B6072988();
    v2 = OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_75_0(v2);
    OUTLINED_FUNCTION_65_1(*(v1 + 44));
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
  }

  OUTLINED_FUNCTION_95_1();
}

void sub_1B617DDCC()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v17 = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_6_2();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_0();
  v10 = type metadata accessor for Metadata(0);
  v11 = OUTLINED_FUNCTION_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  static Metadata.read(from:)(v8, v13 - v12);
  if (!v1)
  {
    v6();
    v17();
    OUTLINED_FUNCTION_78_0();
    v15 = sub_1B62214D4();
    sub_1B621D764();
    sub_1B604CB80(v14, v0, type metadata accessor for Metadata);
    *(v0 + *(v3(0) + 20)) = v15;
    OUTLINED_FUNCTION_105_1();
    v16();
  }

  OUTLINED_FUNCTION_13();
}

void sub_1B617E0CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  Metadata.write(to:)();
  if (!v5)
  {
    a2(0);
    a3();
    a4();
    sub_1B62214E4();
    OUTLINED_FUNCTION_66();
    sub_1B621D774();
  }
}

void HourForecast.write(to:)()
{
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_44_3();
  sub_1B621D774();
  if (!v0)
  {
    type metadata accessor for HourForecast(0);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_26_10(v2);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[6]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[7]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[8]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    v3 = OUTLINED_FUNCTION_5_32();
    ConditionCode.write(to:)(v3);
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[11]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[12]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[13]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926820, &qword_1B6231580);
    sub_1B6077250();
    sub_1B60772A4();
    OUTLINED_FUNCTION_9_22();
    OUTLINED_FUNCTION_104_1();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[15]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D0, &qword_1B6231550);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926828, &qword_1B6231588);
    sub_1B607A1A8();
    sub_1B607A1FC();
    v4 = OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_75_0(v4);
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[19]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v1[23]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8, &qword_1B6231558);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v1[26]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
  }

  OUTLINED_FUNCTION_95_1();
}

void static EventMessage.read(from:)()
{
  OUTLINED_FUNCTION_61();
  sub_1B62219F4();
  if (!v1)
  {
    OUTLINED_FUNCTION_91_1();
    sub_1B62219F4();
    *v0 = v3;
    *(v0 + 8) = v4;
    *(v0 + 16) = v2;
  }
}

uint64_t EventMessage.write(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0, &qword_1B622D410);
  result = sub_1B6221A04();
  if (!v1)
  {
    return sub_1B6221A04();
  }

  return result;
}

void sub_1B617E758(uint64_t (*a1)(void)@<X1>, void (*a2)(void)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for Metadata(0);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  v13 = OUTLINED_FUNCTION_97_0();
  static Metadata.read(from:)(v13, v14);
  if (!v5)
  {
    a1();
    a2();
    OUTLINED_FUNCTION_78_0();
    v15 = sub_1B62214D4();
    OUTLINED_FUNCTION_2_6();
    sub_1B604CB80(v6, a5, v16);
    *(a5 + *(a4(0) + 20)) = v15;
  }
}

void static LocationInfo.read(from:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_90_1();
  v2 = v1;
  v3 = type metadata accessor for Metadata(0);
  v4 = OUTLINED_FUNCTION_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_68_1();
  v5 = OUTLINED_FUNCTION_31_4();
  static Metadata.read(from:)(v5, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_31_4();
    v7 = sub_1B6221274();
    v9 = v8;
    OUTLINED_FUNCTION_31_4();
    sub_1B62219F4();
    OUTLINED_FUNCTION_31_4();
    sub_1B62219F4();
    OUTLINED_FUNCTION_31_4();
    sub_1B62219F4();
    OUTLINED_FUNCTION_31_4();
    v10 = sub_1B6221274();
    v21 = v11;
    v12 = type metadata accessor for LocationInfo(0);
    v18 = (v2 + v12[6]);
    v20 = (v2 + v12[7]);
    v19 = (v2 + v12[8]);
    OUTLINED_FUNCTION_2_6();
    v13 = OUTLINED_FUNCTION_1_39();
    sub_1B604CB80(v13, v14, v15);
    v16 = (v2 + v12[5]);
    *v16 = v7;
    v16[1] = v9;
    *v18 = v26;
    v18[1] = v27;
    *v20 = v24;
    v20[1] = v25;
    *v19 = v22;
    v19[1] = v23;
    v17 = (v2 + v12[9]);
    *v17 = v10;
    v17[1] = v21;
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_13();
}

void LocationInfo.write(to:)()
{
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for LocationInfo(0);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_66();
    sub_1B6221284();
    OUTLINED_FUNCTION_65_1(v1[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0, &qword_1B622D410);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_65_1(v1[7]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_65_1(v1[8]);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_66();
    sub_1B6221284();
  }
}

uint64_t sub_1B617EC58()
{
  OUTLINED_FUNCTION_61();
  result = sub_1B6220844();
  if (!v1)
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_91_1();
    result = sub_1B6220844();
    *v0 = v5;
    v0[1] = v4;
    v0[2] = v3;
  }

  return result;
}

uint64_t sub_1B617ED18(uint64_t a1)
{
  result = sub_1B6220854();
  if (!v1)
  {
    OUTLINED_FUNCTION_99_1();
    return OUTLINED_FUNCTION_99_1();
  }

  return result;
}

uint64_t static HourWeatherStatistics.read(from:)()
{
  OUTLINED_FUNCTION_61();
  result = sub_1B6220844();
  if (!v1)
  {
    sub_1B6182C48();
    sub_1B6182C9C();
    OUTLINED_FUNCTION_29_9();
    result = sub_1B62219F4();
    *v0 = v6;
    *(v0 + 8) = v3;
    *(v0 + 24) = v4;
    *(v0 + 32) = v5;
  }

  return result;
}

uint64_t HourWeatherStatistics.write(to:)(uint64_t a1)
{
  result = sub_1B6220854();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926850, &qword_1B6231590);
    sub_1B6182C48();
    sub_1B6182C9C();
    OUTLINED_FUNCTION_15_18();
    return sub_1B6221A04();
  }

  return result;
}

void static CurrentWeather.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_77_1();
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  v25 = OUTLINED_FUNCTION_0(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_10();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v79 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v79 - v33;
  v35 = type metadata accessor for Metadata(0);
  v36 = OUTLINED_FUNCTION_0(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  static Metadata.read(from:)(v21, v19);
  if (!v18)
  {
    v37 = sub_1B621D8F4();
    sub_1B62219F4();
    v127 = v37;
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_27_9();
    v38 = v166;
    OUTLINED_FUNCTION_27_9();
    v39 = v165;
    OUTLINED_FUNCTION_27_9();
    v40 = v164;
    v41 = OUTLINED_FUNCTION_71_1();
    static ConditionCode.read(from:)(v41, v42);
    v126 = v163;
    OUTLINED_FUNCTION_27_9();
    v125 = v162;
    OUTLINED_FUNCTION_27_9();
    v43 = v161;
    OUTLINED_FUNCTION_27_9();
    v44 = v160;
    OUTLINED_FUNCTION_27_9();
    v45 = v159;
    OUTLINED_FUNCTION_27_9();
    v46 = v158;
    OUTLINED_FUNCTION_27_9();
    v124 = v157;
    OUTLINED_FUNCTION_27_9();
    v123 = v156;
    OUTLINED_FUNCTION_27_9();
    v120 = v155;
    v47 = sub_1B60771A8();
    sub_1B60771FC();
    v122 = v47;
    v121 = sub_1B62214D4();
    v119 = OUTLINED_FUNCTION_38_5(v121, &type metadata for PrecipitationAmountRange);
    v118 = OUTLINED_FUNCTION_38_5(v119, &type metadata for PrecipitationAmountRange);
    v117 = OUTLINED_FUNCTION_38_5(v118, &type metadata for PrecipitationAmountRange);
    v116 = OUTLINED_FUNCTION_38_5(v117, &type metadata for PrecipitationAmountRange);
    v122 = OUTLINED_FUNCTION_38_5(v116, &type metadata for PrecipitationAmountRange);
    OUTLINED_FUNCTION_27_9();
    v115 = v154;
    OUTLINED_FUNCTION_27_9();
    v114 = v153;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v113 = v151;
    v112 = v152;
    sub_1B607A1A8();
    sub_1B607A1FC();
    sub_1B62219F4();
    v111 = v150;
    OUTLINED_FUNCTION_27_9();
    v110 = v149;
    OUTLINED_FUNCTION_27_9();
    v109 = v148;
    OUTLINED_FUNCTION_27_9();
    v108 = v147;
    OUTLINED_FUNCTION_27_9();
    v107 = v146;
    OUTLINED_FUNCTION_27_9();
    v106 = v145;
    OUTLINED_FUNCTION_27_9();
    v105 = v144;
    sub_1B62219F4();
    sub_1B62219F4();
    OUTLINED_FUNCTION_27_9();
    v104 = v143;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v103 = v141;
    v102 = v142;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v101 = v139;
    v100 = v140;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v99 = v137;
    v98 = v138;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v97 = v135;
    v96 = v136;
    OUTLINED_FUNCTION_27_9();
    v95 = v134;
    OUTLINED_FUNCTION_27_9();
    v94 = v133;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v93 = v131;
    v92 = v132;
    OUTLINED_FUNCTION_71_1();
    sub_1B62219F4();
    v91 = v129;
    v90 = v130;
    OUTLINED_FUNCTION_27_9();
    v89 = v128;
    v48 = type metadata accessor for CurrentWeather(0);
    v80 = v48[5];
    OUTLINED_FUNCTION_3_10();
    v49 = v127;
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v127);
    v53 = (v23 + v48[27]);
    v81 = v48[28];
    v82 = v53;
    *(v23 + v81) = 3;
    v87 = v48[35];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v49);
    v86 = v48[36];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v49);
    v60 = v48[39];
    v85 = (v23 + v48[38]);
    v88 = (v23 + v60);
    v61 = v48[41];
    v83 = (v23 + v48[40]);
    v84 = v23 + v61;
    v62 = v48[45];
    v127 = (v23 + v48[44]);
    v63 = v23 + v62;
    OUTLINED_FUNCTION_2_6();
    sub_1B604CB80(v19, v23, v64);
    sub_1B6072594(v34, v23 + v80, &qword_1EB924600, &qword_1B6223420);
    *(v23 + v48[6]) = a18;
    *(v23 + v48[7]) = v38;
    *(v23 + v48[8]) = v39;
    *(v23 + v48[9]) = v40;
    *(v23 + v48[10]) = v126;
    *(v23 + v48[11]) = v125;
    *(v23 + v48[12]) = v43;
    *(v23 + v48[13]) = v44;
    *(v23 + v48[14]) = v45;
    *(v23 + v48[15]) = v46;
    v65 = v123;
    *(v23 + v48[16]) = v124;
    *(v23 + v48[17]) = v65;
    *(v23 + v48[18]) = v120;
    *(v23 + v48[19]) = v121;
    v66 = v118;
    *(v23 + v48[20]) = v119;
    *(v23 + v48[21]) = v66;
    v67 = v116;
    *(v23 + v48[22]) = v117;
    *(v23 + v48[23]) = v67;
    *(v23 + v48[24]) = v122;
    v68 = v114;
    *(v23 + v48[25]) = v115;
    *(v23 + v48[26]) = v68;
    v69 = v81;
    v70 = v82;
    *v82 = v113;
    *(v70 + 8) = v112;
    *(v23 + v69) = v111;
    v71 = v109;
    *(v23 + v48[29]) = v110;
    *(v23 + v48[30]) = v71;
    v72 = v107;
    *(v23 + v48[31]) = v108;
    *(v23 + v48[32]) = v72;
    v73 = v105;
    *(v23 + v48[33]) = v106;
    *(v23 + v48[34]) = v73;
    sub_1B6072594(v31, v23 + v87, &qword_1EB924600, &qword_1B6223420);
    sub_1B6072594(v28, v23 + v86, &qword_1EB924600, &qword_1B6223420);
    *(v23 + v48[37]) = v104;
    v74 = v85;
    *v85 = v103;
    *(v74 + 8) = v102;
    v75 = v88;
    *v88 = v101;
    *(v75 + 8) = v100;
    v77 = v83;
    v76 = v84;
    *v83 = v99;
    *(v77 + 8) = v98;
    *v76 = v97;
    *(v76 + 8) = v96;
    *(v23 + v48[42]) = v95;
    *(v23 + v48[43]) = v94;
    v78 = v127;
    *v127 = v93;
    *(v78 + 8) = v92;
    *v63 = v91;
    *(v63 + 8) = v90;
    *(v23 + v48[46]) = v89;
  }

  OUTLINED_FUNCTION_76_1();
}

void CurrentWeather.write(to:)()
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_44_3();
  Metadata.write(to:)();
  if (!v0)
  {
    type metadata accessor for CurrentWeather(0);
    OUTLINED_FUNCTION_103_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v2[6]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[7]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[8]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[9]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_36_4();
    v3 = OUTLINED_FUNCTION_5_32();
    ConditionCode.write(to:)(v3);
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[12]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[13]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[14]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[15]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[16]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[17]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[18]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    sub_1B60771A8();
    sub_1B60771FC();
    v4 = sub_1B62214E4();
    v5 = OUTLINED_FUNCTION_41_1(v4, *(v1 + v2[20]), &type metadata for PrecipitationAmountRange);
    v6 = OUTLINED_FUNCTION_41_1(v5, *(v1 + v2[21]), &type metadata for PrecipitationAmountRange);
    v7 = OUTLINED_FUNCTION_41_1(v6, *(v1 + v2[22]), &type metadata for PrecipitationAmountRange);
    v8 = OUTLINED_FUNCTION_41_1(v7, *(v1 + v2[23]), &type metadata for PrecipitationAmountRange);
    OUTLINED_FUNCTION_41_1(v8, *(v1 + v2[24]), &type metadata for PrecipitationAmountRange);
    OUTLINED_FUNCTION_26_10(v2[25]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[26]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D0, &qword_1B6231550);
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926828, &qword_1B6231588);
    sub_1B607A1A8();
    sub_1B607A1FC();
    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_107_0();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v2[29]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[30]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[31]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[32]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[33]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[34]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v2[37]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_26_10(v2[43]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
    OUTLINED_FUNCTION_3_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9267D8, &qword_1B6231558);
    OUTLINED_FUNCTION_5_32();
    sub_1B6221A04();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_19();
    sub_1B6221A04();
    OUTLINED_FUNCTION_26_10(v2[46]);
    OUTLINED_FUNCTION_5_32();
    sub_1B6220854();
  }

  OUTLINED_FUNCTION_110_1();
}

void Article.write(to:)()
{
  OUTLINED_FUNCTION_109_1();
  sub_1B6221284();
  if (!v0)
  {
    OUTLINED_FUNCTION_8_24();
    sub_1B62214E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE0, &qword_1B622D410);
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    OUTLINED_FUNCTION_8_24();
    sub_1B6221A04();
    sub_1B62214E4();
    sub_1B621D944();
    sub_1B62214E4();
  }

  OUTLINED_FUNCTION_110_1();
}