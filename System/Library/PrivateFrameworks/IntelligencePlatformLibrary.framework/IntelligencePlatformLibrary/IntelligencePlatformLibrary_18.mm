uint64_t sub_1935A682C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 56))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_1935A6868(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

uint64_t sub_1935A68BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_1935A6908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1935A6978(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_1935A69D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1935A6A70(uint64_t a1)
{
  OUTLINED_FUNCTION_4_32(a1, qword_1ED507908);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_2_39(v1, &qword_1EAE3A7F8, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_2_39(v3, &qword_1EAE3A818, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1935A6B48(uint64_t a1)
{
  OUTLINED_FUNCTION_4_32(a1, qword_1ED507908);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_2_39(v1, &qword_1EAE3A818, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType);
    if (v3 <= 0x3F)
    {
      sub_1935A7078(319, &qword_1EAE3A708, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch, MEMORY[0x1E69E62F8]);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_2_39(v4, &qword_1EAE3A7F0, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDDataProtectionClass);
        if (v6 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1935A6C48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 64))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 16);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_1935A6CC0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

void *__swift_memcpy14_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 14))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_112_9();
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t storeEnumTagSinglePayload for IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      *(result + 13) = a2 + 2;
    }
  }

  return result;
}

void *sub_1935A6DC8(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitToolSystemToolProtocol.ConditionallyEnabled(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_112_9();
  if (v6 < 0)
  {
    v6 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v6);
}

_BYTE *sub_1935A6EC0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_117_1(result, a2);
        }

        break;
    }
  }

  return result;
}

void sub_1935A6FA4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_39(a1, qword_1ED504F30, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_2_39(v1, qword_1ED506958, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentEnded);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_2_39(v3, &qword_1ED506950, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentFailed);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_4_32(v5, qword_1ED507908);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1935A7078(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 16)) - 65283);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 16)) - 65283);
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 16)) - 65283);
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_112_9();
  if (v6 < 0)
  {
    v6 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v6);
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        result[2] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        result[2] = 0;
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
        *(result + 2) = 0;
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
          result = OUTLINED_FUNCTION_117_1(result, a2);
        }

        break;
    }
  }

  return result;
}

void *sub_1935A7244(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_118_7(result);
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

void sub_1935A7314(uint64_t a1)
{
  OUTLINED_FUNCTION_4_32(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1935A737C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_1935A73D8()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

BOOL OUTLINED_FUNCTION_58_12@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_19359CD0C(a3, v3, a1, a2, v4);
}

void OUTLINED_FUNCTION_60_10()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  *(v1 - 32) = *v0;
  *(v1 - 28) = v2;
  *(v1 - 24) = v3;
  *(v1 - 20) = v4;
  *(v1 - 19) = v5;
}

double OUTLINED_FUNCTION_127_5()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void OUTLINED_FUNCTION_138_4()
{

  sub_1934D1694(v0, 1, v2, v1);
}

_BYTE *_s19PrivateCloudComputeOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1935A7758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510578);
  v4 = __swift_project_value_buffer(v3, qword_1ED510578);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.PrivateCloudCompute.RequestLog.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_18 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510578);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF40, &qword_193969008);
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

unint64_t static Library.Streams.PrivateCloudCompute.RequestLog.attribute(_:)(void (*a1)(void))
{
  result = sub_1935A7B5C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935A7BA4(void (*a1)(void))
{
  result = sub_1935A7B5C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935A7BD4(uint64_t a1)
{
  result = sub_1935A7BFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935A7BFC()
{
  result = qword_1ED5073C8;
  if (!qword_1ED5073C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5073C8);
  }

  return result;
}

_BYTE *_s10RequestLogOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PrivateCloudComputeRequestLog.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for PrivateCloudComputeRequestLog(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF48, &qword_193969080);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1935A7F04(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3DF48, &qword_193969080, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3DF48, &qword_193969080);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1935A7F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudComputeRequestLog(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static PrivateCloudComputeRequestLog.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF48, &qword_193969080);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3DF48, &qword_193969080, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_1935A80A8(v8, a3);
  }

  return result;
}

uint64_t sub_1935A80A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudComputeRequestLog(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static PrivateCloudComputeRequestLog.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF48, &qword_193969080);
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
  if (*sub_1935AA280() == a3)
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
      sub_1935A80A8(v11, v36);
      v29 = type metadata accessor for PrivateCloudComputeRequestLog(0);
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

uint64_t PrivateCloudComputeRequestLog.serialize()()
{
  v1 = type metadata accessor for PrivateCloudComputeRequestLog(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF48, &qword_193969080);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1935A7F04(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3DF48, &qword_193969080, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3DF48, &qword_193969080);
  return v11;
}

id static PrivateCloudComputeRequestLog.columns.getter()
{
  v77 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6D617473656D6974, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v22[2].n128_u64[0] = sub_19393C850();
  v32 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v33 = OUTLINED_FUNCTION_11_21();
  result = OUTLINED_FUNCTION_3_5(v33, 0xE900000000000064);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v34 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  v44 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v44[2].n128_u64[0] = sub_19393C850();
  v54 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v55 = OUTLINED_FUNCTION_12_22();
  result = OUTLINED_FUNCTION_3_5(v55, 0xEC000000646E694BLL);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v56 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v66 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v66[2].n128_u64[0] = sub_19393C850();
  v76 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000012, 0x8000000193A21810, 2, 0, v66, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v77;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_1935A87E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v34 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (!v16 && (OUTLINED_FUNCTION_59_0(0x6D617473656D6974, 0xE900000000000070) & 1) == 0)
  {
    v21 = OUTLINED_FUNCTION_11_21();
    v22 = a1 == v21 && a2 == 0xE900000000000064;
    if (v22 || (OUTLINED_FUNCTION_59_0(v21, 0xE900000000000064) & 1) != 0)
    {
      result = type metadata accessor for PrivateCloudComputeRequestLog(0);
      v23 = (v3 + result[8]);
      v24 = v23[1];
      if (v24)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v25 = OUTLINED_FUNCTION_12_22();
      v27 = a1 == v25 && a2 == v26;
      if (v27 || (OUTLINED_FUNCTION_59_0(v25, v26) & 1) != 0)
      {
        result = type metadata accessor for PrivateCloudComputeRequestLog(0);
        v28 = result[9];
      }

      else
      {
        v29 = a1 == 0xD000000000000012 && 0x8000000193A21810 == a2;
        if (!v29 && (OUTLINED_FUNCTION_59_0(0xD000000000000012, 0x8000000193A21810) & 1) == 0)
        {
          v30 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
          if (!v30 && (OUTLINED_FUNCTION_59_0(0x7365646F6ELL, 0xE500000000000000) & 1) == 0)
          {
            sub_19349AB64();
            swift_allocError();
            v32 = v31;
            *v31 = a1;
            v31[1] = a2;
            v31[5] = type metadata accessor for PrivateCloudComputeRequestLog(0);
            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v32 + 2);
            sub_1935A7F04(v3, boxed_opaque_existential_1Tm);
            *(v32 + 48) = 1;
            swift_willThrow();
          }

          v35 = *(v3 + *(type metadata accessor for PrivateCloudComputeRequestLog(0) + 44));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF50, &qword_193969088);
          return sub_1934948FC();
        }

        result = type metadata accessor for PrivateCloudComputeRequestLog(0);
        v28 = result[10];
      }

      v23 = (v3 + v28);
      v24 = *(v3 + v28 + 8);
      if (v24)
      {
LABEL_16:
        v35 = *v23;
        v36 = v24;
        return sub_1934948FC();
      }
    }

    v19 = 0uLL;
    v20 = v34;
    goto LABEL_8;
  }

  v17 = type metadata accessor for PrivateCloudComputeRequestLog(0);
  sub_1934DE90C(v3 + *(v17 + 28), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_19344E6DC(v8, &qword_1EAE3A9E8, &qword_19394F800);
    v19 = 0uLL;
    v20 = v34;
LABEL_8:
    *v20 = v19;
    v20[1] = v19;
    return result;
  }

  (*(v11 + 32))(v15, v8, v9);
  sub_1934948FC();
  return (*(v11 + 8))(v15, v9);
}

