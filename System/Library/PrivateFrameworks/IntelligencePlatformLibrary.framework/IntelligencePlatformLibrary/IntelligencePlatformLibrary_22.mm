unint64_t sub_1935F2938()
{
  result = qword_1EAE3ED58;
  if (!qword_1EAE3ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED58);
  }

  return result;
}

unint64_t sub_1935F298C()
{
  result = qword_1EAE3ED60;
  if (!qword_1EAE3ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED60);
  }

  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.hashValue.getter()
{
  sub_19393CAB0();
  IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935F2A28(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowExecutorTelemetry.ExecutorRequestEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 24);
  return sub_19350CB08(v2, v3);
}

__n128 IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.error.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_54_13(a1);
  sub_193456418(*v2, *(v2 + 8));
  result = v5;
  *v2 = v5;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return result;
}

double IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_193456418(v1, 1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

BOOL static IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*(a1 + 8) != 1)
  {
    if (v3 != 1)
    {
      v20 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v20, v21);
      v22 = OUTLINED_FUNCTION_20_23();
      sub_19350CB08(v22, v23);
      v24 = OUTLINED_FUNCTION_8_35();
      sub_19350CB08(v24, v25);
      sub_193501520();
      v26 = sub_19393C550();

      v27 = OUTLINED_FUNCTION_8_35();
      sub_193456418(v27, v28);
      return (v26 & 1) != 0;
    }

    v9 = OUTLINED_FUNCTION_8_35();
    sub_19350CB08(v9, v10);
    sub_19350CB08(v2, 1);
    v11 = OUTLINED_FUNCTION_8_35();
    sub_19350CB08(v11, v12);

LABEL_7:
    v15 = OUTLINED_FUNCTION_8_35();
    sub_193456418(v15, v16);
    v17 = OUTLINED_FUNCTION_20_23();
    sub_193456418(v17, v18);
    return 0;
  }

  v4 = OUTLINED_FUNCTION_55_12();
  sub_19350CB08(v4, v5);
  if (v3 != 1)
  {
    v13 = OUTLINED_FUNCTION_20_23();
    sub_19350CB08(v13, v14);
    goto LABEL_7;
  }

  v6 = 1;
  sub_19350CB08(v2, 1);
  v7 = OUTLINED_FUNCTION_55_12();
  sub_193456418(v7, v8);
  return v6;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  sub_1935F2D2C();

  OUTLINED_FUNCTION_39_20();
  sub_19393C540();
}

unint64_t sub_1935F2D2C()
{
  result = qword_1EAE3ED68;
  if (!qword_1EAE3ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED68);
  }

  return result;
}

uint64_t IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    sub_1935F2D2C();

    sub_19393C540();
  }

  return sub_19393CB00();
}

uint64_t sub_1935F2E38(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowExecutorTelemetry.ExecutorRequestFailed.hash(into:)();
  return sub_19393CB00();
}

BOOL static IntelligenceFlowExecutorTelemetry.ExecutorRequestCanceled.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_1935F2F08()
{
  v1 = *v0;
  sub_19393CAB0();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_1935F2F88(uint64_t (*a1)(void *))
{
  v4[9] = *v1;
  sub_19393CAB0();
  a1(v4);
  return sub_19393CB00();
}

uint64_t sub_1935F2FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

uint64_t sub_1935F3068(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1935F30D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

unint64_t sub_1935F3148()
{
  result = qword_1EAE3ED80;
  if (!qword_1EAE3ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED80);
  }

  return result;
}

unint64_t sub_1935F31D0()
{
  result = qword_1EAE3ED98;
  if (!qword_1EAE3ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3ED98);
  }

  return result;
}

unint64_t sub_1935F3270()
{
  result = qword_1EAE3EDA0;
  if (!qword_1EAE3EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDA0);
  }

  return result;
}

unint64_t sub_1935F32C8()
{
  result = qword_1EAE3EDA8;
  if (!qword_1EAE3EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDA8);
  }

  return result;
}

unint64_t sub_1935F3320()
{
  result = qword_1EAE3EDB0;
  if (!qword_1EAE3EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDB0);
  }

  return result;
}

unint64_t sub_1935F33C0()
{
  result = qword_1EAE3EDB8;
  if (!qword_1EAE3EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDB8);
  }

  return result;
}

unint64_t sub_1935F3418()
{
  result = qword_1EAE3EDC0;
  if (!qword_1EAE3EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDC0);
  }

  return result;
}

unint64_t sub_1935F3470()
{
  result = qword_1EAE3EDC8;
  if (!qword_1EAE3EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EDC8);
  }

  return result;
}

void sub_1935F35E4(uint64_t a1)
{
  OUTLINED_FUNCTION_35_20(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_35_20(v2, &qword_1ED506B88);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_35_20(v4, &qword_1ED507A78);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_35_20(v6, &qword_1ED506BD0);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_35_20(v8, &qword_1ED506BB0);
            if (v10 <= 0x3F)
            {
              sub_19349D1FC(319, qword_1ED505FC8, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorPersonQueryCallContext);
              if (v11 <= 0x3F)
              {
                sub_19349D1FC(319, &qword_1ED506B98, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorStringQueryLocationCallContext);
                if (v12 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED506B90, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorStringQueryEntityMatcherCallContext);
                  if (v13 <= 0x3F)
                  {
                    sub_19349D1FC(319, &qword_1ED506BA0, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorStringQueryEntityCallContext);
                    if (v14 <= 0x3F)
                    {
                      sub_19349D1FC(319, &qword_1ED506BB8, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorIdentifierQueryCallContext);
                      if (v15 <= 0x3F)
                      {
                        sub_19349D1FC(319, &qword_1ED5030D0, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorRequestContext);
                        if (v16 <= 0x3F)
                        {
                          OUTLINED_FUNCTION_15_2();
                          swift_cvw_initStructMetadataWithLayoutString();
                          OUTLINED_FUNCTION_10_1();
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

void sub_1935F3820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1935F38BC(uint64_t a1)
{
  OUTLINED_FUNCTION_5_37(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_114_8();
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    result[16] = 0;
    *result = a2 - 254;
    *(result + 1) = 0;
    if (a3 >= 0xFE)
    {
      result[17] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[17] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_117_1(result, a2);
    }
  }

  return result;
}

void sub_1935F3A24()
{
  sub_19349D1FC(319, &qword_1ED506BC8, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallStarted);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED506058, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallEnded);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED506BD8, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorAppIntentCallFailed);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_5_37(v2, qword_1ED507908);
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_10_1();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 18))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_114_8();
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 1) = 0;
    if (a3 >= 0xFE)
    {
      result[18] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[18] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_117_1(result, a2);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_43Tm(char *a1, int a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v3 = *a1;
    if (*a1 >= 2u)
    {
      v9 = (v3 & 0xFE) + 2147483646;
      v10 = (v9 & 0x7FFFFFFE | v3 & 1) - 1;
      if ((v9 & 0x7FFFFFFE) != 0)
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v6 = OUTLINED_FUNCTION_101(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void __swift_store_extra_inhabitant_index_44Tm()
{
  OUTLINED_FUNCTION_91_0();
  if (v3 == 252)
  {
    *v1 = v0 + 3;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v5 = OUTLINED_FUNCTION_101(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_1935F3D0C()
{
  sub_19349D1FC(319, &qword_1ED506BA8, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallStarted);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED506BC0, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallEnded);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED505FC0, &type metadata for IntelligenceFlowExecutorTelemetry.ExecutorSearchToolQueryCallFailed);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_5_37(v2, qword_1ED507908);
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_10_1();
        }
      }
    }
  }
}

unint64_t *sub_1935F3F1C(unint64_t *result, int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = (a2 - 126);
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_17_23(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary16IFOutcomeSuccessVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1935F3F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 64))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  OUTLINED_FUNCTION_38_18();
  v6 = v4 != v5 ? -1 : v3;
  v7 = v6 - 1;
  if (v3 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v7);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_1935F3FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1935F4064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 25))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  OUTLINED_FUNCTION_38_18();
  v6 = v4 != v5 ? -1 : v3;
  v7 = v6 - 1;
  if (v3 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v7);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_1935F40C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1935F4128(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t *sub_1935F41FC(unint64_t *result, int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = (a2 - 125);
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_17_23(result, a2);
    }
  }

  return result;
}

_BYTE *_s7FoundInOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s22WalletPaymentsCommerceOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1935F4658()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510E78);
  v4 = __swift_project_value_buffer(v3, qword_1ED510E78);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.ClassicOrder.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:15724800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_25 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510E78);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDD8, &qword_193971340);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD000000000000012, 0x8000000193A28CA0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.ClassicOrder.attribute(_:)(void (*a1)(void))
{
  result = sub_1935F4A84(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F4AC0(void (*a1)(void))
{
  result = sub_1935F4A84(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F4B28(uint64_t a1)
{
  result = sub_1935F4B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935F4B50()
{
  result = qword_1ED503D28;
  if (!qword_1ED503D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D28);
  }

  return result;
}

_BYTE *_s12ClassicOrderOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1935F4C6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510ED8);
  v4 = __swift_project_value_buffer(v3, qword_1ED510ED8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.OrderEmail.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:15724800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_26 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510ED8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDE0, &qword_1939713B8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD000000000000012, 0x8000000193A28CA0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.OrderEmail.attribute(_:)(void (*a1)(void))
{
  result = sub_1935F5098(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F50D4(void (*a1)(void))
{
  result = sub_1935F5098(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F513C(uint64_t a1)
{
  result = sub_1935F5164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935F5164()
{
  result = qword_1ED503B40;
  if (!qword_1ED503B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503B40);
  }

  return result;
}

_BYTE *_s10OrderEmailOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1935F5280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510F38);
  v4 = __swift_project_value_buffer(v3, qword_1ED510F38);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.WalletPaymentsCommerce.FoundIn.TrackedOrder.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:15724800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_27 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510F38);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDE8, &qword_193971430);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD000000000000012, 0x8000000193A28CA0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.WalletPaymentsCommerce.FoundIn.TrackedOrder.attribute(_:)(void (*a1)(void))
{
  result = sub_1935F56AC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F56E8(void (*a1)(void))
{
  result = sub_1935F56AC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935F5750(uint64_t a1)
{
  result = sub_1935F5778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935F5778()
{
  result = qword_1ED503D18;
  if (!qword_1ED503D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D18);
  }

  return result;
}

_BYTE *_s12TrackedOrderOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceClassicOrder.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1935F5A44(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3EDF0, &qword_1939714A8, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1935F5A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static WalletPaymentsCommerceClassicOrder.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE3EDF0, &qword_1939714A8, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_1935F5BD8(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935F5BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static WalletPaymentsCommerceClassicOrder.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v2;
  v37 = v1;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  if (*sub_1935FCCB8() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v15 + 16))(v19, v21, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v15 + 8))(v21, v13);
    if (!v0)
    {
      v28 = v36;
      sub_1935F5BD8(v12, v36);
      v29 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    v26 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v26);
    *v27 = v5;
    *(v27 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceClassicOrder.serialize()()
{
  v1 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EDF0, &qword_1939714A8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1935F5A44(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3EDF0, &qword_1939714A8, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3EDF0, &qword_1939714A8);
  return v11;
}

id static WalletPaymentsCommerceClassicOrder.columns.getter()
{
  v77 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A28D80);
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
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_32_19();
  result = OUTLINED_FUNCTION_3_5(v31, v32);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v33 = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_2_4(v33, v34, v35, v36, v37, v38, v39, v40, v75);
  OUTLINED_FUNCTION_2_13(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v41[2].n128_u64[0] = sub_19393C850();
  v51 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_10_31();
  result = OUTLINED_FUNCTION_3_5(v52, v53);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v54 = swift_initStackObject();
  v62 = OUTLINED_FUNCTION_2_4(v54, v55, v56, v57, v58, v59, v60, v61, v76);
  OUTLINED_FUNCTION_2_13(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v62[2].n128_u64[0] = sub_19393C850();
  v72 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_59_1();
  result = sub_19343D150(v73, v74, 3, 0, v62, 0, 1);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v77;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1935F62D8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59[-v8];
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_38();
  v18 = v4 == 0xD000000000000013 && v17 == v2;
  if (!v18 && (OUTLINED_FUNCTION_59_0(0xD000000000000013, v17) & 1) == 0)
  {
    OUTLINED_FUNCTION_32_19();
    v23 = OUTLINED_FUNCTION_19_7() | 0x6564497200000000;
    v25 = v4 == v23 && v2 == v24;
    if (v25 || (OUTLINED_FUNCTION_59_0(v23, v24) & 1) != 0)
    {
      v19 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 32);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_10_31();
    v26 = OUTLINED_FUNCTION_19_7() | 0x6D754E7200000000;
    v28 = v4 == v26 && v2 == v27;
    if (v28 || (OUTLINED_FUNCTION_59_0(v26, v27) & 1) != 0)
    {
      v29 = (v0 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 36));
      v30 = v29[1];
      if (v30)
      {
        *&v61[0] = *v29;
        *(&v61[0] + 1) = v30;
        OUTLINED_FUNCTION_29_17();
        sub_1934948FC();
        goto LABEL_9;
      }

LABEL_50:
      *v6 = 0u;
      *(v6 + 16) = 0u;
      goto LABEL_9;
    }

    v32 = v4 == (OUTLINED_FUNCTION_19_7() | 0x7461447200000000) && v2 == v31;
    if (v32 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_59_0(v33, v34) & 1) != 0))
    {
      v35 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
      sub_1934DE90C(v0 + *(v35 + 40), v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        (*(v12 + 32))(v16, v9, v10);
        sub_1934948FC();
        (*(v12 + 8))(v16, v10);
        goto LABEL_9;
      }

      sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      v36 = v4 == 0x746E61686372656DLL && v2 == 0xE800000000000000;
      if (v36 || (OUTLINED_FUNCTION_59_0(0x746E61686372656DLL, 0xE800000000000000) & 1) != 0)
      {
        v37 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 44);
        memcpy(v60, (v0 + v37), sizeof(v60));
        memcpy(v59, (v0 + v37), sizeof(v59));
        sub_1935F7D7C(v60, v61);
        sub_193494798(&type metadata for WalletPaymentsCommerceClassicOrder.Merchant, &off_1F07D7030, v6);
        memcpy(v61, v59, 0x48uLL);
        sub_1935F7DD8(v61);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v39 = v4 == 0xD000000000000014 && v38 == v2;
      if (v39 || (OUTLINED_FUNCTION_59_0(0xD000000000000014, v38) & 1) != 0)
      {
        *&v61[0] = *(v0 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 48));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EE08, &qword_1939714B8);
        goto LABEL_8;
      }

      v40 = v4 == 0x72656D6F74737563 && v2 == 0xE800000000000000;
      if (v40 || (OUTLINED_FUNCTION_59_0(0x72656D6F74737563, 0xE800000000000000) & 1) != 0)
      {
        v41 = v0 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 52);
        v42 = *(v41 + 8);
        if (v42 != 1)
        {
          *&v61[0] = *v41;
          *(&v61[0] + 1) = v42;
          v43 = *(v41 + 32);
          v61[1] = *(v41 + 16);
          v61[2] = v43;
          v61[3] = *(v41 + 48);
          OUTLINED_FUNCTION_29_17();
          sub_193494798(v44, v45, v46);
          goto LABEL_9;
        }

        goto LABEL_50;
      }

      v47 = OUTLINED_FUNCTION_21_22() & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      v48 = v4 == v47 && v2 == 0xE700000000000000;
      if (!v48 && (OUTLINED_FUNCTION_59_0(v47, 0xE700000000000000) & 1) == 0)
      {
        v55 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v55);
        v57 = v56;
        *v56 = v4;
        v56[1] = v2;
        v56[5] = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v57 + 2);
        sub_1935F5A44(v0, boxed_opaque_existential_1Tm);
        *(v57 + 48) = 1;
        swift_willThrow();

        goto LABEL_9;
      }

      v49 = v0 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 56);
      v50 = *(v49 + 8);
      if (v50)
      {
        v51 = *(v49 + 16);
        *&v61[0] = *v49;
        *(&v61[0] + 1) = v50;
        *&v61[1] = v51;
        *(&v61[1] + 8) = *(v49 + 24);
        *(&v61[2] + 8) = *(v49 + 40);
        OUTLINED_FUNCTION_29_17();
        sub_193494798(v52, v53, v54);
        goto LABEL_9;
      }
    }

    *v6 = 0u;
    *(v6 + 16) = 0u;
    goto LABEL_9;
  }

  v19 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 28);
LABEL_7:
  v20 = (v0 + v19);
  v22 = *v20;
  v21 = v20[1];
  *&v61[0] = v22;
  *(&v61[0] + 1) = v21;
LABEL_8:
  OUTLINED_FUNCTION_29_17();
  sub_1934948FC();
LABEL_9:
  OUTLINED_FUNCTION_27();
}

void sub_1935F67F0(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {
    goto LABEL_6;
  }

  v11 = v3[2];
  v10 = v3[3];
  v12 = v3[4];
  if (OUTLINED_FUNCTION_27_18(7955819, 0xE300000000000000))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_38();
  v14 = a1 == 0xD000000000000017 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_27_18(0xD000000000000017, v13) & 1) != 0)
  {
    if (!v10)
    {
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

LABEL_6:
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v16 = a1 == 0xD000000000000010 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_27_18(0xD000000000000010, v15) & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EE10, &qword_1939714C0);
    goto LABEL_6;
  }

  v17 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
  v19 = v18;
  *v18 = a1;
  v18[1] = a2;
  v18[5] = &type metadata for WalletPaymentsCommerceClassicOrder.LocalizedString;
  v20 = swift_allocObject();
  v19[2] = v20;
  v20[2] = v6;
  v20[3] = v5;
  v20[4] = v11;
  v20[5] = v10;
  v20[6] = v12;
  *(v19 + 48) = 1;
  swift_willThrow();
}

unint64_t sub_1935F69D0@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  OUTLINED_FUNCTION_38();
  if (v7 == 0xD000000000000010 && v8 == a1)
  {
    return sub_1934948FC();
  }

  v10 = v7;
  v11 = v2[3];
  v19 = v2[2];
  if (sub_19393CA30())
  {
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  result = 0xD000000000000011;
  v14 = v10 == 0xD000000000000011 && v13 == a1;
  if (v14 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v11)
    {
      return sub_1934948FC();
    }

    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v15 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v15);
    v17 = v16;
    *v16 = v10;
    v16[1] = a1;
    v16[5] = &type metadata for WalletPaymentsCommerceClassicOrder.LocalizedString.Localization;
    v18 = swift_allocObject();
    v17[2] = v18;
    v18[2] = v6;
    v18[3] = v5;
    v18[4] = v19;
    v18[5] = v11;
    *(v17 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

void sub_1935F6B6C()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x4E79616C70736964 && v0 == 0xEB00000000656D61;
  if (v3 || (OUTLINED_FUNCTION_5_5(0x4E79616C70736964, 0xEB00000000656D61) & 1) != 0)
  {
    v30 = __dst[0];
    v31 = __dst[1];
    v32 = __dst[2];
    v33 = __dst[3];
    v34 = __dst[4];

    OUTLINED_FUNCTION_52_2(v10, &type metadata for WalletPaymentsCommerceClassicOrder.LocalizedString, &off_1F07D7010, v11, v12, v13, v14, v15, v30);
    sub_193494798(v16, v17, v18);

    return;
  }

  v19 = 0x614E6E69616D6F64;
  v20 = v1 == 0x614E6E69616D6F64 && v0 == 0xEA0000000000656DLL;
  if (v20 || (v19 = OUTLINED_FUNCTION_5_5(0x614E6E69616D6F64, 0xEA0000000000656DLL), (v19 & 1) != 0))
  {
    v21 = __dst[6];
    if (__dst[6])
    {
      v22 = __dst[5];
LABEL_14:
      v31 = v21;
      OUTLINED_FUNCTION_52_2(v19, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v22);
      sub_1934948FC();
      return;
    }

LABEL_22:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v23 = v1 == 0xD000000000000014 && 0x8000000193A28E40 == v0;
  if (v23 || (v19 = OUTLINED_FUNCTION_5_5(0xD000000000000014, 0x8000000193A28E40), (v19 & 1) != 0))
  {
    v21 = __dst[8];
    if (__dst[8])
    {
      v22 = __dst[7];
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v24 = sub_19349AB64();
  v25 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v24);
  OUTLINED_FUNCTION_9_3(v25, v26);
  *(v27 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.Merchant;
  v28 = swift_allocObject();
  v29 = OUTLINED_FUNCTION_28_3(v28);
  memcpy(v29, __dst, 0x48uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1935F7D7C(__dst, &v30);
}

void sub_1935F6D70()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v3, sizeof(__dst));
  OUTLINED_FUNCTION_38();
  v5 = v2 == 0xD000000000000015 && v4 == v1;
  if (v5 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v4) & 1) != 0)
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
LABEL_7:
    sub_1934948FC();
    return;
  }

  v6 = v2 == 0x676E696B63617274 && v1 == 0xEE007265626D754ELL;
  if (v6 || (OUTLINED_FUNCTION_5_5(0x676E696B63617274, 0xEE007265626D754ELL) & 1) != 0)
  {
    v7 = __dst[3];
    if (__dst[3])
    {
      v8 = __dst[2];
LABEL_15:
      __src[0] = v8;
      __src[1] = v7;
      goto LABEL_7;
    }

    goto LABEL_36;
  }

  v9 = v2 == 0x4E72656972726163 && v1 == 0xEB00000000656D61;
  if (v9 || (OUTLINED_FUNCTION_5_5(0x4E72656972726163, 0xEB00000000656D61) & 1) != 0)
  {
    v7 = __dst[5];
    if (__dst[5])
    {
      v8 = __dst[4];
      goto LABEL_15;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_38();
  v11 = v2 == 0xD000000000000011 && v10 == v1;
  if (v11 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, v10) & 1) != 0)
  {
    v7 = __dst[7];
    if (__dst[7])
    {
      v8 = __dst[6];
      goto LABEL_15;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_38();
  v13 = v2 == 0xD000000000000011 && v12 == v1;
  if (v13 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, v12) & 1) != 0)
  {
    memcpy(__src, (v3 + 64), 0xA8uLL);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src) == 1)
    {
LABEL_36:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v20, __src, sizeof(v20));
    sub_193494798(&type metadata for WalletPaymentsCommerceClassicOrder.ShippingRecipient, &off_1F07D7050, v0);
  }

  else
  {
    v14 = sub_19349AB64();
    v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
    OUTLINED_FUNCTION_9_3(v15, v16);
    *(v17 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.ShippingFulfillment;
    v18 = swift_allocObject();
    v19 = OUTLINED_FUNCTION_28_3(v18);
    memcpy(v19, __dst, 0xE8uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1935F7E2C(__dst, __src);
  }
}

void sub_1935F6FCC()
{
  OUTLINED_FUNCTION_24_20();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x6D614E6E65766967 && v0 == 0xE900000000000065;
  if (v10 || (OUTLINED_FUNCTION_59_1(), v3 = OUTLINED_FUNCTION_5_5(v11, v12), (v3 & 1) != 0))
  {
    v13 = __dst[1];
    if (__dst[1])
    {
      v14 = __dst[0];
LABEL_8:
      v38[0] = v13;
      OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v14);
      sub_1934948FC();
      return;
    }

    goto LABEL_37;
  }

  v3 = OUTLINED_FUNCTION_15_13();
  v16 = v10 && v0 == v15;
  if (v16 || (v3 = OUTLINED_FUNCTION_5_5(v3, 0xEA0000000000656DLL), (v3 & 1) != 0))
  {
    v13 = __dst[3];
    if (__dst[3])
    {
      v14 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_10_31();
  v3 = OUTLINED_FUNCTION_22_23();
  v18 = v10 && v0 == v17;
  if (v18 || (v3 = OUTLINED_FUNCTION_5_5(v3, v17), (v3 & 1) != 0))
  {
    v13 = __dst[5];
    if (__dst[5])
    {
      v14 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  v3 = OUTLINED_FUNCTION_13_19();
  v20 = v10 && v0 == v19;
  if (v20 || (v3 = OUTLINED_FUNCTION_5_5(v3, v19), (v3 & 1) != 0))
  {
    v13 = __dst[7];
    if (__dst[7])
    {
      v14 = __dst[6];
      goto LABEL_8;
    }

LABEL_37:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v21 = v1 == 0x73736572646461 && v0 == 0xE700000000000000;
  if (v21 || (OUTLINED_FUNCTION_5_5(0x73736572646461, 0xE700000000000000) & 1) != 0)
  {
    if (__dst[8])
    {
      v22 = memcpy(v38, (v2 + 72), sizeof(v38));
      OUTLINED_FUNCTION_52_2(v22, &type metadata for WalletPaymentsCommerceClassicOrder.Address, &off_1F07D7070, v23, v24, v25, v26, v27, __dst[8]);
      sub_193494798(v28, v29, v30);
      return;
    }

    goto LABEL_37;
  }

  v31 = sub_19349AB64();
  v32 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v31);
  OUTLINED_FUNCTION_9_3(v32, v33);
  *(v34 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.ShippingRecipient;
  v35 = swift_allocObject();
  v36 = OUTLINED_FUNCTION_28_3(v35);
  memcpy(v36, __dst, 0xA8uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1935F7E88(__dst, &v37);
}

uint64_t sub_1935F71D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6D614E6E65766967;
  v7 = v3[1];
  v29 = *v3;
  v30 = v7;
  v8 = v3[3];
  v31 = v3[2];
  v32 = v8;
  v9 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v9 || (OUTLINED_FUNCTION_59_1(), result = OUTLINED_FUNCTION_5_5(v11, v12), (result & 1) != 0))
  {
    v13 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
      v14 = v29;
LABEL_8:
      v28[0] = v14;
      v28[1] = v13;
      return sub_1934948FC();
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_15_13();
    v16 = v9 && a2 == v15;
    if (v16 || (result = OUTLINED_FUNCTION_5_5(result, 0xEA0000000000656DLL), (result & 1) != 0))
    {
      v13 = *(&v30 + 1);
      if (*(&v30 + 1))
      {
        v14 = v30;
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_10_31();
      result = OUTLINED_FUNCTION_22_23();
      v18 = v9 && a2 == v17;
      if (v18 || (result = OUTLINED_FUNCTION_5_5(result, v17), (result & 1) != 0))
      {
        v13 = *(&v31 + 1);
        if (*(&v31 + 1))
        {
          v14 = v31;
          goto LABEL_8;
        }
      }

      else
      {
        result = OUTLINED_FUNCTION_13_19();
        if (!v9 || a2 != v19)
        {
          result = OUTLINED_FUNCTION_5_5(result, v19);
          if ((result & 1) == 0)
          {
            v21 = sub_19349AB64();
            v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
            OUTLINED_FUNCTION_9_3(v22, v23);
            *(v24 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.Customer;
            v25 = swift_allocObject();
            *(v3 + 2) = v25;
            v26 = v32;
            v25[3] = v31;
            v25[4] = v26;
            v27 = v30;
            v25[1] = v29;
            v25[2] = v27;
            OUTLINED_FUNCTION_26_0();

            return sub_1935F7EE4(&v29, v28);
          }
        }

        v13 = *(&v32 + 1);
        if (*(&v32 + 1))
        {
          v14 = v32;
          goto LABEL_8;
        }
      }
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void sub_1935F7388()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x4C73736572646461 && v0 == 0xEC00000073656E69;
  if (v3 || (OUTLINED_FUNCTION_5_5(0x4C73736572646461, 0xEC00000073656E69) & 1) != 0)
  {
    v28[0] = __dst[0];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v11 = v10;
LABEL_7:
    OUTLINED_FUNCTION_52_2(v10, v11, v4, v5, v6, v7, v8, v9, v28[0]);
    sub_1934948FC();
    return;
  }

  v10 = 0x7974696C61636F6CLL;
  v12 = v1 == 0x7974696C61636F6CLL && v0 == 0xE800000000000000;
  if (v12 || (v10 = OUTLINED_FUNCTION_5_5(0x7974696C61636F6CLL, 0xE800000000000000), (v10 & 1) != 0))
  {
    v13 = __dst[2];
    if (__dst[2])
    {
      v14 = __dst[1];
LABEL_15:
      v28[0] = v14;
      v28[1] = v13;
      v11 = MEMORY[0x1E69E6158];
      goto LABEL_7;
    }

    goto LABEL_51;
  }

  v10 = 0x6C61636F4C627573;
  v15 = v1 == 0x6C61636F4C627573 && v0 == 0xEB00000000797469;
  if (v15 || (v10 = OUTLINED_FUNCTION_5_5(0x6C61636F4C627573, 0xEB00000000797469), (v10 & 1) != 0))
  {
    v13 = __dst[4];
    if (__dst[4])
    {
      v14 = __dst[3];
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_38();
  v17 = v1 == 0xD000000000000012 && v16 == v0;
  if (v17 || (v10 = OUTLINED_FUNCTION_5_5(0xD000000000000012, v16), (v10 & 1) != 0))
  {
    v13 = __dst[6];
    if (__dst[6])
    {
      v14 = __dst[5];
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_38();
  v10 = 0xD000000000000015;
  v19 = v1 == 0xD000000000000015 && v18 == v0;
  if (v19 || (v10 = OUTLINED_FUNCTION_5_5(0xD000000000000015, v18), (v10 & 1) != 0))
  {
    v13 = __dst[8];
    if (__dst[8])
    {
      v14 = __dst[7];
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  v10 = 0x6F436C6174736F70;
  v20 = v1 == 0x6F436C6174736F70 && v0 == 0xEA00000000006564;
  if (v20 || (v10 = OUTLINED_FUNCTION_5_5(0x6F436C6174736F70, 0xEA00000000006564), (v10 & 1) != 0))
  {
    v13 = __dst[10];
    if (__dst[10])
    {
      v14 = __dst[9];
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  v10 = 0x437972746E756F63;
  v21 = v1 == 0x437972746E756F63 && v0 == 0xEB0000000065646FLL;
  if (v21 || (v10 = OUTLINED_FUNCTION_5_5(0x437972746E756F63, 0xEB0000000065646FLL), (v10 & 1) != 0))
  {
    v13 = __dst[12];
    if (__dst[12])
    {
      v14 = __dst[11];
      goto LABEL_15;
    }

LABEL_51:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v22 = sub_19349AB64();
  v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
  OUTLINED_FUNCTION_9_3(v23, v24);
  *(v25 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.Address;
  OUTLINED_FUNCTION_28_16();
  v26 = swift_allocObject();
  v27 = OUTLINED_FUNCTION_28_3(v26);
  memcpy(v27, __dst, 0x68uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1935F7F40(__dst, v28);
}

uint64_t sub_1935F763C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  if (a1 == 0x6F6D416C61746F74 && a2 == 0xEB00000000746E75)
  {
    return sub_1934948FC();
  }

  v8 = v2[2];
  v9 = v2[3];
  v27 = v2[4];
  v26 = v2[5];
  v10 = v2[6];
  if (OUTLINED_FUNCTION_25_20(0x6F6D416C61746F74, 0xEB00000000746E75))
  {
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  v13 = a1 == 0xD000000000000011 && v12 == a2;
  if (v13 || (OUTLINED_FUNCTION_25_20(0xD000000000000011, v12) & 1) != 0)
  {
    return sub_1934948FC();
  }

  v14 = OUTLINED_FUNCTION_21_22() & 0xFFFFFFFFFFFFLL | 0x4D74000000000000;
  v16 = a1 == v14 && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_25_20(v14, v15) & 1) != 0 || ((OUTLINED_FUNCTION_38(), a1 == 0xD00000000000001ELL) ? (v20 = v19 == a2) : (v20 = 0), v20 || (OUTLINED_FUNCTION_25_20(0xD00000000000001ELL, v19) & 1) != 0))
  {
    v17 = &qword_1EAE3ABB0;
    v18 = &qword_193950BB8;
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    return sub_1934948FC();
  }

  v21 = a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69;
  if (v21 || (OUTLINED_FUNCTION_25_20(0x746361736E617274, 0xEC000000736E6F69) & 1) != 0)
  {
    v17 = &unk_1EAE3EE18;
    v18 = &unk_1939714C8;
    goto LABEL_19;
  }

  v22 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
  v24 = v23;
  *v23 = a1;
  v23[1] = a2;
  v23[5] = &type metadata for WalletPaymentsCommerceClassicOrder.Payment;
  OUTLINED_FUNCTION_98_2();
  v25 = swift_allocObject();
  v24[2] = v25;
  v25[2] = v6;
  v25[3] = v5;
  v25[4] = v8;
  v25[5] = v9;
  v25[6] = v27;
  v25[7] = v26;
  v25[8] = v10;
  *(v24 + 48) = 1;
  swift_willThrow();
}

void sub_1935F78AC()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x746E756F6D61 && v0 == 0xE600000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_5_5(0x746E756F6D61, 0xE600000000000000), (v3 & 1) != 0))
  {
    v11 = __dst[0];
    v12 = __dst[1];
LABEL_7:
    v33 = v11;
    v34 = v12;
LABEL_8:
    OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v33);
    sub_1934948FC();
    return;
  }

  v3 = 0x79636E6572727563;
  v13 = v1 == 0x79636E6572727563 && v0 == 0xEC00000065646F43;
  if (v13 || (v3 = OUTLINED_FUNCTION_5_5(0x79636E6572727563, 0xEC00000065646F43), (v3 & 1) != 0))
  {
    v11 = __dst[2];
    v12 = __dst[3];
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_21_22() & 0xFFFFFFFFFFFFLL | 0x4D74000000000000;
  v16 = v1 == v14 && v0 == v15;
  if (v16 || (v3 = OUTLINED_FUNCTION_5_5(v14, v15), (v3 & 1) != 0))
  {
    v33 = __dst[4];
    v34 = __dst[5];
    v35 = __dst[6];
    v36 = __dst[7];
    v37 = __dst[8];
    v38 = __dst[9];
    v39 = __dst[10];

    OUTLINED_FUNCTION_52_2(v17, &type metadata for WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod, &off_1F07D70A0, v18, v19, v20, v21, v22, v33);
    sub_193494798(v23, v24, v25);
  }

  else
  {
    v26 = v1 == 0xD00000000000001DLL && 0x8000000193A28F20 == v0;
    if (v26 || (v3 = OUTLINED_FUNCTION_5_5(0xD00000000000001DLL, 0x8000000193A28F20), (v3 & 1) != 0))
    {
      if (__dst[12])
      {
        v33 = __dst[11];
        v34 = __dst[12];
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_36_4();
    }

    else
    {
      v27 = sub_19349AB64();
      v28 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
      OUTLINED_FUNCTION_9_3(v28, v29);
      *(v30 + 40) = &type metadata for WalletPaymentsCommerceClassicOrder.Transaction;
      OUTLINED_FUNCTION_28_16();
      v31 = swift_allocObject();
      v32 = OUTLINED_FUNCTION_28_3(v31);
      memcpy(v32, __dst, 0x68uLL);
      OUTLINED_FUNCTION_26_0();

      sub_1935F7F9C(__dst, &v33);
    }
  }
}

uint64_t sub_1935F7AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v12 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v12 || (v13 = v3[5], v14 = v3[6], v22 = v13, result = sub_19393CA30(), (result & 1) != 0))
  {

    sub_193494798(&type metadata for WalletPaymentsCommerceClassicOrder.LocalizedString, &off_1F07D7010, a3);
  }

  else
  {
    v16 = a1 == 0xD000000000000014 && 0x8000000193A28E40 == a2;
    if (v16 || (result = sub_19393CA30(), (result & 1) != 0))
    {
      if (v14)
      {
        return sub_1934948FC();
      }

      else
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
      }
    }

    else
    {
      v17 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
      v18 = v14;
      v20 = v19;
      *v19 = a1;
      v19[1] = a2;
      v19[5] = &type metadata for WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod;
      OUTLINED_FUNCTION_98_2();
      v21 = swift_allocObject();
      v20[2] = v21;
      v21[2] = v7;
      v21[3] = v8;
      v21[4] = v10;
      v21[5] = v9;
      v21[6] = v11;
      v21[7] = v22;
      v21[8] = v18;
      *(v20 + 48) = 1;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1935F7D0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double WalletPaymentsCommerceClassicOrder.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = (a1 + v2[6]);
  sub_1935FCDD0(v4);
  v5 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = v2[10];
  sub_1934E0648();
  v7 = (a1 + v2[13]);
  sub_1935FD310(v7);
  v8 = a1 + v2[14];
  sub_1935FD434(v8);
  *a1 = *sub_1935FCCB8();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2].n128_u64[0] = 0;

  v10 = (a1 + v2[7]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (a1 + v2[8]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *v5 = 0;
  v5[1] = 0;
  sub_19344E6DC(a1 + v6, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v9);
  WalletPaymentsCommerceClassicOrder.Merchant.init()(&__src);
  memcpy(a1 + v2[11], &__src, 0x48uLL);
  *(a1 + v2[12]) = MEMORY[0x1E69E7CC0];
  v12 = v7[1];
  v16[0] = *v7;
  v16[1] = v12;
  v13 = v7[3];
  v16[2] = v7[2];
  v16[3] = v13;
  sub_19344E6DC(v16, &qword_1EAE3EE00, &qword_1939714B0);
  *v7 = xmmword_1939526A0;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  sub_1935F7D0C(*v8, *(v8 + 1));
  *(v8 + 6) = 0;
  result = 0.0;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *v8 = 0u;
  return result;
}

BOOL static WalletPaymentsCommerceClassicOrder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v105 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v105 - v15;
  v17 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  OUTLINED_FUNCTION_3_43(v17[7]);
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_43(v17[8]);
  v23 = v20 && v21 == v22;
  if (!v23 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  v24 = v17[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *v25 == *v27 && v26 == v28;
    if (!v29 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v112 = v6;
  v110 = v17;
  v30 = v17[10];
  v31 = a1;
  v32 = *(v13 + 48);
  v111 = v31;
  sub_1934486F8(v31 + v30, v16, &qword_1EAE3A9E8, &qword_19394F800);
  v33 = a2 + v30;
  v34 = a2;
  sub_1934486F8(v33, &v16[v32], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v16);
  if (v20)
  {
    OUTLINED_FUNCTION_31(&v16[v32]);
    if (v20)
    {
      sub_19344E6DC(v16, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_31;
    }

LABEL_28:
    v36 = &qword_1EAE3B968;
    v37 = &qword_193972430;
    v38 = v16;
LABEL_29:
    sub_19344E6DC(v38, v36, v37);
    return 0;
  }

  sub_1934486F8(v16, v12, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v16[v32]);
  if (v35)
  {
    (*(v112 + 8))(v12, v4);
    goto LABEL_28;
  }

  v39 = v112;
  (*(v112 + 32))(v9, &v16[v32], v4);
  sub_1934DF3E8(&qword_1EAE3A848, MEMORY[0x1E6969550]);
  v40 = sub_19393C550();
  v41 = *(v39 + 8);
  v41(v9, v4);
  v41(v12, v4);
  sub_19344E6DC(v16, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v43 = v110;
  v42 = v111;
  v44 = v110[11];
  memcpy(v138, (v111 + v44), sizeof(v138));
  memcpy(v123, (v111 + v44), sizeof(v123));
  v45 = v110[11];
  memcpy(v139, (v34 + v45), sizeof(v139));
  memcpy(v137, (v34 + v45), sizeof(v137));
  sub_1935F7D7C(v138, v134);
  sub_1935F7D7C(v139, v134);
  sub_1935F8B2C();
  LOBYTE(v45) = sub_19393C550();
  memcpy(__dst, v137, sizeof(__dst));
  sub_1935F7DD8(__dst);
  memcpy(v141, v123, 0x48uLL);
  sub_1935F7DD8(v141);
  if ((v45 & 1) == 0 || (sub_1935F8F88(*(v42 + v43[12]), *(v34 + v43[12])) & 1) == 0)
  {
    return 0;
  }

  v46 = (v42 + v43[13]);
  v47 = v46[1];
  v134[0] = *v46;
  v134[1] = v47;
  v48 = v46[1];
  v49 = v46[3];
  v135 = v46[2];
  v136 = v49;
  v50 = (v34 + v43[13]);
  v51 = v50[1];
  *v137 = *v50;
  *&v137[16] = v51;
  v52 = v50[1];
  v53 = v50[3];
  *&v137[32] = v50[2];
  *&v137[48] = v53;
  v131 = v48;
  v132 = v135;
  v133 = v46[3];
  v54 = v134[0];
  v55 = *v137;
  v56 = *&v137[8];
  v128 = v52;
  v129 = *&v137[32];
  v130 = v50[3];
  if (*(&v134[0] + 1) == 1)
  {
    if (*&v137[8] == 1)
    {
      *v123 = *&v134[0];
      *&v123[8] = 1;
      v57 = v46[2];
      *&v123[16] = v46[1];
      *&v123[32] = v57;
      *&v123[48] = v46[3];
      sub_1934486F8(v134, &v119, &qword_1EAE3EE00, &qword_1939714B0);
      sub_1934486F8(v137, &v119, &qword_1EAE3EE00, &qword_1939714B0);
      sub_19344E6DC(v123, &qword_1EAE3EE00, &qword_1939714B0);
      goto LABEL_41;
    }

    sub_1934486F8(v134, v123, &qword_1EAE3EE00, &qword_1939714B0);
    sub_1934486F8(v137, v123, &qword_1EAE3EE00, &qword_1939714B0);
    goto LABEL_39;
  }

  *v123 = v134[0];
  v58 = v46[2];
  *&v123[16] = v46[1];
  *&v123[32] = v58;
  *&v123[48] = v46[3];
  v119 = v134[0];
  v120 = *&v123[16];
  v121 = v58;
  v122 = *&v123[48];
  if (*&v137[8] == 1)
  {
    v115 = *v123;
    v116 = *&v123[16];
    v117 = *&v123[32];
    v118 = *&v123[48];
    OUTLINED_FUNCTION_5_38(v134);
    OUTLINED_FUNCTION_5_38(v137);
    OUTLINED_FUNCTION_5_38(v123);
    sub_1935F9170(&v115);
LABEL_39:
    *v123 = v54;
    *&v123[16] = v131;
    *&v123[32] = v132;
    *&v123[48] = v133;
    *&v123[64] = v55;
    v124 = v56;
    v125 = v128;
    v126 = v129;
    v127 = v130;
    v36 = &unk_1EAE3EE28;
    v37 = &unk_1939715B8;
    v38 = v123;
    goto LABEL_29;
  }

  v59 = v50[2];
  v116 = v50[1];
  v117 = v59;
  v118 = v50[3];
  v115 = *v137;
  OUTLINED_FUNCTION_6_38(v134);
  OUTLINED_FUNCTION_6_38(v137);
  OUTLINED_FUNCTION_6_38(v123);
  sub_1935F91C4();
  v60 = sub_19393C550();
  v113[0] = v115;
  v113[1] = v116;
  v113[2] = v117;
  v113[3] = v118;
  sub_1935F9170(v113);
  v114[0] = v119;
  v114[1] = v120;
  v114[2] = v121;
  v114[3] = v122;
  sub_1935F9170(v114);
  v115 = v54;
  v116 = v131;
  v117 = v132;
  v118 = v133;
  sub_19344E6DC(&v115, &qword_1EAE3EE00, &qword_1939714B0);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v61 = v43[14];
  v62 = *(v42 + v61);
  v63 = *(v42 + v61 + 8);
  v64 = *(v42 + v61 + 16);
  v65 = *(v42 + v61 + 24);
  v67 = *(v42 + v61 + 32);
  v66 = *(v42 + v61 + 40);
  v68 = *(v42 + v61 + 48);
  v69 = (v34 + v61);
  v70 = v69[1];
  v111 = *v69;
  v72 = v69[2];
  v71 = v69[3];
  v74 = v69[4];
  v73 = v69[5];
  v75 = v69[6];
  v112 = v75;
  v110 = v73;
  if (!v63)
  {
    v106 = v72;
    v107 = v71;
    v108 = v74;
    OUTLINED_FUNCTION_0_51();
    sub_1935F90AC(v84, v85);
    if (!v70)
    {
      sub_1935F90AC(v111, 0);
      OUTLINED_FUNCTION_0_51();
      sub_1935F7D0C(v103, v104);
      return 1;
    }

    OUTLINED_FUNCTION_7_29();
    sub_1935F90AC(v86, v87);
    goto LABEL_48;
  }

  *v123 = v62;
  *&v123[8] = v63;
  *&v123[16] = v64;
  *&v123[24] = v65;
  *&v123[32] = v67;
  *&v123[40] = v66;
  *&v123[48] = v68;
  v109 = v62;
  v105[4] = v64;
  if (!v70)
  {
    OUTLINED_FUNCTION_4_42();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    OUTLINED_FUNCTION_1_48();
    sub_1935F90AC(v94, v95);
    v106 = v89;
    v107 = v91;
    v108 = v93;
    sub_1935F90AC(v111, 0);
    OUTLINED_FUNCTION_4_42();
    OUTLINED_FUNCTION_0_51();
    sub_1935F90AC(v96, v97);

LABEL_48:
    OUTLINED_FUNCTION_4_42();
    OUTLINED_FUNCTION_0_51();
    sub_1935F7D0C(v98, v99);
    OUTLINED_FUNCTION_7_29();
    sub_1935F7D0C(v100, v101);
    return 0;
  }

  v76 = v111;
  *&v119 = v111;
  *(&v119 + 1) = v70;
  *&v120 = v72;
  *(&v120 + 1) = v71;
  *&v121 = v74;
  *(&v121 + 1) = v73;
  *&v122 = v75;
  OUTLINED_FUNCTION_4_42();
  v105[2] = v63;
  v105[3] = v65;
  v105[1] = v67;
  OUTLINED_FUNCTION_1_48();
  sub_1935F90AC(v77, v78);
  sub_1935F90AC(v76, v70);
  OUTLINED_FUNCTION_1_48();
  sub_1935F90AC(v79, v80);
  sub_1935F911C();
  v81 = sub_19393C550();

  OUTLINED_FUNCTION_1_48();
  sub_1935F7D0C(v82, v83);
  return (v81 & 1) != 0;
}

unint64_t sub_1935F8B2C()
{
  result = qword_1EAE3EE20;
  if (!qword_1EAE3EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE20);
  }

  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  sub_19393C640();
  sub_19393C640();
  v14 = *(v2 + v13[9] + 8);
  v30 = a1;
  sub_19393CAD0();
  if (v14)
  {
    OUTLINED_FUNCTION_4_42();
    sub_19393C640();
  }

  sub_1934486F8(v2 + v13[10], v12, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    v15 = v30;
    sub_19393CAD0();
  }

  else
  {
    (*(v6 + 32))(v9, v12, v4);
    v15 = v30;
    sub_19393CAD0();
    sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v6 + 8))(v9, v4);
  }

  memcpy(v39, (v2 + v13[11]), 0x48uLL);
  sub_1935F9218();
  sub_19393C540();
  sub_1935F926C(v15, *(v2 + v13[12]));
  v16 = (v2 + v13[13]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 2);
  v40 = *(v16 + 1);
  v41 = v19;
  v42 = *(v16 + 3);
  if (v18 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v20 = *(v16 + 2);
    v32 = *(v16 + 1);
    v33 = v20;
    v34 = *(v16 + 3);
    *&v31 = v17;
    *(&v31 + 1) = v18;
    sub_19393CAD0();
    v35[0] = v17;
    v35[1] = v18;
    v36 = v40;
    v37 = v41;
    v38 = v42;
    sub_1935F7EE4(v35, v39);
    sub_1935F9330();
    sub_19393C540();
    v39[0] = v31;
    v39[1] = v32;
    v39[2] = v33;
    v39[3] = v34;
    sub_1935F9170(v39);
  }

  v21 = (v2 + v13[14]);
  v22 = v21[1];
  if (!v22)
  {
    return sub_19393CAD0();
  }

  v24 = v21[5];
  v23 = v21[6];
  v26 = v21[3];
  v25 = v21[4];
  v27 = v21[2];
  *&v39[0] = *v21;
  *(&v39[0] + 1) = v22;
  *&v39[1] = v27;
  *(&v39[1] + 1) = v26;
  *&v39[2] = v25;
  *(&v39[2] + 1) = v24;
  *&v39[3] = v23;
  sub_19393CAD0();
  sub_1935F9384();

  sub_19393C540();
}

uint64_t sub_1935F8F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 232)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_1935F7E2C(__dst, v7);
      sub_1935F7E2C(v11, v7);
      sub_1935F9480();
      v5 = sub_19393C550();
      memcpy(v12, __src, sizeof(v12));
      sub_1935F942C(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_1935F942C(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 232;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1935F90AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1935F911C()
{
  result = qword_1EAE3EE30;
  if (!qword_1EAE3EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE30);
  }

  return result;
}

unint64_t sub_1935F91C4()
{
  result = qword_1EAE3EE38;
  if (!qword_1EAE3EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE38);
  }

  return result;
}

unint64_t sub_1935F9218()
{
  result = qword_1EAE3EE40;
  if (!qword_1EAE3EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE40);
  }

  return result;
}

uint64_t sub_1935F926C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(__src, v5, sizeof(__src));
      sub_1935F7E2C(__dst, v7);
      sub_1935F93D8();
      sub_19393C540();
      memcpy(v7, __src, sizeof(v7));
      result = sub_1935F942C(v7);
      v5 += 232;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1935F9330()
{
  result = qword_1EAE3EE48;
  if (!qword_1EAE3EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE48);
  }

  return result;
}

unint64_t sub_1935F9384()
{
  result = qword_1EAE3EE50;
  if (!qword_1EAE3EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE50);
  }

  return result;
}

unint64_t sub_1935F93D8()
{
  result = qword_1EAE3EE58;
  if (!qword_1EAE3EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE58);
  }

  return result;
}

unint64_t sub_1935F9480()
{
  result = qword_1EAE3EE60;
  if (!qword_1EAE3EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EE60);
  }

  return result;
}

uint64_t sub_1935F94D4()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB2B8);
  __swift_project_value_buffer(v0, qword_1EAEAB2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v22 = OUTLINED_FUNCTION_156();
  *(v22 + 16) = xmmword_1939526B0;
  v3 = v22 + v0;
  v4 = v22 + v0 + dword_1EAEAB2F0;
  *(v22 + v0) = 1;
  *v4 = "orderTypeIdentifier";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_3_1(v3 + v2);
  *v9 = 2;
  OUTLINED_FUNCTION_33_8(v8, "orderIdentifier");
  OUTLINED_FUNCTION_2_0();
  v6();
  v10 = OUTLINED_FUNCTION_3_1(v3 + 2 * v2);
  *v11 = 3;
  OUTLINED_FUNCTION_33_8(v10, "orderNumber");
  OUTLINED_FUNCTION_2_0();
  v6();
  v12 = OUTLINED_FUNCTION_3_1(v3 + 3 * v2);
  *v13 = 4;
  OUTLINED_FUNCTION_33_8(v12, "orderDate");
  OUTLINED_FUNCTION_2_0();
  v6();
  v14 = OUTLINED_FUNCTION_19_2((v3 + 4 * v2));
  *v14 = "merchant";
  *(v14 + 1) = 8;
  v14[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v15 = OUTLINED_FUNCTION_3_1(v3 + 5 * v2);
  *v16 = 6;
  OUTLINED_FUNCTION_33_8(v15, "shippingFulfillments");
  OUTLINED_FUNCTION_2_0();
  v6();
  v17 = OUTLINED_FUNCTION_3_1(v3 + 6 * v2);
  *v18 = 7;
  *v17 = "customer";
  *(v17 + 8) = 8;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v19 = OUTLINED_FUNCTION_3_1(v3 + 7 * v2);
  *v20 = 8;
  *v19 = "payment";
  *(v19 + 8) = 7;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  return sub_19393C410();
}

void sub_1935F978C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v5 = OUTLINED_FUNCTION_124();
    if (v0 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        *&__dst[72] = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        if (*&__dst[80])
        {
          v7 = *&__dst[72];
        }

        else
        {
          v7 = 0;
        }

        if (*&__dst[80])
        {
          v8 = *&__dst[80];
        }

        else
        {
          v8 = 0xE000000000000000;
        }

        v4 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 28));

        *v4 = v7;
        v4[1] = v8;
        break;
      case 2:
        *&__dst[72] = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        OUTLINED_FUNCTION_69_16();
        if (v15)
        {
          v16 = 0xE000000000000000;
        }

        else
        {
          v16 = v14;
        }

        v17 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 32));

        *v17 = v4;
        v17[1] = v16;
        break;
      case 3:
        type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 4:
        type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
        OUTLINED_FUNCTION_66_17();
        sub_1934976E4(v9, v10, v11, v12, v13);
        break;
      case 5:
        memset(&__dst[72], 0, 72);
        sub_193498018();
        if (*&__dst[80])
        {
          v19 = *&__dst[72];
        }

        else
        {
          WalletPaymentsCommerceClassicOrder.Merchant.init()(&v19);
        }

        v4 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 44);
        memcpy(__dst, v4 + v1, 0x48uLL);
        sub_1935F7DD8(__dst);
        memcpy(v4 + v1, &v19, 0x48uLL);
        break;
      case 6:
        v18 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
        sub_193498238(v1 + *(v18 + 48), v3, &type metadata for WalletPaymentsCommerceClassicOrder.ShippingFulfillment, v2, &off_1F07D7170);
        break;
      case 7:
      case 8:
        type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_1935F9A70()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v14 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  v15 = (v0 + v14[7]);
  if (*v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15[1] == 0xE000000000000000;
  }

  if (!v16)
  {
    v17 = OUTLINED_FUNCTION_71_15();
    if ((OUTLINED_FUNCTION_272(v17, v18) & 1) == 0)
    {
      OUTLINED_FUNCTION_71_15();
      OUTLINED_FUNCTION_32_20();
      OUTLINED_FUNCTION_66_17();
      sub_19393C3C0();
      v2 = v1;
    }
  }

  if (!v2)
  {
    v19 = (v0 + v14[8]);
    v20 = !*v19 && v19[1] == 0xE000000000000000;
    if (v20 || (v21 = OUTLINED_FUNCTION_71_15(), (OUTLINED_FUNCTION_272(v21, v22) & 1) != 0) || (OUTLINED_FUNCTION_71_15(), OUTLINED_FUNCTION_32_20(), OUTLINED_FUNCTION_66_17(), sub_19393C3C0(), (v2 = v1) == 0))
    {
      if (!*(v0 + v14[9] + 8) || (OUTLINED_FUNCTION_32_20(), OUTLINED_FUNCTION_66_17(), sub_19393C3C0(), (v2 = v1) == 0))
      {
        sub_1935F9D6C(v0, v9, v7, v5, v10, v11, v12, v13, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], __src.displayName.key._countAndFlagsBits, __src.displayName.key._object, __src.displayName.developmentLocalization.value._countAndFlagsBits);
        if (!v2)
        {
          OUTLINED_FUNCTION_73_15(v39);
          OUTLINED_FUNCTION_73_15(v38);
          sub_1935F7D7C(v39, &__src);
          WalletPaymentsCommerceClassicOrder.Merchant.init()(&__src);
          sub_1935F8B2C();
          v23 = sub_19393C550();
          memcpy(v40, &__src, sizeof(v40));
          sub_1935F7DD8(v40);
          memcpy(v41, v38, sizeof(v41));
          sub_1935F7DD8(v41);
          if ((v23 & 1) == 0)
          {
            OUTLINED_FUNCTION_73_15(v38);
            OUTLINED_FUNCTION_73_15(&__src);
            sub_1935F7D7C(v38, v36);
            OUTLINED_FUNCTION_87_3();
            sub_193447600();
            memcpy(v36, &__src, sizeof(v36));
            sub_1935F7DD8(v36);
          }

          if (*(*(v3 + v14[12]) + 16))
          {
            OUTLINED_FUNCTION_87_3();
            sub_193451CFC(v24, v25, v26, v27, v28, v29);
          }

          v30 = v3 + v14[13];
          v31 = *(v30 + 8);
          if (v31 != 1)
          {
            *v41 = *v30;
            *&v41[8] = v31;
            v32 = *(v30 + 32);
            *&v41[16] = *(v30 + 16);
            *&v41[32] = v32;
            *&v41[48] = *(v30 + 48);
            OUTLINED_FUNCTION_87_3();
            sub_193447600();
          }

          v33 = v3 + v14[14];
          v34 = *(v33 + 8);
          if (v34)
          {
            v35 = *(v33 + 16);
            *v41 = *v33;
            *&v41[8] = v34;
            *&v41[16] = v35;
            *&v41[24] = *(v33 + 24);
            *&v41[40] = *(v33 + 40);
            OUTLINED_FUNCTION_87_3();
            sub_193447600();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935F9D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &a9 - v25;
  v27 = sub_19393BE00();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  sub_1934DE90C(v23 + *(v31 + 40), v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_19344E6DC(v26, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v32 = OUTLINED_FUNCTION_165_1();
    v33(v32);
    OUTLINED_FUNCTION_32_20();
    sub_193451F04(v34, v35, v36, v37, v38, v39);
    (*(v28 + 8))(v30, v27);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935F9F80()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB2D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_30_3();
  v6 = v5 & ~v4;
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v7, xmmword_19394FBB0);
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_10_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v0 + v3);
  *v11 = 2;
  OUTLINED_FUNCTION_33_8(v10, "developmentLocalization");
  OUTLINED_FUNCTION_10_0();
  v9();
  v12 = OUTLINED_FUNCTION_13_12();
  *v12 = "localizedStrings";
  *(v12 + 1) = 16;
  v12[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935FA1D8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[3];
  v6 = v0[4];
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 == 0xE000000000000000;
  }

  if (!v7)
  {
    v8 = OUTLINED_FUNCTION_125_3();
    if ((OUTLINED_FUNCTION_272(v8, v9) & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_4_7(v10, v11, 1);
      v2 = v1;
    }
  }

  if (!v2)
  {
    if (!v5 || (v12 = OUTLINED_FUNCTION_165_1(), OUTLINED_FUNCTION_4_7(v12, v13, 2), !v1))
    {
      if (*(v6 + 16))
      {
        OUTLINED_FUNCTION_23_3();
        sub_193451CFC(v14, v15, v16, v17, v18, v19);
      }
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935FA30C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAB2E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_30_3();
  v1 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("localizationName");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  OUTLINED_FUNCTION_10_0();
  v3();
  v4 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_36_5(v4, "localizationValue");
  OUTLINED_FUNCTION_10_0();
  v3();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FA454()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_113();
      v4 = sub_19393C200();
      v12 = OUTLINED_FUNCTION_50_2(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
      if (v12)
      {
        v13 = v15;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      *v1 = v13;
      v1[1] = v14;
    }
  }

  return result;
}

void sub_1935FA510()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  if (*v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 == 0xE000000000000000;
  }

  if (!v7 && (OUTLINED_FUNCTION_272(*v0, v0[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_7(v3, v4, 1);
    v2 = v1;
  }

  if (!v2 && v6)
  {
    OUTLINED_FUNCTION_2_7(v5, v6, 2);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935FA610()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB300);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_30_3();
  v2 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("displayName");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_10_0();
  v4();
  v5 = OUTLINED_FUNCTION_29_1();
  *v5 = "domainName";
  *(v5 + 8) = 10;
  *(v5 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  v6 = OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_36_5(v6, "localizedDisplayName");
  OUTLINED_FUNCTION_10_0();
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FA784()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_48_16();
      sub_193498018();
      if (v35)
      {
        OUTLINED_FUNCTION_47_18(v3, v4, v5, v6, v7, v8, v9, v10, v27, v29, v31, v33.key._countAndFlagsBits, v33.key._object, v33.developmentLocalization.value._countAndFlagsBits, v33.developmentLocalization.value._object, v33.localizedStrings._rawValue, v34, v35, v36, v37, v38);
      }

      else
      {
        WalletPaymentsCommerceClassicOrder.LocalizedString.init()(&v33);
        OUTLINED_FUNCTION_65_14(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, v33.key._countAndFlagsBits, v33.key._object, v33.developmentLocalization.value._countAndFlagsBits, v33.developmentLocalization.value._object, v33.localizedStrings._rawValue);
      }

      OUTLINED_FUNCTION_46_19(v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, v32);
    }
  }

  return result;
}

uint64_t sub_1935FA898(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1935FA8E8()
{
  OUTLINED_FUNCTION_103();
  v2 = v0[1];
  v10 = *v0;
  v11 = v2;
  v3 = *(v0 + 5);
  v12 = *(v0 + 4);
  v4 = *(v0 + 6);
  v8 = *(v0 + 7);
  v16 = *(v0 + 8);
  v5 = v0[1];
  v13 = *v0;
  v14 = v5;
  v15 = *(v0 + 4);
  sub_1935FCA60(&v13, &v9);
  sub_1935FCA60(&v13, &v9);
  WalletPaymentsCommerceClassicOrder.LocalizedString.init()(&v9);
  sub_1935FCABC();
  v6 = sub_19393C550();

  if (v6)
  {
    result = sub_1935FCB10(&v13);
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v10 = v13;
    v11 = v14;
    v12 = v15;
    OUTLINED_FUNCTION_23_3();
    sub_193447600();

    if (v1)
    {
      return result;
    }
  }

  if (v4)
  {
    result = OUTLINED_FUNCTION_4_7(v3, v4, 2);
  }

  if (v16)
  {
    return OUTLINED_FUNCTION_4_7(v8, v16, 3);
  }

  return result;
}

void sub_1935FAB00()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB318);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("fulfillmentIdentifier");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_29_1();
  v10 = OUTLINED_FUNCTION_0_0(v9, "trackingNumber");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_13_12();
  v12 = OUTLINED_FUNCTION_0_0(v11, "carrierName");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_14_6();
  *v13 = "carrierIdentifier";
  *(v13 + 1) = 17;
  v13[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  *v14 = "shippingRecipient";
  *(v14 + 1) = 17;
  v14[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935FAD9C()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v9 = v3[6];
  v14 = v3[7];
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 == 0xE000000000000000;
  }

  if (!v8 && (OUTLINED_FUNCTION_272(v4, v5) & 1) == 0)
  {
    OUTLINED_FUNCTION_38_19(v4, v5, 1);
    v2 = v1;
  }

  if (!v2)
  {
    if (!v7 || (OUTLINED_FUNCTION_38_19(v6, v7, 2), !v1))
    {
      if (!v11 || (OUTLINED_FUNCTION_38_19(v10, v11, 3), !v1))
      {
        if (!v14 || (OUTLINED_FUNCTION_38_19(v9, v14, 4), !v1))
        {
          memcpy(__dst, v3 + 8, 0xA8uLL);
          if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
          {
            memcpy(v12, __dst, sizeof(v12));
            sub_193447600();
          }
        }
      }
    }
  }
}

void sub_1935FAF7C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB330);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("givenName");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "familyName");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "phoneNumber");
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_0_0(v12, "emailAddress");
  (v6)(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  OUTLINED_FUNCTION_36_5(v14, "address");
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935FB118()
{
  OUTLINED_FUNCTION_103();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 5:
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_1935FB1E8()
{
  v2 = v1;
  OUTLINED_FUNCTION_103();
  v3 = v0[1];
  v4 = v0[3];
  v5 = v0[5];
  v10 = v0[6];
  v11 = v0[7];
  v13 = v0[8];
  if (v3)
  {
    OUTLINED_FUNCTION_2_7(*v0, v3, 1);
    v2 = v1;
  }

  if (!v2)
  {
    if (!v4 || (v6 = OUTLINED_FUNCTION_165_1(), OUTLINED_FUNCTION_2_7(v6, v7, 2), !v1))
    {
      if (!v5 || (v8 = OUTLINED_FUNCTION_125_3(), OUTLINED_FUNCTION_2_7(v8, v9, 3), !v1))
      {
        if (!v11 || (OUTLINED_FUNCTION_2_7(v10, v11, 4), !v1))
        {
          if (v13)
          {
            memcpy(v12, v0 + 9, sizeof(v12));
            sub_193447600();
          }
        }
      }
    }
  }
}

void sub_1935FB370()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB348);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("givenName");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  (v3)(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_0_0(v5, "familyName");
  (v3)(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_0_0(v7, "phoneNumber");
  (v3)(v8);
  v9 = OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_36_5(v9, "emailAddress");
  OUTLINED_FUNCTION_2_0();
  v3();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FB4EC()
{
  OUTLINED_FUNCTION_103();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1935FB584()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_67_2();
  v2 = v1[1];
  v3 = v1[3];
  v5 = v1[5];
  v4 = v1[6];
  v6 = v1[7];
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v1, v2, 1);
  }

  if (!v0)
  {
    if (v3)
    {
      v7 = OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_181(v7, v8, 2);
    }

    if (v5)
    {
      v9 = OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_181(v9, v10, 3);
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181(v4, v6, 4);
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935FB67C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB360);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v5, xmmword_193952700);
  OUTLINED_FUNCTION_63("addressLines");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_29_1();
  v10 = OUTLINED_FUNCTION_0_0(v9, "locality");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_13_12();
  v12 = OUTLINED_FUNCTION_0_0(v11, "subLocality");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_14_6();
  v14 = OUTLINED_FUNCTION_0_0(v13, "administrativeArea");
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "subAdministrativeArea");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v0 + 5 * v4);
  *v18 = 6;
  v19 = OUTLINED_FUNCTION_0_0(v17, "postalCode");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v0 + 6 * v4);
  *v21 = 7;
  *v20 = "countryCode";
  *(v20 + 8) = 11;
  *(v20 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FB880()
{
  OUTLINED_FUNCTION_103();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935FB93C()
{
  OUTLINED_FUNCTION_67_2();
  result = *v1;
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v16 = v1[8];
  v13 = v1[9];
  v14 = v1[10];
  v15 = v1[7];
  v11 = v1[11];
  v12 = v1[12];
  if (*(*v1 + 16))
  {
    result = sub_19393C380();
  }

  if (!v0)
  {
    if (v3)
    {
      v7 = OUTLINED_FUNCTION_125_3();
      result = OUTLINED_FUNCTION_181(v7, v8, 2);
    }

    if (v5)
    {
      v9 = OUTLINED_FUNCTION_165_1();
      result = OUTLINED_FUNCTION_181(v9, v10, 3);
    }

    if (v6)
    {
      result = OUTLINED_FUNCTION_181(v4, v6, 4);
    }

    if (v16)
    {
      result = OUTLINED_FUNCTION_181(v15, v16, 5);
    }

    if (v14)
    {
      result = OUTLINED_FUNCTION_181(v13, v14, 6);
    }

    if (v12)
    {
      return OUTLINED_FUNCTION_181(v11, v12, 7);
    }
  }

  return result;
}

void sub_1935FBAB8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB378);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("totalAmount");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "totalCurrencyCode");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "paymentMethods");
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_14_6();
  v13 = OUTLINED_FUNCTION_0_0(v12, "applePayTransactionIdentifiers");
  (v6)(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  OUTLINED_FUNCTION_36_5(v14, "transactions");
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935FBD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v21 = v3[5];
  v12 = v3[6];
  if (v7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8 == 0xE000000000000000;
  }

  if (!v13)
  {
    v14 = v11;
    if ((OUTLINED_FUNCTION_272(v7, v8) & 1) == 0)
    {
      OUTLINED_FUNCTION_32_20();
      sub_19393C3C0();
      v5 = v4;
    }

    v11 = v14;
  }

  if (!v5)
  {
    if (v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10 == 0xE000000000000000;
    }

    if (v15)
    {
      v17 = v12;
      v20 = a3;
    }

    else
    {
      v16 = v11;
      v17 = v12;
      v18 = OUTLINED_FUNCTION_125_3();
      if (OUTLINED_FUNCTION_272(v18, v19))
      {
        v20 = a3;
      }

      else
      {
        OUTLINED_FUNCTION_125_3();
        OUTLINED_FUNCTION_32_20();
        v20 = a3;
        sub_19393C3C0();
        v5 = v4;
        if (v4)
        {
          goto LABEL_9;
        }
      }

      v11 = v16;
    }

    if (!*(v11 + 16) || (sub_19393C380(), !v5))
    {
      if (!*(v21 + 16) || (sub_19393C380(), !v5))
      {
        if (*(v17 + 16))
        {
          sub_193451CFC(v17, 5, a2, &type metadata for WalletPaymentsCommerceClassicOrder.Transaction, v20, &off_1F07D7260);
        }
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1935FBF78()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB390);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  v1 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_11_3(v1, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("amount");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_50_1();
  (v3)(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_0_0(v5, "currencyCode");
  (v3)(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_0_0(v7, "paymentMethod");
  (v3)(v8);
  v9 = OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_36_5(v9, "applePayTransactionIdentifier");
  OUTLINED_FUNCTION_2_0();
  v3();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FC0F4()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v16 = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        OUTLINED_FUNCTION_69_16();
        if (v6)
        {
          v7 = 0xE000000000000000;
        }

        else
        {
          v7 = v5;
        }

        *v1 = v2;
        *(v1 + 8) = v7;
        break;
      case 2:
        v16 = 0uLL;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        OUTLINED_FUNCTION_69_16();
        if (v6)
        {
          v9 = 0xE000000000000000;
        }

        else
        {
          v9 = v8;
        }

        *(v1 + 16) = v2;
        *(v1 + 24) = v9;
        break;
      case 3:
        v19 = 0;
        v17 = 0;
        v18 = 0u;
        v16 = 0u;
        sub_193498018();
        if (*(&v16 + 1))
        {
          v20 = v19;
          v14 = v18;
          v10 = &v16;
          object = *(&v16 + 1);
          developmentLocalization = v17;
        }

        else
        {
          v10 = &v15;
          WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.init()(&v15);
          object = v15.displayName.key._object;
          developmentLocalization = v15.displayName.developmentLocalization;
          v14 = *&v15.displayName.localizedStrings._rawValue;
          v20 = v15.localizedDisplayName.value._object;
        }

        countAndFlagsBits = v10->displayName.key._countAndFlagsBits;
        v2 = *(v1 + 80);

        *(v1 + 32) = countAndFlagsBits;
        *(v1 + 40) = object;
        *(v1 + 48) = developmentLocalization;
        *(v1 + 64) = v14;
        *(v1 + 80) = v20;
        break;
      case 4:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935FC304(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1935FC368()
{
  v2 = v1;
  v3 = v0;
  OUTLINED_FUNCTION_103();
  v4 = *v0;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v14 = v3[11];
  v24 = v3[12];
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 == 0xE000000000000000;
  }

  if (!v8 && (OUTLINED_FUNCTION_272(v4, v5) & 1) == 0)
  {
    OUTLINED_FUNCTION_4_7(v4, v5, 1);
    v2 = v1;
  }

  if (!v2)
  {
    v9 = !v6 && v7 == 0xE000000000000000;
    if (v9 || (OUTLINED_FUNCTION_272(v6, v7) & 1) != 0 || (OUTLINED_FUNCTION_4_7(v6, v7, 2), !v1))
    {
      v10 = *(v3 + 3);
      v20 = *(v3 + 2);
      v21 = v10;
      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      v22 = *(v3 + 4);
      v23 = v3[10];
      v16 = v12;
      v17 = v11;
      v18 = *(v3 + 4);
      v19 = v3[10];
      sub_1935FCB64(&v20, &v15);
      sub_1935FCB64(&v20, &v15);
      WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.init()(&v15);
      sub_1935FCBC0();
      v13 = sub_19393C550();

      if (v13)
      {
        sub_1935FCC14(&v20);
      }

      else
      {
        v16 = v20;
        v17 = v21;
        v18 = v22;
        v19 = v23;
        OUTLINED_FUNCTION_23_3();
        sub_193447600();

        if (v1)
        {
          return;
        }
      }

      if (v24)
      {
        OUTLINED_FUNCTION_4_7(v14, v24, 4);
      }
    }
  }
}

void sub_1935FC624()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB3A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_30_3();
  v1 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("displayName");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  OUTLINED_FUNCTION_10_0();
  v3();
  v4 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_36_5(v4, "localizedDisplayName");
  OUTLINED_FUNCTION_10_0();
  v3();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935FC76C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_48_16();
      sub_193498018();
      if (v35)
      {
        OUTLINED_FUNCTION_47_18(v3, v4, v5, v6, v7, v8, v9, v10, v27, v29, v31, v33.key._countAndFlagsBits, v33.key._object, v33.developmentLocalization.value._countAndFlagsBits, v33.developmentLocalization.value._object, v33.localizedStrings._rawValue, v34, v35, v36, v37, v38);
      }

      else
      {
        WalletPaymentsCommerceClassicOrder.LocalizedString.init()(&v33);
        OUTLINED_FUNCTION_65_14(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, v33.key._countAndFlagsBits, v33.key._object, v33.developmentLocalization.value._countAndFlagsBits, v33.developmentLocalization.value._object, v33.localizedStrings._rawValue);
      }

      OUTLINED_FUNCTION_46_19(v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, v32);
    }
  }

  return result;
}

uint64_t sub_1935FC870()
{
  OUTLINED_FUNCTION_103();
  v2 = v0[1];
  v9 = *v0;
  v10 = v2;
  v3 = *(v0 + 5);
  v11 = *(v0 + 4);
  v4 = *(v0 + 6);
  v5 = v0[1];
  v12 = *v0;
  v13 = v5;
  v14 = *(v0 + 4);
  sub_1935FCA60(&v12, &v8);
  sub_1935FCA60(&v12, &v8);
  WalletPaymentsCommerceClassicOrder.LocalizedString.init()(&v8);
  sub_1935FCABC();
  v6 = sub_19393C550();

  if (v6)
  {
    result = sub_1935FCB10(&v12);
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v9 = v12;
    v10 = v13;
    v11 = v14;
    OUTLINED_FUNCTION_23_3();
    sub_193447600();

    if (v1)
    {
      return result;
    }
  }

  if (v4)
  {
    return OUTLINED_FUNCTION_4_7(v3, v4, 2);
  }

  return result;
}

unint64_t sub_1935FCABC()
{
  result = qword_1EAE3EF20;
  if (!qword_1EAE3EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF20);
  }

  return result;
}

unint64_t sub_1935FCBC0()
{
  result = qword_1EAE3EF28;
  if (!qword_1EAE3EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF28);
  }

  return result;
}

void *OUTLINED_FUNCTION_73_15(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x48uLL);
}

uint64_t WalletPaymentsCommerceClassicOrder.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for WalletPaymentsCommerceClassicOrder(v2);
  return sub_193448804(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for WalletPaymentsCommerceClassicOrder(uint64_t a1)
{
  result = qword_1ED50C620;
  if (!qword_1ED50C620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for WalletPaymentsCommerceClassicOrder(v2);
  return sub_193448804(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceClassicOrder.orderTypeIdentifier.getter()
{
  type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.orderTypeIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.orderIdentifier.getter()
{
  type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.orderIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.orderNumber.getter()
{
  type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.orderNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.orderDate.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for WalletPaymentsCommerceClassicOrder(v2);
  return sub_193448804(v1 + *(v3 + 40), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceClassicOrder.merchant.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceClassicOrder(v2) + 44);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x48uLL);
  return sub_1935F7D7C(__dst, &v5);
}

void *WalletPaymentsCommerceClassicOrder.merchant.setter()
{
  v2 = *(OUTLINED_FUNCTION_18_25() + 44);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  sub_1935F7DD8(__dst);
  return memcpy((v1 + v2), v0, 0x48uLL);
}

uint64_t WalletPaymentsCommerceClassicOrder.shippingFulfillments.getter()
{
  type metadata accessor for WalletPaymentsCommerceClassicOrder(0);
}

uint64_t WalletPaymentsCommerceClassicOrder.shippingFulfillments.setter()
{
  v2 = *(OUTLINED_FUNCTION_18_25() + 48);

  *(v1 + v2) = v0;
  return result;
}

double sub_1935FD310@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.customer.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(v2) + 52));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v10 = v3[2];
  v6 = v10;
  v11 = v5;
  *v0 = v9[0];
  v0[1] = v4;
  v0[2] = v6;
  v0[3] = v5;
  return sub_193448804(v9, &v8, &qword_1EAE3EE00, &qword_1939714B0);
}

__n128 WalletPaymentsCommerceClassicOrder.customer.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_18_25() + 52));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v8[2] = v2[2];
  v8[3] = v4;
  sub_19344E6DC(v8, &qword_1EAE3EE00, &qword_1939714B0);
  v5 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v5;
  result = *(v0 + 32);
  v7 = *(v0 + 48);
  v2[2] = result;
  v2[3] = v7;
  return result;
}

double sub_1935FD434@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.payment.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(v2) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;
  v0[6] = v10;

  return sub_1935F90AC(v4, v5);
}

__n128 WalletPaymentsCommerceClassicOrder.payment.setter(uint64_t a1)
{
  v7 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + *(type metadata accessor for WalletPaymentsCommerceClassicOrder(0) + 56);
  sub_1935F7D0C(*v4, *(v4 + 8));
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  result = v7;
  *(v4 + 32) = v7;
  *(v4 + 48) = v3;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.key.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.developmentLocalization.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.localizedStrings.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.LocalizedString.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::LocalizedString *__return_ptr retstr)
{
  retstr->key._countAndFlagsBits = 0;
  retstr->key._object = 0xE000000000000000;
  retstr->developmentLocalization.value._countAndFlagsBits = 0;
  retstr->developmentLocalization.value._object = 0;
  retstr->localizedStrings._rawValue = MEMORY[0x1E69E7CC0];
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.localizationName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.localizationValue.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::LocalizedString::Localization __swiftcall WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0;
  return result;
}

uint64_t static WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (v9 = sub_19393CA30(), result = 0, (v9 & 1) != 0))
  {
    if (v5)
    {
      if (v6)
      {
        v11 = v4 == v7 && v5 == v6;
        if (v11 || (OUTLINED_FUNCTION_20_24(v4, v5) & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.Localization.hashValue.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_1935FD920(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_19393CAB0();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t static WalletPaymentsCommerceClassicOrder.LocalizedString.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (!v8 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v6)
    {
      v9 = v4 == v7 && v5 == v6;
      if (v9 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_13:
  v10 = OUTLINED_FUNCTION_13_0();

  return sub_1935FDD88(v10, v11);
}

uint64_t sub_1935FDA60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v38 = a1 + 32;
    v39 = a2 + 32;
    v37 = *(a1 + 16);
    while (1)
    {
      v41 = v3;
      v6 = 104 * v3;
      memcpy(__dst, (v4 + 104 * v3), sizeof(__dst));
      memcpy(v44, (v5 + v6), 0x68uLL);
      v7 = __dst[0] == v44[0] && __dst[1] == v44[1];
      if (!v7 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }

      v8 = __dst[2] == v44[2] && __dst[3] == v44[3];
      if (!v8 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }

      v10 = __dst[6];
      v9 = __dst[7];
      v12 = __dst[8];
      v11 = __dst[9];
      v13 = __dst[10];
      v15 = v44[6];
      v14 = v44[7];
      v16 = v44[8];
      v17 = v44[9];
      v18 = __dst[4] == v44[4] && __dst[5] == v44[5];
      v19 = v44[10];
      if (!v18 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }

      if (v9)
      {
        if (!v14)
        {
          return 0;
        }

        v20 = v10 == v15 && v9 == v14;
        if (!v20 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v14)
      {
        return 0;
      }

      v40 = v17;
      v21 = v11;
      v22 = *(v12 + 16);
      if (v22 != *(v16 + 16))
      {
        return 0;
      }

      if (v22 && v12 != v16)
      {
        v23 = (v16 + 56);
        v24 = (v12 + 56);
        do
        {
          v26 = *(v24 - 1);
          v25 = *v24;
          v28 = *(v23 - 1);
          v27 = *v23;
          v29 = *(v24 - 3) == *(v23 - 3) && *(v24 - 2) == *(v23 - 2);
          if (!v29 && (sub_19393CA30() & 1) == 0)
          {
            return 0;
          }

          if (v25)
          {
            if (!v27)
            {
              return 0;
            }

            v30 = v26 == v28 && v25 == v27;
            if (!v30 && (sub_19393CA30() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v27)
          {
            return 0;
          }

          v23 += 4;
          v24 += 4;
        }

        while (--v22);
      }

      if (!v13)
      {
        break;
      }

      v5 = v39;
      if (!v19)
      {
        return 0;
      }

      if (v21 == v40 && v13 == v19)
      {
        goto LABEL_57;
      }

      v32 = sub_19393CA30();
      sub_1935F7F9C(__dst, v42);
      sub_1935F7F9C(v44, v42);
      if ((v32 & 1) == 0)
      {
        goto LABEL_72;
      }

LABEL_58:
      v33 = v44[12];
      if (__dst[12])
      {
        v4 = v38;
        if (!v44[12])
        {
LABEL_72:
          sub_193601B78(v44);
          sub_193601B78(__dst);
          return 0;
        }

        if (__dst[11] == v44[11] && __dst[12] == v44[12])
        {
          sub_193601B78(v44);
          sub_193601B78(__dst);
        }

        else
        {
          v35 = sub_19393CA30();
          sub_193601B78(v44);
          sub_193601B78(__dst);
          if ((v35 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        sub_193601B78(v44);
        sub_193601B78(__dst);
        v4 = v38;
        if (v33)
        {
          return 0;
        }
      }

      v3 = v41 + 1;
      result = 1;
      if (v41 + 1 == v37)
      {
        return result;
      }
    }

    v5 = v39;
    if (v19)
    {
      return 0;
    }

LABEL_57:
    sub_1935F7F9C(__dst, v42);
    sub_1935F7F9C(v44, v42);
    goto LABEL_58;
  }

  return 1;
}

uint64_t sub_1935FDD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_19393CA30() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        v10 = v5 == v8 && v6 == v7;
        if (!v10 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_19393C640();
  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  return sub_1936010D8(a1, v4);
}

uint64_t WalletPaymentsCommerceClassicOrder.LocalizedString.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_119();
  sub_19393C640();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  sub_1936010D8(v4, v2);
  return sub_19393CB00();
}

uint64_t sub_1935FDF80(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.LocalizedString.hash(into:)(v5);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.displayName.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_25_22(a1);
}

__n128 WalletPaymentsCommerceClassicOrder.Merchant.displayName.setter()
{
  OUTLINED_FUNCTION_37_18();

  result = v3;
  *v0 = v4;
  *(v0 + 16) = v3;
  *(v0 + 32) = v1;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.domainName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.localizedDisplayName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Merchant.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Merchant *__return_ptr retstr)
{
  retstr->displayName.key._countAndFlagsBits = 0;
  retstr->displayName.key._object = 0xE000000000000000;
  retstr->displayName.developmentLocalization.value._countAndFlagsBits = 0;
  retstr->displayName.developmentLocalization.value._object = 0;
  retstr->displayName.localizedStrings._rawValue = MEMORY[0x1E69E7CC0];
  retstr->domainName = 0u;
  retstr->localizedDisplayName = 0u;
}

void WalletPaymentsCommerceClassicOrder.Merchant.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[6];
  v6 = v0[8];
  sub_19393C640();
  if (v3)
  {
    OUTLINED_FUNCTION_33_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_42_22();
  }

  sub_1936010D8(v2, v4);
  if (!v5)
  {
    OUTLINED_FUNCTION_42_22();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_42_22();
    OUTLINED_FUNCTION_116();
    return;
  }

  OUTLINED_FUNCTION_33_15();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_6:
  OUTLINED_FUNCTION_33_15();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_116();

  sub_19393C640();
}

uint64_t WalletPaymentsCommerceClassicOrder.Merchant.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.Merchant.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935FE360(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.Merchant.hash(into:)();
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.fulfillmentIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.trackingNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.carrierName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.carrierIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.shippingRecipient.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_31_25(v5);
  memcpy(a1, (v1 + 64), 0xA8uLL);
  return sub_193448804(v5, v4, &qword_1EAE3EF30, &qword_193971690);
}

void *WalletPaymentsCommerceClassicOrder.ShippingFulfillment.shippingRecipient.setter(const void *a1)
{
  OUTLINED_FUNCTION_31_25(v4);
  sub_19344E6DC(v4, &qword_1EAE3EF30, &qword_193971690);
  return memcpy((v1 + 64), a1, 0xA8uLL);
}

void __swiftcall WalletPaymentsCommerceClassicOrder.ShippingFulfillment.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::ShippingFulfillment *__return_ptr retstr)
{
  sub_193601194(v2);
  retstr->fulfillmentIdentifier._countAndFlagsBits = 0;
  retstr->fulfillmentIdentifier._object = 0xE000000000000000;
  retstr->trackingNumber = 0u;
  retstr->carrierName = 0u;
  retstr->carrierIdentifier = 0u;
  memcpy(__dst, v2, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3EF30, &qword_193971690);
  memcpy(&retstr->shippingRecipient, v2, 0xA8uLL);
}

void static WalletPaymentsCommerceClassicOrder.ShippingFulfillment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v35 = v2[4];
  v37 = v2[5];
  v33 = v2[6];
  v40 = v2[7];
  OUTLINED_FUNCTION_21_23(v48);
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v34 = v1[4];
  v36 = v1[5];
  v38 = v1[6];
  v39 = v1[7];
  OUTLINED_FUNCTION_31_25(v49);
  v11 = v3 == v7 && v4 == v8;
  if (!v11 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_40;
  }

  if (!v6)
  {
    if (v9)
    {
      goto LABEL_40;
    }

LABEL_15:
    if (v37)
    {
      v14 = v39;
      v13 = v40;
      v15 = v38;
      if (!v36)
      {
        goto LABEL_40;
      }

      v16 = v35 == v34 && v37 == v36;
      if (!v16 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v14 = v39;
      v13 = v40;
      v15 = v38;
      if (v36)
      {
        goto LABEL_40;
      }
    }

    if (v13)
    {
      if (!v14)
      {
        goto LABEL_40;
      }

      v17 = v33 == v15 && v13 == v14;
      if (!v17 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v14)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_21_23(__src);
    OUTLINED_FUNCTION_31_25(&__src[168]);
    OUTLINED_FUNCTION_21_23(v47);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v47) == 1)
    {
      OUTLINED_FUNCTION_31_25(__dst);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1)
      {
        OUTLINED_FUNCTION_21_23(v45);
        OUTLINED_FUNCTION_79_1(v48, v43);
        OUTLINED_FUNCTION_79_1(v49, v43);
        sub_19344E6DC(v45, &qword_1EAE3EF30, &qword_193971690);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_79_1(v48, v45);
      OUTLINED_FUNCTION_79_1(v49, v45);
    }

    else
    {
      OUTLINED_FUNCTION_21_23(v45);
      OUTLINED_FUNCTION_31_25(__dst);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
      {
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v18, v19, v20, v21);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v22, v23, v24, v25);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v26, v27, v28, v29);
        static WalletPaymentsCommerceClassicOrder.ShippingRecipient.== infix(_:_:)();
        OUTLINED_FUNCTION_31_25(v41);
        sub_1936011A8(v41);
        OUTLINED_FUNCTION_21_23(v42);
        sub_1936011A8(v42);
        OUTLINED_FUNCTION_21_23(v43);
        OUTLINED_FUNCTION_175();
        sub_19344E6DC(v30, v31, v32);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_21_23(v43);
      OUTLINED_FUNCTION_79_1(v48, v42);
      OUTLINED_FUNCTION_79_1(v49, v42);
      OUTLINED_FUNCTION_79_1(v45, v42);
      sub_1936011A8(v43);
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_19344E6DC(__dst, &qword_1EAE3EF38, &qword_193971698);
    goto LABEL_40;
  }

  if (v9)
  {
    v12 = v5 == v10 && v6 == v9;
    if (v12 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_40:
  OUTLINED_FUNCTION_116();
}

void WalletPaymentsCommerceClassicOrder.ShippingFulfillment.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[7];
  sub_19393C640();
  if (v3)
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_46_20();
    sub_19393C640();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_95_8();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_95_8();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_94();
  sub_19393C640();
  if (v5)
  {
LABEL_4:
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_2_0();
    sub_19393C640();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_95_8();
LABEL_8:
  OUTLINED_FUNCTION_21_23(v8);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v8) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_21_23(v6);
    sub_1935F7E88(v6, v7);
    WalletPaymentsCommerceClassicOrder.ShippingRecipient.hash(into:)(v2);
    OUTLINED_FUNCTION_21_23(v7);
    sub_1936011A8(v7);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingFulfillment.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.ShippingFulfillment.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935FEB38(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.ShippingFulfillment.hash(into:)();
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.emailAddress.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 64), sizeof(__dst));
  memcpy(a1, (v1 + 64), 0x68uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE3EF40, &qword_1939716A0);
}

void *WalletPaymentsCommerceClassicOrder.ShippingRecipient.address.setter(const void *a1)
{
  memcpy(__dst, (v1 + 64), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3EF40, &qword_1939716A0);
  return memcpy((v1 + 64), a1, 0x68uLL);
}

void __swiftcall WalletPaymentsCommerceClassicOrder.ShippingRecipient.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::ShippingRecipient *__return_ptr retstr)
{
  bzero(retstr, 0xA8uLL);
  memcpy(__dst, &retstr->address, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3EF40, &qword_1939716A0);
  *&retstr->address.value.addressLines._rawValue = 0u;
  *&retstr->address.value.locality.value._object = 0u;
  *&retstr->address.value.subLocality.value._object = 0u;
  *&retstr->address.value.administrativeArea.value._object = 0u;
  *&retstr->address.value.subAdministrativeArea.value._object = 0u;
  *&retstr->address.value.postalCode.value._object = 0u;
  retstr->address.value.countryCode.value._object = 0;
}

void static WalletPaymentsCommerceClassicOrder.ShippingRecipient.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v67 = v2[4];
  v65 = v2[6];
  v70 = v2[5];
  v71 = v2[7];
  memcpy(__dst, v2 + 8, sizeof(__dst));
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v66 = v1[4];
  v64 = v1[6];
  v68 = v1[7];
  v69 = v1[5];
  v12 = memcpy(v79, v1 + 8, 0x68uLL);
  if (!v5)
  {
    if (v8)
    {
      goto LABEL_44;
    }

LABEL_10:
    if (v7)
    {
      if (!v11)
      {
        goto LABEL_44;
      }

      if (v6 != v10 || v7 != v11)
      {
        OUTLINED_FUNCTION_2_0();
        v12 = sub_19393CA30();
        if ((v12 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v11)
    {
      goto LABEL_44;
    }

    v21 = v70;
    if (v70)
    {
      v22 = v71;
      v23 = v68;
      v14 = v69;
      if (!v69)
      {
        goto LABEL_44;
      }

      v13 = v66;
      v12 = v67;
      if (v67 != v66 || v70 != v69)
      {
        v12 = sub_19393CA30();
        if ((v12 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v22 = v71;
      v23 = v68;
      if (v69)
      {
        goto LABEL_44;
      }
    }

    if (v22)
    {
      if (!v23)
      {
        goto LABEL_44;
      }

      v13 = v64;
      v12 = v65;
      if (v65 != v64 || v22 != v23)
      {
        v12 = sub_19393CA30();
        if ((v12 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v23)
    {
      goto LABEL_44;
    }

    v26 = __dst[0];
    v27 = v79[0];
    if (__dst[0])
    {
      __src[0] = __dst[0];
      OUTLINED_FUNCTION_48_17(v12, v21, v13, v14, v15, v16, v17, v18, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], v72[12], v73[0], v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7], v73[8], v73[9], v73[10], v73[11], v73[12], v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v75[0], v75[1], v75[2], v75[3], v75[4], v75[5], v75[6]);
      memcpy(v75, __src, sizeof(v75));
      if (v27)
      {
        memcpy(&v74[1], v1 + 9, 0x60uLL);
        v74[0] = v27;
        static WalletPaymentsCommerceClassicOrder.Address.== infix(_:_:)(v75, v74);
        memcpy(v72, v74, sizeof(v72));
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v28, v29, v30, v31);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v32, v33, v34, v35);
        OUTLINED_FUNCTION_9_12();
        sub_193448804(v36, v37, v38, v39);
        sub_1936011D8(v72);
        memcpy(v73, v75, sizeof(v73));
        sub_1936011D8(v73);
        v74[0] = v26;
        memcpy(&v74[1], v3 + 9, 0x60uLL);
        OUTLINED_FUNCTION_175();
        sub_19344E6DC(v40, v41, v42);
        goto LABEL_44;
      }

      memcpy(v74, __src, sizeof(v74));
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v51, v52, v53, v54);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v55, v56, v57, v58);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v59, v60, v61, v62);
      sub_1936011D8(v74);
    }

    else
    {
      if (!v79[0])
      {
        __src[0] = 0;
        OUTLINED_FUNCTION_48_17(v12, v21, v13, v14, v15, v16, v17, v18, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], v72[12], v73[0], v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7], v73[8], v73[9], v73[10], v73[11], v73[12], v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v75[0], v75[1], v75[2], v75[3], v75[4], v75[5], v75[6]);
        OUTLINED_FUNCTION_79_1(__dst, v75);
        OUTLINED_FUNCTION_79_1(v79, v75);
        sub_19344E6DC(__src, &qword_1EAE3EF40, &qword_1939716A0);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_9_12();
      sub_193448804(v43, v44, v45, v46);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v47, v48, v49, v50);
    }

    __src[0] = v26;
    memcpy(&__src[1], v3 + 9, 0x60uLL);
    __src[13] = v27;
    memcpy(v77, v1 + 9, sizeof(v77));
    sub_19344E6DC(__src, &qword_1EAE3EF48, &qword_1939716A8);
    goto LABEL_44;
  }

  if (v8)
  {
    if (v4 == v9 && v5 == v8)
    {
      goto LABEL_10;
    }

    v12 = sub_19393CA30();
    if (v12)
    {
      goto LABEL_10;
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[7];
  v6 = v1[8];
  if (v1[1])
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_46_20();
      sub_19393C640();
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_6;
    }

    return OUTLINED_FUNCTION_104_0();
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (v6)
  {
LABEL_6:
    memcpy(&__src[1], v1 + 9, 0x60uLL);
    __src[0] = v6;
    OUTLINED_FUNCTION_103_0();
    v9 = v6;
    memcpy(v10, v1 + 9, sizeof(v10));
    sub_1935F7F40(&v9, __dst);
    WalletPaymentsCommerceClassicOrder.Address.hash(into:)(a1);
    memcpy(__dst, __src, 0x68uLL);
    return sub_1936011D8(__dst);
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t WalletPaymentsCommerceClassicOrder.ShippingRecipient.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.ShippingRecipient.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935FF3A8(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.ShippingRecipient.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.emailAddress.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Customer.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Customer *__return_ptr retstr)
{
  retstr->phoneNumber = 0u;
  retstr->emailAddress = 0u;
  OUTLINED_FUNCTION_38_20(retstr, 0);
}

uint64_t static WalletPaymentsCommerceClassicOrder.Customer.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v34 = a1[5];
      v35 = a2[5];
      v18 = a1[4];
      v19 = a2[6];
      v20 = a2[7];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_19393CA30();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v34;
      v15 = v35;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_19393CA30();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v30 = v7;
      v31 = sub_19393CA30();
      v7 = v30;
      if ((v31 & 1) == 0)
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
    if (v16)
    {
      v32 = v7 == v14 && v9 == v16;
      if (v32 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

void WalletPaymentsCommerceClassicOrder.Customer.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  if (v0[1])
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_19393CAD0();
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_19393CAD0();
      OUTLINED_FUNCTION_116();
      return;
    }
  }

  sub_19393CAD0();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_19393CAD0();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_116();

  sub_19393C640();
}

uint64_t WalletPaymentsCommerceClassicOrder.Customer.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.Customer.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935FF8A0(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.Customer.hash(into:)();
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.addressLines.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.locality.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.subLocality.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.administrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Address.postalCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Address.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Address *__return_ptr retstr)
{
  retstr->addressLines._rawValue = MEMORY[0x1E69E7CC0];
  retstr->locality = 0u;
  retstr->subLocality = 0u;
  retstr->administrativeArea = 0u;
  retstr->subAdministrativeArea = 0u;
  OUTLINED_FUNCTION_34_22(retstr, 0);
}

uint64_t static WalletPaymentsCommerceClassicOrder.Address.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v29 = a1[5];
  v36 = a1[6];
  v35 = a1[8];
  v24 = a1[9];
  v33 = a1[10];
  v23 = a1[11];
  v26 = a1[12];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v27 = a2[7];
  v28 = a1[7];
  v30 = a2[8];
  v31 = a2[9];
  v32 = a2[10];
  v34 = a2[11];
  v25 = a2[12];
  if ((sub_19344FC94(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    if (v2 != v6 || v3 != v7)
    {
      OUTLINED_FUNCTION_9_12();
      if ((sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = v4 == v8 && v5 == v10;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v36)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = v29 == v9 && v36 == v11;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v35)
  {
    v16 = v33;
    v15 = v34;
    v18 = v31;
    v17 = v32;
    if (!v30)
    {
      return 0;
    }

    v19 = v28 == v27 && v35 == v30;
    if (!v19 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = v33;
    v15 = v34;
    v18 = v31;
    v17 = v32;
    if (v30)
    {
      return 0;
    }
  }

  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    v20 = v24 == v18 && v16 == v17;
    if (!v20 && (OUTLINED_FUNCTION_20_24(v24, v16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v26)
  {
    if (v25)
    {
      v21 = v23 == v15 && v26 == v25;
      if (v21 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

void WalletPaymentsCommerceClassicOrder.Address.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[8];
  v6 = v1[10];
  v7 = v1[12];
  sub_1934D11C8(a1, *v1);
  if (v2)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v3)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_19393CAD0();
  if (v4)
  {
LABEL_4:
    sub_19393CAD0();
    OUTLINED_FUNCTION_46_20();
    sub_19393C640();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_19393CAD0();
  if (v5)
  {
LABEL_5:
    sub_19393CAD0();
    sub_19393C640();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_19393CAD0();
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_19393CAD0();
    OUTLINED_FUNCTION_107();
    return;
  }

LABEL_13:
  sub_19393CAD0();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_19393CAD0();
  sub_19393C640();
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_7:
  sub_19393CAD0();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.totalAmount.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.totalCurrencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.paymentMethods.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.applePayTransactionIdentifiers.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.transactions.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Payment.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Payment *__return_ptr retstr)
{
  retstr->totalAmount._countAndFlagsBits = 0;
  retstr->totalAmount._object = 0xE000000000000000;
  retstr->totalCurrencyCode._countAndFlagsBits = 0;
  retstr->totalCurrencyCode._object = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  retstr->paymentMethods._rawValue = MEMORY[0x1E69E7CC0];
  retstr->applePayTransactionIdentifiers._rawValue = v1;
  retstr->transactions._rawValue = v1;
}

void static WalletPaymentsCommerceClassicOrder.Payment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_13_20(v0);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (v12 || (sub_19393CA30()) && (v4 == v8 ? (v13 = v6 == v9) : (v13 = 0), (v13 || (OUTLINED_FUNCTION_46_20(), (sub_19393CA30())) && (sub_19344FC94(v5, v11) & 1) != 0 && (sub_19344FC94(v7, v10)))
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_116();

    sub_1935FDA60(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_116();
  }
}

uint64_t WalletPaymentsCommerceClassicOrder.Payment.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_19393C640();
  OUTLINED_FUNCTION_175();
  sub_19393C640();
  sub_1934D11C8(a1, v3);
  sub_1934D11C8(a1, v4);
  v5 = OUTLINED_FUNCTION_13_0();

  return sub_193600E68(v5, v6);
}

void WalletPaymentsCommerceClassicOrder.Payment.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_51_15();
  a27 = v29;
  a28 = v30;
  v31 = v28[4];
  v32 = v28[5];
  v33 = v28[6];
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_15_1();
  sub_19393C640();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  sub_1934D11C8(&a10, v31);
  sub_1934D11C8(&a10, v32);
  sub_193600E68(&a10, v33);
  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

void sub_193600368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_51_15();
  a27 = v29;
  a28 = v30;
  v31 = v28[4];
  v32 = v28[5];
  v33 = v28[6];
  sub_19393CAB0();
  OUTLINED_FUNCTION_15_1();
  sub_19393C640();
  OUTLINED_FUNCTION_2_0();
  sub_19393C640();
  sub_1934D11C8(&a10, v31);
  sub_1934D11C8(&a10, v32);
  sub_193600E68(&a10, v33);
  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.amount.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.currencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.paymentMethod.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[10];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
  a1[6] = v7;
}

__n128 WalletPaymentsCommerceClassicOrder.Transaction.paymentMethod.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v4 = a1[2];
  v2 = *(a1 + 6);

  *(v1 + 32) = v6;
  *(v1 + 48) = v5;
  result = v4;
  *(v1 + 64) = v4;
  *(v1 + 80) = v2;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.applePayTransactionIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Transaction.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Transaction *__return_ptr retstr)
{
  retstr->amount._countAndFlagsBits = 0;
  retstr->amount._object = 0xE000000000000000;
  retstr->currencyCode._countAndFlagsBits = 0;
  retstr->currencyCode._object = 0xE000000000000000;
  retstr->paymentMethod.displayName.key._countAndFlagsBits = 0;
  retstr->paymentMethod.displayName.key._object = 0xE000000000000000;
  retstr->paymentMethod.displayName.developmentLocalization.value._countAndFlagsBits = 0;
  retstr->paymentMethod.displayName.developmentLocalization.value._object = 0;
  retstr->paymentMethod.displayName.localizedStrings._rawValue = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_34_22(retstr, 0);
}

void __swiftcall WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceClassicOrder::Transaction::PaymentMethod *__return_ptr retstr)
{
  retstr->displayName.key._countAndFlagsBits = 0;
  retstr->displayName.key._object = 0xE000000000000000;
  retstr->displayName.developmentLocalization.value._countAndFlagsBits = 0;
  retstr->displayName.developmentLocalization.value._object = 0;
  v1 = MEMORY[0x1E69E7CC0];
  retstr->localizedDisplayName.value._countAndFlagsBits = 0;
  retstr->localizedDisplayName.value._object = 0;
  retstr->displayName.localizedStrings._rawValue = v1;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.displayName.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_25_22(a1);
}

__n128 WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.displayName.setter()
{
  OUTLINED_FUNCTION_37_18();

  result = v3;
  *v0 = v4;
  *(v0 + 16) = v3;
  *(v0 + 32) = v1;
  return result;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.localizedDisplayName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t static WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if (OUTLINED_FUNCTION_15_31(a1, *a1, v8, v9, v10, v11, v12, v13, v14, v15))
  {
    if (v3)
    {
      if (v5)
      {
        v6 = v2 == v4 && v3 == v5;
        if (v6 || (OUTLINED_FUNCTION_20_24(v2, v3) & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[6];
  sub_19393C640();
  sub_19393CAD0();
  if (v3)
  {
    sub_19393C640();
  }

  sub_1936010D8(a1, v4);
  if (!v5)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

void WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_51_15();
  a27 = v29;
  a28 = v30;
  v31 = v28[3];
  v32 = v28[4];
  v33 = v28[6];
  OUTLINED_FUNCTION_119();
  sub_19393C640();
  sub_19393CAD0();
  if (v31)
  {
    sub_19393C640();
  }

  sub_1936010D8(&a10, v32);
  sub_19393CAD0();
  if (v33)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

uint64_t sub_1936009D8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  v8 = *(v1 + 40);
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.hash(into:)(v5);
  return sub_19393CB00();
}

uint64_t static WalletPaymentsCommerceClassicOrder.Transaction.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = v3[2];
  v5 = v3[3];
  v30 = v3[5];
  v6 = v3[7];
  v27 = v3[6];
  v28 = v3[4];
  v7 = v3[8];
  v8 = v3[10];
  v22 = v3[12];
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[5];
  v25 = v2[4];
  v26 = v3[9];
  v29 = v2[7];
  v12 = v2[8];
  v23 = v2[9];
  v24 = v2[6];
  v13 = v2[10];
  v19 = v2[11];
  v20 = v3[11];
  v14 = v1 == *v2 && v3[1] == v2[1];
  v21 = v2[12];
  if (v14 || (sub_19393CA30() & 1) != 0)
  {
    v15 = v4 == v9 && v5 == v10;
    if (v15 || (OUTLINED_FUNCTION_2_0(), (sub_19393CA30() & 1) != 0))
    {
      v32[0] = v28;
      v32[1] = v30;
      v32[2] = v27;
      v32[3] = v6;
      v32[4] = v7;
      v32[5] = v26;
      v32[6] = v8;
      v31[0] = v25;
      v31[1] = v11;
      v31[2] = v24;
      v31[3] = v29;
      v31[4] = v12;
      v31[5] = v23;
      v31[6] = v13;

      v16 = static WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.== infix(_:_:)(v32, v31);

      if (v16)
      {
        if (v22)
        {
          if (v21)
          {
            v17 = v20 == v19 && v22 == v21;
            if (v17 || (sub_19393CA30() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v21)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void WalletPaymentsCommerceClassicOrder.Transaction.hash(into:)(uint64_t a1)
{
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[10];
  v6 = v1[12];
  sub_19393C640();
  sub_19393C640();
  sub_19393C640();
  if (v3)
  {
    OUTLINED_FUNCTION_33_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_42_22();
  }

  sub_1936010D8(a1, v4);
  if (!v5)
  {
    OUTLINED_FUNCTION_42_22();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_42_22();
    OUTLINED_FUNCTION_107();
    return;
  }

  OUTLINED_FUNCTION_33_15();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_6:
  OUTLINED_FUNCTION_33_15();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t sub_193600D40(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_193600DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193600E28(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t sub_193600E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = 0;
    v13 = a2 + 32;
    do
    {
      v6 = (v13 + 104 * v5);
      v7 = v6[7];
      v8 = v6[8];
      v9 = v6[10];
      v14 = v6[12];

      sub_19393C640();
      sub_19393C640();
      sub_19393C640();
      sub_19393CAD0();
      if (v7)
      {
        sub_19393C640();
      }

      MEMORY[0x193B18030](*(v8 + 16));
      v10 = *(v8 + 16);
      if (v10)
      {
        v11 = (v8 + 56);
        do
        {
          v12 = *v11;

          sub_19393C640();
          sub_19393CAD0();
          if (v12)
          {
            sub_19393C640();
          }

          v11 += 4;

          --v10;
        }

        while (v10);
      }

      sub_19393CAD0();
      if (v9)
      {
        sub_19393C640();
      }

      sub_19393CAD0();
      if (v14)
      {
        sub_19393C640();
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1936010D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *v5;

      sub_19393C640();
      sub_19393CAD0();
      if (v6)
      {
        sub_19393C640();
      }

      v5 += 4;

      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_19360120C()
{
  result = qword_1EAE3EF50;
  if (!qword_1EAE3EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF50);
  }

  return result;
}

unint64_t sub_193601270()
{
  result = qword_1EAE3EF58;
  if (!qword_1EAE3EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF58);
  }

  return result;
}

unint64_t sub_1936012CC()
{
  result = qword_1EAE3EF60;
  if (!qword_1EAE3EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF60);
  }

  return result;
}

unint64_t sub_19360132C()
{
  result = qword_1EAE3EF68;
  if (!qword_1EAE3EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF68);
  }

  return result;
}

unint64_t sub_193601384()
{
  result = qword_1EAE3EF70;
  if (!qword_1EAE3EF70)
  {
    type metadata accessor for WalletPaymentsCommerceClassicOrder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF70);
  }

  return result;
}

uint64_t sub_193601404(uint64_t a1)
{
  sub_19349D140(319);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    OUTLINED_FUNCTION_2_42(v4, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_193601568(319, qword_1ED5034E0, &type metadata for WalletPaymentsCommerceClassicOrder.ShippingFulfillment, MEMORY[0x1E69E62F8]);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        OUTLINED_FUNCTION_2_42(v7, &qword_1ED503928, &type metadata for WalletPaymentsCommerceClassicOrder.Customer);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          OUTLINED_FUNCTION_2_42(v8, qword_1ED503930, &type metadata for WalletPaymentsCommerceClassicOrder.Payment);
          OUTLINED_FUNCTION_4_0();
          if (!(!v3 & v2))
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_193601568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1936015B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1936015F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_193601648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193601688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_1936016D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 72))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193601710(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 72) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary34WalletPaymentsCommerceClassicOrderV7AddressVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary34WalletPaymentsCommerceClassicOrderV17ShippingRecipientVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1936017A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 232))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1936017E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    result = OUTLINED_FUNCTION_53_5(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 232) = 1;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 232) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_193601860(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 168))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_52_15();
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

uint64_t sub_1936018B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    result = OUTLINED_FUNCTION_53_5(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_193601930(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_52_15();
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

uint64_t sub_193601988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

void sub_1936019F4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    OUTLINED_FUNCTION_47_19(a1, a2);
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_35_21(v3);
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *a1 = (a2 - 1);
      return;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_193601A54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 104))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_193601A94(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    OUTLINED_FUNCTION_47_19(a1, a2);
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_35_21(v3);
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      OUTLINED_FUNCTION_3_2(a1, a2);
      return;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_193601AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 56))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193601B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_21_23(void *a1)
{

  return memcpy(a1, (v1 + 64), 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_42_22()
{

  return sub_19393CAD0();
}

void *OUTLINED_FUNCTION_48_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a65, (v65 + 72), 0x60uLL);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceOrderEmail.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v23 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  OUTLINED_FUNCTION_0_52();
  sub_193604494(v1, v12, v16);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v17, &qword_1EAE3EF78, &qword_1939720F8, v18);
  sub_19393C250();
  (*(v3 + 8))(v7, v23);
  sub_19344E6DC(v15, &qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

void static WalletPaymentsCommerceOrderEmail.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v30, &qword_1EAE3EF78, &qword_1939720F8, v31);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_0_52();
    sub_1936043DC(v29, v24, v32);
  }

  OUTLINED_FUNCTION_27();
}

void static WalletPaymentsCommerceOrderEmail.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v38 = v2;
  v39 = v1;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  if (*sub_19360AA08() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    (*(v15 + 16))(v19, v21, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    v26 = OUTLINED_FUNCTION_38_21();
    v27(v26);
    if (!v0)
    {
      OUTLINED_FUNCTION_0_52();
      v29 = v38;
      sub_1936043DC(v12, v38, v30);
      v31 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
      v32 = *(v31 + 20);
      sub_19344E6DC(v29 + v32, &qword_1EAE3A9E8, &qword_19394F800);
      v33 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v34 + 16))(v29 + v32, v37, v33);
      __swift_storeEnumTagSinglePayload(v29 + v32, 0, 1, v33);
      v35 = *(v31 + 24);
      sub_19344E6DC(v29 + v35, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v39, v29 + v35);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v28 = v5;
    *(v28 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceOrderEmail.serialize()()
{
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_0_52();
  sub_193604494(v0, v5, v9);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v10, &qword_1EAE3EF78, &qword_1939720F8, v11);
  sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3EF78, &qword_1939720F8);
  return OUTLINED_FUNCTION_13_0();
}

id static WalletPaymentsCommerceOrderEmail.columns.getter()
{
  v125 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_42_23();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v12, v13, v14, v15, v0, 4, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v27 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  v37 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v37);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_10_31();
  result = OUTLINED_FUNCTION_3_5(v38, v39);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  v40 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v50 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v60 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v60);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_59_1();
  result = OUTLINED_FUNCTION_3_5(v61, v62);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v63 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v73 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  v83 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v83);
  v84 = OUTLINED_FUNCTION_39_21();
  result = OUTLINED_FUNCTION_3_5(v84, v85);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v86 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  v96 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v106 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v106);
  v107 = OUTLINED_FUNCTION_39_21();
  result = OUTLINED_FUNCTION_3_5(v107, v108);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v109 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
  v119 = OUTLINED_FUNCTION_6_4();
  *(v119 + 16) = xmmword_193950B10;
  *(v119 + 32) = sub_19393C850();
  v120 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v121, v122, v123, v124, v119, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v125;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_193602668()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v64 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65[-v8 - 8];
  v10 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = v4 == 0x74654D6C69616D65 && v2 == 0xED00006174616461;
  if (!v15 && (OUTLINED_FUNCTION_24_5(0x74654D6C69616D65, 0xED00006174616461) & 1) == 0)
  {
    v19 = v4 == OUTLINED_FUNCTION_42_23() && v2 == 0xE900000000000065;
    if (v19 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_24_5(v20, v21) & 1) != 0))
    {
      v22 = v0 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 32);
      if (*(v22 + 9))
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_10_31();
    v23 = OUTLINED_FUNCTION_19_7() | 0x6D754E7200000000;
    v25 = v4 == v23 && v2 == v24;
    if (v25 || (OUTLINED_FUNCTION_24_5(v23, v24) & 1) != 0)
    {
      v26 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 36);
      goto LABEL_23;
    }

    v29 = v4 == (OUTLINED_FUNCTION_19_7() | 0x7461447200000000) && v2 == 0xE900000000000065;
    if (v29 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_24_5(v30, v31) & 1) != 0))
    {
      v26 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 40);
      goto LABEL_23;
    }

    v32 = v4 == 0x746E61686372656DLL && v2 == 0xE800000000000000;
    if (v32 || (OUTLINED_FUNCTION_24_5(0x746E61686372656DLL, 0xE800000000000000) & 1) != 0)
    {
      v33 = (v0 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 44));
      v34 = v33[1];
      if (v34 == 1)
      {
        goto LABEL_8;
      }

      *&v66[0] = *v33;
      *(&v66[0] + 1) = v34;
      v35 = &type metadata for WalletPaymentsCommerceOrderEmail.Merchant;
      v36 = &off_1F07D7AB8;
    }

    else
    {
      v37 = v4 == 0x72656D6F74737563 && v2 == 0xE800000000000000;
      if (v37 || (OUTLINED_FUNCTION_24_5(0x72656D6F74737563, 0xE800000000000000) & 1) != 0)
      {
        v38 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        memcpy(v66, (v0 + *(v38 + 48)), 0x108uLL);
        if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v66) == 1)
        {
          goto LABEL_8;
        }

        memcpy(v65, v66, sizeof(v65));
        v35 = &type metadata for WalletPaymentsCommerceOrderEmail.Customer;
        v36 = &off_1F07D7AE8;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v40 = v4 == 0xD000000000000011 && v39 == v2;
        if (v40 || (OUTLINED_FUNCTION_24_5(0xD000000000000011, v39) & 1) != 0)
        {
          v41 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
          memcpy(v66, (v0 + *(v41 + 52)), 0x108uLL);
          if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v66) == 1)
          {
            goto LABEL_8;
          }

          memcpy(v65, v66, sizeof(v65));
          v35 = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingRecipient;
          v36 = &off_1F07D7AD8;
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v43 = v4 == 0xD000000000000013 && v42 == v2;
          if (v43 || (OUTLINED_FUNCTION_24_5(0xD000000000000013, v42) & 1) != 0)
          {
            v44 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
            memcpy(v66, (v0 + *(v44 + 56)), 0xC0uLL);
            if (sub_1936043B8(v66) == 1)
            {
              goto LABEL_8;
            }

            memcpy(v65, v66, 0xC0uLL);
            v35 = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingInformation;
            v36 = &off_1F07D7AC8;
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v46 = v4 == 0xD000000000000012 && v45 == v2;
            if (!v46 && (OUTLINED_FUNCTION_24_5(0xD000000000000012, v45) & 1) == 0)
            {
              OUTLINED_FUNCTION_38();
              v51 = v4 == 0xD000000000000019 && v50 == v2;
              if (v51 || (v52 = OUTLINED_FUNCTION_39_21(), (OUTLINED_FUNCTION_24_5(v52, v53) & 1) != 0))
              {
                v26 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 64);
              }

              else
              {
                OUTLINED_FUNCTION_38();
                if (v4 != 0xD000000000000019 || v54 != v2)
                {
                  v56 = OUTLINED_FUNCTION_39_21();
                  if ((OUTLINED_FUNCTION_24_5(v56, v57) & 1) == 0)
                  {
                    OUTLINED_FUNCTION_38();
                    v59 = v4 == 0xD000000000000010 && v58 == v2;
                    if (!v59 && (OUTLINED_FUNCTION_24_5(0xD000000000000010, v58) & 1) == 0)
                    {
                      sub_19349AB64();
                      OUTLINED_FUNCTION_11();
                      swift_allocError();
                      v61 = v60;
                      *v60 = v4;
                      v60[1] = v2;
                      v60[5] = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
                      __swift_allocate_boxed_opaque_existential_1Tm(v61 + 2);
                      OUTLINED_FUNCTION_0_52();
                      sub_193604494(v0, v62, v63);
                      *(v61 + 48) = 1;
                      swift_willThrow();

                      goto LABEL_26;
                    }

                    v22 = v0 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 72);
                    if (*(v22 + 9))
                    {
                      goto LABEL_8;
                    }

LABEL_16:
                    OUTLINED_FUNCTION_29_18(v22);
                    goto LABEL_25;
                  }
                }

                v26 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 68);
              }

LABEL_23:
              v27 = (v0 + v26);
              v28 = *(v0 + v26 + 8);
              if (!v28)
              {
                goto LABEL_8;
              }

              *&v66[0] = *v27;
              *(&v66[0] + 1) = v28;
LABEL_25:
              sub_1934948FC();
              goto LABEL_26;
            }

            v47 = v0 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 60);
            v48 = *(v47 + 8);
            if (v48 == 1)
            {
              goto LABEL_8;
            }

            *&v66[0] = *v47;
            *(&v66[0] + 1) = v48;
            v49 = *(v47 + 32);
            v66[1] = *(v47 + 16);
            v66[2] = v49;
            v66[3] = *(v47 + 48);
            LOBYTE(v66[4]) = *(v47 + 64);
            v35 = &type metadata for WalletPaymentsCommerceOrderEmail.PaymentInformation;
            v36 = &off_1F07D7B08;
          }
        }
      }
    }

    sub_193494798(v35, v36, v64);
    goto LABEL_26;
  }

  v16 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  sub_193448758(v0 + *(v16 + 28), v9, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    OUTLINED_FUNCTION_15_32();
    sub_1936043DC(v9, v14, v18);
    sub_193494798(v10, &off_1F07D7AA8, v64);
    sub_193604438(v14);
    goto LABEL_26;
  }

  sub_19344E6DC(v9, &qword_1EAE3EF88, &qword_193972100);
LABEL_8:
  v17 = v64;
  *v64 = 0u;
  *(v17 + 1) = 0u;
LABEL_26:
  OUTLINED_FUNCTION_27();
}

void sub_193602C70()
{
  OUTLINED_FUNCTION_26();
  v75 = v1;
  v76 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v71 - v8;
  v73 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v71 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v14);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v71 - v16;
  v18 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_1();
  v24 = v23 - v22;
  v74 = v5;
  v25 = v5 == 0x496567617373656DLL && v3 == 0xE900000000000044;
  if (v25 || (OUTLINED_FUNCTION_13_21(0x496567617373656DLL, 0xE900000000000044) & 1) != 0)
  {
    v26 = v76;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_16_2();
  v29 = v25 && v3 == 0xE800000000000000;
  if (v29 || (OUTLINED_FUNCTION_13_21(v28, 0xE800000000000000) & 1) != 0)
  {
    v30 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
    sub_193448758(v76 + *(v30 + 20), v17, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      (*(v20 + 32))(v24, v17, v18);
      OUTLINED_FUNCTION_38_21();
      sub_1934948FC();
      v35 = OUTLINED_FUNCTION_38_21();
      v36(v35);
      goto LABEL_18;
    }

    v31 = &qword_1EAE3A9E8;
    v32 = &qword_19394F800;
    v33 = v17;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_16_2();
  v38 = v25 && v3 == 0xE700000000000000;
  if (v38 || (OUTLINED_FUNCTION_13_21(v37, 0xE700000000000000) & 1) != 0)
  {
    v39 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 24);
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    v42 = v25 && v3 == v41;
    if (v42 || (OUTLINED_FUNCTION_13_21(v40, v41) & 1) != 0)
    {
      v39 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 28);
    }

    else
    {
      OUTLINED_FUNCTION_16_2();
      v45 = v25 && v3 == v44;
      if (v45 || (OUTLINED_FUNCTION_13_21(v43, v44) & 1) != 0)
      {
        v46 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
        v47 = v72;
        sub_193448758(v76 + *(v46 + 32), v72, &qword_1EAE3ACA0, &qword_193972420);
        v48 = v73;
        if (__swift_getEnumTagSinglePayload(v47, 1, v73) != 1)
        {
          v49 = v71;
          (*(v71 + 32))(v13, v47, v48);
          sub_1934948FC();
          (*(v49 + 8))(v13, v48);
          goto LABEL_18;
        }

        v31 = &qword_1EAE3ACA0;
        v32 = &qword_193972420;
        v33 = v47;
LABEL_16:
        sub_19344E6DC(v33, v31, v32);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_38();
      v51 = v74 == 0xD000000000000010 && v50 == v3;
      if (v51 || (OUTLINED_FUNCTION_13_21(0xD000000000000010, v50) & 1) != 0)
      {
        v39 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 36);
      }

      else
      {
        OUTLINED_FUNCTION_16_2();
        v54 = v25 && v3 == v53;
        if (v54 || (OUTLINED_FUNCTION_13_21(v52, v53) & 1) != 0)
        {
          v39 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 40);
        }

        else
        {
          OUTLINED_FUNCTION_40_17();
          OUTLINED_FUNCTION_16_2();
          v57 = v25 && v3 == v56;
          if (v57 || (OUTLINED_FUNCTION_13_21(v55, v56) & 1) != 0)
          {
            v39 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 44);
          }

          else
          {
            OUTLINED_FUNCTION_16_2();
            v60 = v25 && v3 == v59;
            if (v60 || (OUTLINED_FUNCTION_13_21(v58, v59) & 1) != 0)
            {
              v39 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 48);
            }

            else
            {
              OUTLINED_FUNCTION_38();
              OUTLINED_FUNCTION_16_2();
              v63 = v25 && v62 == v3;
              if (v63 || (OUTLINED_FUNCTION_31_3(v61, v62, v74) & 1) != 0)
              {
                v39 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 52);
              }

              else
              {
                OUTLINED_FUNCTION_38();
                OUTLINED_FUNCTION_16_2();
                v66 = v25 && v65 == v3;
                if (!v66 && (OUTLINED_FUNCTION_31_3(v64, v65, v74) & 1) == 0)
                {
                  sub_19349AB64();
                  OUTLINED_FUNCTION_11();
                  swift_allocError();
                  v68 = v67;
                  *v67 = v74;
                  v67[1] = v3;
                  v67[5] = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
                  __swift_allocate_boxed_opaque_existential_1Tm(v68 + 2);
                  OUTLINED_FUNCTION_15_32();
                  sub_193604494(v76, v69, v70);
                  *(v68 + 48) = 1;
                  swift_willThrow();

                  goto LABEL_18;
                }

                v39 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 56);
              }
            }
          }
        }
      }
    }
  }

  v26 = (v76 + v39);