uint64_t sub_1935A8B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  result = memcpy(__dst, v4, 0x41uLL);
  v9 = a1 == 1701080942 && a2 == 0xE400000000000000;
  if (v9 || (result = OUTLINED_FUNCTION_5_5(1701080942, 0xE400000000000000), (result & 1) != 0))
  {
    v10 = __dst[1];
    if (__dst[1])
    {
      v11 = __dst[0];
LABEL_8:
      v19[0] = v11;
      v19[1] = v10;
      return sub_1934948FC();
    }

    goto LABEL_37;
  }

  result = 0x7461745365646F6ELL;
  v12 = a1 == 0x7461745365646F6ELL && a2 == 0xE900000000000065;
  if (v12 || (result = OUTLINED_FUNCTION_5_5(0x7461745365646F6ELL, 0xE900000000000065), (result & 1) != 0))
  {
    v10 = __dst[3];
    if (__dst[3])
    {
      v11 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  v13 = a1 == 0xD000000000000011 && 0x8000000193A21830 == a2;
  if (v13 || (result = OUTLINED_FUNCTION_5_5(0xD000000000000011, 0x8000000193A21830), (result & 1) != 0))
  {
    v10 = __dst[5];
    if (__dst[5])
    {
      v11 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  result = 0x42646569786F7270;
  v14 = a1 == 0x42646569786F7270 && a2 == 0xE900000000000079;
  if (v14 || (result = OUTLINED_FUNCTION_5_5(0x42646569786F7270, 0xE900000000000079), (result & 1) != 0))
  {
    v10 = __dst[7];
    if (__dst[7])
    {
      v11 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  result = 0xD00000000000001CLL;
  v15 = a1 == 0xD00000000000001CLL && 0x8000000193A21850 == a2;
  if (v15 || (result = OUTLINED_FUNCTION_5_5(0xD00000000000001CLL, 0x8000000193A21850), (result & 1) != 0))
  {
    if (LOBYTE(__dst[8]) != 2)
    {
      LOBYTE(v19[0]) = __dst[8] & 1;
      return sub_1934948FC();
    }

LABEL_37:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for PrivateCloudComputeRequestLog.Attestation;
  v18 = swift_allocObject();
  v17[2] = v18;
  memcpy((v18 + 16), __dst, 0x41uLL);
  *(v17 + 48) = 1;
  swift_willThrow();

  return sub_1935A8DD4(__dst, v19);
}

uint64_t PrivateCloudComputeRequestLog.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for PrivateCloudComputeRequestLog(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_1934E0648();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1935AA280();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v9);

  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *(a1 + v2[11]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static PrivateCloudComputeRequestLog.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - v15;
  v17 = type metadata accessor for PrivateCloudComputeRequestLog(0);
  v18 = *(v17 + 28);
  v19 = *(v14 + 56);
  sub_1934DE90C(a1 + v18, v16);
  sub_1934DE90C(a2 + v18, &v16[v19]);
  OUTLINED_FUNCTION_31(v16);
  if (!v20)
  {
    sub_1934DE90C(v16, v12);
    OUTLINED_FUNCTION_31(&v16[v19]);
    if (!v20)
    {
      (*(v6 + 32))(v9, &v16[v19], v4);
      sub_1934DF3E8(&qword_1EAE3A848, MEMORY[0x1E6969550]);
      v23 = sub_19393C550();
      v24 = *(v6 + 8);
      v24(v9, v4);
      v24(v12, v4);
      sub_193442B60(v16, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v12, v4);
LABEL_9:
    sub_193442B60(v16, &qword_1EAE3B968, &qword_193972430);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(&v16[v19]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_193442B60(v16, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_13:
  OUTLINED_FUNCTION_3();
  if (v27)
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v26);
    v30 = v20 && v28 == v29;
    if (!v30 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v25)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v33)
  {
    if (!v31)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v32);
    v36 = v20 && v34 == v35;
    if (!v36 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v31)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v39)
  {
    if (v37)
    {
      OUTLINED_FUNCTION_5(v38);
      v42 = v20 && v40 == v41;
      if (v42 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_40;
      }
    }
  }

  else if (!v37)
  {
LABEL_40:
    v21 = sub_1935A9504(*(a1 + *(v17 + 44)), *(a2 + *(v17 + 44)));
    return v21 & 1;
  }

LABEL_10:
  v21 = 0;
  return v21 & 1;
}

uint64_t PrivateCloudComputeRequestLog.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  v13 = type metadata accessor for PrivateCloudComputeRequestLog(0);
  sub_1934DE90C(v2 + v13[7], v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v6 + 32))(v9, v12, v4);
    sub_19393CAD0();
    sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v6 + 8))(v9, v4);
  }

  if (*(v2 + v13[8] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v2 + v13[9] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v2 + v13[10] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  return sub_1935A9628(a1, *(v2 + v13[11]));
}

uint64_t sub_1935A9504(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 72)
    {
      memcpy(__dst, v3, 0x41uLL);
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, 0x41uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1935A8DD4(__dst, v7);
      sub_1935A8DD4(v11, v7);
      sub_1935A9794();
      v5 = sub_19393C550();
      memcpy(v12, __src, 0x41uLL);
      sub_1935A9740(v12);
      memcpy(v13, v9, 0x41uLL);
      sub_1935A9740(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 72;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1935A9628(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(__dst, v5, 0x41uLL);
      memcpy(__src, v5, sizeof(__src));
      sub_1935A8DD4(__dst, v7);
      sub_1935A96EC();
      sub_19393C540();
      memcpy(v7, __src, 0x41uLL);
      result = sub_1935A9740(v7);
      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1935A96EC()
{
  result = qword_1EAE3DF58;
  if (!qword_1EAE3DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DF58);
  }

  return result;
}

unint64_t sub_1935A9794()
{
  result = qword_1EAE3DF60;
  if (!qword_1EAE3DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DF60);
  }

  return result;
}

uint64_t sub_1935A97E8()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA8E0);
  __swift_project_value_buffer(v2, qword_1EAEAA8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  *v1 = 4;
  *v0 = "timestamp";
  *(v0 + 8) = 9;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 5;
  *v8 = "requestId";
  v8[1] = 9;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 1;
  *v11 = "pipelineKind";
  v11[1] = 12;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 2;
  *v14 = "pipelineParameters";
  v14[1] = 18;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 3;
  *v17 = "nodes";
  *(v17 + 8) = 5;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  return sub_19393C410();
}

uint64_t sub_1935A99F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 5:
        type metadata accessor for PrivateCloudComputeRequestLog(0);
        sub_19393C200();
        goto LABEL_8;
      case 3:
        v10 = type metadata accessor for PrivateCloudComputeRequestLog(0);
        sub_193498238(v3 + *(v10 + 44), a2, &type metadata for PrivateCloudComputeRequestLog.Attestation, a3, &off_1F07D06C8);
        goto LABEL_8;
      case 4:
        v11 = type metadata accessor for PrivateCloudComputeRequestLog(0);
        sub_1934976E4(v3 + *(v11 + 28), 2020175477, 0xE400000000000000, a2, a3);
LABEL_8:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935A9B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1935A9C50(v3, a1, a2, a3);
  if (!v4)
  {
    v8 = type metadata accessor for PrivateCloudComputeRequestLog(0);
    v9 = (v3 + v8[8]);
    v10 = v9[1];
    if (v10)
    {
      OUTLINED_FUNCTION_2_7(*v9, v10, 5);
    }

    v11 = (v3 + v8[9]);
    v12 = v11[1];
    if (v12)
    {
      OUTLINED_FUNCTION_2_7(*v11, v12, 1);
    }

    v13 = (v3 + v8[10]);
    v14 = v13[1];
    if (v14)
    {
      OUTLINED_FUNCTION_2_7(*v13, v14, 2);
    }

    result = *(v3 + v8[11]);
    if (*(result + 16))
    {
      return sub_193451CFC(result, 3, a2, &type metadata for PrivateCloudComputeRequestLog.Attestation, a3, &off_1F07D06C8);
    }
  }

  return result;
}

uint64_t sub_1935A9C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_19393BE00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrivateCloudComputeRequestLog(0);
  sub_1934DE90C(a1 + *(v14 + 28), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1934DFCD4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_193451F04(v13, 4, 2020175477, 0xE400000000000000, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1935A9E70()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA8F8);
  __swift_project_value_buffer(v2, qword_1EAEAA8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  *v1 = 1;
  *v0 = "node";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  *v8 = "nodeState";
  v8[1] = 9;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 3;
  *v11 = "attestationBundle";
  v11[1] = 17;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 4;
  *v14 = "proxiedBy";
  v14[1] = 9;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 5;
  *v17 = "requestExecutionLogFinalized";
  *(v17 + 8) = 28;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  return sub_19393C410();
}

uint64_t sub_1935AA080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_19393C200();
        break;
      case 5:
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935AA138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  v10 = *(v3 + 40);
  v9 = *(v3 + 48);
  v11 = *(v3 + 56);
  v13 = *(v3 + 64);
  if (v5)
  {
    result = OUTLINED_FUNCTION_181(*v3, v5, 1);
  }

  if (!v4)
  {
    if (v8)
    {
      result = OUTLINED_FUNCTION_181(v6, v8, 2);
    }

    if (v10)
    {
      result = OUTLINED_FUNCTION_181(v7, v10, 3);
    }

    if (v11)
    {
      result = OUTLINED_FUNCTION_181(v9, v11, 4);
    }

    if (v13 != 2)
    {
      return sub_19393C2E0();
    }
  }

  return result;
}

uint64_t PrivateCloudComputeRequestLog.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for PrivateCloudComputeRequestLog(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for PrivateCloudComputeRequestLog(uint64_t a1)
{
  result = qword_1ED50E9A0;
  if (!qword_1ED50E9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrivateCloudComputeRequestLog.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for PrivateCloudComputeRequestLog(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t PrivateCloudComputeRequestLog.timestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for PrivateCloudComputeRequestLog(v2);
  return sub_19344865C(v1 + *(v3 + 28), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t PrivateCloudComputeRequestLog.requestId.getter()
{
  type metadata accessor for PrivateCloudComputeRequestLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t PrivateCloudComputeRequestLog.requestId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for PrivateCloudComputeRequestLog(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t PrivateCloudComputeRequestLog.pipelineKind.getter()
{
  type metadata accessor for PrivateCloudComputeRequestLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t PrivateCloudComputeRequestLog.pipelineKind.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for PrivateCloudComputeRequestLog(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t PrivateCloudComputeRequestLog.pipelineParameters.getter()
{
  type metadata accessor for PrivateCloudComputeRequestLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t PrivateCloudComputeRequestLog.pipelineParameters.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for PrivateCloudComputeRequestLog(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_1935AA768()
{
  type metadata accessor for PrivateCloudComputeRequestLog(0);
}

uint64_t sub_1935AA79C@<X0>(uint64_t *a1@<X8>)
{
  result = PrivateCloudComputeRequestLog.attestations.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935AA7F8()
{
  v2 = *(OUTLINED_FUNCTION_4_33() + 44);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*PrivateCloudComputeRequestLog.attestations.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for PrivateCloudComputeRequestLog(0) + 44);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;

  return sub_1935AA894;
}

uint64_t sub_1935AA894(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1 + 6);
  v4 = *a1;
  if (a2)
  {

    *(v2 + v3) = v4;
  }

  else
  {

    *(v2 + v3) = v4;
  }

  return result;
}

uint64_t PrivateCloudComputeRequestLog.Attestation.node.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PrivateCloudComputeRequestLog.Attestation.nodeState.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t PrivateCloudComputeRequestLog.Attestation.attestationBundle.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t sub_1935AAA8C@<X0>(uint64_t *a1@<X8>)
{
  result = PrivateCloudComputeRequestLog.Attestation.attestationBundle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*PrivateCloudComputeRequestLog.Attestation.attestationString.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_1935AAB48;
}

uint64_t sub_1935AAB48(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
  }

  else
  {

    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
  }

  return result;
}

uint64_t PrivateCloudComputeRequestLog.Attestation.proxiedBy.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void __swiftcall PrivateCloudComputeRequestLog.Attestation.init()(IntelligencePlatformLibrary::PrivateCloudComputeRequestLog::Attestation *__return_ptr retstr)
{
  retstr->attestationBundle = 0u;
  retstr->proxiedBy = 0u;
  retstr->node = 0u;
  retstr->nodeState = 0u;
  retstr->requestExecutionLogFinalized.value = 2;
}

uint64_t static PrivateCloudComputeRequestLog.Attestation.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v14 = *(a2 + 24);
  v13 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v11)
    {
      v42 = *(a2 + 48);
      v43 = a1[5];
      v40 = a1[7];
      v41 = *(a2 + 56);
      v20 = a1[6];
      v21 = *(a2 + 64);
      v22 = *(a1 + 64);
      v23 = a1[4];
      v24 = *(a2 + 40);
      v25 = *(a2 + 32);
      v26 = sub_19393CA30();
      v13 = v25;
      v15 = v24;
      v5 = v23;
      v10 = v22;
      v18 = v21;
      v7 = v20;
      v9 = v40;
      v17 = v41;
      v16 = v42;
      v8 = v43;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }

    if (v4 != v12 || v6 != v14)
    {
      v28 = v10;
      v29 = v5;
      v30 = v15;
      v31 = v13;
      v32 = sub_19393CA30();
      v13 = v31;
      v15 = v30;
      v5 = v29;
      v10 = v28;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v13 || v8 != v15)
    {
      v34 = v10;
      v35 = sub_19393CA30();
      v10 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (!v17)
    {
      return 0;
    }

    if (v7 != v16 || v9 != v17)
    {
      v37 = v10;
      v38 = sub_19393CA30();
      v10 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_37:
    if (v10 == 2)
    {
      if (v18 != 2)
      {
        return 0;
      }
    }

    else if (v18 == 2 || ((v18 ^ v10) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v17)
  {
    goto LABEL_37;
  }

  return 0;
}

uint64_t PrivateCloudComputeRequestLog.Attestation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  if (*(v1 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_19393CAD0();
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_19393CAD0();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_19393CAD0();
  sub_19393C640();
  if (v4)
  {
LABEL_5:
    sub_19393CAD0();
    sub_19393C640();
    goto LABEL_10;
  }

LABEL_9:
  sub_19393CAD0();
LABEL_10:
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t PrivateCloudComputeRequestLog.Attestation.hashValue.getter()
{
  sub_19393CAB0();
  PrivateCloudComputeRequestLog.Attestation.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935AAFD0(uint64_t a1)
{
  sub_19393CAB0();
  PrivateCloudComputeRequestLog.Attestation.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t PrivateCloudComputeRequestLog.hashValue.getter()
{
  sub_19393CAB0();
  PrivateCloudComputeRequestLog.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935AB058(uint64_t a1)
{
  sub_19393CAB0();
  PrivateCloudComputeRequestLog.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_1935AB09C()
{
  result = qword_1EAE3DF88;
  if (!qword_1EAE3DF88)
  {
    type metadata accessor for PrivateCloudComputeRequestLog(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DF88);
  }

  return result;
}

uint64_t sub_1935AB120(uint64_t a1)
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

    else
    {
      sub_1935AB250(319, &qword_1ED508290, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1935AB250(319, &qword_1ED504948, &type metadata for PrivateCloudComputeRequestLog.Attestation, MEMORY[0x1E69E62F8]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1935AB250(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1935AB2A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_1935AB2F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1935AB398()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5105D8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5105D8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.IntelligenceFlow.SearchToolTelemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1939583F0;
    sub_19343CF00(0, &qword_1ED506688, 0x1E696AE18);
    v6 = OUTLINED_FUNCTION_3_27();
    v7 = objc_allocWithZone(MEMORY[0x1E698F330]);
    *(v5 + 32) = sub_19343FE48(0xD00000000000001DLL, 0x8000000193A18010, v6);
    v8 = OUTLINED_FUNCTION_3_27();
    v9 = objc_allocWithZone(MEMORY[0x1E698F330]);
    *(v5 + 40) = sub_19343FE48(0x2D656C6261736964, 0xEC00000069726973, v8);
    v10 = objc_opt_self();
    if (_MergedGlobals_19 != -1)
    {
      swift_once();
    }

    v11 = sub_19393BE60();
    __swift_project_value_buffer(v11, qword_1ED5105D8);
    v12 = sub_19393BE30();
    v13 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF90, &qword_1939692D8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_19393C6C0();
    sub_19343CF00(0, &qword_1ED506680, 0x1E698F330);
    v16 = sub_19393C6C0();

    BYTE2(v18) = 1;
    LOWORD(v18) = 1;
    v17 = [v10 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.SearchToolTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_1935AB8C8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935AB904(void (*a1)(void))
{
  result = sub_1935AB8C8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935AB96C(uint64_t a1)
{
  result = sub_1935AB994();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935AB994()
{
  result = qword_1ED5068C0;
  if (!qword_1ED5068C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068C0);
  }

  return result;
}

_BYTE *_s19SearchToolTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowSearchToolTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF98, &qword_193969358);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_11_22();
  sub_1935B1870(v0, v12, v14);
  v15 = OUTLINED_FUNCTION_82();
  sub_1934470C8(v15, v16, v17);
  sub_19393C080();
  sub_1935ABC38();
  sub_19393C250();
  (*(v4 + 8))(v8, v2);
  sub_19344E6DC(v1, &qword_1EAE3DF98, &qword_193969358);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

unint64_t sub_1935ABC38()
{
  result = qword_1EAE3DFA0;
  if (!qword_1EAE3DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3DF98, &qword_193969358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DFA0);
  }

  return result;
}

uint64_t static IntelligenceFlowSearchToolTelemetry.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF98, &qword_193969358);
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;

  sub_19393C060();
  sub_1935ABC38();
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_38_13();
    return sub_1935AED18(v9, a3, v11);
  }

  return result;
}

void static IntelligenceFlowSearchToolTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v32 = v3;
  v33 = v2;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF98, &qword_193969358);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_6();
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  if (*sub_1935C5A24() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(v10, v8);
    sub_1935ABC38();
    sub_19393C280();
    (*(v14 + 8))(v20, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_38_13();
      v23 = v32;
      sub_1935AED18(v1, v32, v24);
      v25 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
      v26 = *(v25 + 20);
      sub_19344E6DC(v23 + v26, &qword_1EAE3A9E8, &qword_19394F800);
      v27 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v28 + 16))(v23 + v26, v31, v27);
      __swift_storeEnumTagSinglePayload(v23 + v26, 0, 1, v27);
      v29 = *(v25 + 24);
      sub_19344E6DC(v23 + v29, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v33, v23 + v29);
    }
  }

  else
  {
    v21 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
    *v22 = v6;
    *(v22 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowSearchToolTelemetry.serialize()()
{
  v1 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DF98, &qword_193969358);
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  OUTLINED_FUNCTION_11_22();
  sub_1935B1870(v0, v5, v9);
  sub_1934470C8(v5, v1, v8);
  sub_1935ABC38();
  sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3DF98, &qword_193969358);
  return OUTLINED_FUNCTION_13_0();
}

void sub_1935AC20C()
{
  OUTLINED_FUNCTION_26();
  v158 = v2;
  v159 = v1;
  v157 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFC8, &unk_19396A2B0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v144 - v9;
  v146 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v144 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFC0, &qword_193969370);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v144 - v15;
  v148 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v145 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFB8, &unk_19396A2A0);
  OUTLINED_FUNCTION_47(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v144 - v21;
  v151 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v150 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFB0, &qword_193969368);
  OUTLINED_FUNCTION_47(v25);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v144 - v27;
  v154 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_1();
  v153 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v32);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v144 - v34;
  v36 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_1();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFA8, &qword_193969360);
  OUTLINED_FUNCTION_47(v41);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v144 - v43;
  v45 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata(0);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v155 = v6;
  v156 = v4;
  v48 = v6 == v46 && v4 == v47;
  if (v48 || (OUTLINED_FUNCTION_61_11(v46, v47) & 1) != 0)
  {
    v49 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    v50 = OUTLINED_FUNCTION_21_11(*(v49 + 28));
    sub_193448758(v50, v44, v51, v52);
    OUTLINED_FUNCTION_6_3(v44, 1, v45);
    if (!v48)
    {
      v57 = OUTLINED_FUNCTION_82();
      sub_1935AED18(v57, v58, v59);
      sub_193494798(v45, &off_1F07D0BB0, v158);
      v60 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata;
      v61 = 0x74654D746E657665;
LABEL_11:
      sub_1935AED74(v61, v60);
      goto LABEL_12;
    }

    v53 = &qword_1EAE3DFA8;
    v54 = &qword_193969360;
    v55 = v44;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_45_4();
  v65 = v48 && v63 == v64;
  if (v65 || (OUTLINED_FUNCTION_61_11(v62, v63) & 1) != 0)
  {
    v66 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    v67 = OUTLINED_FUNCTION_21_11(*(v66 + 32));
    sub_193448758(v67, v35, v68, v69);
    OUTLINED_FUNCTION_6_3(v35, 1, v36);
    if (!v48)
    {
      sub_1935AED18(v35, v40, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v36, &off_1F07BD958, v158);
      v60 = type metadata accessor for MonotonicTimestamp;
      v61 = v40;
      goto LABEL_11;
    }

    v53 = &qword_1EAE3B498;
    v54 = &unk_193959120;
    v55 = v35;
    goto LABEL_9;
  }

  v70 = v155 == 0x697461636F766E69 && v156 == 0xEA00000000006E6FLL;
  if (v70 || (OUTLINED_FUNCTION_61_11(0x697461636F766E69, 0xEA00000000006E6FLL) & 1) != 0)
  {
    v71 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    v72 = OUTLINED_FUNCTION_21_11(*(v71 + 36));
    sub_193448758(v72, v28, v73, v74);
    v75 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v75, v76, v154);
    if (!v48)
    {
      v77 = v28;
      v78 = v153;
      sub_1935AED18(v77, v153, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation);
      OUTLINED_FUNCTION_13_0();
      sub_193494798(v79, v80, v81);
      v82 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation;
LABEL_29:
      v60 = v82;
      v61 = v78;
      goto LABEL_11;
    }

    v53 = &qword_1EAE3DFB0;
    v54 = &qword_193969368;
    v55 = v28;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_45_4();
  v86 = v48 && v84 == v85;
  if (v86 || (OUTLINED_FUNCTION_61_11(v83, v84) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    OUTLINED_FUNCTION_15_30();
    if (v48)
    {
      goto LABEL_10;
    }

    v87 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext;
    v88 = &off_1F07D0B00;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_45_4();
  v92 = v48 && v90 == v91;
  if (v92 || (OUTLINED_FUNCTION_61_11(v89, v90) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    OUTLINED_FUNCTION_15_30();
    if (v48)
    {
      goto LABEL_10;
    }

    v87 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext;
    v88 = &off_1F07D0B10;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_45_4();
  v96 = v48 && v94 == v95;
  if (v96 || (OUTLINED_FUNCTION_61_11(v93, v94) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    OUTLINED_FUNCTION_15_30();
    if (v48)
    {
      goto LABEL_10;
    }

    v87 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext;
    v88 = &off_1F07D0B20;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_45_4();
  v100 = v48 && v98 == v99;
  if (v100 || (OUTLINED_FUNCTION_61_11(v97, v98) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    OUTLINED_FUNCTION_15_30();
    if (v48)
    {
      goto LABEL_10;
    }

    v87 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext;
    v88 = &off_1F07D0B30;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_45_4();
  v104 = v48 && v102 == v103;
  if (v104 || (OUTLINED_FUNCTION_61_11(v101, v102) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    OUTLINED_FUNCTION_15_30();
    if (v48)
    {
      goto LABEL_10;
    }

    v87 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext;
    v88 = &off_1F07D0B40;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_45_4();
  v108 = v48 && v106 == v107;
  if (!v108 && (OUTLINED_FUNCTION_61_11(v105, v106) & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_45_4();
    v118 = v48 && v116 == v117;
    if (!v118 && (OUTLINED_FUNCTION_61_11(v115, v116) & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v120 = v155 == 0xD000000000000011 && v119 == v156;
      if (v120 || (OUTLINED_FUNCTION_61_11(0xD000000000000011, v119) & 1) != 0)
      {
        v121 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        v122 = OUTLINED_FUNCTION_21_11(*(v121 + 68));
        sub_193448758(v122, v149, v123, v124);
        v125 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_6_3(v125, v126, v148);
        if (!v48)
        {
          v78 = v145;
          sub_1935AED18(v149, v145, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1);
          sub_193494798(v148, &off_1F07D0BE0, v158);
          v82 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1;
          goto LABEL_29;
        }

        v53 = &qword_1EAE3DFC0;
        v54 = &qword_193969370;
        v55 = v149;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_45_4();
        v130 = v48 && v128 == v129;
        if (!v130 && (OUTLINED_FUNCTION_61_11(v127, v128) & 1) == 0)
        {
          v137 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v137);
          v139 = v138;
          v140 = v156;
          *v138 = v155;
          v138[1] = v140;
          v141 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
          OUTLINED_FUNCTION_126(v141);
          OUTLINED_FUNCTION_11_22();
          sub_1935B1870(v157, v142, v143);
          *(v139 + 48) = 1;
          swift_willThrow();

          goto LABEL_12;
        }

        v131 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
        v132 = OUTLINED_FUNCTION_21_11(*(v131 + 72));
        sub_193448758(v132, v147, v133, v134);
        v135 = OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_6_3(v135, v136, v146);
        if (!v48)
        {
          v78 = v144;
          sub_1935AED18(v147, v144, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext);
          sub_193494798(v146, &off_1F07D0B70, v158);
          v82 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext;
          goto LABEL_29;
        }

        v53 = &qword_1EAE3DFC8;
        v54 = &unk_19396A2B0;
        v55 = v147;
      }

      goto LABEL_9;
    }

    type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
    OUTLINED_FUNCTION_15_30();
    if (v48)
    {
      goto LABEL_10;
    }

    v87 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationContext;
    v88 = &off_1F07D0B60;
LABEL_37:
    sub_193494798(v87, v88, v158);
    goto LABEL_12;
  }

  v109 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
  v110 = OUTLINED_FUNCTION_21_11(*(v109 + 60));
  sub_193448758(v110, v152, v111, v112);
  v113 = OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_6_3(v113, v114, v151);
  if (!v48)
  {
    v78 = v150;
    sub_1935AED18(v152, v150, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1);
    sub_193494798(v151, &off_1F07D0B50, v158);
    v82 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1;
    goto LABEL_29;
  }

  v53 = &qword_1EAE3DFB8;
  v54 = &unk_19396A2A0;
  v55 = v152;
LABEL_9:
  sub_19344E6DC(v55, v53, v54);
LABEL_10:
  v56 = v158;
  *v158 = 0u;
  *(v56 + 1) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_1935ACCE0()
{
  OUTLINED_FUNCTION_25_17();
  v6 = OUTLINED_FUNCTION_77_12();
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v9 = *v0;
  OUTLINED_FUNCTION_38();
  v12 = v2 == v5 && v11 == v1;
  if (!v12 && (OUTLINED_FUNCTION_10_26(v10, v11) & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_24_3();
    v16 = v12 && v1 == 0xE500000000000000;
    if (!v16 && (OUTLINED_FUNCTION_5_5(v15, 0xE500000000000000) & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_22_16();
      if (v12 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v19, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v12)
        {
          goto LABEL_26;
        }
      }

      v21 = OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_57_8(v21);
      v13 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailed;
      v14 = &off_1F07D0BF0;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v12)
    {
      swift_projectBox();
      OUTLINED_FUNCTION_40_11();
      sub_1935B1870(v17, v3, v18);
      sub_193494798(v7, &off_1F07D0BD0, v4);
      sub_1935AED74(v3, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded);
      goto LABEL_27;
    }

LABEL_26:
    v22 = sub_19349AB64();
    v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
    OUTLINED_FUNCTION_64(v23, v24);
    OUTLINED_FUNCTION_19_1(v25, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext);

    goto LABEL_27;
  }

  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  v13 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted;
  v14 = &off_1F07D0BC0;
LABEL_8:
  sub_193494798(v13, v14, v4);
LABEL_27:
  OUTLINED_FUNCTION_72_0();
}

void sub_1935ACEB4()
{
  OUTLINED_FUNCTION_25_17();
  v6 = OUTLINED_FUNCTION_77_12();
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v9 = *v0;
  OUTLINED_FUNCTION_38();
  v12 = v2 == v5 && v11 == v1;
  if (!v12 && (OUTLINED_FUNCTION_10_26(v10, v11) & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_24_3();
    v16 = v12 && v1 == 0xE500000000000000;
    if (!v16 && (OUTLINED_FUNCTION_5_5(v15, 0xE500000000000000) & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_22_16();
      if (v12 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v19, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v12)
        {
          goto LABEL_26;
        }
      }

      v21 = OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_57_8(v21);
      v13 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestFailed;
      v14 = &off_1F07D0C50;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v12)
    {
      swift_projectBox();
      OUTLINED_FUNCTION_39_17();
      sub_1935B1870(v17, v3, v18);
      sub_193494798(v7, &off_1F07D0C30, v4);
      sub_1935AED74(v3, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded);
      goto LABEL_27;
    }

LABEL_26:
    v22 = sub_19349AB64();
    v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
    OUTLINED_FUNCTION_64(v23, v24);
    OUTLINED_FUNCTION_19_1(v25, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext);

    goto LABEL_27;
  }

  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  v13 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted;
  v14 = &off_1F07D0C20;
LABEL_8:
  sub_193494798(v13, v14, v4);
LABEL_27:
  OUTLINED_FUNCTION_72_0();
}

id sub_1935AD088()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_10_26(v2, v3) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_84_8();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestStarted;
      v12 = &off_1F07D0C70;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_24_3();
    v15 = v4 && v1 == 0xE500000000000000;
    if (!v15 && (OUTLINED_FUNCTION_5_5(v14, 0xE500000000000000) & 1) == 0)
    {
      v16 = OUTLINED_FUNCTION_22_16();
      if (v4 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v16, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_13_16();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestFailed;
      v12 = &off_1F07D0C90;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }

    OUTLINED_FUNCTION_43_3();
    if (v4)
    {
      OUTLINED_FUNCTION_65_11();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded;
      v12 = &off_1F07D0C80;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }
  }

LABEL_26:
  v18 = sub_19349AB64();
  v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
  OUTLINED_FUNCTION_64(v19, v20);
  OUTLINED_FUNCTION_19_1(v21, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext);
}

id sub_1935AD1D4()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_10_26(v2, v3) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_84_8();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestStarted;
      v12 = &off_1F07D0CF0;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_24_3();
    v15 = v4 && v1 == 0xE500000000000000;
    if (!v15 && (OUTLINED_FUNCTION_5_5(v14, 0xE500000000000000) & 1) == 0)
    {
      v16 = OUTLINED_FUNCTION_22_16();
      if (v4 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v16, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_13_16();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestFailed;
      v12 = &off_1F07D0D10;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }

    OUTLINED_FUNCTION_43_3();
    if (v4)
    {
      OUTLINED_FUNCTION_65_11();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestEnded;
      v12 = &off_1F07D0D00;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }
  }

LABEL_26:
  v18 = sub_19349AB64();
  v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
  OUTLINED_FUNCTION_64(v19, v20);
  OUTLINED_FUNCTION_19_1(v21, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext);
}

id sub_1935AD320()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_10_26(v2, v3) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_84_8();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestStarted;
      v12 = &off_1F07D0D60;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_24_3();
    v15 = v4 && v1 == 0xE500000000000000;
    if (!v15 && (OUTLINED_FUNCTION_5_5(v14, 0xE500000000000000) & 1) == 0)
    {
      v16 = OUTLINED_FUNCTION_22_16();
      if (v4 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v16, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_13_16();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestFailed;
      v12 = &off_1F07D0D80;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }

    OUTLINED_FUNCTION_43_3();
    if (v4)
    {
      OUTLINED_FUNCTION_65_11();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestEnded;
      v12 = &off_1F07D0D70;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }
  }

LABEL_26:
  v18 = sub_19349AB64();
  v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
  OUTLINED_FUNCTION_64(v19, v20);
  OUTLINED_FUNCTION_19_1(v21, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext);
}

void sub_1935AD46C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_22_21();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v11 = v2 == v4 && v1 == 0xE600000000000000;
  if (!v11)
  {
    v12 = OUTLINED_FUNCTION_88_11();
    v9 = OUTLINED_FUNCTION_59_0(v12, v13);
    if ((v9 & 1) == 0)
    {
      v19 = v2 == 0x707954746E657665 && v1 == 0xE900000000000065;
      if (v19 || (OUTLINED_FUNCTION_59_0(0x707954746E657665, 0xE900000000000065) & 1) != 0)
      {
        v20 = v0 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0) + 20);
        if (*(v20 + 9))
        {
          goto LABEL_9;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v22 = v2 == 0xD000000000000012 && v21 == v1;
        if (v22 || (OUTLINED_FUNCTION_59_0(0xD000000000000012, v21) & 1) != 0)
        {
          type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
          OUTLINED_FUNCTION_66_14();
          if (v23)
          {
            goto LABEL_9;
          }
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v25 = v2 == 0xD000000000000014 && v24 == v1;
          if (!v25 && (OUTLINED_FUNCTION_59_0(0xD000000000000014, v24) & 1) == 0)
          {
            v26 = sub_19349AB64();
            v27 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v26);
            v29 = OUTLINED_FUNCTION_19_0(v27, v28);
            v30 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v29);
            OUTLINED_FUNCTION_152(v30);
            v31 = OUTLINED_FUNCTION_141();
            sub_1935B1870(v31, v32, v33);
            OUTLINED_FUNCTION_65_1();

            goto LABEL_17;
          }

          v20 = v0 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0) + 28);
          if (*(v20 + 9))
          {
            goto LABEL_9;
          }
        }
      }

      OUTLINED_FUNCTION_43_1(v20);
      OUTLINED_FUNCTION_95_9();
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_94_9(v9, v10, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v11)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_45();
  v17 = OUTLINED_FUNCTION_73_11(v14, v15, v16);
  OUTLINED_FUNCTION_80_0(v17, v18, &off_1F07C3F90);
  OUTLINED_FUNCTION_1_42();
LABEL_17:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

id sub_1935AD6DC()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_10_26(v2, v3) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_84_8();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationStarted;
      v12 = &off_1F07D0B80;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_24_3();
    v15 = v4 && v1 == 0xE500000000000000;
    if (!v15 && (OUTLINED_FUNCTION_5_5(v14, 0xE500000000000000) & 1) == 0)
    {
      v16 = OUTLINED_FUNCTION_22_16();
      if (v4 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v16, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_13_16();
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationFailed;
      v12 = &off_1F07D0BA0;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }

    OUTLINED_FUNCTION_43_3();
    if (v4)
    {
      LOWORD(v22) = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      BYTE2(v22) = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x12);
      HIDWORD(v22) = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
      v11 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded;
      v12 = &off_1F07D0B90;
      return OUTLINED_FUNCTION_93_7(v5, v11, v12, v6, v7, v8, v9, v10, v22);
    }
  }

LABEL_26:
  v18 = sub_19349AB64();
  v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
  OUTLINED_FUNCTION_64(v19, v20);
  OUTLINED_FUNCTION_19_1(v21, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationContext);
}

void sub_1935AD850()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_87_11();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v11 = v4 == 0xD000000000000010 && v10 == v2;
  if (v11 || (v12 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_0_18(v12, v13) & 1) != 0))
  {
    sub_193494798(&type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted, &off_1F07D0DA0, v1);
  }

  else
  {
    v14 = v4 == 0x6465646E65 && v2 == 0xE500000000000000;
    if (v14 || (OUTLINED_FUNCTION_0_18(0x6465646E65, 0xE500000000000000) & 1) != 0)
    {

      sub_193494798(&type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded, &off_1F07D0DB0, v1);
    }

    else
    {
      v15 = v4 == 0x64656C696166 && v2 == 0xE600000000000000;
      if (v15 || (OUTLINED_FUNCTION_0_18(0x64656C696166, 0xE600000000000000) & 1) != 0)
      {
        v29 = *(v0 + 48);
        v30 = *(v0 + 56);
        sub_19350CB08(v29, v30);
        sub_193494798(&type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed, &off_1F07D0DC0, v1);
        sub_193456418(v29, v30);
      }

      else
      {
        v16 = v4 == 0x49747865746E6F63 && v2 == 0xE900000000000064;
        if (v16 || (OUTLINED_FUNCTION_0_18(0x49747865746E6F63, 0xE900000000000064) & 1) != 0)
        {
          v17 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(0);
          sub_193448758(v0 + *(v17 + 28), v3, &qword_1EAE3BCA0, &unk_19395C320);
          OUTLINED_FUNCTION_6_3(v3, 1, v5);
          if (v11)
          {
            sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
            OUTLINED_FUNCTION_104();
          }

          else
          {
            OUTLINED_FUNCTION_0_45();
            v19 = sub_1935AED18(v3, v6, v18);
            OUTLINED_FUNCTION_80_0(v19, v20, &off_1F07C3F90);
            OUTLINED_FUNCTION_1_42();
          }
        }

        else
        {
          v21 = sub_19349AB64();
          v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
          v24 = OUTLINED_FUNCTION_75_2(v22, v23);
          v25 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(v24);
          OUTLINED_FUNCTION_152(v25);
          v26 = OUTLINED_FUNCTION_141();
          sub_1935B1870(v26, v27, v28);
          OUTLINED_FUNCTION_65_1();
        }
      }
    }
  }

  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_1935ADB7C()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  OUTLINED_FUNCTION_22_4();
  v8 = v8 && v7 == v2;
  if (!v8)
  {
    v9 = v6;
    v10 = v0[1];
    v11 = v0[2];
    v23 = *(v0 + 1);
    v12 = v0[8];
    v13 = v0[9];
    if ((OUTLINED_FUNCTION_18_3(22, v7) & 1) == 0)
    {
      v14 = v9 == 0x6974736575517369 && v2 == 0xEF79726575516E6FLL;
      if (v14 || (OUTLINED_FUNCTION_5_5(0x6974736575517369, 0xEF79726575516E6FLL) & 1) != 0)
      {
        if (v10 == 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v15 = v9 == 0x75516E65704F7369 && v2 == 0xEB00000000797265;
        if (v15 || (OUTLINED_FUNCTION_5_5(0x75516E65704F7369, 0xEB00000000797265) & 1) != 0)
        {
          if (v11 == 2)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v16 = v9 == 0x75736552664F6F6ELL && v2 == 0xEB0000000073746CLL;
          if (v16 || (OUTLINED_FUNCTION_5_5(0x75736552664F6F6ELL, 0xEB0000000073746CLL) & 1) != 0)
          {
            if (v12)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v17 = v9 == 0x6E65746E6F437369 && v2 == 0xEF68637261655374;
            if (!v17 && (OUTLINED_FUNCTION_5_5(0x6E65746E6F437369, 0xEF68637261655374) & 1) == 0)
            {
              v18 = sub_19349AB64();
              v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
              OUTLINED_FUNCTION_64(v19, v20);
              *(v21 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationEnded;
              *(v21 + 16) = v5;
              *(v21 + 17) = v10;
              *(v21 + 18) = v11;
              *(v21 + 20) = v23;
              *(v21 + 24) = v12;
              *(v21 + 25) = v13;
              OUTLINED_FUNCTION_23_2(v22, v21);

              goto LABEL_9;
            }

            if (v13 == 2)
            {
              goto LABEL_7;
            }
          }
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if (v5 != 2)
  {
    goto LABEL_8;
  }

LABEL_7:
  *v4 = 0u;
  v4[1] = 0u;
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1935ADE0C()
{
  OUTLINED_FUNCTION_26();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_53_14();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  v10 = v1 == 0x6F54686372616573 && v5 == 0xEC00000064496C6FLL;
  if (v10 || (OUTLINED_FUNCTION_75_13() & 1) != 0)
  {
    sub_193448758(v3, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v10)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_0_45();
      v14 = OUTLINED_FUNCTION_73_11(v11, v12, v13);
      OUTLINED_FUNCTION_80_0(v14, v15, &off_1F07C3F90);
      OUTLINED_FUNCTION_1_42();
    }
  }

  else
  {
    v16 = sub_19349AB64();
    v17 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
    v19 = OUTLINED_FUNCTION_81_8(v17, v18);
    v20 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata(v19);
    v21 = OUTLINED_FUNCTION_126(v20);
    sub_1935B1870(v3, v21, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata);
    OUTLINED_FUNCTION_74_10();
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935ADFB0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v5 || (v7 = v2[1], (OUTLINED_FUNCTION_91_2(0x737473697865, 0xE600000000000000) & 1) != 0))
  {
    if (v4 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v8 = a1 == 0x656D726157657270 && a2 == 0xE900000000000064;
  if (v8 || (OUTLINED_FUNCTION_91_2(0x656D726157657270, 0xE900000000000064) & 1) != 0)
  {
    if (v7 == 2)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v9 = sub_19349AB64();
  v10 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted;
  *(v11 + 16) = v4;
  *(v11 + 17) = v7;
  OUTLINED_FUNCTION_23_2(v10, v11);
}

void sub_1935AE100()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_87_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v9 = v3 == 0x746C75736572 && v1 == 0xE600000000000000;
  if (!v9)
  {
    v10 = OUTLINED_FUNCTION_88_11();
    if ((OUTLINED_FUNCTION_0_18(v10, v11) & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_31_23();
      v14 = v3 == v12 && v1 == v13;
      if (v14 || (OUTLINED_FUNCTION_0_18(v12, v13) & 1) != 0)
      {
        if ((*(v0 + 17) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v15 = v3 == 0x6B6361626C6C6166 && v1 == 0xEE006E6F73616552;
        if (v15 || (OUTLINED_FUNCTION_0_18(0x6B6361626C6C6166, 0xEE006E6F73616552) & 1) != 0)
        {
          if ((*(v0 + 33) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v16 = v3 == 0x64496B6E696CLL && v1 == 0xE600000000000000;
          if (!v16 && (OUTLINED_FUNCTION_0_18(0x64496B6E696CLL, 0xE600000000000000) & 1) == 0)
          {
            v21 = sub_19349AB64();
            v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
            v24 = OUTLINED_FUNCTION_75_2(v22, v23);
            v25 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(v24);
            OUTLINED_FUNCTION_152(v25);
            OUTLINED_FUNCTION_40_11();
            sub_1935B1870(v0, v26, v27);
            OUTLINED_FUNCTION_65_1();

            goto LABEL_8;
          }

          v17 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded(0);
          sub_193448758(v0 + *(v17 + 28), v2, &qword_1EAE3BCA0, &unk_19395C320);
          OUTLINED_FUNCTION_6_3(v2, 1, v4);
          if (!v9)
          {
            OUTLINED_FUNCTION_0_45();
            v19 = sub_1935AED18(v2, v5, v18);
            OUTLINED_FUNCTION_80_0(v19, v20, &off_1F07C3F90);
            OUTLINED_FUNCTION_1_42();
            goto LABEL_8;
          }

          sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
        }
      }

      OUTLINED_FUNCTION_104();
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFD0, &qword_193969378);
LABEL_7:
  OUTLINED_FUNCTION_95_9();
LABEL_8:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_1935AE39C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_22_21();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v11 = v2 == v4 && v1 == 0xE600000000000000;
  if (!v11)
  {
    v12 = OUTLINED_FUNCTION_88_11();
    v9 = OUTLINED_FUNCTION_59_0(v12, v13);
    if ((v9 & 1) == 0)
    {
      v19 = v2 == 0x6449746163 && v1 == 0xE500000000000000;
      if (v19 || (OUTLINED_FUNCTION_59_0(0x6449746163, 0xE500000000000000) & 1) != 0)
      {
        v20 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0) + 20);
      }

      else
      {
        v21 = v2 == 0x6944636974617473 && v1 == 0xEE006449676F6C61;
        if (!v21 && (OUTLINED_FUNCTION_59_0(0x6944636974617473, 0xEE006449676F6C61) & 1) == 0)
        {
          v22 = sub_19349AB64();
          v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
          v25 = OUTLINED_FUNCTION_19_0(v23, v24);
          v26 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v25);
          OUTLINED_FUNCTION_152(v26);
          v27 = OUTLINED_FUNCTION_141();
          sub_1935B1870(v27, v28, v29);
          OUTLINED_FUNCTION_65_1();

          goto LABEL_18;
        }

        v20 = *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0) + 24);
      }

      if (*(v0 + v20 + 8))
      {
        OUTLINED_FUNCTION_95_9();
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_94_9(v9, v10, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v11)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_45();
  v17 = OUTLINED_FUNCTION_73_11(v14, v15, v16);
  OUTLINED_FUNCTION_80_0(v17, v18, &off_1F07C3F90);
  OUTLINED_FUNCTION_1_42();
LABEL_18:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_1935AE5DC()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v5 = *v0;
  v4 = v0[1];
  if (v2 != 0x6E69616D6F64 || v1 != 0xE600000000000000)
  {
    v7 = v1;
    v8 = v0[2];
    v9 = *(v0 + 24);
    if ((OUTLINED_FUNCTION_0_32(0x6E69616D6F64, 0xE600000000000000) & 1) == 0)
    {
      v10 = v3 == 1701080931 && v7 == 0xE400000000000000;
      if (!v10 && (OUTLINED_FUNCTION_0_32(1701080931, 0xE400000000000000) & 1) == 0)
      {
        v11 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
        v13 = v12;
        *v12 = v3;
        v12[1] = v7;
        v12[5] = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError;
        v14 = swift_allocObject();
        v13[2] = v14;
        *(v14 + 16) = v5;
        *(v14 + 24) = v4;
        *(v14 + 32) = v8;
        *(v14 + 40) = v9;
        *(v13 + 48) = 1;
        swift_willThrow();

        goto LABEL_15;
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      OUTLINED_FUNCTION_29();
      goto LABEL_15;
    }
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_1935AE744()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  OUTLINED_FUNCTION_53_14();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v11 = v1 == 0xD00000000000001FLL && v10 == v4;
  if (!v11)
  {
    v9 = OUTLINED_FUNCTION_59_0(0xD00000000000001FLL, v10);
    if ((v9 & 1) == 0)
    {
      v17 = OUTLINED_FUNCTION_46_16();
      v18 = v1 == v17 && v4 == 0xE800000000000000;
      if (v18 || (OUTLINED_FUNCTION_59_0(v17, 0xE800000000000000) & 1) != 0)
      {
        if (!*(v0 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0) + 20) + 8))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = v1 == 0x7954746C75736572 && v4 == 0xEA00000000006570;
        if (!v19 && (OUTLINED_FUNCTION_59_0(0x7954746C75736572, 0xEA00000000006570) & 1) == 0)
        {
          v22 = sub_19349AB64();
          v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
          v25 = OUTLINED_FUNCTION_19_0(v23, v24);
          v26 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(v25);
          OUTLINED_FUNCTION_152(v26);
          v27 = OUTLINED_FUNCTION_141();
          sub_1935B1870(v27, v28, v29);
          OUTLINED_FUNCTION_65_1();

          goto LABEL_17;
        }

        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult(0);
        OUTLINED_FUNCTION_66_14();
        if (v21)
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_43_1(v20);
      }

      OUTLINED_FUNCTION_95_9();
      goto LABEL_17;
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

  OUTLINED_FUNCTION_0_45();
  v15 = OUTLINED_FUNCTION_73_11(v12, v13, v14);
  OUTLINED_FUNCTION_80_0(v15, v16, &off_1F07C3F90);
  OUTLINED_FUNCTION_1_42();
LABEL_17:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_1935AE998()
{
  OUTLINED_FUNCTION_184_0();
  v6 = v5;
  OUTLINED_FUNCTION_53_14();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFD8, &qword_193969380);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(v9);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v11 = v2 == 0x6D754E6C65646F6DLL && v6 == 0xEB00000000726562;
  if (!v11 && (OUTLINED_FUNCTION_59_0(0x6D754E6C65646F6DLL, 0xEB00000000726562) & 1) == 0)
  {
    v12 = v2 == 0x4C74736575716572 && v6 == 0xED00006874676E65;
    if (v12 || (OUTLINED_FUNCTION_59_0(0x4C74736575716572, 0xED00006874676E65) & 1) != 0)
    {
      if ((*(v0 + 20) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = OUTLINED_FUNCTION_31_23();
      v15 = v2 == v13 && v6 == v14;
      if (v15 || (OUTLINED_FUNCTION_59_0(v13, v14) & 1) != 0)
      {
        if ((*(v0 + 28) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v16 = v2 == 0x6772417972657571 && v6 == 0xEE0073746E656D75;
        if (v16 || (OUTLINED_FUNCTION_59_0(0x6772417972657571, 0xEE0073746E656D75) & 1) != 0)
        {
          v17 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
          sub_193448758(v0 + *(v17 + 28), v3, &qword_1EAE3DFD8, &qword_193969380);
          v18 = OUTLINED_FUNCTION_23_4();
          if (!v11)
          {
            v20 = OUTLINED_FUNCTION_73_11(v18, v19, type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments);
            OUTLINED_FUNCTION_80_0(v20, v21, &off_1F07D0C60);
            sub_1935AED74(v4, type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments);
            goto LABEL_15;
          }

          sub_19344E6DC(v3, &qword_1EAE3DFD8, &qword_193969380);
        }

        else
        {
          OUTLINED_FUNCTION_168();
          if (v2 != v23 || v22 != v6)
          {
            v25 = OUTLINED_FUNCTION_27_0();
            if ((OUTLINED_FUNCTION_59_0(v25, v26) & 1) == 0)
            {
              v27 = sub_19349AB64();
              OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
              *v28 = v2;
              v28[1] = v6;
              v29 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0);
              OUTLINED_FUNCTION_126(v29);
              OUTLINED_FUNCTION_39_17();
              sub_1935B1870(v0, v30, v31);
              OUTLINED_FUNCTION_74_10();

              goto LABEL_15;
            }
          }

          if ((*(v0 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded(0) + 32) + 37) & 1) == 0)
          {
            sub_193494798(&type metadata for IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics, &off_1F07D0C40, v1);
            goto LABEL_15;
          }
        }
      }
    }

LABEL_14:
    OUTLINED_FUNCTION_104();
    goto LABEL_15;
  }

  if (!*(v0 + 8))
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_183();
}

uint64_t sub_1935AED18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_1935AED74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1935AEDE4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 4);
  OUTLINED_FUNCTION_38();
  v8 = v6 == 0xD000000000000010 && v7 == a2;
  if (v8 || (v9 = v6, v10 = *(v2 + 12), v33 = *(v2 + 20), v34 = v2[2], v31 = *(v2 + 28), v32 = v2[4], v29 = v2[8], v30 = *(v2 + 36), v11 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_12_17(v11, v12) & 1) != 0))
  {
    if (v5)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v14 = v9 == 0xD000000000000019 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_12_17(0xD000000000000019, v13) & 1) != 0)
  {
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v16 = v9 == 0xD000000000000015 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_12_17(0xD000000000000015, v15) & 1) != 0)
  {
    if (v33)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v18 = v9 == 0xD000000000000012 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_12_17(0xD000000000000012, v17) & 1) != 0)
  {
    if (v31)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v20 = v9 == 0xD00000000000001ALL && v19 == a2;
  if (v20 || (OUTLINED_FUNCTION_12_17(0xD00000000000001ALL, v19) & 1) != 0)
  {
    if (v30)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  v21 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
  v23 = v22;
  *v22 = v9;
  v22[1] = a2;
  v22[5] = &type metadata for IntelligenceFlowSearchToolTelemetry.LLMQUPerfMetrics;
  v24 = swift_allocObject();
  v23[2] = v24;
  *(v24 + 16) = v4;
  *(v24 + 20) = v5;
  v25 = OUTLINED_FUNCTION_85_13(v24);
  *(v25 + 24) = v34;
  *(v25 + 28) = v10;
  v26 = OUTLINED_FUNCTION_83_14(v25);
  *(v26 + 32) = v32;
  *(v26 + 36) = v33;
  v27 = OUTLINED_FUNCTION_80_12(v26);
  v28 = OUTLINED_FUNCTION_56_9(v27, v31);
  *(v28 + 48) = v29;
  *(v28 + 52) = v30;
  *(v23 + 48) = 1;
  swift_willThrow();
}

void sub_1935AF074()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_22_21();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v11 = v2 == v4 && v1 == 0xE600000000000000;
  if (!v11)
  {
    v12 = OUTLINED_FUNCTION_88_11();
    v9 = OUTLINED_FUNCTION_59_0(v12, v13);
    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_168();
      v21 = v2 == v20 && v19 == v1;
      if (v21 || (OUTLINED_FUNCTION_59_0(0xD000000000000013, v19) & 1) != 0)
      {
        if (*(v0 + *(type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0) + 20)) == 2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v22 = v2 == 0x6564724F74726F73 && v1 == 0xE900000000000072;
        if (!v22 && (OUTLINED_FUNCTION_59_0(0x6564724F74726F73, 0xE900000000000072) & 1) == 0)
        {
          v25 = sub_19349AB64();
          v26 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
          v28 = OUTLINED_FUNCTION_19_0(v26, v27);
          v29 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(v28);
          OUTLINED_FUNCTION_152(v29);
          v30 = OUTLINED_FUNCTION_141();
          sub_1935B1870(v30, v31, v32);
          OUTLINED_FUNCTION_65_1();

          goto LABEL_17;
        }

        type metadata accessor for IntelligenceFlowSearchToolTelemetry.LLMQUQueryArguments(0);
        OUTLINED_FUNCTION_66_14();
        if (v24)
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_43_1(v23);
      }

      sub_1934948FC();
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_94_9(v9, v10, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v11)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_45();
  v17 = OUTLINED_FUNCTION_73_11(v14, v15, v16);
  OUTLINED_FUNCTION_80_0(v17, v18, &off_1F07C3F90);
  OUTLINED_FUNCTION_1_42();
LABEL_17:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_1935AF328()
{
  v3 = v0;
  OUTLINED_FUNCTION_25_17();
  v5 = v4;
  memcpy(__dst, v3, sizeof(__dst));
  v6 = v2 == 0x6176656972746572 && v1 == 0xED0000657079546CLL;
  if (v6 || (v7 = OUTLINED_FUNCTION_82(), (OUTLINED_FUNCTION_5_5(v7, v8) & 1) != 0))
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      *v5 = 0u;
      *(v5 + 16) = 0u;
      return;
    }

    v39[0] = __dst[0];
    LOBYTE(v39[1]) = __dst[1] & 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_46_16();
    v10 = v2 == v9 && v1 == 0xE800000000000000;
    if (v10 || (OUTLINED_FUNCTION_5_5(v9, 0xE800000000000000) & 1) != 0)
    {
      if (!__dst[3])
      {
        goto LABEL_7;
      }

      v39[0] = __dst[2];
      v39[1] = __dst[3];
    }

    else
    {
      v11 = v2 == 0x6F68696C656B696CLL && v1 == 0xEA0000000000646FLL;
      if (v11 || (OUTLINED_FUNCTION_5_5(0x6F68696C656B696CLL, 0xEA0000000000646FLL) & 1) != 0)
      {
        if ((__dst[4] & 0x100000000) != 0)
        {
          goto LABEL_7;
        }

        v12 = __dst[4];
      }

      else
      {
        v13 = v2 == 0x696C616369706F74 && v1 == 0xEA00000000007974;
        if (v13 || (OUTLINED_FUNCTION_5_5(0x696C616369706F74, 0xEA00000000007974) & 1) != 0)
        {
          if ((__dst[5] & 0x100000000) != 0)
          {
            goto LABEL_7;
          }

          v12 = __dst[5];
        }

        else
        {
          v14 = v2 == 0x314C73656D6D6F70 && v1 == 0xED000065726F6353;
          if (v14 || (OUTLINED_FUNCTION_5_5(0x314C73656D6D6F70, 0xED000065726F6353) & 1) != 0)
          {
            if ((__dst[6] & 0x100000000) != 0)
            {
              goto LABEL_7;
            }

            v12 = __dst[6];
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v16 = v2 == 0xD000000000000015 && v15 == v1;
            if (v16 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v15) & 1) != 0)
            {
              if ((__dst[7] & 0x100000000) != 0)
              {
                goto LABEL_7;
              }

              v12 = __dst[7];
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v18 = v2 == 0xD000000000000017 && v17 == v1;
              if (v18 || (OUTLINED_FUNCTION_5_5(0xD000000000000017, v17) & 1) != 0)
              {
                if ((__dst[8] & 0x100000000) != 0)
                {
                  goto LABEL_7;
                }

                v12 = __dst[8];
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v20 = v2 == 0xD000000000000013 && v19 == v1;
                if (v20 || (OUTLINED_FUNCTION_5_5(0xD000000000000013, v19) & 1) != 0)
                {
                  if ((__dst[9] & 0x100000000) != 0)
                  {
                    goto LABEL_7;
                  }

                  v12 = __dst[9];
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v22 = v2 == 0xD000000000000011 && v21 == v1;
                  if (v22 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, v21) & 1) != 0)
                  {
                    if ((__dst[10] & 0x100000000) != 0)
                    {
                      goto LABEL_7;
                    }

                    v12 = __dst[10];
                  }

                  else
                  {
                    v23 = v2 == 0x73656E6873657266 && v1 == 0xE900000000000073;
                    if (!v23 && (OUTLINED_FUNCTION_5_5(0x73656E6873657266, 0xE900000000000073) & 1) == 0)
                    {
                      v24 = v2 == 0x7474417972657571 && v1 == 0xEF73657475626972;
                      if (v24 || (OUTLINED_FUNCTION_5_5(0x7474417972657571, 0xEF73657475626972) & 1) != 0)
                      {
                        if (!__dst[12])
                        {
                          goto LABEL_7;
                        }

                        v39[0] = __dst[12];
                        v25 = &type metadata for IntelligenceFlowSearchToolTelemetry.QueryAttributes;
                        v26 = &off_1F07D0CB0;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v29 = v2 == 0xD000000000000010 && v28 == v1;
                        if (v29 || (OUTLINED_FUNCTION_10_26(v27, v28) & 1) != 0)
                        {
                          if ((__dst[13] & 0x10000000000) != 0)
                          {
                            goto LABEL_7;
                          }

                          LODWORD(v39[0]) = __dst[13];
                          BYTE4(v39[0]) = BYTE4(__dst[13]) & 1;
                          v25 = &type metadata for IntelligenceFlowSearchToolTelemetry.QUTokenParseInfo;
                          v26 = &off_1F07D0CC0;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          v31 = v2 == 0xD000000000000012 && v30 == v1;
                          if (v31 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v30) & 1) != 0)
                          {
                            if (__dst[15] == 1)
                            {
                              goto LABEL_7;
                            }

                            v39[0] = __dst[14];
                            v39[1] = __dst[15];
                            LODWORD(v39[2]) = __dst[16];
                            BYTE4(v39[2]) = BYTE4(__dst[16]) & 1;
                            v25 = &type metadata for IntelligenceFlowSearchToolTelemetry.DocumentAttributes;
                            v26 = &off_1F07D0CE0;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_38();
                            v33 = v2 == 0xD000000000000014 && v32 == v1;
                            if (!v33 && (OUTLINED_FUNCTION_5_5(0xD000000000000014, v32) & 1) == 0)
                            {
                              v34 = sub_19349AB64();
                              v35 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
                              OUTLINED_FUNCTION_9_3(v35, v36);
                              *(v37 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult;
                              v38 = swift_allocObject();
                              *(v5 + 16) = v38;
                              memcpy((v38 + 16), __dst, 0xE8uLL);
                              OUTLINED_FUNCTION_26_0();

                              sub_1935AF804(__dst, v39);
                              return;
                            }

                            if (__dst[28] == 1)
                            {
                              goto LABEL_7;
                            }

                            memcpy(v39, (v3 + 136), 0x58uLL);
                            v39[11] = __dst[28];
                            v25 = &type metadata for IntelligenceFlowSearchToolTelemetry.TopicalityAttributes;
                            v26 = &off_1F07D0CD0;
                          }
                        }
                      }

                      sub_193494798(v25, v26, v5);
                      return;
                    }

                    if ((__dst[11] & 0x100000000) != 0)
                    {
                      goto LABEL_7;
                    }

                    v12 = __dst[11];
                  }
                }
              }
            }
          }
        }
      }

      LODWORD(v39[0]) = v12;
    }
  }

  sub_1934948FC();
}

uint64_t sub_1935AF878(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  OUTLINED_FUNCTION_22_4();
  v7 = v7 && v6 == a2;
  if (v7 || (v8 = v5, OUTLINED_FUNCTION_27_0(), (sub_19393CA30() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFE8, &qword_193969390);
    return sub_1934948FC();
  }

  else
  {
    v10 = sub_19349AB64();
    v11 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v10);
    *v12 = v8;
    v12[1] = a2;
    v12[5] = &type metadata for IntelligenceFlowSearchToolTelemetry.QueryAttributes;
    v12[2] = v4;
    OUTLINED_FUNCTION_23_2(v11, v12);
  }
}

void sub_1935AF980(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 4);
  v7 = a1 == 0x6E654C6E656B6F74 && a2 == 0xEB00000000687467;
  if (v7 || (sub_19393CA30() & 1) != 0)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    v8 = sub_19349AB64();
    v9 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v8);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.QUTokenParseInfo;
    *(v10 + 16) = v5;
    *(v10 + 20) = v6;
    OUTLINED_FUNCTION_23_2(v9, v10);
  }
}

void sub_1935AFA8C()
{
  OUTLINED_FUNCTION_25_17();
  v3 = v2;
  memcpy(__dst, v4, sizeof(__dst));
  OUTLINED_FUNCTION_38();
  v6 = v1 == 0xD000000000000017 && v5 == v0;
  if (v6 || (OUTLINED_FUNCTION_5_5(0xD000000000000017, v5) & 1) != 0)
  {
    if ((__dst[0] & 0x100000000) != 0)
    {
LABEL_7:
      *v3 = 0u;
      v3[1] = 0u;
      return;
    }

    v7 = __dst[0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v9 = v1 == 0xD00000000000001DLL && v8 == v0;
  if (v9 || (OUTLINED_FUNCTION_18_3(29, v8) & 1) != 0)
  {
    if ((__dst[1] & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    v7 = __dst[1];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v11 = v1 == 0xD00000000000001ALL && v10 == v0;
  if (v11 || (OUTLINED_FUNCTION_5_5(0xD00000000000001ALL, v10) & 1) != 0)
  {
    if ((__dst[2] & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    v7 = __dst[2];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v13 = v1 == 0xD000000000000019 && v12 == v0;
  if (v13 || (OUTLINED_FUNCTION_5_5(0xD000000000000019, v12) & 1) != 0)
  {
    if ((__dst[3] & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    v7 = __dst[3];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v15 = v1 == 0xD000000000000018 && v14 == v0;
  if (v15 || (OUTLINED_FUNCTION_5_5(0xD000000000000018, v14) & 1) != 0)
  {
    if ((__dst[4] & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    v7 = __dst[4];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v17 = v1 == 0xD000000000000020 && v16 == v0;
  if (v17 || (OUTLINED_FUNCTION_5_5(0xD000000000000020, v16) & 1) != 0)
  {
    if ((__dst[5] & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    v7 = __dst[5];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v19 = v1 == 0xD00000000000001FLL && v18 == v0;
  if (v19 || (OUTLINED_FUNCTION_5_5(0xD00000000000001FLL, v18) & 1) != 0)
  {
    if ((__dst[6] & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    v7 = __dst[6];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v21 = v1 == 0xD00000000000001ELL && v20 == v0;
  if (v21 || (OUTLINED_FUNCTION_5_5(0xD00000000000001ELL, v20) & 1) != 0)
  {
    if ((__dst[7] & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    v7 = __dst[7];
LABEL_9:
    LODWORD(v34[0]) = v7;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v23 = v1 == 0xD00000000000001FLL && v22 == v0;
  if (v23 || (OUTLINED_FUNCTION_5_5(0xD00000000000001FLL, v22) & 1) != 0)
  {
    if ((__dst[8] & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    v24 = __dst[8];
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_38();
  v26 = v1 == 0xD00000000000001DLL && v25 == v0;
  if (v26 || (OUTLINED_FUNCTION_18_3(29, v25) & 1) != 0)
  {
    if ((__dst[9] & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    v24 = __dst[9];
LABEL_68:
    LODWORD(v34[0]) = v24;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v28 = v1 == 0xD000000000000010 && v27 == v0;
  if (!v28 && (OUTLINED_FUNCTION_5_5(0xD000000000000010, v27) & 1) == 0)
  {
    v29 = sub_19349AB64();
    v30 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v29);
    OUTLINED_FUNCTION_9_3(v30, v31);
    *(v32 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.TopicalityAttributes;
    v33 = swift_allocObject();
    *(v3 + 2) = v33;
    memcpy((v33 + 16), __dst, 0x60uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1935AFDCC(__dst, v34);
    return;
  }

  if (!__dst[11])
  {
    goto LABEL_7;
  }

  v34[0] = __dst[10];
  v34[1] = __dst[11];
LABEL_10:
  sub_1934948FC();
}

void sub_1935AFE40(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_46_16();
  v6 = *v1;
  v5 = v1[1];
  v7 = a1 == v3 && v4 == 0xE800000000000000;
  if (v7 || (v8 = v4, v9 = *(v1 + 4), v10 = *(v1 + 20), (OUTLINED_FUNCTION_12_17(v3, 0xE800000000000000) & 1) != 0))
  {
    if (v5)
    {
LABEL_7:
      sub_1934948FC();
      return;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_168();
  v13 = a1 == v12 && v11 == v8;
  if (v13 || (OUTLINED_FUNCTION_12_17(0xD000000000000012, v11) & 1) != 0)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    OUTLINED_FUNCTION_29();
    return;
  }

  v14 = sub_19349AB64();
  v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
  *v16 = a1;
  *(v16 + 8) = v8;
  *(v16 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.DocumentAttributes;
  *(v16 + 16) = v6;
  *(v16 + 24) = v5;
  *(v16 + 32) = v9;
  *(v16 + 36) = v10;
  OUTLINED_FUNCTION_23_2(v15, v16);
}

void sub_1935B0008()
{
  v3 = v0;
  OUTLINED_FUNCTION_25_17();
  v5 = v4;
  memcpy(__dst, v3, 0xC1uLL);
  v6 = v2 == 0x6D754E6C65646F6DLL && v1 == 0xEB00000000726562;
  if (v6 || (v7 = OUTLINED_FUNCTION_82(), (OUTLINED_FUNCTION_5_5(v7, v8) & 1) != 0))
  {
    if (__dst[1])
    {
      v21[0] = __dst[0];
      v21[1] = __dst[1];
LABEL_8:
      sub_1934948FC();
      return;
    }

    goto LABEL_15;
  }

  v9 = v2 == 0x7274654D66726570 && v1 == 0xEB00000000736369;
  if (v9 || (OUTLINED_FUNCTION_5_5(0x7274654D66726570, 0xEB00000000736369) & 1) != 0)
  {
    if ((__dst[16] & 0x10000000000) != 0)
    {
LABEL_15:
      *v5 = 0u;
      *(v5 + 16) = 0u;
      return;
    }

    memcpy(v21, (v3 + 16), 0x75uLL);
    v10 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics;
    v11 = &off_1F07D0D30;
    goto LABEL_24;
  }

  v12 = v2 == 0x7274654D61746164 && v1 == 0xEB00000000736369;
  if (v12 || (OUTLINED_FUNCTION_5_5(0x7274654D61746164, 0xEB00000000736369) & 1) != 0)
  {
    if (!__dst[23])
    {
      goto LABEL_15;
    }

    LODWORD(v21[0]) = __dst[17];
    BYTE4(v21[0]) = BYTE4(__dst[17]) & 1;
    LODWORD(v21[1]) = __dst[18];
    BYTE4(v21[1]) = BYTE4(__dst[18]) & 1;
    LODWORD(v21[2]) = __dst[19];
    BYTE4(v21[2]) = BYTE4(__dst[19]) & 1;
    LODWORD(v21[3]) = __dst[20];
    BYTE4(v21[3]) = BYTE4(__dst[20]) & 1;
    LODWORD(v21[4]) = __dst[21];
    BYTE4(v21[4]) = BYTE4(__dst[21]) & 1;
    LODWORD(v21[5]) = __dst[22];
    BYTE4(v21[5]) = BYTE4(__dst[22]) & 1;
    v21[6] = __dst[23];
    v10 = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics;
    v11 = &off_1F07D0D40;
LABEL_24:
    sub_193494798(v10, v11, v5);
    return;
  }

  OUTLINED_FUNCTION_168();
  v15 = v2 == v14 && v13 == v1;
  if (v15 || (OUTLINED_FUNCTION_18_3(21, v13) & 1) != 0)
  {
    if (LOBYTE(__dst[24]) != 2)
    {
      LOBYTE(v21[0]) = __dst[24] & 1;
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v16 = sub_19349AB64();
  v17 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
  OUTLINED_FUNCTION_9_3(v17, v18);
  *(v19 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult;
  v20 = swift_allocObject();
  *(v5 + 16) = v20;
  memcpy((v20 + 16), __dst, 0xC1uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1935B02B8(__dst, v21);
}

void sub_1935B032C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 4);
  v92 = v2[2];
  v6 = *(v2 + 12);
  v91 = v2[4];
  v7 = *(v2 + 20);
  OUTLINED_FUNCTION_38();
  v11 = v10 - 7;
  v12 = v8 == v10 - 7 && v9 == a2;
  if (v12 || (v13 = v8, v90 = *(v2 + 28), v88 = v2[8], v89 = *(v2 + 36), v86 = v2[10], v87 = *(v2 + 44), v84 = v2[12], v85 = *(v2 + 52), v82 = v2[14], v83 = *(v2 + 60), v80 = v2[16], v81 = *(v2 + 68), v78 = v2[18], v79 = *(v2 + 76), v76 = v2[20], v77 = *(v2 + 84), v74 = v2[22], v75 = *(v2 + 92), v68 = v2[24], v69 = *(v2 + 108), v72 = v2[28], v73 = *(v2 + 100), v70 = v2[26], v71 = *(v2 + 116), (OUTLINED_FUNCTION_12_17(v11, v9) & 1) != 0))
  {
    if (v5)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v16 = v13 == v15 - 13 && v14 == a2;
  if (v16 || (OUTLINED_FUNCTION_12_17(v15 - 13, v14) & 1) != 0)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v19 = v13 == v18 - 16 && v17 == a2;
  if (v19 || (OUTLINED_FUNCTION_12_17(v18 - 16, v17) & 1) != 0)
  {
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v21 = v13 == v11 && v20 == a2;
  if (v21 || (OUTLINED_FUNCTION_12_17(v11, v20) & 1) != 0)
  {
    if (v90)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v24 = v13 == v23 - 14 && v22 == a2;
  if (v24 || (OUTLINED_FUNCTION_12_17(v23 - 14, v22) & 1) != 0)
  {
    if (v89)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v27 = v13 == v26 - 17 && v25 == a2;
  if (v27 || (OUTLINED_FUNCTION_12_17(v26 - 17, v25) & 1) != 0)
  {
    if (v87)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v30 = v29 - 12;
  v31 = v13 == v29 - 12 && v28 == a2;
  if (v31 || (OUTLINED_FUNCTION_12_17(v29 - 12, v28) & 1) != 0)
  {
    if (v85)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v34 = v13 == v33 - 1 && v32 == a2;
  if (v34 || (OUTLINED_FUNCTION_12_17(v33 - 1, v32) & 1) != 0)
  {
    if (v83)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v37 = v13 == v36 && v35 == a2;
  if (v37 || (OUTLINED_FUNCTION_12_17(0xD000000000000021, v35) & 1) != 0)
  {
    if (v81)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v40 = v13 == v39 + 7 && v38 == a2;
  if (v40 || (OUTLINED_FUNCTION_12_17(v39 + 7, v38) & 1) != 0)
  {
    if (v79)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v43 = v13 == v42 && v41 == a2;
  if (v43 || (OUTLINED_FUNCTION_12_17(0xD000000000000021, v41) & 1) != 0)
  {
    if (v77)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v46 = v13 == v45 - 5 && v44 == a2;
  if (v46 || (OUTLINED_FUNCTION_12_17(v45 - 5, v44) & 1) != 0)
  {
    if (v75)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v48 = v13 == v30 && v47 == a2;
  if (v48 || (OUTLINED_FUNCTION_12_17(v30, v47) & 1) != 0)
  {
    if (v73)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v51 = v13 == v50 && v49 == a2;
  if (v51 || (OUTLINED_FUNCTION_12_17(0xD000000000000021, v49) & 1) != 0)
  {
    if (v69)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_34();
  v54 = v13 == v53 + 5 && v52 == a2;
  if (v54 || (OUTLINED_FUNCTION_12_17(v53 + 5, v52) & 1) != 0)
  {
    if (v71)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  v55 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v55);
  v57 = v56;
  *v56 = v13;
  v56[1] = a2;
  v56[5] = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics;
  v58 = swift_allocObject();
  v57[2] = v58;
  *(v58 + 16) = v4;
  *(v58 + 20) = v5;
  v59 = OUTLINED_FUNCTION_85_13(v58);
  *(v59 + 24) = v92;
  *(v59 + 28) = v6;
  v60 = OUTLINED_FUNCTION_83_14(v59);
  *(v60 + 32) = v91;
  *(v60 + 36) = v7;
  v61 = OUTLINED_FUNCTION_80_12(v60);
  v62 = OUTLINED_FUNCTION_56_9(v61, v90);
  *(v62 + 48) = v88;
  *(v62 + 52) = v89;
  *(v62 + 53) = *(v2 + 37);
  *(v62 + 55) = *(v2 + 39);
  *(v62 + 56) = v86;
  *(v62 + 60) = v87;
  *(v62 + 61) = *(v2 + 45);
  *(v62 + 63) = *(v2 + 47);
  *(v62 + 64) = v84;
  *(v62 + 68) = v85;
  *(v62 + 71) = *(v2 + 55);
  *(v62 + 69) = *(v2 + 53);
  *(v62 + 72) = v82;
  *(v62 + 76) = v83;
  *(v62 + 79) = *(v2 + 63);
  *(v62 + 77) = *(v2 + 61);
  *(v62 + 80) = v80;
  *(v62 + 84) = v81;
  *(v62 + 87) = *(v2 + 71);
  *(v62 + 85) = *(v2 + 69);
  *(v62 + 88) = v78;
  *(v62 + 92) = v79;
  v63 = *(v2 + 77);
  *(v62 + 95) = *(v2 + 79);
  *(v62 + 93) = v63;
  *(v62 + 96) = v76;
  *(v62 + 100) = v77;
  v64 = *(v2 + 85);
  *(v62 + 103) = *(v2 + 87);
  *(v62 + 101) = v64;
  *(v62 + 104) = v74;
  *(v62 + 108) = v75;
  v65 = *(v2 + 93);
  *(v62 + 111) = *(v2 + 95);
  *(v62 + 109) = v65;
  *(v62 + 112) = v68;
  *(v62 + 116) = v73;
  v66 = *(v2 + 101);
  *(v62 + 119) = *(v2 + 103);
  *(v62 + 117) = v66;
  *(v62 + 120) = v70;
  *(v62 + 124) = v69;
  v67 = *(v2 + 109);
  *(v62 + 127) = *(v2 + 111);
  *(v62 + 125) = v67;
  *(v62 + 128) = v72;
  *(v62 + 132) = v71;
  *(v57 + 48) = 1;
  swift_willThrow();
}

void sub_1935B0960(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v5 = v2[1];
  v29 = *v2;
  v30 = v5;
  v31 = v2[2];
  v32 = *(v2 + 6);
  OUTLINED_FUNCTION_38();
  v8 = v6 == 0xD000000000000010 && v7 == a1;
  if (v8 || (v9 = v6, (OUTLINED_FUNCTION_10_26(v6, v7) & 1) != 0))
  {
    if (BYTE4(v29))
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return;
    }

    v10 = v29;
    goto LABEL_9;
  }

  v11 = v9 == 0x654C74706D6F7270 && a1 == 0xEC0000006874676ELL;
  if (v11 || (OUTLINED_FUNCTION_5_5(0x654C74706D6F7270, 0xEC0000006874676ELL) & 1) != 0)
  {
    if (BYTE12(v29))
    {
      goto LABEL_7;
    }

    v10 = DWORD2(v29);
    goto LABEL_9;
  }

  v12 = OUTLINED_FUNCTION_31_23();
  v14 = v9 == v12 && a1 == v13;
  if (v14 || (OUTLINED_FUNCTION_5_5(v12, v13) & 1) != 0)
  {
    if (BYTE4(v30))
    {
      goto LABEL_7;
    }

    v10 = v30;
    goto LABEL_9;
  }

  v15 = v9 == 0x664F7265626D756ELL && a1 == 0xEF73726577736E41;
  if (v15 || (OUTLINED_FUNCTION_5_5(0x664F7265626D756ELL, 0xEF73726577736E41) & 1) != 0)
  {
    if (BYTE12(v30))
    {
      goto LABEL_7;
    }

    v10 = DWORD2(v30);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v17 = v9 == 0xD000000000000018 && v16 == a1;
  if (v17 || (OUTLINED_FUNCTION_5_5(0xD000000000000018, v16) & 1) != 0)
  {
    if (BYTE4(v31))
    {
      goto LABEL_7;
    }

    v10 = v31;
LABEL_9:
    LODWORD(v28[0]) = v10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v19 = v9 == 0xD000000000000014 && v18 == a1;
  if (v19 || (OUTLINED_FUNCTION_5_5(0xD000000000000014, v18) & 1) != 0)
  {
    if (BYTE12(v31))
    {
      goto LABEL_7;
    }

    LODWORD(v28[0]) = DWORD2(v31);
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v21 = v9 == 0xD00000000000001FLL && v20 == a1;
    if (!v21 && (OUTLINED_FUNCTION_5_5(0xD00000000000001FLL, v20) & 1) == 0)
    {
      v22 = sub_19349AB64();
      v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
      OUTLINED_FUNCTION_9_3(v23, v24);
      *(v25 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics;
      v26 = swift_allocObject();
      *(v2 + 2) = v26;
      *(v26 + 64) = v32;
      v27 = v31;
      *(v26 + 32) = v30;
      *(v26 + 48) = v27;
      *(v26 + 16) = v29;
      OUTLINED_FUNCTION_26_0();

      sub_1935B0BFC(&v29, v28);
      return;
    }

    v28[0] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFF8, &qword_1939693A0);
  }

LABEL_10:
  sub_1934948FC();
}

void sub_1935B0C70()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v3 = *(v0 + 9);
  OUTLINED_FUNCTION_38();
  if (v4 != 0xD000000000000016 || v5 != v2)
  {
    v7 = v4;
    v15 = *(v0 + 12);
    v8 = *(v0 + 16);
    if ((OUTLINED_FUNCTION_91_2(0xD000000000000016, v5) & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v10 = v7 == 0xD00000000000001DLL && v9 == v2;
      if (!v10 && (OUTLINED_FUNCTION_91_2(0xD00000000000001DLL, v9) & 1) == 0)
      {
        v11 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
        *v12 = v7;
        v12[1] = v2;
        OUTLINED_FUNCTION_86_11(v12, &type metadata for IntelligenceFlowSearchToolTelemetry.AnswerSythesisHydrationMetric);
        *(v13 + 28) = v15;
        *(v13 + 32) = v8;
        OUTLINED_FUNCTION_23_2(v14, v13);

        goto LABEL_9;
      }

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1935B0DE0()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = v7 == 0x746C75736572 && v1 == 0xE600000000000000;
  if (v10 || (v11 = v2, v12 = v1, (sub_19393CA30() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
    sub_1934948FC();
  }

  else
  {
    v13 = sub_19349AB64();
    v14 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
    *v15 = v8;
    v15[1] = v12;
    v15[5] = v11;
    v15[2] = v9;
    OUTLINED_FUNCTION_23_2(v14, v15);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935B0EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_78_12();
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 9);
  v13 = a1 == v8 && v9 == 0xE600000000000000;
  if (v13 || (v14 = v9, v26 = v5[3], v24 = v5[2], v25 = v5[4], v15 = *(v5 + 40), (sub_19393CA30() & 1) != 0))
  {
    if (v12)
    {
LABEL_7:
      *v6 = 0u;
      *(v6 + 16) = 0u;
      return;
    }

    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_168();
    v18 = a1 == v17 && v16 == v14;
    if (v18 || (sub_19393CA30() & 1) != 0)
    {
      if (v26 == 1)
      {
        goto LABEL_7;
      }

      sub_193494798(&type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError, &off_1F07D0C00, v6);
    }

    else
    {
      v19 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v19);
      v20 = v15;
      v22 = v21;
      *v21 = a1;
      v21[1] = v14;
      v21[5] = a4;
      v23 = swift_allocObject();
      v22[2] = v23;
      *(v23 + 16) = v10;
      *(v23 + 24) = v11;
      *(v23 + 25) = v12;
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      *(v23 + 48) = v25;
      *(v23 + 56) = v20;
      OUTLINED_FUNCTION_26_0();

      sub_19350CB08(v24, v26);
    }
  }
}

void sub_1935B10FC()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v3 = *v0;
  v4 = *(v0 + 4);
  OUTLINED_FUNCTION_22_4();
  v7 = v7 && v6 == v2;
  if (!v7)
  {
    v8 = v5;
    v9 = *(v0 + 1);
    v10 = *(v0 + 16);
    v11 = *(v0 + 17);
    if ((OUTLINED_FUNCTION_91_2(0xD00000000000001ELL, v6) & 1) == 0)
    {
      v12 = v8 == 0x5474736575716572 && v2 == 0xEB00000000657079;
      if (!v12 && (OUTLINED_FUNCTION_91_2(0x5474736575716572, 0xEB00000000657079) & 1) == 0)
      {
        v13 = sub_19349AB64();
        v14 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
        *v15 = v8;
        *(v15 + 8) = v2;
        *(v15 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult;
        *(v15 + 16) = v3;
        *(v15 + 20) = v4;
        *(v15 + 24) = v9;
        *(v15 + 32) = v10;
        *(v15 + 33) = v11;
        OUTLINED_FUNCTION_23_2(v14, v15);

        goto LABEL_9;
      }

      if (v11)
      {
        goto LABEL_7;
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1935B1254(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 9);
  OUTLINED_FUNCTION_22_4();
  v7 = v7 && v6 == a2;
  if (v7 || (v8 = v5, (sub_19393CA30() & 1) != 0))
  {
    if (v4)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    v9 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
    *v10 = v8;
    v10[1] = a2;
    OUTLINED_FUNCTION_86_11(v10, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted);
    OUTLINED_FUNCTION_23_2(v11, v12);
  }
}

void sub_1935B1368(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 4);
  OUTLINED_FUNCTION_38();
  v8 = v6 == 0xD00000000000001FLL && v7 == a2;
  if (v8 || (v9 = v6, v10 = *(v2 + 1), (OUTLINED_FUNCTION_0_32(0xD00000000000001FLL, v7) & 1) != 0))
  {
    if (v5)
    {
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v12 = v9 == 0xD00000000000001ALL && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_0_32(0xD00000000000001ALL, v11) & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E008, &qword_19396B1F0);
LABEL_15:
    sub_1934948FC();
    return;
  }

  v13 = sub_19349AB64();
  v14 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
  *v15 = v9;
  *(v15 + 8) = a2;
  *(v15 + 40) = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded;
  *(v15 + 16) = v4;
  *(v15 + 20) = v5;
  *(v15 + 24) = v10;
  OUTLINED_FUNCTION_23_2(v14, v15);
}

void sub_1935B14CC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_78_12();
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = a1 == v4 && v5 == 0xE600000000000000;
  if (v8 || (v9 = v5, v11 = v1[2], v10 = v1[3], v21 = v1[4], v12 = *(v1 + 40), (sub_19393CA30() & 1) != 0))
  {
    if (v7)
    {
LABEL_7:
      *v2 = 0u;
      *(v2 + 16) = 0u;
      return;
    }

    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_168();
    v15 = a1 == v14 && v13 == v9;
    if (v15 || (sub_19393CA30() & 1) != 0)
    {
      if (v10 == 1)
      {
        goto LABEL_7;
      }

      sub_193494798(&type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError, &off_1F07D0C00, v2);
    }

    else
    {
      v16 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
      v17 = v12;
      v19 = v18;
      *v18 = a1;
      v18[1] = v9;
      v18[5] = &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed;
      v20 = swift_allocObject();
      v19[2] = v20;
      *(v20 + 16) = v6;
      *(v20 + 24) = v7;
      *(v20 + 32) = v11;
      *(v20 + 40) = v10;
      *(v20 + 48) = v21;
      *(v20 + 56) = v17;
      OUTLINED_FUNCTION_26_0();

      sub_19350CB08(v11, v10);
    }
  }
}

uint64_t objectdestroyTm_1()
{
  if (*(v0 + 40) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

void sub_1935B16E0()
{
  OUTLINED_FUNCTION_26();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_53_14();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_14_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  v10 = v1 == 0x7254746E65696C63 && v5 == 0xED00006449656361;
  if (v10 || (OUTLINED_FUNCTION_75_13() & 1) != 0)
  {
    sub_193448758(v3, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v10)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_0_45();
      v14 = OUTLINED_FUNCTION_73_11(v11, v12, v13);
      OUTLINED_FUNCTION_80_0(v14, v15, &off_1F07C3F90);
      OUTLINED_FUNCTION_1_42();
    }
  }

  else
  {
    v16 = sub_19349AB64();
    v17 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
    v19 = OUTLINED_FUNCTION_81_8(v17, v18);
    v20 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation(v19);
    v21 = OUTLINED_FUNCTION_126(v20);
    sub_1935B1870(v3, v21, type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation);
    OUTLINED_FUNCTION_74_10();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935B1870(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_57_8(__n128 a1)
{
  *(v6 - 112) = v1;
  *(v6 - 104) = v2;
  *(v6 - 103) = v3;
  *(v6 - 96) = a1;
  *(v6 - 80) = v4;
  *(v6 - 72) = v5;
}

uint64_t OUTLINED_FUNCTION_73_11(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_1935AED18(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_75_13()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_86_11(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 40) = a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 25) = v4;
}

uint64_t IntelligenceFlowSearchToolTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_1935C5BC0();
  v6 = v2[8];
  sub_19344BA58();
  v7 = v2[9];
  v8 = sub_1935C5D60();
  v9 = v2[10];
  v10 = sub_19343E518(v8);
  v11 = v2[11];
  sub_19343E518(v10);
  v12 = v2[12];
  sub_19343E51C((a1 + v12));
  v46 = v2[13];
  v14 = sub_19343E518(v13);
  v47 = v2[14];
  sub_19343E518(v14);
  v48 = v2[15];
  v15 = sub_1935C61CC();
  v49 = v2[16];
  sub_19343E518(v15);
  v50 = v2[17];
  sub_1935C6388();
  v16 = v2[18];
  sub_1935C6498();
  *a1 = *sub_1935C5A24();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3DFA8, &qword_193969360);
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_19344E6DC(a1 + v7, &qword_1EAE3DFB0, &qword_193969368);
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_1934354B4(*(a1 + v9));
  *(a1 + v9) = 0xF000000000000007;
  sub_1934354B4(*(a1 + v11));
  *(a1 + v11) = 0xF000000000000007;
  sub_1934354B4(*(a1 + v12));
  *(a1 + v12) = 0xF000000000000007;
  sub_1934354B4(*(a1 + v46));
  *(a1 + v46) = 0xF000000000000007;
  sub_1934354B4(*(a1 + v47));
  *(a1 + v47) = 0xF000000000000007;
  sub_19344E6DC(a1 + v48, &qword_1EAE3DFB8, &unk_19396A2A0);
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_1934354B4(*(a1 + v49));
  *(a1 + v49) = 0xF000000000000007;
  sub_19344E6DC(a1 + v50, &qword_1EAE3DFC0, &qword_193969370);
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_19344E6DC(a1 + v16, &qword_1EAE3DFC8, &unk_19396A2B0);
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(0);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
}

BOOL static IntelligenceFlowSearchToolTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v161 = a2;
  v162 = a1;
  v142[5] = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFC8, &unk_19396A2B0);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v6);
  v142[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E010, &qword_1939696D8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  v144 = v8;
  v9 = OUTLINED_FUNCTION_22_2();
  v146 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFC0, &qword_193969370);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v14);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E018, &qword_1939696E0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v147 = v16;
  v17 = OUTLINED_FUNCTION_22_2();
  v151 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v17);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_289();
  v145 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFB8, &unk_19396A2A0);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  v148 = v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E020, &qword_1939696E8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53_1();
  v150 = v24;
  v25 = OUTLINED_FUNCTION_22_2();
  v157 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation(v25);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_289();
  v152 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFB0, &qword_193969368);
  OUTLINED_FUNCTION_47(v28);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_53_1();
  v153 = v30;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E028, &qword_1939696F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_53_1();
  v156 = v32;
  v33 = OUTLINED_FUNCTION_22_2();
  v159 = type metadata accessor for MonotonicTimestamp(v33);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_289();
  v154 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v36);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_53_1();
  v158 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v142 - v41;
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_1();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFA8, &qword_193969360);
  OUTLINED_FUNCTION_47(v44);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E030, &qword_1939696F8) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v142 - v48;
  v160 = type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
  v50 = *(v46 + 56);
  sub_193448850();
  v51 = v161;
  sub_193448850();
  OUTLINED_FUNCTION_31(v49);
  if (v52)
  {
    OUTLINED_FUNCTION_31(&v49[v50]);
    if (v52)
    {
      sub_19344E6DC(v49, &qword_1EAE3DFA8, &qword_193969360);
      goto LABEL_12;
    }

LABEL_9:
    v53 = &qword_1EAE3E030;
    v54 = &qword_1939696F8;
LABEL_10:
    v55 = v49;
LABEL_21:
    sub_19344E6DC(v55, v53, v54);
    return 0;
  }

  sub_193448850();
  OUTLINED_FUNCTION_31(&v49[v50]);
  if (v52)
  {
    OUTLINED_FUNCTION_51_13();
    sub_1935B87AC();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_49_12();
  sub_1935B2E10();
  OUTLINED_FUNCTION_48_12();
  sub_1935B8854(v56, v57, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata);
  v58 = sub_19393C550();
  sub_1935B87AC();
  sub_1935B87AC();
  sub_19344E6DC(v49, &qword_1EAE3DFA8, &qword_193969360);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v59 = v160;
  v60 = *(v39 + 48);
  v61 = v162;
  sub_193448850();
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v42, 1, v159);
  if (v52)
  {
    OUTLINED_FUNCTION_31(&v42[v60]);
    if (v52)
    {
      sub_19344E6DC(v42, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_25;
    }

LABEL_20:
    v53 = &qword_1EAE3B958;
    v54 = &qword_193957B50;
    v55 = v42;
    goto LABEL_21;
  }

  sub_193448850();
  OUTLINED_FUNCTION_31(&v42[v60]);
  if (v62)
  {
    OUTLINED_FUNCTION_60_11();
    sub_1935B87AC();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_59_12();
  sub_1935B2E10();
  OUTLINED_FUNCTION_58_13();
  sub_1935B8854(v64, v65, &protocol conformance descriptor for MonotonicTimestamp);
  v66 = sub_19393C550();
  sub_1935B87AC();
  OUTLINED_FUNCTION_215();
  sub_1935B87AC();
  sub_19344E6DC(v42, &qword_1EAE3B498, &unk_193959120);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v67 = *(v59 + 36);
  v68 = v156;
  v69 = *(v155 + 48);
  v70 = &qword_1EAE3DFB0;
  OUTLINED_FUNCTION_95_10(v61 + v67);
  v71 = v51 + v67;
  v49 = v68;
  OUTLINED_FUNCTION_92_8(v71);
  v72 = OUTLINED_FUNCTION_132();
  v73 = v157;
  OUTLINED_FUNCTION_6_3(v72, v74, v157);
  if (v52)
  {
    OUTLINED_FUNCTION_31(v68 + v69);
    if (v52)
    {
      sub_19344E6DC(v68, &qword_1EAE3DFB0, &qword_193969368);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_193448850();
  OUTLINED_FUNCTION_31(v68 + v69);
  if (v75)
  {
    OUTLINED_FUNCTION_62_15();
LABEL_33:
    v53 = &qword_1EAE3E028;
    v54 = &qword_1939696F0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_57_9();
  sub_1935B2E10();
  OUTLINED_FUNCTION_56_10();
  sub_1935B8854(v76, v77, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation);
  OUTLINED_FUNCTION_34_7();
  v70 = sub_19393C550();
  v73 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation;
  sub_1935B87AC();
  OUTLINED_FUNCTION_215();
  sub_1935B87AC();
  sub_19344E6DC(v68, &qword_1EAE3DFB0, &qword_193969368);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  OUTLINED_FUNCTION_13_17();
  if (v52)
  {
    v79 = v78 & ~v73;
    OUTLINED_FUNCTION_40_12();
    if (v79)
    {
      goto LABEL_66;
    }

    sub_1934354B4(v70);
  }

  else
  {
    OUTLINED_FUNCTION_89_1();
    if (v80)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_21_3();
    v81 = sub_1935B2DBC();
    OUTLINED_FUNCTION_71_1(v81, v82, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext, v81);
    OUTLINED_FUNCTION_69_11();
    OUTLINED_FUNCTION_108_4();
    sub_1934354B4(v70);
    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_13_17();
  if (v52)
  {
    v84 = v83 & ~v73;
    OUTLINED_FUNCTION_40_12();
    if (v84)
    {
      goto LABEL_66;
    }

    sub_1934354B4(v70);
  }

  else
  {
    OUTLINED_FUNCTION_89_1();
    if (v85)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_21_3();
    v86 = sub_1935B2D68();
    OUTLINED_FUNCTION_71_1(v86, v87, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext, v86);
    OUTLINED_FUNCTION_69_11();
    OUTLINED_FUNCTION_108_4();
    sub_1934354B4(v70);
    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_13_17();
  if (v52)
  {
    v89 = v88 & ~v73;
    OUTLINED_FUNCTION_40_12();
    if (v89)
    {
      goto LABEL_66;
    }

    sub_1934354B4(v70);
  }

  else
  {
    OUTLINED_FUNCTION_89_1();
    if (v90)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_21_3();
    v91 = sub_1935B2D14();
    OUTLINED_FUNCTION_71_1(v91, v92, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext, v91);
    OUTLINED_FUNCTION_69_11();
    OUTLINED_FUNCTION_108_4();
    sub_1934354B4(v70);
    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_13_17();
  if (v52)
  {
    v94 = v93 & ~v73;
    OUTLINED_FUNCTION_40_12();
    if (v94)
    {
      goto LABEL_66;
    }

    sub_1934354B4(v70);
  }

  else
  {
    OUTLINED_FUNCTION_89_1();
    if (v95)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_21_3();
    v96 = sub_1935B2CC0();
    OUTLINED_FUNCTION_71_1(v96, v97, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext, v96);
    OUTLINED_FUNCTION_69_11();
    OUTLINED_FUNCTION_108_4();
    sub_1934354B4(v70);
    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_13_17();
  if (v52)
  {
    v99 = v98 & ~v73;
    OUTLINED_FUNCTION_40_12();
    if (v99)
    {
      goto LABEL_66;
    }

    sub_1934354B4(v70);
  }

  else
  {
    OUTLINED_FUNCTION_89_1();
    if (v100)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_21_3();
    v101 = sub_1935B2C6C();
    OUTLINED_FUNCTION_71_1(v101, v102, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext, v101);
    OUTLINED_FUNCTION_69_11();
    OUTLINED_FUNCTION_108_4();
    sub_1934354B4(v70);
    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  v103 = *(v59 + 60);
  v104 = v150;
  v105 = *(v149 + 48);
  v70 = &qword_1EAE3DFB8;
  OUTLINED_FUNCTION_95_10(v61 + v103);
  v106 = v51 + v103;
  v49 = v104;
  OUTLINED_FUNCTION_92_8(v106);
  v107 = OUTLINED_FUNCTION_132();
  v73 = v151;
  OUTLINED_FUNCTION_6_3(v107, v108, v151);
  if (v52)
  {
    OUTLINED_FUNCTION_31(v104 + v105);
    if (v52)
    {
      sub_19344E6DC(v104, &qword_1EAE3DFB8, &unk_19396A2A0);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  sub_193448850();
  OUTLINED_FUNCTION_31(v104 + v105);
  if (v109)
  {
    OUTLINED_FUNCTION_61_12();
LABEL_76:
    v53 = &qword_1EAE3E020;
    v54 = &qword_1939696E8;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_55_10();
  sub_1935B2E10();
  OUTLINED_FUNCTION_54_11();
  sub_1935B8854(v110, v111, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1);
  OUTLINED_FUNCTION_34_7();
  v70 = sub_19393C550();
  v73 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1;
  sub_1935B87AC();
  OUTLINED_FUNCTION_215();
  sub_1935B87AC();
  sub_19344E6DC(v104, &qword_1EAE3DFB8, &unk_19396A2A0);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_78:
  OUTLINED_FUNCTION_13_17();
  if (v52)
  {
    v113 = v112 & ~v73;
    OUTLINED_FUNCTION_40_12();
    if (!v113)
    {
      sub_1934354B4(v70);
      goto LABEL_84;
    }

LABEL_66:
    sub_1934354B4(v70);
    sub_1934354B4(v73);
    return 0;
  }

  OUTLINED_FUNCTION_89_1();
  if (v114)
  {
LABEL_65:
    OUTLINED_FUNCTION_40_12();
    sub_193438388(v70);

    goto LABEL_66;
  }

  OUTLINED_FUNCTION_21_3();
  v115 = sub_1935B2C18();
  OUTLINED_FUNCTION_71_1(v115, v116, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationContext, v115);
  OUTLINED_FUNCTION_69_11();
  OUTLINED_FUNCTION_108_4();
  sub_1934354B4(v70);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_84:
  v117 = *(v160 + 68);
  v118 = *(v143 + 48);
  OUTLINED_FUNCTION_95_10(v162 + v117);
  OUTLINED_FUNCTION_92_8(v51 + v117);
  v119 = OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_6_3(v119, v120, v146);
  if (v52)
  {
    OUTLINED_FUNCTION_6_3(v147 + v118, 1, v146);
    if (v52)
    {
      sub_19344E6DC(v147, &qword_1EAE3DFC0, &qword_193969370);
      goto LABEL_94;
    }

    goto LABEL_92;
  }

  v121 = v147;
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v121 + v118, 1, v146);
  if (v122)
  {
    OUTLINED_FUNCTION_53_15();
    sub_1935B87AC();
LABEL_92:
    v53 = &qword_1EAE3E018;
    v54 = &qword_1939696E0;
    v55 = v147;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_52_12();
  v123 = v147;
  sub_1935B2E10();
  OUTLINED_FUNCTION_50_10();
  sub_1935B8854(v124, v125, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1);
  OUTLINED_FUNCTION_34_7();
  v126 = sub_19393C550();
  sub_1935B87AC();
  OUTLINED_FUNCTION_215();
  sub_1935B87AC();
  sub_19344E6DC(v123, &qword_1EAE3DFC0, &qword_193969370);
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_94:
  v127 = *(v160 + 72);
  OUTLINED_FUNCTION_95_10(v162 + v127);
  OUTLINED_FUNCTION_92_8(v51 + v127);
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_130_6();
  OUTLINED_FUNCTION_6_3(v128, v129, v130);
  if (v52)
  {
    OUTLINED_FUNCTION_130_6();
    OUTLINED_FUNCTION_6_3(v131, v132, v133);
    if (v52)
    {
      sub_19344E6DC(v144, &qword_1EAE3DFC8, &unk_19396A2B0);
      return 1;
    }

    goto LABEL_102;
  }

  sub_193448850();
  OUTLINED_FUNCTION_130_6();
  OUTLINED_FUNCTION_6_3(v134, v135, v136);
  if (v137)
  {
    OUTLINED_FUNCTION_47_16();
    sub_1935B87AC();
LABEL_102:
    v53 = &qword_1EAE3E010;
    v54 = &qword_1939696D8;
    v55 = v144;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_46_17();
  v138 = v144;
  sub_1935B2E10();
  OUTLINED_FUNCTION_45_16();
  sub_1935B8854(v139, v140, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext);
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_130_6();
  v141 = sub_19393C550();
  sub_1935B87AC();
  OUTLINED_FUNCTION_215();
  sub_1935B87AC();
  sub_19344E6DC(v138, &qword_1EAE3DFC8, &unk_19396A2B0);
  return (v141 & 1) != 0;
}

unint64_t sub_1935B2C18()
{
  result = qword_1EAE3E048;
  if (!qword_1EAE3E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E048);
  }

  return result;
}

unint64_t sub_1935B2C6C()
{
  result = qword_1EAE3E058;
  if (!qword_1EAE3E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E058);
  }

  return result;
}

unint64_t sub_1935B2CC0()
{
  result = qword_1EAE3E060;
  if (!qword_1EAE3E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E060);
  }

  return result;
}

unint64_t sub_1935B2D14()
{
  result = qword_1EAE3E068;
  if (!qword_1EAE3E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E068);
  }

  return result;
}

unint64_t sub_1935B2D68()
{
  result = qword_1EAE3E070;
  if (!qword_1EAE3E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E070);
  }

  return result;
}

unint64_t sub_1935B2DBC()
{
  result = qword_1EAE3E078;
  if (!qword_1EAE3E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E078);
  }

  return result;
}

uint64_t sub_1935B2E10()
{
  OUTLINED_FUNCTION_91_0();
  v2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t IntelligenceFlowSearchToolTelemetry.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v79 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext(v0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_289();
  v70[5] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFC8, &unk_19396A2B0);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_53_1();
  v78 = v5;
  v6 = OUTLINED_FUNCTION_22_2();
  v77 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_289();
  v70[4] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFC0, &qword_193969370);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v76 = v11;
  v12 = OUTLINED_FUNCTION_22_2();
  v75 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1(v12);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_289();
  v70[3] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFB8, &unk_19396A2A0);
  OUTLINED_FUNCTION_47(v15);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  v74 = v17;
  v18 = OUTLINED_FUNCTION_22_2();
  v73 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation(v18);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_289();
  v70[2] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DFB0, &qword_193969368);
  OUTLINED_FUNCTION_47(v21);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_53_1();
  v72 = v23;
  v24 = OUTLINED_FUNCTION_22_2();
  v71 = type metadata accessor for MonotonicTimestamp(v24);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_289();
  v70[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v70 - v29;
  v31 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_1();
  v33 = OUTLINED_FUNCTION_34_7();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  OUTLINED_FUNCTION_47(v35);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v70 - v37;
  type metadata accessor for IntelligenceFlowSearchToolTelemetry(0);
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v38, 1, v31);
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_49_12();
    sub_1935B2E10();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_48_12();
    sub_1935B8854(v40, v41, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_51_13();
    sub_1935B87AC();
  }

  sub_193448850();
  OUTLINED_FUNCTION_6_3(v30, 1, v71);
  v42 = v73;
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_59_12();
    sub_1935B2E10();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_58_13();
    sub_1935B8854(v43, v44, &protocol conformance descriptor for MonotonicTimestamp);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_60_11();
    sub_1935B87AC();
  }

  sub_193448850();
  v45 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v45, v46, v42);
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_9();
    sub_1935B2E10();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_56_10();
    sub_1935B8854(v47, v48, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_62_15();
  }

  OUTLINED_FUNCTION_32_18();
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
    sub_1935B3640();
    v49 = OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_66_1(v49, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext);
    OUTLINED_FUNCTION_107_8();
  }

  OUTLINED_FUNCTION_32_18();
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
    sub_1935B3694();
    v50 = OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_66_1(v50, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext);
    OUTLINED_FUNCTION_107_8();
  }

  OUTLINED_FUNCTION_32_18();
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
    sub_1935B36E8();
    v51 = OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_66_1(v51, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext);
    OUTLINED_FUNCTION_107_8();
  }

  OUTLINED_FUNCTION_32_18();
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
    sub_1935B373C();
    v52 = OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_66_1(v52, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext);
    OUTLINED_FUNCTION_107_8();
  }

  OUTLINED_FUNCTION_32_18();
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
    sub_1935B3790();
    v53 = OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_66_1(v53, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext);
    OUTLINED_FUNCTION_107_8();
  }

  v54 = v75;
  sub_193448850();
  v55 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v55, v56, v54);
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_55_10();
    sub_1935B2E10();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_54_11();
    sub_1935B8854(v57, v58, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_61_12();
  }

  OUTLINED_FUNCTION_32_18();
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
    sub_1935B37E4();
    v59 = OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_66_1(v59, &type metadata for IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationContext);
    OUTLINED_FUNCTION_107_8();
  }

  v60 = v79;
  sub_193448850();
  v61 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v61, v62, v77);
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_52_12();
    sub_1935B2E10();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_50_10();
    sub_1935B8854(v63, v64, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_53_15();
    sub_1935B87AC();
  }

  sub_193448850();
  v65 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v65, v66, v60);
  if (v39)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_46_17();
  sub_1935B2E10();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_45_16();
  sub_1935B8854(v67, v68, &protocol conformance descriptor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext);
  OUTLINED_FUNCTION_21_1();
  sub_19393C540();
  OUTLINED_FUNCTION_47_16();
  return sub_1935B87AC();
}

unint64_t sub_1935B3640()
{
  result = qword_1EAE3E0A0;
  if (!qword_1EAE3E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E0A0);
  }

  return result;
}

unint64_t sub_1935B3694()
{
  result = qword_1EAE3E0A8;
  if (!qword_1EAE3E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E0A8);
  }

  return result;
}

unint64_t sub_1935B36E8()
{
  result = qword_1EAE3E0B0;
  if (!qword_1EAE3E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E0B0);
  }

  return result;
}

unint64_t sub_1935B373C()
{
  result = qword_1EAE3E0B8;
  if (!qword_1EAE3E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E0B8);
  }

  return result;
}

unint64_t sub_1935B3790()
{
  result = qword_1EAE3E0C0;
  if (!qword_1EAE3E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E0C0);
  }

  return result;
}

unint64_t sub_1935B37E4()
{
  result = qword_1EAE3E0D0;
  if (!qword_1EAE3E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3E0D0);
  }

  return result;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailureReason.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6867696C746F7053;
  if (*v0 != 1)
  {
    v1 = 0x7953726577736E41;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x55514D4C4CLL;
  }
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailureReason.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x55514D4C4CLL && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_15_14(0x55514D4C4CLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_83_15();
      v9 = v4 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, 0xE900000000000074) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x7953726577736E41 && v0 == 0xEF7369736568746ELL)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x7953726577736E41, 0xEF7369736568746ELL);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUFailureReason.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t sub_1935B3A2C()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_105_1();
  if (!(!v11 & v10))
  {
    OUTLINED_FUNCTION_33_5((v9 > 1), v6, v7, v8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v8 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v17 < v1 + 2)
  {
    OUTLINED_FUNCTION_39_2((v16 > 1), v13, v14, v15);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_100_7(v12, v13, v14, v15);
  OUTLINED_FUNCTION_176_0();
  if (v23 != v24)
  {
    v18 = OUTLINED_FUNCTION_33_5((v22 > 1), v19, v20, v21);
    v21 = v18;
  }

  OUTLINED_FUNCTION_126_5(v18, v19, v20, v21);
  v28 = *(v27 + 3);
  if (v1 + 4 > (v28 >> 1))
  {
    v27 = OUTLINED_FUNCTION_39_2((v28 > 1), v25, v26, v27);
  }

  *(v27 + 2) = v1 + 4;
  return OUTLINED_FUNCTION_38_1(v27, &v27[16 * v0]);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUFailureReason.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6F6365446E6F734ALL;
  if (*v0 != 1)
  {
    v1 = 0x74756F656D6954;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUFailureReason.init(_:)()
{
  v1 = OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7(v1) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    v6 = v3 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v5) & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_74_11();
      v9 = v3 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_97_2();
        if (v3 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_22_7(v10);
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t sub_1935B3C98()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_105_1();
  if (!(!v11 & v10))
  {
    OUTLINED_FUNCTION_33_5((v9 > 1), v6, v7, v8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v8 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v17 < v1 + 2)
  {
    OUTLINED_FUNCTION_39_2((v16 > 1), v13, v14, v15);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_100_7(v12, v13, v14, v15);
  OUTLINED_FUNCTION_176_0();
  if (v23 != v24)
  {
    v18 = OUTLINED_FUNCTION_33_5((v22 > 1), v19, v20, v21);
    v21 = v18;
  }

  OUTLINED_FUNCTION_126_5(v18, v19, v20, v21);
  return v25;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolDisambiguationFailureReason.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x6F6365446E6F734ALL;
  }

  return 0x6B726F7774654ELL;
}

void sub_1935B3DB4()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6B726F7774654ELL && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x6B726F7774654ELL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_74_11();
      if (v4 && v0 == v8)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_0_9(v7, v8);
        OUTLINED_FUNCTION_89();
        v5 = v1 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightFailureReason.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightFailureReason.rawValue.getter()
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightFailureReason.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0xD000000000000012;
  }

  return 0x74756F656D6954;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightFailureReason.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_97_2();
    v7 = v4 && v0 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_22_7(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_65_0();
      if (v4 && v8 == v0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0xD000000000000012, v8);
        OUTLINED_FUNCTION_89();
        v5 = v1 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6867696C746F7053;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x726577736E41;
      break;
    case 3:
      result = 0x6C61626F6C47;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_83_15();
    v8 = v4 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, 0xE900000000000074) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_65_0();
      v10 = v4 && v9 == v0;
      if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, v9) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v11 = v1 == 0x726577736E41 && v0 == 0xE600000000000000;
        if (v11 || (OUTLINED_FUNCTION_0_9(0x726577736E41, 0xE600000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6C61626F6C47 && v0 == 0xE600000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_0_9(0x6C61626F6C47, 0xE600000000000000);
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6369746E616D6553;
  }

  return 1635018061;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightSearchRetrievalType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1635018061 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_19_8(1635018061) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x6369746E616D6553 && v0 == 0xE800000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_29_2(0x6369746E616D6553);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
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
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t sub_1935B4360()
{
  OUTLINED_FUNCTION_91_0();
  v3 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_63_2();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v18 < v2 + 2)
  {
    OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_100_7(v13, v14, v15, v16);
  OUTLINED_FUNCTION_175_3();
  if (v24 != v25)
  {
    v19 = OUTLINED_FUNCTION_88_0((v23 > 1), v1, 1, v22);
    v22 = v19;
  }

  OUTLINED_FUNCTION_45_0(v19, v20, v21, v22);
  if (!(v24 ^ v25 | v12))
  {
    v26 = OUTLINED_FUNCTION_33_5((v30 > 1), v27, v28, v29);
    v29 = v26;
  }

  OUTLINED_FUNCTION_32(v26, v27, v28, v29);
  if (!(v24 ^ v25 | v12))
  {
    v31 = OUTLINED_FUNCTION_39_2((v35 > 1), v32, v33, v34);
    v34 = v31;
  }

  OUTLINED_FUNCTION_62_8(v31, v32, v33, v34);
  return v36;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6C65746F48;
  switch(*v0)
  {
    case 1:
      result = 0x6172756174736552;
      break;
    case 2:
      result = 0x746867696C46;
      break;
    case 3:
      result = 0x746E657645;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelEventType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_121_5(1702129480);
    v7 = v4 && v0 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_15_14(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 0x6172756174736552 && v0 == 0xEA0000000000746ELL;
      if (v8 || (OUTLINED_FUNCTION_0_9(0x6172756174736552, 0xEA0000000000746ELL) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x746867696C46 && v0 == 0xE600000000000000;
        if (v9 || (OUTLINED_FUNCTION_0_9(0x746867696C46, 0xE600000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x746E657645 && v0 == 0xE500000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_15_14(0x746E657645);
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 1954047310;
  if (*v0 != 1)
  {
    v1 = 0x7473726946;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953718604;
  }
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelSortOrder.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1953718604 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_19_8(1953718604) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 1954047310 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_19_8(1954047310) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x7473726946 && v0 == 0xE500000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_15_14(0x7473726946);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType.allCases.getter()
{
  v2 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_16_0();
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v118, v119, v120, v121, v122, v123);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v124 = OUTLINED_FUNCTION_39(v19);
    OUTLINED_FUNCTION_85(v124, v125, v126, v127, &qword_1EAE3E258, &qword_193969DD8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    v128 = OUTLINED_FUNCTION_39(v26);
    v22 = sub_1934B0FCC(v128, v0, 1, v129, &qword_1EAE3E258, &qword_193969DD8);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v31);
    OUTLINED_FUNCTION_31_17();
    v27 = sub_1934B0FCC(v130, v131, v132, v133, v134, v135);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v136 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v136, v137, v138, v139, &qword_1EAE3E258, &qword_193969DD8);
    v35 = v32;
  }

  OUTLINED_FUNCTION_47_5(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37);
  if (v1 + 6 > (v42 >> 1))
  {
    OUTLINED_FUNCTION_39(v42);
    OUTLINED_FUNCTION_31_17();
    v38 = sub_1934B0FCC(v140, v141, v142, v143, v144, v145);
    v41 = v38;
  }

  OUTLINED_FUNCTION_50(v38, v39, v40, v41);
  OUTLINED_FUNCTION_4(v43);
  if (v1 + 7 > (v48 >> 1))
  {
    v146 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v146, v147, v148, v149, &qword_1EAE3E258, &qword_193969DD8);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49);
  if (v1 + 8 > (v54 >> 1))
  {
    OUTLINED_FUNCTION_39(v54);
    OUTLINED_FUNCTION_31_17();
    v50 = sub_1934B0FCC(v150, v151, v152, v153, v154, v155);
    v53 = v50;
  }

  OUTLINED_FUNCTION_50(v50, v51, v52, v53);
  OUTLINED_FUNCTION_4(v55);
  if (v1 + 9 > (v60 >> 1))
  {
    v156 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_85(v156, v157, v158, v159, &qword_1EAE3E258, &qword_193969DD8);
    v59 = v56;
  }

  OUTLINED_FUNCTION_47_5(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61);
  if (v1 + 10 > (v66 >> 1))
  {
    OUTLINED_FUNCTION_39(v66);
    OUTLINED_FUNCTION_31_17();
    v62 = sub_1934B0FCC(v160, v161, v162, v163, v164, v165);
    v65 = v62;
  }

  OUTLINED_FUNCTION_50(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67);
  if (v1 + 11 > (v72 >> 1))
  {
    v166 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_85(v166, v167, v168, v169, &qword_1EAE3E258, &qword_193969DD8);
    v71 = v68;
  }

  OUTLINED_FUNCTION_47_5(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73);
  if (v1 + 12 > (v78 >> 1))
  {
    OUTLINED_FUNCTION_39(v78);
    OUTLINED_FUNCTION_31_17();
    v74 = sub_1934B0FCC(v170, v171, v172, v173, v174, v175);
    v77 = v74;
  }

  OUTLINED_FUNCTION_50(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79);
  if (v1 + 13 > (v84 >> 1))
  {
    v176 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v176, v177, v178, v179, &qword_1EAE3E258, &qword_193969DD8);
    v83 = v80;
  }

  OUTLINED_FUNCTION_47_5(v80, v81, v82, v83);
  OUTLINED_FUNCTION_4(v85);
  if (v1 + 14 > (v90 >> 1))
  {
    OUTLINED_FUNCTION_39(v90);
    OUTLINED_FUNCTION_31_17();
    v86 = sub_1934B0FCC(v180, v181, v182, v183, v184, v185);
    v89 = v86;
  }

  OUTLINED_FUNCTION_50(v86, v87, v88, v89);
  OUTLINED_FUNCTION_4(v91);
  if (v1 + 15 > (v96 >> 1))
  {
    v186 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_85(v186, v187, v188, v189, &qword_1EAE3E258, &qword_193969DD8);
    v95 = v92;
  }

  OUTLINED_FUNCTION_47_5(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97);
  if (v1 + 16 > (v102 >> 1))
  {
    OUTLINED_FUNCTION_39(v102);
    OUTLINED_FUNCTION_31_17();
    v98 = sub_1934B0FCC(v190, v191, v192, v193, v194, v195);
    v101 = v98;
  }

  OUTLINED_FUNCTION_50(v98, v99, v100, v101);
  OUTLINED_FUNCTION_4(v103);
  if (v1 + 17 > (v108 >> 1))
  {
    v196 = OUTLINED_FUNCTION_39(v108);
    v104 = OUTLINED_FUNCTION_85(v196, v197, v198, v199, &qword_1EAE3E258, &qword_193969DD8);
    v107 = v104;
  }

  OUTLINED_FUNCTION_47_5(v104, v105, v106, v107);
  OUTLINED_FUNCTION_4(v109);
  if (v1 + 18 > (v114 >> 1))
  {
    OUTLINED_FUNCTION_39(v114);
    OUTLINED_FUNCTION_31_17();
    v110 = sub_1934B0FCC(v200, v201, v202, v203, v204, v205);
    v113 = v110;
  }

  OUTLINED_FUNCTION_50(v110, v111, v112, v113);
  return OUTLINED_FUNCTION_38_1(v115, v116);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1818845517;
  switch(*v0)
  {
    case 1:
      result = 0x7261646E656C6143;
      break;
    case 2:
      result = OUTLINED_FUNCTION_88_12();
      break;
    case 3:
      result = 0x626C416F746F6850;
      break;
    case 4:
      result = 0x79726F6D654DLL;
      break;
    case 5:
      result = OUTLINED_FUNCTION_106_11();
      break;
    case 6:
      result = 0x646C6F4665746F4ELL;
      break;
    case 7:
      v2 = 0x67617373654DLL;
      goto LABEL_14;
    case 8:
      result = OUTLINED_FUNCTION_112_10();
      break;
    case 9:
    case 0xALL:
      result = 0x7265646E696D6552;
      break;
    case 0xBLL:
      result = OUTLINED_FUNCTION_105_11();
      break;
    case 0xCLL:
      v2 = 0x746F6E79654BLL;
LABEL_14:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 0xDLL:
      result = 0x6C69467365676150;
      break;
    case 0xELL:
      result = OUTLINED_FUNCTION_114_7();
      break;
    case 0xFLL:
      result = OUTLINED_FUNCTION_64_10();
      break;
    case 0x10:
      result = 0x6F65646956;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1818845517 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_19_8(1818845517) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_103_8();
      v9 = v4 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_122_6();
        v11 = v4 && v0 == 0xE500000000000000;
        if (v11 || (OUTLINED_FUNCTION_15_14(v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = v1 == 0x626C416F746F6850 && v0 == 0xEA00000000006D75;
          if (v12 || (OUTLINED_FUNCTION_0_9(0x626C416F746F6850, 0xEA00000000006D75) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = v1 == 0x79726F6D654DLL && v0 == 0xE600000000000000;
            if (v13 || (OUTLINED_FUNCTION_0_9(0x79726F6D654DLL, 0xE600000000000000) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v14 = v1 == 1702129486 && v0 == 0xE400000000000000;
              if (v14 || (OUTLINED_FUNCTION_19_8(1702129486) & 1) != 0)
              {

                v5 = 5;
              }

              else
              {
                v15 = v1 == 0x646C6F4665746F4ELL && v0 == 0xEA00000000007265;
                if (v15 || (OUTLINED_FUNCTION_0_9(0x646C6F4665746F4ELL, 0xEA00000000007265) & 1) != 0)
                {

                  v5 = 6;
                }

                else
                {
                  v16 = v1 == 0x6567617373654DLL && v0 == 0xE700000000000000;
                  if (v16 || (OUTLINED_FUNCTION_22_7(0x6567617373654DLL) & 1) != 0)
                  {

                    v5 = 7;
                  }

                  else
                  {
                    v17 = OUTLINED_FUNCTION_112_10();
                    v19 = v1 == v17 && v0 == v18;
                    if (v19 || (OUTLINED_FUNCTION_0_9(v17, v18) & 1) != 0)
                    {

                      v5 = 8;
                    }

                    else
                    {
                      v20 = v1 == 0x7265646E696D6552 && v0 == 0xE800000000000000;
                      if (v20 || (OUTLINED_FUNCTION_29_2(0x7265646E696D6552) & 1) != 0)
                      {

                        v5 = 9;
                      }

                      else
                      {
                        v21 = v1 == 0x7265646E696D6552 && v0 == 0xEC0000007473694CLL;
                        if (v21 || (OUTLINED_FUNCTION_0_9(0x7265646E696D6552, 0xEC0000007473694CLL) & 1) != 0)
                        {

                          v5 = 10;
                        }

                        else
                        {
                          v22 = OUTLINED_FUNCTION_105_11();
                          v24 = v1 == v22 && v0 == v23;
                          if (v24 || (OUTLINED_FUNCTION_0_9(v22, v23) & 1) != 0)
                          {

                            v5 = 11;
                          }

                          else
                          {
                            v25 = v1 == 0x65746F6E79654BLL && v0 == 0xE700000000000000;
                            if (v25 || (OUTLINED_FUNCTION_22_7(0x65746F6E79654BLL) & 1) != 0)
                            {

                              v5 = 12;
                            }

                            else
                            {
                              v26 = v1 == 0x6C69467365676150 && v0 == 0xE900000000000065;
                              if (v26 || (OUTLINED_FUNCTION_0_9(0x6C69467365676150, 0xE900000000000065) & 1) != 0)
                              {

                                v5 = 13;
                              }

                              else
                              {
                                v27 = OUTLINED_FUNCTION_114_7();
                                v29 = v1 == v27 && v0 == v28;
                                if (v29 || (OUTLINED_FUNCTION_0_9(v27, v28) & 1) != 0)
                                {

                                  v5 = 14;
                                }

                                else
                                {
                                  v30 = OUTLINED_FUNCTION_100_12();
                                  v31 = v4 && v0 == 0xE700000000000000;
                                  if (v31 || (OUTLINED_FUNCTION_22_7(v30) & 1) != 0)
                                  {

                                    v5 = 15;
                                  }

                                  else if (v1 == 0x6F65646956 && v0 == 0xE500000000000000)
                                  {

                                    v5 = 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_15_14(0x6F65646956);
                                    OUTLINED_FUNCTION_89();
                                    v5 = 16;
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
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
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
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus.allCases.getter()
{
  v2 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_16_0();
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v166, v167, v168, v169, v170, v171);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v172 = OUTLINED_FUNCTION_39(v19);
    OUTLINED_FUNCTION_85(v172, v173, v174, v175, &qword_1EAE3E250, &qword_193969DD0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    v176 = OUTLINED_FUNCTION_39(v26);
    v22 = sub_1934B0FCC(v176, v0, 1, v177, &qword_1EAE3E250, &qword_193969DD0);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v31);
    OUTLINED_FUNCTION_31_17();
    v27 = sub_1934B0FCC(v178, v179, v180, v181, v182, v183);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v184 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v184, v185, v186, v187, &qword_1EAE3E250, &qword_193969DD0);
    v35 = v32;
  }

  OUTLINED_FUNCTION_47_5(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37);
  if (v1 + 6 > (v42 >> 1))
  {
    OUTLINED_FUNCTION_39(v42);
    OUTLINED_FUNCTION_31_17();
    v38 = sub_1934B0FCC(v188, v189, v190, v191, v192, v193);
    v41 = v38;
  }

  OUTLINED_FUNCTION_50(v38, v39, v40, v41);
  OUTLINED_FUNCTION_4(v43);
  if (v1 + 7 > (v48 >> 1))
  {
    v194 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v194, v195, v196, v197, &qword_1EAE3E250, &qword_193969DD0);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49);
  if (v1 + 8 > (v54 >> 1))
  {
    OUTLINED_FUNCTION_39(v54);
    OUTLINED_FUNCTION_31_17();
    v50 = sub_1934B0FCC(v198, v199, v200, v201, v202, v203);
    v53 = v50;
  }

  OUTLINED_FUNCTION_50(v50, v51, v52, v53);
  OUTLINED_FUNCTION_4(v55);
  if (v1 + 9 > (v60 >> 1))
  {
    v204 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_85(v204, v205, v206, v207, &qword_1EAE3E250, &qword_193969DD0);
    v59 = v56;
  }

  OUTLINED_FUNCTION_47_5(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61);
  if (v1 + 10 > (v66 >> 1))
  {
    OUTLINED_FUNCTION_39(v66);
    OUTLINED_FUNCTION_31_17();
    v62 = sub_1934B0FCC(v208, v209, v210, v211, v212, v213);
    v65 = v62;
  }

  OUTLINED_FUNCTION_50(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67);
  if (v1 + 11 > (v72 >> 1))
  {
    v214 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_85(v214, v215, v216, v217, &qword_1EAE3E250, &qword_193969DD0);
    v71 = v68;
  }

  OUTLINED_FUNCTION_47_5(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73);
  if (v1 + 12 > (v78 >> 1))
  {
    OUTLINED_FUNCTION_39(v78);
    OUTLINED_FUNCTION_31_17();
    v74 = sub_1934B0FCC(v218, v219, v220, v221, v222, v223);
    v77 = v74;
  }

  OUTLINED_FUNCTION_50(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79);
  if (v1 + 13 > (v84 >> 1))
  {
    v224 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v224, v225, v226, v227, &qword_1EAE3E250, &qword_193969DD0);
    v83 = v80;
  }

  OUTLINED_FUNCTION_47_5(v80, v81, v82, v83);
  OUTLINED_FUNCTION_4(v85);
  if (v1 + 14 > (v90 >> 1))
  {
    OUTLINED_FUNCTION_39(v90);
    OUTLINED_FUNCTION_31_17();
    v86 = sub_1934B0FCC(v228, v229, v230, v231, v232, v233);
    v89 = v86;
  }

  OUTLINED_FUNCTION_50(v86, v87, v88, v89);
  OUTLINED_FUNCTION_4(v91);
  if (v1 + 15 > (v96 >> 1))
  {
    v234 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_85(v234, v235, v236, v237, &qword_1EAE3E250, &qword_193969DD0);
    v95 = v92;
  }

  OUTLINED_FUNCTION_47_5(v92, v93, v94, v95);
  OUTLINED_FUNCTION_4(v97);
  if (v1 + 16 > (v102 >> 1))
  {
    OUTLINED_FUNCTION_39(v102);
    OUTLINED_FUNCTION_31_17();
    v98 = sub_1934B0FCC(v238, v239, v240, v241, v242, v243);
    v101 = v98;
  }

  OUTLINED_FUNCTION_50(v98, v99, v100, v101);
  OUTLINED_FUNCTION_4(v103);
  if (v1 + 17 > (v108 >> 1))
  {
    v244 = OUTLINED_FUNCTION_39(v108);
    v104 = OUTLINED_FUNCTION_85(v244, v245, v246, v247, &qword_1EAE3E250, &qword_193969DD0);
    v107 = v104;
  }

  OUTLINED_FUNCTION_47_5(v104, v105, v106, v107);
  OUTLINED_FUNCTION_4(v109);
  if (v1 + 18 > (v114 >> 1))
  {
    OUTLINED_FUNCTION_39(v114);
    OUTLINED_FUNCTION_31_17();
    v110 = sub_1934B0FCC(v248, v249, v250, v251, v252, v253);
    v113 = v110;
  }

  OUTLINED_FUNCTION_50(v110, v111, v112, v113);
  OUTLINED_FUNCTION_4(v115);
  if (v1 + 19 > (v120 >> 1))
  {
    v254 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_85(v254, v255, v256, v257, &qword_1EAE3E250, &qword_193969DD0);
    v119 = v116;
  }

  OUTLINED_FUNCTION_47_5(v116, v117, v118, v119);
  OUTLINED_FUNCTION_4(v121);
  if (v1 + 20 > (v126 >> 1))
  {
    OUTLINED_FUNCTION_39(v126);
    OUTLINED_FUNCTION_31_17();
    v122 = sub_1934B0FCC(v258, v259, v260, v261, v262, v263);
    v125 = v122;
  }

  OUTLINED_FUNCTION_50(v122, v123, v124, v125);
  OUTLINED_FUNCTION_4(v127);
  if (v1 + 21 > (v132 >> 1))
  {
    v264 = OUTLINED_FUNCTION_39(v132);
    v128 = OUTLINED_FUNCTION_85(v264, v265, v266, v267, &qword_1EAE3E250, &qword_193969DD0);
    v131 = v128;
  }

  OUTLINED_FUNCTION_47_5(v128, v129, v130, v131);
  OUTLINED_FUNCTION_4(v133);
  if (v1 + 22 > (v138 >> 1))
  {
    OUTLINED_FUNCTION_39(v138);
    OUTLINED_FUNCTION_31_17();
    v134 = sub_1934B0FCC(v268, v269, v270, v271, v272, v273);
    v137 = v134;
  }

  OUTLINED_FUNCTION_50(v134, v135, v136, v137);
  OUTLINED_FUNCTION_4(v139);
  if (v1 + 23 > (v144 >> 1))
  {
    v274 = OUTLINED_FUNCTION_39(v144);
    v140 = OUTLINED_FUNCTION_85(v274, v275, v276, v277, &qword_1EAE3E250, &qword_193969DD0);
    v143 = v140;
  }

  OUTLINED_FUNCTION_47_5(v140, v141, v142, v143);
  OUTLINED_FUNCTION_4(v145);
  if (v1 + 24 > (v150 >> 1))
  {
    OUTLINED_FUNCTION_39(v150);
    OUTLINED_FUNCTION_31_17();
    v146 = sub_1934B0FCC(v278, v279, v280, v281, v282, v283);
    v149 = v146;
  }

  OUTLINED_FUNCTION_50(v146, v147, v148, v149);
  OUTLINED_FUNCTION_4(v151);
  if (v1 + 25 > (v156 >> 1))
  {
    v284 = OUTLINED_FUNCTION_39(v156);
    v152 = OUTLINED_FUNCTION_85(v284, v285, v286, v287, &qword_1EAE3E250, &qword_193969DD0);
    v155 = v152;
  }

  OUTLINED_FUNCTION_47_5(v152, v153, v154, v155);
  OUTLINED_FUNCTION_4(v157);
  if (v1 + 26 > (v162 >> 1))
  {
    OUTLINED_FUNCTION_39(v162);
    OUTLINED_FUNCTION_31_17();
    v158 = sub_1934B0FCC(v288, v289, v290, v291, v292, v293);
    v161 = v158;
  }

  OUTLINED_FUNCTION_50(v158, v159, v160, v161);
  return OUTLINED_FUNCTION_38_1(v163, v164);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6465766968637241;
  switch(*v0)
  {
    case 1:
      return 0x6B72616D6B6F6F42;
    case 2:
      v5 = 1634038339;
      goto LABEL_18;
    case 3:
      return 0x7466617244;
    case 4:
      v2 = 1953064005;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
    case 5:
      v6 = 0x69726F766146;
      goto LABEL_21;
    case 6:
      v4 = 0x656767616C46;
      return v4 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
    case 7:
      return 0x6564726177726F46;
    case 8:
      return 1802401098;
    case 9:
      v5 = 1852404304;
      goto LABEL_18;
    case 0xALL:
      return 1684104530;
    case 0xBLL:
      v3 = 0x766965636552;
      goto LABEL_32;
    case 0xCLL:
      v4 = 0x65696C706552;
      return v4 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
    case 0xDLL:
      return 0x6465766153;
    case 0xELL:
      return 1953391955;
    case 0xFLL:
      v2 = 1918986323;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
    case 0x10:
      v2 = 1734828372;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
    case 0x11:
      v5 = 1701602628;
LABEL_18:
      v4 = v5 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      return v4 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
    case 0x12:
      return 0x646165726E55;
    case 0x13:
      v3 = 0x747065636341;
      goto LABEL_32;
    case 0x14:
      return 0x656279614DLL;
    case 0x15:
      v3 = 0x6E696C636544;
LABEL_32:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 0x16:
      result = 0x6E6564646948;
      break;
    case 0x17:
      result = 6649156;
      break;
    case 0x18:
      v6 = 0x656C706D6F43;
LABEL_21:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUModelAppEntityStatus.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_93_2(0x766968637241);
    v7 = v4 && v0 == 0xE800000000000000;
    if (v7 || (OUTLINED_FUNCTION_29_2(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 0x6B72616D6B6F6F42 && v0 == 0xEA00000000006465;
      if (v8 || (OUTLINED_FUNCTION_0_9(0x6B72616D6B6F6F42, 0xEA00000000006465) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_96_11(0x61657243u);
        v10 = v4 && v0 == 0xE700000000000000;
        if (v10 || (OUTLINED_FUNCTION_22_7(v9) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = v1 == 0x7466617244 && v0 == 0xE500000000000000;
          if (v11 || (OUTLINED_FUNCTION_15_14(0x7466617244) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = v1 == 0x646574696445 && v0 == 0xE600000000000000;
            if (v12 || (OUTLINED_FUNCTION_0_9(0x646574696445, 0xE600000000000000) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v13 = v1 == 0x657469726F766146 && v0 == 0xE900000000000064;
              if (v13 || (OUTLINED_FUNCTION_0_9(0x657469726F766146, 0xE900000000000064) & 1) != 0)
              {

                v5 = 5;
              }

              else
              {
                v14 = v1 == 0x64656767616C46 && v0 == 0xE700000000000000;
                if (v14 || (OUTLINED_FUNCTION_22_7(0x64656767616C46) & 1) != 0)
                {

                  v5 = 6;
                }

                else
                {
                  v15 = v1 == 0x6564726177726F46 && v0 == 0xE900000000000064;
                  if (v15 || (OUTLINED_FUNCTION_0_9(0x6564726177726F46, 0xE900000000000064) & 1) != 0)
                  {

                    v5 = 7;
                  }

                  else
                  {
                    v16 = v1 == 1802401098 && v0 == 0xE400000000000000;
                    if (v16 || (OUTLINED_FUNCTION_19_8(1802401098) & 1) != 0)
                    {

                      v5 = 8;
                    }

                    else
                    {
                      v17 = OUTLINED_FUNCTION_96_11(0x6E697250u);
                      v18 = v4 && v0 == 0xE700000000000000;
                      if (v18 || (OUTLINED_FUNCTION_22_7(v17) & 1) != 0)
                      {

                        v5 = 9;
                      }

                      else
                      {
                        v19 = v1 == 1684104530 && v0 == 0xE400000000000000;
                        if (v19 || (OUTLINED_FUNCTION_19_8(1684104530) & 1) != 0)
                        {

                          v5 = 10;
                        }

                        else
                        {
                          v20 = OUTLINED_FUNCTION_93_2(0x766965636552);
                          v21 = v4 && v0 == 0xE800000000000000;
                          if (v21 || (OUTLINED_FUNCTION_29_2(v20) & 1) != 0)
                          {

                            v5 = 11;
                          }

                          else
                          {
                            v22 = v1 == 0x6465696C706552 && v0 == 0xE700000000000000;
                            if (v22 || (OUTLINED_FUNCTION_22_7(0x6465696C706552) & 1) != 0)
                            {

                              v5 = 12;
                            }

                            else
                            {
                              v23 = v1 == 0x6465766153 && v0 == 0xE500000000000000;
                              if (v23 || (OUTLINED_FUNCTION_15_14(0x6465766153) & 1) != 0)
                              {

                                v5 = 13;
                              }

                              else
                              {
                                v24 = v1 == 1953391955 && v0 == 0xE400000000000000;
                                if (v24 || (OUTLINED_FUNCTION_19_8(1953391955) & 1) != 0)
                                {

                                  v5 = 14;
                                }

                                else
                                {
                                  v25 = v1 == 0x646572616853 && v0 == 0xE600000000000000;
                                  if (v25 || (OUTLINED_FUNCTION_0_9(0x646572616853, 0xE600000000000000) & 1) != 0)
                                  {

                                    v5 = 15;
                                  }

                                  else
                                  {
                                    v26 = v1 == 0x646567676154 && v0 == 0xE600000000000000;
                                    if (v26 || (OUTLINED_FUNCTION_0_9(0x646567676154, 0xE600000000000000) & 1) != 0)
                                    {

                                      v5 = 16;
                                    }

                                    else
                                    {
                                      v27 = OUTLINED_FUNCTION_96_11(0x656C6544u);
                                      v28 = v4 && v0 == 0xE700000000000000;
                                      if (v28 || (OUTLINED_FUNCTION_22_7(v27) & 1) != 0)
                                      {

                                        v5 = 17;
                                      }

                                      else
                                      {
                                        v29 = v1 == 0x646165726E55 && v0 == 0xE600000000000000;
                                        if (v29 || (OUTLINED_FUNCTION_0_9(0x646165726E55, 0xE600000000000000) & 1) != 0)
                                        {

                                          v5 = 18;
                                        }

                                        else
                                        {
                                          v30 = OUTLINED_FUNCTION_93_2(0x747065636341);
                                          v31 = v4 && v0 == 0xE800000000000000;
                                          if (v31 || (OUTLINED_FUNCTION_29_2(v30) & 1) != 0)
                                          {

                                            v5 = 19;
                                          }

                                          else
                                          {
                                            v32 = v1 == 0x656279614DLL && v0 == 0xE500000000000000;
                                            if (v32 || (OUTLINED_FUNCTION_15_14(0x656279614DLL) & 1) != 0)
                                            {

                                              v5 = 20;
                                            }

                                            else
                                            {
                                              v33 = OUTLINED_FUNCTION_93_2(0x6E696C636544);
                                              v34 = v4 && v0 == 0xE800000000000000;
                                              if (v34 || (OUTLINED_FUNCTION_29_2(v33) & 1) != 0)
                                              {

                                                v5 = 21;
                                              }

                                              else
                                              {
                                                v35 = v1 == 0x6E6564646948 && v0 == 0xE600000000000000;
                                                if (v35 || (OUTLINED_FUNCTION_0_9(0x6E6564646948, 0xE600000000000000) & 1) != 0)
                                                {

                                                  v5 = 22;
                                                }

                                                else
                                                {
                                                  v36 = v1 == 6649156 && v0 == 0xE300000000000000;
                                                  if (v36 || (OUTLINED_FUNCTION_0_9(6649156, 0xE300000000000000) & 1) != 0)
                                                  {

                                                    v5 = 23;
                                                  }

                                                  else if (v1 == 0x6574656C706D6F43 && v0 == 0xE900000000000064)
                                                  {

                                                    v5 = 24;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_0_9(0x6574656C706D6F43, 0xE900000000000064);
                                                    OUTLINED_FUNCTION_89();
                                                    v5 = 24;
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

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchFailureReason.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0xD000000000000026;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchFailureReason.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    v7 = v4 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9(0xD000000000000028, v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 0xD000000000000026 && 0x8000000193A222A0 == v0;
      if (v8 || (OUTLINED_FUNCTION_0_9(0xD000000000000026, 0x8000000193A222A0) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        if (v4 && v9 == v0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_0_9(0xD000000000000028, v9);
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v4)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x616964654DLL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x4C5255616964654DLL;
      break;
    case 3:
      result = 0x6E6F697461636F4CLL;
      break;
    case 4:
      result = 0x6C6172656E6547;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    v7 = v4 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 0x616964654DLL && v0 == 0xE500000000000000;
      if (v8 || (OUTLINED_FUNCTION_15_14(0x616964654DLL) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x4C5255616964654DLL && v0 == 0xE800000000000000;
        if (v9 || (OUTLINED_FUNCTION_29_2(0x4C5255616964654DLL) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 0x6E6F697461636F4CLL && v0 == 0xE800000000000000;
          if (v10 || (OUTLINED_FUNCTION_29_2(0x6E6F697461636F4CLL) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else if (v1 == 0x6C6172656E6547 && v0 == 0xE700000000000000)
          {

            OUTLINED_FUNCTION_69_2();
          }

          else
          {
            OUTLINED_FUNCTION_22_7(0x6C6172656E6547);
            OUTLINED_FUNCTION_89();
            v5 = 4;
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

char *static IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v4 = sub_1935B85A8(v0, v1, v2, v3);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_39(v5);
    OUTLINED_FUNCTION_31_17();
    v4 = sub_1935B85A8(v8, v9, v10, v11);
  }

  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = 0;
  return v4;
}

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason.init(_:)@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1935B6628()
{
  OUTLINED_FUNCTION_91_0();
  v3 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_63_2();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  *(v9 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v18 < v2 + 2)
  {
    OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_100_7(v13, v14, v15, v16);
  OUTLINED_FUNCTION_175_3();
  if (v24 != v25)
  {
    v19 = OUTLINED_FUNCTION_88_0((v23 > 1), v1, 1, v22);
    v22 = v19;
  }

  OUTLINED_FUNCTION_45_0(v19, v20, v21, v22);
  if (!(v24 ^ v25 | v12))
  {
    v26 = OUTLINED_FUNCTION_33_5((v30 > 1), v27, v28, v29);
    v29 = v26;
  }

  OUTLINED_FUNCTION_32(v26, v27, v28, v29);
  if (!(v24 ^ v25 | v12))
  {
    v31 = OUTLINED_FUNCTION_39_2((v35 > 1), v32, v33, v34);
    v34 = v31;
  }

  OUTLINED_FUNCTION_62_8(v31, v32, v33, v34);
  v39 = *(v38 + 3);
  if (v2 + 6 > (v39 >> 1))
  {
    v38 = OUTLINED_FUNCTION_33_5((v39 > 1), v36, v37, v38);
  }

  *(v38 + 2) = v2 + 6;
  return OUTLINED_FUNCTION_38_1(v38, &v38[16 * v2 + 32]);
}

void IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseFallbackReason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 3:
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

void IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResponseFallbackReason.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0xD00000000000001ELL && 0x8000000193A22320 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, 0x8000000193A22320) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0xD00000000000001ALL && 0x8000000193A199A0 == v0;
      if (v7 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ALL, 0x8000000193A199A0) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0xD000000000000012 && 0x8000000193A19980 == v0;
        if (v8 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A19980) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v10 = v4 && v9 == v0;
          if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v9) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else if (v1 == 0xD000000000000013 && 0x8000000193A19940 == v0)
          {

            OUTLINED_FUNCTION_69_2();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A19940);
            OUTLINED_FUNCTION_89();
            v5 = 4;
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

uint64_t IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6C65646F4DLL;
  }

  return 0x65736142656C7552;
}

void IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x65736142656C7552 && v0 == 0xE900000000000064;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x65736142656C7552, 0xE900000000000064) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_121_5(1701080909);
      if (v4 && v0 == 0xE500000000000000)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_15_14(v7);
        OUTLINED_FUNCTION_89();
        v5 = v1 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}