LABEL_7:
  v27 = v26[1];
  if (!v27)
  {
LABEL_17:
    v34 = v75;
    *v75 = 0u;
    v34[1] = 0u;
    goto LABEL_18;
  }

  v77 = *v26;
  v78 = v27;
  sub_1934948FC();
LABEL_18:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936032B0(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_21_24();
  v9 = *v2;
  v8 = v2[1];
  v10 = a1 == result && a2 == v7;
  if (v10 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    else
    {
      *v3 = 0u;
      v3[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.Merchant;
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

void sub_1936033BC()
{
  OUTLINED_FUNCTION_9_46();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x737574617473 && v0 == 0xE600000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_5_5(0x737574617473, 0xE600000000000000), (v3 & 1) != 0))
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v34 = __dst[0];
    LOBYTE(v35) = __dst[1] & 1;
    v11 = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingInformation.Status;
  }

  else
  {
    v3 = 0x676E696B63617274;
    v12 = v1 == 0x676E696B63617274 && v0 == 0xEE007265626D754ELL;
    if (v12 || (v3 = OUTLINED_FUNCTION_5_5(0x676E696B63617274, 0xEE007265626D754ELL), (v3 & 1) != 0))
    {
      v13 = __dst[3];
      if (!__dst[3])
      {
        goto LABEL_7;
      }

      v14 = __dst[2];
    }

    else
    {
      v3 = 0x4E72656972726163;
      v15 = v1 == 0x4E72656972726163 && v0 == 0xEB00000000656D61;
      if (v15 || (v3 = OUTLINED_FUNCTION_5_5(0x4E72656972726163, 0xEB00000000656D61), (v3 & 1) != 0))
      {
        v13 = __dst[5];
        if (!__dst[5])
        {
          goto LABEL_7;
        }

        v14 = __dst[4];
      }

      else
      {
        v16 = v1 == 0x676E697070696873 && v0 == 0xEE00646F6874654DLL;
        if (v16 || (v3 = OUTLINED_FUNCTION_5_5(0x676E697070696873, 0xEE00646F6874654DLL), (v3 & 1) != 0))
        {
          v13 = __dst[7];
          if (!__dst[7])
          {
            goto LABEL_7;
          }

          v14 = __dst[6];
        }

        else
        {
          v17 = v1 == 0x676E697070696873 && v0 == 0xEC00000065746144;
          if (v17 || (v3 = OUTLINED_FUNCTION_5_5(0x676E697070696873, 0xEC00000065746144), (v3 & 1) != 0))
          {
            v13 = __dst[9];
            if (!__dst[9])
            {
              goto LABEL_7;
            }

            v14 = __dst[8];
          }

          else
          {
            v18 = v1 == 0x676E697070696873 && v0 == 0xEC000000656D6954;
            if (v18 || (v3 = OUTLINED_FUNCTION_5_5(0x676E697070696873, 0xEC000000656D6954), (v3 & 1) != 0))
            {
              v13 = __dst[11];
              if (!__dst[11])
              {
                goto LABEL_7;
              }

              v14 = __dst[10];
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v20 = v1 == 0xD00000000000001ALL && v19 == v0;
              if (v20 || (v3 = OUTLINED_FUNCTION_5_5(0xD00000000000001ALL, v19), (v3 & 1) != 0))
              {
                v13 = __dst[13];
                if (!__dst[13])
                {
                  goto LABEL_7;
                }

                v14 = __dst[12];
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v22 = v1 == 0xD00000000000001ALL && v21 == v0;
                if (v22 || (v3 = OUTLINED_FUNCTION_5_5(0xD00000000000001ALL, v21), (v3 & 1) != 0))
                {
                  v13 = __dst[15];
                  if (!__dst[15])
                  {
                    goto LABEL_7;
                  }

                  v14 = __dst[14];
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v24 = v1 == 0xD000000000000018 && v23 == v0;
                  if (v24 || (v3 = OUTLINED_FUNCTION_5_5(0xD000000000000018, v23), (v3 & 1) != 0))
                  {
                    v13 = __dst[17];
                    if (!__dst[17])
                    {
                      goto LABEL_7;
                    }

                    v14 = __dst[16];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v26 = v1 == 0xD000000000000018 && v25 == v0;
                    if (v26 || (v3 = OUTLINED_FUNCTION_5_5(0xD000000000000018, v25), (v3 & 1) != 0))
                    {
                      v13 = __dst[19];
                      if (!__dst[19])
                      {
                        goto LABEL_7;
                      }

                      v14 = __dst[18];
                    }

                    else
                    {
                      v27 = v1 == 0x79726576696C6564 && v0 == 0xEC00000065746144;
                      if (v27 || (v3 = OUTLINED_FUNCTION_5_5(0x79726576696C6564, 0xEC00000065746144), (v3 & 1) != 0))
                      {
                        v13 = __dst[21];
                        if (!__dst[21])
                        {
                          goto LABEL_7;
                        }

                        v14 = __dst[20];
                      }

                      else
                      {
                        if (v1 != 0x79726576696C6564 || v0 != 0xEC000000656D6954)
                        {
                          v3 = OUTLINED_FUNCTION_5_5(0x79726576696C6564, 0xEC000000656D6954);
                          if ((v3 & 1) == 0)
                          {
                            sub_19349AB64();
                            OUTLINED_FUNCTION_11();
                            v29 = swift_allocError();
                            OUTLINED_FUNCTION_9_3(v29, v30);
                            *(v31 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingInformation;
                            v32 = swift_allocObject();
                            v33 = OUTLINED_FUNCTION_28_3(v32);
                            memcpy(v33, __dst, 0xC0uLL);
                            OUTLINED_FUNCTION_26_0();

                            sub_1936044F0(__dst, &v34);
                            return;
                          }
                        }

                        v13 = __dst[23];
                        if (!__dst[23])
                        {
                          goto LABEL_7;
                        }

                        v14 = __dst[22];
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

    v34 = v14;
    v35 = v13;
    v11 = MEMORY[0x1E69E6158];
  }

  OUTLINED_FUNCTION_52_2(v3, v11, v4, v5, v6, v7, v8, v9, v34);
  sub_1934948FC();
}

void sub_193603794()
{
  OUTLINED_FUNCTION_9_46();
  OUTLINED_FUNCTION_27_19(v4, v5, v6, v7, v8, v9, v10, v11, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17], v35[18], v35[19], v35[20], v35[21], v35[22], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30]);
  v12 = v2 == v3 && v1 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_5_5(v3, 0xE800000000000000) & 1) != 0)
  {
    v13 = __src[1];
    if (__src[1])
    {
      v14 = __src[0];
LABEL_8:
      __dst[0] = v14;
      __dst[1] = v13;
      sub_1934948FC();
      return;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_10_31();
  v15 = OUTLINED_FUNCTION_22_23();
  v17 = v12 && v1 == v16;
  if (v17 || (OUTLINED_FUNCTION_5_5(v15, v16) & 1) != 0)
  {
    v13 = __src[3];
    if (__src[3])
    {
      v14 = __src[2];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v18 = OUTLINED_FUNCTION_13_19();
  v20 = v12 && v1 == v19;
  if (v20 || (OUTLINED_FUNCTION_5_5(v18, v19) & 1) != 0)
  {
    v13 = __src[5];
    if (__src[5])
    {
      v14 = __src[4];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v21 = v2 == 0x73736572646461 && v1 == 0xE700000000000000;
  if (v21 || (OUTLINED_FUNCTION_5_5(0x73736572646461, 0xE700000000000000) & 1) != 0)
  {
    memcpy(__dst, v0 + 6, 0xB8uLL);
    if (sub_1934754E0(__dst) == 1)
    {
LABEL_29:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v35, __dst, sizeof(v35));
    sub_193494798(&type metadata for WalletPaymentsCommerceOrderEmail.Address, &off_1F07D7AF8, v0);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
    v23 = v12 && v1 == v22;
    if (v23 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_5_5(v24, v25) & 1) != 0))
    {
      v13 = __src[30];
      if (__src[30])
      {
        v14 = __src[29];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    v26 = OUTLINED_FUNCTION_15_13();
    v28 = v12 && v1 == v27;
    if (v28 || (OUTLINED_FUNCTION_5_5(v26, 0xEA0000000000656DLL) & 1) != 0)
    {
      v13 = __src[32];
      if (__src[32])
      {
        v14 = __src[31];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v29 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v29, v30);
    *(v31 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingRecipient;
    v32 = swift_allocObject();
    v33 = OUTLINED_FUNCTION_28_3(v32);
    memcpy(v33, __src, 0x108uLL);
    OUTLINED_FUNCTION_26_0();

    sub_19360454C(__src, __dst);
  }
}

void sub_1936039CC()
{
  OUTLINED_FUNCTION_9_46();
  OUTLINED_FUNCTION_27_19(v4, v5, v6, v7, v8, v9, v10, v11, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], v36[21], v36[22], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30]);
  v12 = v2 == v3 && v1 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_5_5(v3, 0xE800000000000000) & 1) != 0)
  {
    v13 = __src[1];
    if (__src[1])
    {
      v14 = __src[0];
LABEL_8:
      __dst[0] = v14;
      __dst[1] = v13;
      sub_1934948FC();
      return;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_10_31();
  v15 = OUTLINED_FUNCTION_22_23();
  v17 = v12 && v1 == v16;
  if (v17 || (OUTLINED_FUNCTION_5_5(v15, v16) & 1) != 0)
  {
    v13 = __src[3];
    if (__src[3])
    {
      v14 = __src[2];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v18 = OUTLINED_FUNCTION_13_19();
  v20 = v12 && v1 == v19;
  if (v20 || (OUTLINED_FUNCTION_5_5(v18, v19) & 1) != 0)
  {
    v13 = __src[5];
    if (__src[5])
    {
      v14 = __src[4];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_40_17();
  v22 = v2 == 0x41676E696C6C6962 && v1 == v21;
  if (v22 || (OUTLINED_FUNCTION_5_5(0x41676E696C6C6962, v21) & 1) != 0)
  {
    memcpy(__dst, v0 + 6, 0xB8uLL);
    if (sub_1934754E0(__dst) == 1)
    {
LABEL_29:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v36, __dst, sizeof(v36));
    sub_193494798(&type metadata for WalletPaymentsCommerceOrderEmail.Address, &off_1F07D7AF8, v0);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
    v24 = v12 && v1 == v23;
    if (v24 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_5_5(v25, v26) & 1) != 0))
    {
      v13 = __src[30];
      if (__src[30])
      {
        v14 = __src[29];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    v27 = OUTLINED_FUNCTION_15_13();
    v29 = v12 && v1 == v28;
    if (v29 || (OUTLINED_FUNCTION_5_5(v27, 0xEA0000000000656DLL) & 1) != 0)
    {
      v13 = __src[32];
      if (__src[32])
      {
        v14 = __src[31];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v30, v31);
    *(v32 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.Customer;
    v33 = swift_allocObject();
    v34 = OUTLINED_FUNCTION_28_3(v33);
    memcpy(v34, __src, 0x108uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193604668(__src, __dst);
  }
}

void sub_193603C00()
{
  OUTLINED_FUNCTION_9_46();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x746565727473 && v0 == 0xE600000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_5_5(0x746565727473, 0xE600000000000000), (v3 & 1) != 0))
  {
    v11 = __dst[1];
    if (__dst[1])
    {
      v12 = __dst[0];
LABEL_8:
      v32[0] = v12;
      v32[1] = v11;
      v13 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v3, v13, v4, v5, v6, v7, v8, v9, v32[0]);
      sub_1934948FC();
      return;
    }
  }

  else
  {
    v14 = v1 == 2037672291 && v0 == 0xE400000000000000;
    if (v14 || (v3 = OUTLINED_FUNCTION_5_5(2037672291, 0xE400000000000000), (v3 & 1) != 0))
    {
      v11 = __dst[3];
      if (__dst[3])
      {
        v12 = __dst[2];
        goto LABEL_8;
      }
    }

    else
    {
      v3 = 0x6574617473;
      v15 = v1 == 0x6574617473 && v0 == 0xE500000000000000;
      if (v15 || (v3 = OUTLINED_FUNCTION_5_5(0x6574617473, 0xE500000000000000), (v3 & 1) != 0))
      {
        v11 = __dst[5];
        if (__dst[5])
        {
          v12 = __dst[4];
          goto LABEL_8;
        }
      }

      else
      {
        v3 = 0x6F436C6174736F70;
        v16 = v1 == 0x6F436C6174736F70 && v0 == 0xEA00000000006564;
        if (v16 || (v3 = OUTLINED_FUNCTION_5_5(0x6F436C6174736F70, 0xEA00000000006564), (v3 & 1) != 0))
        {
          v11 = __dst[7];
          if (__dst[7])
          {
            v12 = __dst[6];
            goto LABEL_8;
          }
        }

        else
        {
          v3 = 0x7972746E756F63;
          v17 = v1 == 0x7972746E756F63 && v0 == 0xE700000000000000;
          if (v17 || (v3 = OUTLINED_FUNCTION_5_5(0x7972746E756F63, 0xE700000000000000), (v3 & 1) != 0))
          {
            v11 = __dst[9];
            if (__dst[9])
            {
              v12 = __dst[8];
              goto LABEL_8;
            }
          }

          else
          {
            v18 = v1 == 0x4C73736572646461 && v0 == 0xEC00000073656E69;
            if (v18 || (OUTLINED_FUNCTION_5_5(0x4C73736572646461, 0xEC00000073656E69) & 1) != 0)
            {
              v32[0] = __dst[10];
              v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
              v13 = v3;
              goto LABEL_9;
            }

            v3 = 0x7974696C61636F6CLL;
            v19 = v1 == 0x7974696C61636F6CLL && v0 == 0xE800000000000000;
            if (v19 || (v3 = OUTLINED_FUNCTION_5_5(0x7974696C61636F6CLL, 0xE800000000000000), (v3 & 1) != 0))
            {
              v11 = __dst[12];
              if (__dst[12])
              {
                v12 = __dst[11];
                goto LABEL_8;
              }
            }

            else
            {
              v3 = 0x6C61636F4C627573;
              v20 = v1 == 0x6C61636F4C627573 && v0 == 0xEB00000000797469;
              if (v20 || (v3 = OUTLINED_FUNCTION_5_5(0x6C61636F4C627573, 0xEB00000000797469), (v3 & 1) != 0))
              {
                v11 = __dst[14];
                if (__dst[14])
                {
                  v12 = __dst[13];
                  goto LABEL_8;
                }
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v22 = v1 == 0xD000000000000012 && v21 == v0;
                if (v22 || (v3 = OUTLINED_FUNCTION_5_5(0xD000000000000012, v21), (v3 & 1) != 0))
                {
                  v11 = __dst[16];
                  if (__dst[16])
                  {
                    v12 = __dst[15];
                    goto LABEL_8;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v3 = 0xD000000000000015;
                  v24 = v1 == 0xD000000000000015 && v23 == v0;
                  if (v24 || (v3 = OUTLINED_FUNCTION_5_5(0xD000000000000015, v23), (v3 & 1) != 0))
                  {
                    v11 = __dst[18];
                    if (__dst[18])
                    {
                      v12 = __dst[17];
                      goto LABEL_8;
                    }
                  }

                  else
                  {
                    v3 = 0x437972746E756F63;
                    v25 = v1 == 0x437972746E756F63 && v0 == 0xEB0000000065646FLL;
                    if (v25 || (v3 = OUTLINED_FUNCTION_5_5(0x437972746E756F63, 0xEB0000000065646FLL), (v3 & 1) != 0))
                    {
                      v11 = __dst[20];
                      if (__dst[20])
                      {
                        v12 = __dst[19];
                        goto LABEL_8;
                      }
                    }

                    else
                    {
                      v3 = 0x6572646441776172;
                      if (v1 != 0x6572646441776172 || v0 != 0xEA00000000007373)
                      {
                        v3 = OUTLINED_FUNCTION_5_5(0x6572646441776172, 0xEA00000000007373);
                        if ((v3 & 1) == 0)
                        {
                          sub_19349AB64();
                          OUTLINED_FUNCTION_11();
                          v27 = swift_allocError();
                          OUTLINED_FUNCTION_9_3(v27, v28);
                          *(v29 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.Address;
                          v30 = swift_allocObject();
                          v31 = OUTLINED_FUNCTION_28_3(v30);
                          memcpy(v31, __dst, 0xB8uLL);
                          OUTLINED_FUNCTION_26_0();

                          sub_1936046C4(__dst, v32);
                          return;
                        }
                      }

                      v11 = __dst[22];
                      if (__dst[22])
                      {
                        v12 = __dst[21];
                        goto LABEL_8;
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

  OUTLINED_FUNCTION_36_4();
}

void sub_193603FE0()
{
  OUTLINED_FUNCTION_9_46();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x6F6D416C61746F74 && v0 == 0xEB00000000746E75;
  if (v10 || (v3 = OUTLINED_FUNCTION_5_5(0x6F6D416C61746F74, 0xEB00000000746E75), (v3 & 1) != 0))
  {
    v11 = *&__dst[8];
    if (*&__dst[8])
    {
      v12 = *__dst;
LABEL_8:
      v25 = v11;
      OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v12);
      sub_1934948FC();
      return;
    }

    goto LABEL_22;
  }

  v13 = v1 == 0xD000000000000011 && 0x8000000193A28EE0 == v0;
  if (v13 || (v3 = OUTLINED_FUNCTION_5_5(0xD000000000000011, 0x8000000193A28EE0), (v3 & 1) != 0))
  {
    v11 = *&__dst[24];
    if (*&__dst[24])
    {
      v12 = *&__dst[16];
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v14 = 0x4D746E656D796170;
  v15 = v1 == 0x4D746E656D796170 && v0 == 0xED0000646F687465;
  if (v15 || (v14 = OUTLINED_FUNCTION_5_5(0x4D746E656D796170, 0xED0000646F687465), (v14 & 1) != 0))
  {
    if (*&__dst[40] == 1)
    {
LABEL_22:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v25 = *&__dst[40];
    v26 = *&__dst[48];
    v27 = __dst[64];
    OUTLINED_FUNCTION_52_2(v14, &type metadata for WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod, &off_1F07D7B18, v5, v6, v7, v8, v9, *&__dst[32]);
    sub_193494798(v16, v17, v18);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v19 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v19, v20);
    *(v21 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.PaymentInformation;
    v22 = swift_allocObject();
    v23 = OUTLINED_FUNCTION_28_3(v22);
    memcpy(v23, __dst, 0x41uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193604720(__dst, &v24);
  }
}

uint64_t sub_1936041CC(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_21_24();
  v9 = *v2;
  v8 = v2[1];
  v10 = a1 == result && a2 == v7;
  if (v10 || (v12 = v2[2], v11 = v2[3], v13 = *(v2 + 32), result = OUTLINED_FUNCTION_31_3(result, v7, a1), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x72756F467473616CLL;
  v14 = a1 == 0x72756F467473616CLL && a2 == 0xEE00737469676944;
  if (v14 || (result = OUTLINED_FUNCTION_31_3(0x72756F467473616CLL, 0xEE00737469676944, a1), (result & 1) != 0))
  {
    if (v11)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x50656C7070417369;
  v15 = a1 == 0x50656C7070417369 && a2 == 0xEA00000000007961;
  if (v15 || (result = OUTLINED_FUNCTION_31_3(0x50656C7070417369, 0xEA00000000007961, a1), (result & 1) != 0))
  {
    if (v13 != 2)
    {
      return sub_1934948FC();
    }

LABEL_21:
    *v3 = 0u;
    v3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod;
  v18 = swift_allocObject();
  v17[2] = v18;
  *(v18 + 16) = v9;
  *(v18 + 24) = v8;
  *(v18 + 32) = v12;
  *(v18 + 40) = v11;
  *(v18 + 48) = v13;
  *(v17 + 48) = 1;
  swift_willThrow();
}

void sub_1936043A0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  bzero(a1 + 4, 0xA0uLL);
}

uint64_t sub_1936043B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1936043DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_193604438(uint64_t a1)
{
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193604494(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}