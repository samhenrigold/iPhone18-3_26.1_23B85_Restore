unint64_t sub_1935448E8()
{
  result = qword_1EAE3CE68;
  if (!qword_1EAE3CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CE68);
  }

  return result;
}

unint64_t sub_1935449D0()
{
  result = qword_1EAE3CE80;
  if (!qword_1EAE3CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CE80);
  }

  return result;
}

unint64_t sub_193544A90()
{
  result = qword_1EAE3CE90;
  if (!qword_1EAE3CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CE90);
  }

  return result;
}

uint64_t sub_193544B2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_193544B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_193544C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 48))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_193544C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    OUTLINED_FUNCTION_278_0(result);
    *v3 = v4;
    if (v5 < 0)
    {
      OUTLINED_FUNCTION_230_0(v3);
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
      *(result + 40) = (a2 - 1);
      return;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

void sub_193544D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_193544E94()
{
  sub_19349D1FC(319, qword_1ED5068E8, &type metadata for IntelligenceFlowError);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED504DE0, &type metadata for ResponseGeneration.Event.Generation.Ended.Source);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED506E98, MEMORY[0x1E69E7668]);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, qword_1ED506808, &type metadata for ResponseGeneration.Event.Generation.Ended.FallbackReason);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
          if (v4 <= 0x3F)
          {
            OUTLINED_FUNCTION_20_14();
            sub_193544D68(319, v5, v6, MEMORY[0x1E69E6720]);
            if (v7 <= 0x3F)
            {
              OUTLINED_FUNCTION_15_2();
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary18ResponseGenerationV5EventV8OverrideV9StateInfoOSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1935450C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
  }

  OUTLINED_FUNCTION_275_0();
  if (!v5 & v4)
  {
    return OUTLINED_FUNCTION_46_4(v3);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

void sub_193545118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_235_0(result, a2);
    if (v4)
    {
      *(v3 + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_139_7(result, ~a2);
    }
  }
}

uint64_t sub_193545184(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

void sub_1935451D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_235_0(result, a2);
    if (v4)
    {
      *(v3 + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }
}

uint64_t sub_193545250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if ((a2 & 0x80000000) == 0 || !*(a1 + 72))
  {
    v2 = *(a1 + 33);
    if (v2 > 0x80000000)
    {
      return OUTLINED_FUNCTION_46_4(~v2);
    }

    return OUTLINED_FUNCTION_46_4(-1);
  }

  return OUTLINED_FUNCTION_46_4(*a1 + 0x7FFFFFFF);
}

double sub_193545290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    v3 = 0.0;
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
        return v3;
      }

      return OUTLINED_FUNCTION_139_7(result, -a2);
    }

    *(result + 72) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_139_7(result, -a2);
    }
  }

  return v3;
}

uint64_t sub_1935452EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 0x1FFLL | (a2 << 62);
  *(result + 32) = *(result + 32);
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1935453D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xFD && *(a1 + 34))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 252);
  }

  v3 = *(a1 + 33);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_46_4((v3 ^ 0xFF) - 1);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_193545410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = ~a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_293Tm(uint64_t a1, int a2)
{
  if (a2 == 252)
  {
    v3 = *(a1 + 33);
    if (v3 <= 2)
    {
      return 0;
    }

    else
    {
      return v3 ^ 0xFF;
    }
  }

  else
  {
    OUTLINED_FUNCTION_184_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v5 = OUTLINED_FUNCTION_101(*(v2 + 20));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void __swift_store_extra_inhabitant_index_294Tm()
{
  OUTLINED_FUNCTION_91_0();
  if (v2 == 252)
  {
    *(v1 + 33) = ~v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_112_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_193545664()
{
  OUTLINED_FUNCTION_202_0();
  sub_19349D1FC(319, v0, v1);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_20_14();
    sub_193544D68(319, v3, v4, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s27IntelligencePlatformLibrary27IntelligenceFlowPlatformPnRV7StartedVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
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
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v8);
}

_BYTE *_s27IntelligencePlatformLibrary27IntelligenceFlowPlatformPnRV7StartedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_193545890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xFE && *(a1 + 34))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 253);
  }

  v3 = *(a1 + 33);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_46_4(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_1935458CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t sub_193545924()
{
  result = type metadata accessor for ResponseGeneration.Event.Generation(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ResponseGeneration.Event.CacheManagerCall(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ResponseGeneration.Event.GMSCall(319);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_107_6();
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_193545A00()
{
  sub_193544D68(319, qword_1ED507308, type metadata accessor for PlanGeneration.StateInfo, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED506858, &type metadata for PlanGeneration.Event);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_20_14();
      sub_193544D68(319, v2, v3, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_193545B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_107_6();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_193545BEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 126);
    }

    OUTLINED_FUNCTION_277_0();
    if (v3 >= 0x7E)
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

uint64_t __swift_get_extra_inhabitant_index_401Tm()
{
  OUTLINED_FUNCTION_207();
  if (v1)
  {
    OUTLINED_FUNCTION_71();
    return (v2 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_184_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v4 = OUTLINED_FUNCTION_101(*(v0 + 24));

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void __swift_store_extra_inhabitant_index_402Tm()
{
  OUTLINED_FUNCTION_91_0();
  if (v2 == 2147483646)
  {
    *(v1 + 24) = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_221_0();
    OUTLINED_FUNCTION_112_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_193545DC4()
{
  sub_19349D1FC(319, &qword_1ED506860, &type metadata for PlanGeneration.PlanGenerationFailureReason);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_20_14();
      sub_193544D68(319, v2, v3, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_193545E98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 33))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_234_0();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193545EE0(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 2147483646);
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_231_0(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary14PlanGenerationV5EventO14ModelInferenceV9StateInfoOSg(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 7) & 0x7C | (*(a1 + 48) >> 14);
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_193545FB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 50))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 124);
    }

    v3 = (*(a1 + 48) >> 7) & 0x7C | (*(a1 + 48) >> 14);
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x7D)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

void sub_193546004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    OUTLINED_FUNCTION_278_0(result);
    *(v3 + 48) = 0;
    *v3 = v4;
    if (v5 >= 0x7D)
    {
      *(v3 + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      OUTLINED_FUNCTION_198_1(result, ((a2 ^ 0x7F) << 7) & 0xFE00 | ((a2 ^ 0x7F) << 14));
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlanGeneration.Event.ModelInference.Started(_BYTE *result, int a2, int a3)
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

uint64_t sub_19354613C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

void sub_193546188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_278_0(result);
    *v3 = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(v3 + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }
}

uint64_t sub_1935461FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 50))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_234_0();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

void sub_193546244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    OUTLINED_FUNCTION_278_0(result);
    *(v3 + 48) = 0;
    *v3 = v4;
    if (v5 > v6)
    {
      *(v3 + 50) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_231_0(result, a2);
    }
  }
}

uint64_t sub_1935462B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 50))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 125);
    }

    v3 = ((*(a1 + 48) >> 7) & 0x7C | (*(a1 + 48) >> 14)) ^ 0x7F;
    if (v3 >= 0x7D)
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

void sub_1935462F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    OUTLINED_FUNCTION_278_0(result);
    *(v3 + 48) = 0;
    *v3 = v4;
    if (v5 >= 0x7E)
    {
      *(v3 + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      OUTLINED_FUNCTION_198_1(result, (((-a2 >> 2) & 0x1F) - 32 * a2) << 9);
    }
  }
}

void sub_193546550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_202_0();
  v9 = OUTLINED_FUNCTION_43_8();
  sub_193544D68(v9, v10, v11, v12);
  if (v13 <= 0x3F)
  {
    v14 = OUTLINED_FUNCTION_43_8();
    sub_193544D68(v14, a6, a7, v15);
    if (v16 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19354661C()
{
  OUTLINED_FUNCTION_132_4();
  sub_193544D68(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED506E98, MEMORY[0x1E69E7668]);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED506C60, &type metadata for IntelligenceFlowFeedbackLearning.TaskEvaluation);
      if (v4 <= 0x3F)
      {
        sub_193544D68(319, &qword_1ED5066B8, type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation, MEMORY[0x1E69E62F8]);
        if (v5 <= 0x3F)
        {
          sub_19349D1FC(319, qword_1ED5064A8, &type metadata for IntelligenceFlowFeedbackLearning.EvaluationType);
          if (v6 <= 0x3F)
          {
            OUTLINED_FUNCTION_15_2();
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_193546834()
{
  sub_193544D68(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_132_4();
    sub_193544D68(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED506E98, MEMORY[0x1E69E7668]);
      if (v4 <= 0x3F)
      {
        sub_19349D1FC(319, qword_1ED506088, &type metadata for IntelligenceFlowFeedbackLearning.Trigger);
        if (v5 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED506698, MEMORY[0x1E69E6370]);
          if (v6 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1ED506498, &type metadata for IntelligenceFlowFeedbackLearning.TupleInteraction);
            if (v7 <= 0x3F)
            {
              sub_193544D68(319, &qword_1ED5066B0, type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction, MEMORY[0x1E69E62F8]);
              if (v8 <= 0x3F)
              {
                OUTLINED_FUNCTION_15_2();
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_193546A08()
{
  result = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(319);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_6();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_193546AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 32);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193546B34(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_227_0(result, (a2 - 1));
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_227_0(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_172();
  if (*(v14 + 84) == v7)
  {
    v15 = OUTLINED_FUNCTION_151();
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v15 = v8 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v15, v7, v16);
}

uint64_t __swift_store_extra_inhabitant_index_49Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_172();
  if (*(v13 + 84) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  }

  OUTLINED_FUNCTION_112_0();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void sub_193546D08()
{
  sub_193544D68(319, qword_1ED506468, type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_128_5();
    sub_193544D68(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED5062E0, &type metadata for IntelligenceFlowFeedbackLearning.CandidateResolution);
      if (v4 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED5064A0, &type metadata for IntelligenceFlowFeedbackLearning.CandidateOutcome);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_193546E38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 18))
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

void *sub_193546E74(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 18) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

void sub_193546EE8()
{
  OUTLINED_FUNCTION_128_5();
  sub_193544D68(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED506258, &type metadata for IntelligenceFlowFeedbackLearning.UserAlignmentCategory);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_193546FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_107_6();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_19354701C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_193547120()
{
  OUTLINED_FUNCTION_202_0();
  v0 = OUTLINED_FUNCTION_43_8();
  sub_193544D68(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_193547198(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 26))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1935471B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 26) = v3;
  return result;
}

uint64_t sub_1935471F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_166_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_52_10(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  *(v1 + 49) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_9(uint64_t a1)
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_110_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v15 - 248) = v11;
  *(v15 - 240) = v10;
  *(v15 - 216) = a1;
  *(v15 - 228) = v7 >> 8;
  v16 = v4;
  v17 = v5;
  sub_19345DC44(v9, v6, v14, a4, v12);
  *(v15 - 192) = v16;
  return sub_19345DC44(v17, v16, v13, v8, v7);
}

double OUTLINED_FUNCTION_139_7@<D0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a2 << 8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_142_3()
{

  return sub_193448804(v1, v0 + v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_146_4()
{

  return sub_193448804(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_155_3()
{

  return sub_19344C7C0(v1, v0, v4, v3, v2, v5);
}

__n128 OUTLINED_FUNCTION_159_6()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v3;
  return result;
}

void OUTLINED_FUNCTION_181_5(uint64_t a1@<X8>)
{
  *(v4 - 128) = a1;
  *(v4 - 120) = v1 & 1;
  *(v4 - 168) = v2;
  *(v4 - 160) = v3 & 1;
}

uint64_t OUTLINED_FUNCTION_191_1(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_193_0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

__n128 OUTLINED_FUNCTION_194_1()
{
  v2 = *(v1 - 128);
  *(v0 + 128) = *(v1 - 144);
  *(v0 + 144) = v2;
  result = *(v1 - 112);
  *(v0 + 160) = result;
  *(v0 + 176) = *(v1 - 96);
  return result;
}

__n128 OUTLINED_FUNCTION_195_1()
{
  result = *(v0 + 56);
  *(v1 + 200) = result;
  return result;
}

void OUTLINED_FUNCTION_212_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v8 - 128) = v5;
  *(v8 - 120) = v4;
  *(v8 - 112) = v7;
  *(v8 - 104) = a4;
  *(v8 - 96) = v6;
}

double OUTLINED_FUNCTION_218_0()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_226(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_228_0()
{
  v5 = *(v2 - 216);
  v4 = *(v2 - 208);
  v6 = *(v2 - 224);
  v7 = *(v2 - 192);

  return sub_193457BF4(v4, v5, v6, v1, v0, v7);
}

double OUTLINED_FUNCTION_235_0(uint64_t a1, int a2)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *a1 = (a2 - 0x7FFFFFFF);
  return result;
}

uint64_t OUTLINED_FUNCTION_238_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_193448804(v3 + a3, v4, a1, a2);
}

double OUTLINED_FUNCTION_259()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_272_0(uint64_t a1)
{

  return sub_19393C550();
}

double OUTLINED_FUNCTION_278_0(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

uint64_t sub_193547E48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510358);
  v4 = __swift_project_value_buffer(v3, qword_1ED510358);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.GenerativeModels.GenerativeFunctions.SystemInstrumentation.attribute(_:)(void (*a1)(void))
{
  result = sub_193548074(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935480AC(void (*a1)(void))
{
  result = sub_193548074(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935480DC(uint64_t a1)
{
  result = sub_193548104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193548104()
{
  result = qword_1ED508050;
  if (!qword_1ED508050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED508050);
  }

  return result;
}

_BYTE *_s21SystemInstrumentationOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19354824C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5103B8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5103B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.JointResolverTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_193548478(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935484BC(void (*a1)(void))
{
  result = sub_193548478(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1935484EC(uint64_t a1)
{
  result = sub_193548514();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193548514()
{
  result = qword_1ED507B10;
  if (!qword_1ED507B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507B10);
  }

  return result;
}

_BYTE *_s22JointResolverTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowJointResolverTelemetry.json()()
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
  v10 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  OUTLINED_FUNCTION_6_26();
  sub_19354CCEC(v0, v14, v18);
  sub_1934470C8(v14, v10, v17);
  sub_19393C080();
  sub_1935487F0();
  sub_19393C250();
  (*(v5 + 8))(v9, v3);
  sub_19344E6DC(v17, &qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_1935487F0()
{
  result = qword_1EAE3A790;
  if (!qword_1EAE3A790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3CEA8, &qword_193960F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A790);
  }

  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;

  sub_19393C060();
  sub_1935487F0();
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_24_14();
    return sub_1935497C4(v9, a3, v11);
  }

  return result;
}

void static IntelligenceFlowJointResolverTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v31 = v3;
  v32 = v2;
  v30 = v4;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_6();
  v8 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  if (*sub_19355941C() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    (*(v10 + 16))(v14, v17, v8);
    v18 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v18, v19);
    sub_1935487F0();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v10 + 8))(v17, v8);
    if (!v0)
    {
      OUTLINED_FUNCTION_24_14();
      v22 = v31;
      sub_1935497C4(v1, v31, v23);
      v24 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
      v25 = *(v24 + 20);
      sub_19344E6DC(v22 + v25, &qword_1EAE3A9E8, &qword_19394F800);
      v26 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v27 + 16))(v22 + v25, v30, v26);
      __swift_storeEnumTagSinglePayload(v22 + v25, 0, 1, v26);
      v28 = *(v24 + 24);
      sub_19344E6DC(v22 + v28, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v32, v22 + v28);
    }
  }

  else
  {
    v20 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
    *v21 = v6;
    *(v21 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowJointResolverTelemetry.serialize()()
{
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEA8, &qword_193960F58);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_6_26();
  sub_19354CCEC(v0, v5, v9);
  sub_1934470C8(v5, v1, v8);
  sub_1935487F0();
  sub_19393C290();
  v10 = OUTLINED_FUNCTION_93_4();
  sub_19344E6DC(v10, v11, &qword_193960F58);
  return OUTLINED_FUNCTION_13_0();
}

void sub_193548DBC()
{
  OUTLINED_FUNCTION_26();
  v86 = v0;
  v87 = v1;
  OUTLINED_FUNCTION_51_8();
  v85 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v80 - v7;
  v81 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v80 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v80 - v13;
  v83 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - v20;
  v22 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v80 - v29;
  v31 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
  MEMORY[0x1EEE9AC00](0x697461636F766E69);
  OUTLINED_FUNCTION_5_1();
  v35 = v34 - v33;
  v36 = v3 == v32 && v2 == 0xEA00000000006E6FLL;
  if (v36 || (OUTLINED_FUNCTION_0_18(v32, 0xEA00000000006E6FLL) & 1) != 0)
  {
    v37 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
    v38 = OUTLINED_FUNCTION_48_8(*(v37 + 28));
    sub_193448758(v38, v30, v39, v40);
    OUTLINED_FUNCTION_6_3(v30, 1, v31);
    if (!v36)
    {
      sub_1935497C4(v30, v35, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
      sub_193494798(v31, &off_1F07CA090, v85);
      v44 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation;
      v45 = v35;
LABEL_11:
      sub_19344A630(v45, v44);
      goto LABEL_12;
    }

    v41 = &qword_1EAE3CEB0;
    v42 = &qword_193960F60;
    v43 = v30;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v47 = v3 == 0xD000000000000012 && v46 == v2;
    if (v47 || (OUTLINED_FUNCTION_0_18(0xD000000000000012, v46) & 1) != 0)
    {
      if ((~*(v86 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 32)) & 0xF000000000000007) != 0)
      {
        sub_193494798(&type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceContext, &off_1F07CA0A0, v85);
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_38();
    v49 = v3 == 0xD000000000000015 && v48 == v2;
    if (!v49 && (OUTLINED_FUNCTION_0_18(0xD000000000000015, v48) & 1) == 0)
    {
      v56 = v3 == 0x74654D746E657665 && v2 == 0xED00006174616461;
      if (v56 || (OUTLINED_FUNCTION_0_18(0x74654D746E657665, 0xED00006174616461) & 1) != 0)
      {
        v57 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
        v58 = OUTLINED_FUNCTION_48_8(*(v57 + 40));
        v59 = v84;
        sub_193448758(v58, v84, v60, v61);
        v62 = v83;
        OUTLINED_FUNCTION_6_3(v59, 1, v83);
        if (!v36)
        {
          sub_1935497C4(v59, v17, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
          sub_193494798(v62, &off_1F07CA080, v85);
          v44 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata;
          v45 = v17;
          goto LABEL_11;
        }

        v63 = &qword_1EAE3CEC0;
        v64 = &qword_193960F68;
      }

      else
      {
        v65 = v3 == 0x6D617473656D6974 && v2 == 0xE900000000000070;
        if (!v65 && (OUTLINED_FUNCTION_0_18(0x6D617473656D6974, 0xE900000000000070) & 1) == 0)
        {
          v73 = sub_19349AB64();
          v74 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v73);
          v76 = OUTLINED_FUNCTION_42_15(v74, v75);
          v77 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v76);
          OUTLINED_FUNCTION_126(v77);
          OUTLINED_FUNCTION_6_26();
          sub_19354CCEC(v86, v78, v79);
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          goto LABEL_12;
        }

        v66 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
        v67 = OUTLINED_FUNCTION_48_8(*(v66 + 44));
        v59 = v82;
        sub_193448758(v67, v82, v68, v69);
        v70 = v81;
        OUTLINED_FUNCTION_6_3(v59, 1, v81);
        if (!v36)
        {
          v71 = v59;
          v72 = v80;
          sub_1935497C4(v71, v80, type metadata accessor for MonotonicTimestamp);
          sub_193494798(v70, &off_1F07BD958, v85);
          v44 = type metadata accessor for MonotonicTimestamp;
          v45 = v72;
          goto LABEL_11;
        }

        v63 = &qword_1EAE3B498;
        v64 = &unk_193959120;
      }

      sub_19344E6DC(v59, v63, v64);
      OUTLINED_FUNCTION_27_13();
      goto LABEL_12;
    }

    v50 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
    v51 = OUTLINED_FUNCTION_48_8(*(v50 + 36));
    sub_193448758(v51, v21, v52, v53);
    OUTLINED_FUNCTION_23_5(v21);
    if (!v36)
    {
      v54 = OUTLINED_FUNCTION_141();
      sub_1935497C4(v54, v26, v55);
      sub_193494798(v22, &off_1F07CA0B0, v85);
      v44 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered;
      v45 = v26;
      goto LABEL_11;
    }

    v41 = &qword_1EAE3CEB8;
    v42 = &qword_193961930;
    v43 = v21;
  }

  sub_19344E6DC(v43, v41, v42);
LABEL_10:
  OUTLINED_FUNCTION_27_13();
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_193549470()
{
  OUTLINED_FUNCTION_26();
  v39 = v1;
  v40 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_6();
  v12 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v38 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_28();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v15);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v23 = v22 - v21;
  v24 = v7 == 1682535018 && v5 == 0xE400000000000000;
  if (!v24 && (sub_19393CA30() & 1) == 0)
  {
    v30 = v7 == 0x6449776F72 && v5 == 0xE500000000000000;
    if (!v30 && (sub_19393CA30() & 1) == 0)
    {
      v34 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
      *v35 = v7;
      v35[1] = v5;
      v36 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
      v37 = OUTLINED_FUNCTION_126(v36);
      sub_19354CCEC(v40, v37, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_10;
    }

    v31 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
    sub_193448758(v40 + *(v31 + 20), v2, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_23_5(v2);
    if (!v24)
    {
      (*(v38 + 32))(v3, v2, v12);
      OUTLINED_FUNCTION_93_4();
      sub_1934948FC();
      v32 = OUTLINED_FUNCTION_93_4();
      v33(v32);
      goto LABEL_10;
    }

    v25 = &qword_1EAE3AA88;
    v26 = &qword_19394F9C0;
    v27 = v2;
    goto LABEL_9;
  }

  sub_193448758(v40, v18, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v18, 1, v19);
  if (v24)
  {
    v25 = &qword_1EAE3BCA0;
    v26 = &unk_19395C320;
    v27 = v18;
LABEL_9:
    sub_19344E6DC(v27, v25, v26);
    *v9 = 0u;
    *(v9 + 16) = 0u;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_36();
  sub_1935497C4(v18, v23, v28);
  sub_193494798(v19, &off_1F07C3F90, v9);
  OUTLINED_FUNCTION_0_37();
  sub_19344A630(v23, v29);
LABEL_10:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935497C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void sub_193549838()
{
  OUTLINED_FUNCTION_26();
  v23 = v1;
  v24 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_28();
  v15 = v6 == 0x7254746E65696C63 && v4 == 0xED00006449656361;
  if (v15 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v24, v10, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v10, 1, v11);
    if (v15)
    {
      sub_19344E6DC(v10, &qword_1EAE3AA88, &qword_19394F9C0);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      v16 = OUTLINED_FUNCTION_19_3();
      v17(v16);
      sub_1934948FC();
      (*(v13 + 8))(v2, v11);
    }
  }

  else
  {
    v18 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
    *v19 = v6;
    v19[1] = v4;
    v20 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
    v21 = OUTLINED_FUNCTION_126(v20);
    sub_19354CCEC(v24, v21, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

id sub_193549A80()
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_25_16();
  v5 = *v0;
  v6 = v2 == 0x64657472617473 && v4 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_5_5(0x64657472617473, 0xE700000000000000) & 1) != 0)
  {
    if (!(v5 >> 62))
    {
      __dst[0] = *(v5 + 16);
      v7 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceStarted;
      v8 = &off_1F07CA0D0;
      return sub_193494798(v7, v8, v3);
    }
  }

  else
  {
    v10 = v2 == 0x64656C696166 && v1 == 0xE600000000000000;
    if (!v10 && (OUTLINED_FUNCTION_5_5(0x64656C696166, 0xE600000000000000) & 1) == 0)
    {
      if (v2 == 0x6465646E65 && v1 == 0xE500000000000000)
      {
        if (v5 >> 62 != 2)
        {
          goto LABEL_24;
        }
      }

      else if ((OUTLINED_FUNCTION_5_5(0x6465646E65, 0xE500000000000000) & 1) == 0 || (v5 & 0xC000000000000000) != 0x8000000000000000)
      {
        goto LABEL_24;
      }

      memcpy(__dst, ((v5 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      memcpy(v15, __dst, sizeof(v15));
      v7 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceEnded;
      v8 = &off_1F07CA0F0;
      return sub_193494798(v7, v8, v3);
    }

    if (v5 >> 62 == 1)
    {
      __dst[0] = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceFailed;
      v8 = &off_1F07CA0E0;
      return sub_193494798(v7, v8, v3);
    }
  }

LABEL_24:
  v12 = sub_19349AB64();
  v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
  *v14 = v2;
  v14[1] = v1;
  v14[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceContext;
  v14[2] = v5;
  OUTLINED_FUNCTION_23_2(v13, v14);
}

void sub_193549C4C()
{
  OUTLINED_FUNCTION_51_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  v10 = v2 == 0x697461636F6C6C61 && v1 == 0xEA00000000006E6FLL;
  if (v10 || (OUTLINED_FUNCTION_0_18(0x697461636F6C6C61, 0xEA00000000006E6FLL) & 1) != 0)
  {
    v24[1] = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC8, &qword_193960F70);
    sub_1934948FC();
  }

  else
  {
    v11 = v2 == 0x6874617065646F63 && v1 == 0xEA00000000006449;
    if (v11 || (OUTLINED_FUNCTION_0_18(0x6874617065646F63, 0xEA00000000006449) & 1) != 0)
    {
      v12 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
      sub_193448758(v0 + *(v12 + 20), v7, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v7, 1, v8);
      if (v10)
      {
        sub_19344E6DC(v7, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_104();
      }

      else
      {
        OUTLINED_FUNCTION_1_36();
        sub_1935497C4(v7, v3, v13);
        OUTLINED_FUNCTION_19_3();
        sub_193494798(v14, v15, v16);
        OUTLINED_FUNCTION_0_37();
        sub_19344A630(v3, v17);
      }
    }

    else
    {
      v18 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
      v20 = v19;
      *v19 = v2;
      v19[1] = v1;
      v19[5] = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
      __swift_allocate_boxed_opaque_existential_1Tm(v20 + 2);
      v21 = OUTLINED_FUNCTION_141();
      sub_19354CCEC(v21, v22, v23);
      *(v20 + 48) = 1;
      swift_willThrow();
    }
  }
}

void sub_193549EBC()
{
  OUTLINED_FUNCTION_41_9();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  v8 = type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v11 = v2 == 0xD000000000000013 && v10 == v1;
  if (v11 || (OUTLINED_FUNCTION_59_0(0xD000000000000013, v10) & 1) != 0)
  {
    if (*(v0 + 8))
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  v12 = v2 == 0x656D697265707865 && v1 == 0xEC0000006449746ELL;
  if (v12 || (OUTLINED_FUNCTION_59_0(0x656D697265707865, 0xEC0000006449746ELL) & 1) != 0)
  {
    if (*(v0 + 24))
    {
LABEL_14:
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  v13 = v2 == 0x6E656D7461657274 && v1 == 0xEB00000000644974;
  if (v13 || (OUTLINED_FUNCTION_59_0(0x6E656D7461657274, 0xEB00000000644974) & 1) != 0)
  {
    v14 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
    sub_193448758(v0 + *(v14 + 24), v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v8);
    if (!v11)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v3, v4, v15);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v16, v17, v18);
      OUTLINED_FUNCTION_0_37();
      sub_19344A630(v4, v19);
      return;
    }

    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_23;
  }

  v20 = v2 == 0x656D796F6C706564 && v1 == 0xEC0000006449746ELL;
  if (v20 || (OUTLINED_FUNCTION_59_0(0x656D796F6C706564, 0xEC0000006449746ELL) & 1) != 0)
  {
    if ((*(v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 28) + 8) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_38();
  v22 = v2 == 0xD000000000000010 && v21 == v1;
  if (v22 || (v23 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_59_0(v23, v24) & 1) != 0))
  {
    v25 = v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 32);
    if ((*(v25 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_43_1(v25);
      goto LABEL_14;
    }

LABEL_23:
    OUTLINED_FUNCTION_104();
    return;
  }

  OUTLINED_FUNCTION_38();
  v27 = v2 == 0xD000000000000011 && v26 == v1;
  if (v27 || (OUTLINED_FUNCTION_59_0(0xD000000000000011, v26) & 1) != 0)
  {
    if ((*(v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 36) + 8) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_38();
  v29 = v2 == 0xD000000000000014 && v28 == v1;
  if (v29 || (OUTLINED_FUNCTION_59_0(0xD000000000000014, v28) & 1) != 0)
  {
    if ((*(v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 40) + 4) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  v30 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v30);
  v32 = v31;
  *v31 = v2;
  v31[1] = v1;
  v31[5] = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v32 + 2);
  v33 = OUTLINED_FUNCTION_141();
  sub_19354CCEC(v33, v34, v35);
  *(v32 + 48) = 1;
  swift_willThrow();
}

void sub_19354A2FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  OUTLINED_FUNCTION_38();
  v9 = a1 == 0xD000000000000010 && v8 == a2;
  if (v9 || (v10 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5(v10, v11) & 1) != 0))
  {
    if (__dst[0])
    {
      v58[0] = __dst[0];
      *&v58[1] = *&__dst[1];
      *&v58[3] = *&__dst[3];
      v58[5] = __dst[5];
      v12 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelInputShapes;
      v13 = &off_1F07CA180;
LABEL_8:
      sub_193494798(v12, v13, a3);
      return;
    }

    goto LABEL_22;
  }

  v14 = a1 == 0x74754F6C65646F6DLL && a2 == 0xEC00000073747570;
  if (v14 || (OUTLINED_FUNCTION_5_5(0x74754F6C65646F6DLL, 0xEC00000073747570) & 1) != 0)
  {
    if (__dst[15])
    {
      memcpy(v58, (v4 + 48), 0x48uLL);
      v58[9] = __dst[15];
      v12 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelOutputs;
      v13 = &off_1F07CA190;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v15 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v15 || (OUTLINED_FUNCTION_5_5(0x6E6F6973726576, 0xE700000000000000) & 1) != 0)
  {
    if (__dst[20] != 1)
    {
      LODWORD(v58[0]) = __dst[16];
      BYTE4(v58[0]) = BYTE4(__dst[16]) & 1;
      LODWORD(v58[1]) = __dst[17];
      BYTE4(v58[1]) = BYTE4(__dst[17]) & 1;
      LODWORD(v58[2]) = __dst[18];
      BYTE4(v58[2]) = BYTE4(__dst[18]) & 1;
      *&v58[3] = *&__dst[19];
      v12 = &type metadata for AIML.Version;
      v13 = &off_1F07C3FA0;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v17 = a1 == 0xD000000000000017 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_5_5(0xD000000000000017, v16) & 1) != 0)
  {
    if ((__dst[21] & 0x100000000) == 0)
    {
      v18 = __dst[21];
LABEL_31:
      LODWORD(v58[0]) = v18;
LABEL_32:
      sub_1934948FC();
      return;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v20 = a1 == 0xD000000000000015 && v19 == a2;
  if (v20 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v19) & 1) != 0)
  {
    if ((__dst[22] & 0x100000000) == 0)
    {
      v18 = __dst[22];
      goto LABEL_31;
    }

LABEL_22:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v21 = a1 == 0x666F72506B736972 && a2 == 0xEB00000000656C69;
  if (v21 || (OUTLINED_FUNCTION_5_5(0x666F72506B736972, 0xEB00000000656C69) & 1) != 0)
  {
    if (__dst[23])
    {
      v58[0] = __dst[23];
      v12 = &type metadata for IntelligenceFlowJointResolverTelemetry.RiskProfile;
      v13 = &off_1F07CA240;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v22 = a1 == 0x6574656D61726170 && a2 == 0xED00006570795472;
  if (v22 || (OUTLINED_FUNCTION_5_5(0x6574656D61726170, 0xED00006570795472) & 1) != 0)
  {
    v23 = __dst[24];
LABEL_53:
    v58[0] = v23;
    v24 = &qword_1EAE3B9E8;
    v25 = &qword_193957EC8;
LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    goto LABEL_32;
  }

  v26 = a1 == 0x5079646165726C61 && a2 == 0xEF646574706D6F72;
  if (v26 || (OUTLINED_FUNCTION_5_5(0x5079646165726C61, 0xEF646574706D6F72) & 1) != 0)
  {
    v23 = __dst[25];
    goto LABEL_53;
  }

  v27 = a1 == 0x6F4372656C6C6163 && a2 == 0xEF746E656E6F706DLL;
  if (v27 || (OUTLINED_FUNCTION_5_5(0x6F4372656C6C6163, 0xEF746E656E6F706DLL) & 1) != 0)
  {
    v23 = __dst[26];
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_38();
  v29 = a1 == 0xD000000000000015 && v28 == a2;
  if (v29 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v28) & 1) != 0)
  {
    v58[0] = __dst[27];
    v24 = &unk_1EAE3CF10;
    v25 = &unk_193960FA8;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v31 = a1 == 0xD000000000000011 && v30 == a2;
  if (v31 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, v30) & 1) != 0)
  {
    v58[0] = __dst[28];
    v24 = &unk_1EAE3CF08;
    v25 = &unk_193960FA0;
    goto LABEL_54;
  }

  v32 = OUTLINED_FUNCTION_8_31();
  v34 = a1 == v32 && a2 == v33;
  if (v34 || (OUTLINED_FUNCTION_5_5(v32, v33) & 1) != 0)
  {
    v58[0] = __dst[29];
    v24 = &unk_1EAE3CF00;
    v25 = &unk_193960F98;
    goto LABEL_54;
  }

  v35 = OUTLINED_FUNCTION_53_10();
  v37 = a1 == v35 && a2 == v36;
  if (v37 || (OUTLINED_FUNCTION_5_5(v35, v36) & 1) != 0)
  {
    v58[0] = __dst[30];
    v24 = &unk_1EAE3CEF8;
    v25 = &unk_193960F90;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v39 = a1 == 0xD000000000000010 && v38 == a2;
  if (v39 || (v40 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5(v40, v41) & 1) != 0))
  {
    v58[0] = __dst[31];
    v24 = &qword_1EAE3CEF0;
    v25 = &qword_193961A60;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v43 = a1 == 0xD000000000000016 && v42 == a2;
  if (v43 || (OUTLINED_FUNCTION_5_5(0xD000000000000016, v42) & 1) != 0)
  {
    v58[0] = __dst[32];
    v24 = &unk_1EAE3CEE8;
    v25 = &unk_193960F88;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v45 = a1 == 0xD000000000000010 && v44 == a2;
  if (v45 || (v46 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5(v46, v47) & 1) != 0))
  {
    v58[0] = __dst[33];
    v24 = &qword_1EAE3CEE0;
    v25 = &qword_193961B40;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v49 = a1 == 0xD000000000000012 && v48 == a2;
  if (v49 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v48) & 1) != 0)
  {
    if ((__dst[34] & 0x100000000) == 0)
    {
      v18 = __dst[34];
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v50 = a1 == 0x7373656E64756F6CLL && a2 == 0xED00006C6576654CLL;
  if (v50 || (OUTLINED_FUNCTION_5_5(0x7373656E64756F6CLL, 0xED00006C6576654CLL) & 1) != 0)
  {
    if ((__dst[35] & 0x100000000) == 0)
    {
      v18 = __dst[35];
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v51 = a1 == 0x7365726F6373 && a2 == 0xE600000000000000;
  if (v51 || (OUTLINED_FUNCTION_5_5(0x7365726F6373, 0xE600000000000000) & 1) != 0)
  {
    v58[0] = __dst[36];
    v24 = &unk_1EAE3CED8;
    v25 = &unk_193960F80;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_38();
  v53 = a1 == 0xD000000000000018 && v52 == a2;
  if (v53 || (OUTLINED_FUNCTION_5_5(0xD000000000000018, v52) & 1) != 0)
  {
    v58[0] = __dst[37];
    v24 = &unk_1EAE3CED0;
    v25 = &unk_193960F78;
    goto LABEL_54;
  }

  v54 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v54);
  v56 = v55;
  *v55 = a1;
  v55[1] = a2;
  v55[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceEnded;
  v57 = swift_allocObject();
  v56[2] = v57;
  memcpy((v57 + 16), __dst, 0x130uLL);
  *(v56 + 48) = 1;
  swift_willThrow();

  sub_19354A9B4(__dst, v58);
}

void sub_19354AA28()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v3 = v3 && v1 == v2;
  if (v3 || (OUTLINED_FUNCTION_31_9(v0, 0xE90000000000006CLL) & 1) != 0)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    OUTLINED_FUNCTION_16_17(v4);
  }

  else
  {
    v5 = sub_19349AB64();
    v6 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v5);
    OUTLINED_FUNCTION_23_21(v6, v7);
    OUTLINED_FUNCTION_4_28(v8, &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateRiskLevel);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354AB04()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_53_10();
  OUTLINED_FUNCTION_28_11();
  v3 = v3 && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_31_9(v1, v2) & 1) != 0)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    OUTLINED_FUNCTION_16_17(v4);
  }

  else
  {
    v5 = sub_19349AB64();
    v6 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v5);
    OUTLINED_FUNCTION_23_21(v6, v7);
    OUTLINED_FUNCTION_4_28(v8, &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateSearchToolRank);
  }

  OUTLINED_FUNCTION_47_12();
}

uint64_t sub_19354ABD4()
{
  OUTLINED_FUNCTION_172_0();
  v2 = *v0;
  OUTLINED_FUNCTION_38();
  v5 = v3 == 0xD000000000000014 && v4 == v1;
  if (v5 || (v6 = v3, v7 = v0[1], (OUTLINED_FUNCTION_31_3(0xD000000000000014, v4, v3) & 1) != 0))
  {
    v8 = &unk_1EAE3CF28;
    v9 = &unk_193960FC0;
LABEL_7:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    return OUTLINED_FUNCTION_16_17(v10);
  }

  OUTLINED_FUNCTION_38();
  v13 = v6 == 0xD00000000000001BLL && v12 == v1;
  if (v13 || (OUTLINED_FUNCTION_31_3(0xD00000000000001BLL, v12, v6) & 1) != 0)
  {
    v8 = &unk_1EAE3CF20;
    v9 = &unk_193960FB8;
    goto LABEL_7;
  }

  v14 = sub_19349AB64();
  v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
  *v16 = v6;
  v16[1] = v1;
  v16[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime;
  v16[2] = v2;
  v16[3] = v7;
  OUTLINED_FUNCTION_23_2(v15, v16);
}

void sub_19354AD14()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_22_4();
  v2 = v2 && v1 == v0;
  if (v2 || (OUTLINED_FUNCTION_31_9(0xD000000000000017, v1) & 1) != 0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF30, &qword_193960FC8);
    OUTLINED_FUNCTION_16_17(v3);
  }

  else
  {
    v4 = sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v4);
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateBooleanMask);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354ADF0()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_22_4();
  v2 = v2 && v1 == v0;
  if (v2 || (OUTLINED_FUNCTION_31_9(0xD000000000000024, v1) & 1) != 0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
    OUTLINED_FUNCTION_16_17(v3);
  }

  else
  {
    v4 = sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v4);
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateTimeIntervalMatrix);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354AECC()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v3 = v3 && v1 == v2;
  if (v3 || (OUTLINED_FUNCTION_31_9(v0, 0xE900000000000073) & 1) != 0)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
    OUTLINED_FUNCTION_16_17(v4);
  }

  else
  {
    v5 = sub_19349AB64();
    v6 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v5);
    OUTLINED_FUNCTION_23_21(v6, v7);
    OUTLINED_FUNCTION_4_28(v8, &type metadata for IntelligenceFlowJointResolverTelemetry.JRTokenConfidence);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354AFA8()
{
  OUTLINED_FUNCTION_46_8();
  v2 = v1 == 7827314 && v0 == 0xE300000000000000;
  if (v2 || (OUTLINED_FUNCTION_31_9(7827314, 0xE300000000000000) & 1) != 0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF38, &qword_193960FD0);
    OUTLINED_FUNCTION_16_17(v3);
  }

  else
  {
    v4 = sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v4);
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityScores);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354B088()
{
  OUTLINED_FUNCTION_26();
  v41 = v1;
  v42 = v0;
  OUTLINED_FUNCTION_51_8();
  v40 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = v3 == 0x74616469646E6163 && v2 == 0xEA00000000004165;
  if (v21 || (OUTLINED_FUNCTION_0_18(0x74616469646E6163, 0xEA00000000004165) & 1) != 0)
  {
    sub_193448758(v42, v12, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_5(v12);
    if (!v21)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v12, v20, v23);
      sub_193494798(v13, &off_1F07C3F90, v40);
      OUTLINED_FUNCTION_0_37();
      v25 = v20;
LABEL_11:
      sub_19344A630(v25, v24);
      goto LABEL_12;
    }

    v22 = v12;
  }

  else
  {
    v26 = v3 == 0x74616469646E6163 && v2 == 0xEA00000000004265;
    if (!v26 && (OUTLINED_FUNCTION_0_18(0x74616469646E6163, 0xEA00000000004265) & 1) == 0)
    {
      v32 = v3 == 0x6972616C696D6973 && v2 == 0xEF65726F63537974;
      if (!v32 && (OUTLINED_FUNCTION_0_18(0x6972616C696D6973, 0xEF65726F63537974) & 1) == 0)
      {
        v33 = sub_19349AB64();
        v34 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v33);
        v36 = OUTLINED_FUNCTION_42_15(v34, v35);
        v37 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(v36);
        v38 = OUTLINED_FUNCTION_126(v37);
        sub_19354CCEC(v42, v38, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_12;
      }

      if ((*(v42 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0) + 24) + 4) & 1) == 0)
      {
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v27 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
    sub_193448758(v42 + *(v27 + 20), v9, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_5(v9);
    if (!v21)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v9, v17, v28);
      OUTLINED_FUNCTION_93_4();
      sub_193494798(v29, v30, v31);
      OUTLINED_FUNCTION_0_37();
      v25 = v17;
      goto LABEL_11;
    }

    v22 = v9;
  }

  sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_27_13();
LABEL_12:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19354B3C4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_38();
  v7 = a1 == 0xD000000000000015 && v6 == a2;
  if (v7 || (v9 = v2[1], v8 = v2[2], v27 = v2[4], v28 = v2[3], v10 = v2[5], (OUTLINED_FUNCTION_26_12(0xD000000000000015, v6) & 1) != 0) || ((OUTLINED_FUNCTION_38(), a1 == 0xD000000000000013) ? (v13 = v12 == a2) : (v13 = 0), v13 || (OUTLINED_FUNCTION_26_12(0xD000000000000013, v12) & 1) != 0 || ((OUTLINED_FUNCTION_38(), a1 == 0xD00000000000001BLL) ? (v15 = v14 == a2) : (v15 = 0), v15 || (OUTLINED_FUNCTION_26_12(0xD00000000000001BLL, v14) & 1) != 0 || ((OUTLINED_FUNCTION_38(), a1 == 0xD000000000000021) ? (v17 = v16 == a2) : (v17 = 0), v17 || (OUTLINED_FUNCTION_26_12(0xD000000000000021, v16) & 1) != 0 || ((OUTLINED_FUNCTION_38(), a1 == 0xD000000000000020) ? (v19 = v18 == a2) : (v19 = 0), v19 || (OUTLINED_FUNCTION_26_12(0xD000000000000020, v18) & 1) != 0 || ((OUTLINED_FUNCTION_38(), a1 == 0xD000000000000016) ? (v21 = v20 == a2) : (v21 = 0), v21 || (OUTLINED_FUNCTION_26_12(0xD000000000000016, v20) & 1) != 0))))))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    return sub_1934948FC();
  }

  else
  {
    v22 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
    v23 = v10;
    v25 = v24;
    *v24 = a1;
    v24[1] = a2;
    v24[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelInputShapes;
    v26 = swift_allocObject();
    v25[2] = v26;
    v26[2] = v5;
    v26[3] = v9;
    v26[4] = v8;
    v26[5] = v28;
    v26[6] = v27;
    v26[7] = v23;
    *(v25 + 48) = 1;
    swift_willThrow();
  }
}

void sub_19354B62C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v8 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v8 || (OUTLINED_FUNCTION_5_5(0x6E6F69746361, 0xE600000000000000) & 1) != 0)
  {
    v9 = __dst[0];
    if (__dst[0])
    {
LABEL_7:
      v35[0] = v9;
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRAction;
      v11 = &off_1F07CA1B0;
LABEL_8:
      sub_193494798(v10, v11, a3);
      return;
    }

    goto LABEL_22;
  }

  v12 = OUTLINED_FUNCTION_8_31();
  v14 = a1 == v12 && a2 == v13;
  if (v14 || (OUTLINED_FUNCTION_5_5(v12, 0xEA00000000007365) & 1) != 0)
  {
    v15 = __dst[1];
    if (__dst[1])
    {
LABEL_15:
      v35[0] = v15;
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRActionCandidateTuple;
      v11 = &off_1F07CA1C0;
      goto LABEL_8;
    }

LABEL_22:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v16 = a1 == 0x676E696B6E6172 && a2 == 0xE700000000000000;
  if (v16 || (OUTLINED_FUNCTION_5_5(0x676E696B6E6172, 0xE700000000000000) & 1) != 0)
  {
    if (__dst[2] != 1)
    {
      v35[0] = __dst[2];
      v35[1] = __dst[3];
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.Ranking;
      v11 = &off_1F07CA1F0;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v18 = a1 == 0xD00000000000001DLL && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_5_5(0xD00000000000001DLL, v17) & 1) != 0)
  {
    if (__dst[4])
    {
      v35[0] = __dst[4];
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContext;
      v11 = &off_1F07CA1E0;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v20 = a1 == 0xD000000000000010 && v19 == a2;
  if (v20 || (v21 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5(v21, v22) & 1) != 0))
  {
    if (LOBYTE(__dst[5]) == 2)
    {
      goto LABEL_22;
    }

    LOBYTE(v35[0]) = __dst[5] & 1;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_38();
  v24 = a1 == 0xD000000000000016 && v23 == a2;
  if (v24 || (OUTLINED_FUNCTION_5_5(0xD000000000000016, v23) & 1) != 0)
  {
    if (__dst[6])
    {
      v35[0] = __dst[6];
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelDiagnosticsSignals;
      v11 = &off_1F07CA1A0;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v25 = a1 == 0x6341776F64616873 && a2 == 0xEC0000006E6F6974;
  if (v25 || (OUTLINED_FUNCTION_5_5(0x6341776F64616873, 0xEC0000006E6F6974) & 1) != 0)
  {
    v9 = __dst[7];
    if (__dst[7])
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v27 = a1 == 0xD000000000000010 && v26 == a2;
  if (v27 || (v28 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5(v28, v29) & 1) != 0))
  {
    v15 = __dst[8];
    if (__dst[8])
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  v30 = a1 == 0x7473694872657375 && a2 == 0xEB0000000079726FLL;
  if (v30 || (OUTLINED_FUNCTION_5_5(0x7473694872657375, 0xEB0000000079726FLL) & 1) != 0)
  {
    v35[0] = __dst[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF40, &qword_193960FD8);
LABEL_38:
    sub_1934948FC();
    return;
  }

  v31 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v31);
  v33 = v32;
  *v32 = a1;
  v32[1] = a2;
  v32[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelOutputs;
  v34 = swift_allocObject();
  v33[2] = v34;
  memcpy((v34 + 16), __dst, 0x50uLL);
  *(v33 + 48) = 1;
  swift_willThrow();

  sub_19354B9A8(__dst, v35);
}

void sub_19354BA1C()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_22_4();
  v2 = v2 && v1 == v0;
  if (v2 || (OUTLINED_FUNCTION_31_9(0xD000000000000016, v1) & 1) != 0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
    OUTLINED_FUNCTION_16_17(v3);
  }

  else
  {
    v4 = sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v4);
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.JRModelDiagnosticsSignals);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354BAF8()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v2 = v2 && v1 == 0xE700000000000000;
  if (v2 || (OUTLINED_FUNCTION_31_9(v0, 0xE700000000000000) & 1) != 0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    OUTLINED_FUNCTION_16_17(v3);
  }

  else
  {
    v4 = sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v4);
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.JRAction);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354BBEC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_31();
  v9 = *v0;
  if (v4 != v7 || v2 != v8)
  {
    v11 = *(v0 + 2);
    v12 = *(v0 + 12);
    v13 = *(v0 + 4);
    v14 = *(v0 + 20);
    if ((OUTLINED_FUNCTION_59_0(v7, v8) & 1) == 0)
    {
      v15 = v4 == 0xD000000000000016 && 0x8000000193A1C440 == v2;
      if (v15 || (OUTLINED_FUNCTION_59_0(0xD000000000000016, 0x8000000193A1C440) & 1) != 0)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v16 = v4 == 0x65726F63536C6675 && v2 == 0xE800000000000000;
        if (!v16 && (OUTLINED_FUNCTION_59_0(0x65726F63536C6675, 0xE800000000000000) & 1) == 0)
        {
          v17 = sub_19349AB64();
          v18 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
          *v19 = v4;
          *(v19 + 8) = v2;
          *(v19 + 40) = &type metadata for IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple;
          *(v19 + 16) = v9;
          *(v19 + 24) = v11;
          *(v19 + 28) = v12;
          *(v19 + 32) = v13;
          *(v19 + 36) = v14;
          OUTLINED_FUNCTION_23_2(v18, v19);

          goto LABEL_8;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      *v6 = 0u;
      v6[1] = 0u;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF48, &qword_193960FE0);
LABEL_7:
  sub_1934948FC();
LABEL_8:
  OUTLINED_FUNCTION_27();
}

void sub_19354BDB4()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_38();
  v7 = v5 == 0xD000000000000012 && v6 == v1;
  if (v7 || (v8 = v5, v9 = v0[1], (OUTLINED_FUNCTION_31_3(0xD000000000000012, v6, v5) & 1) != 0))
  {
    if (v4)
    {
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.RankingScoreMatrix;
      v11 = &off_1F07CA200;
LABEL_8:
      sub_193494798(v10, v11, v3);
      return;
    }

LABEL_16:
    *v3 = 0u;
    *(v3 + 16) = 0u;
    return;
  }

  OUTLINED_FUNCTION_38();
  v13 = v8 == 0xD000000000000016 && v12 == v1;
  if (v13 || (OUTLINED_FUNCTION_31_3(0xD000000000000016, v12, v8) & 1) != 0)
  {
    if (v9)
    {
      v10 = &type metadata for IntelligenceFlowJointResolverTelemetry.RankingCandidateMatrix;
      v11 = &off_1F07CA210;
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v14 = sub_19349AB64();
  v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
  *v16 = v8;
  v16[1] = v1;
  v16[5] = &type metadata for IntelligenceFlowJointResolverTelemetry.Ranking;
  v16[2] = v4;
  v16[3] = v9;
  OUTLINED_FUNCTION_23_2(v15, v16);
}

void sub_19354BF0C()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_28_11();
  v3 = v3 && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_31_9(v1, v2) & 1) != 0)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF58, &qword_193960FF0);
    OUTLINED_FUNCTION_16_17(v4);
  }

  else
  {
    v5 = sub_19349AB64();
    v6 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v5);
    OUTLINED_FUNCTION_23_21(v6, v7);
    OUTLINED_FUNCTION_4_28(v8, &type metadata for IntelligenceFlowJointResolverTelemetry.RankingScoreMatrix);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354BFE4()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_8_31();
  OUTLINED_FUNCTION_28_11();
  v3 = v3 && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_31_9(v1, v2) & 1) != 0)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF60, &qword_193960FF8);
    OUTLINED_FUNCTION_16_17(v4);
  }

  else
  {
    v5 = sub_19349AB64();
    v6 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v5);
    OUTLINED_FUNCTION_23_21(v6, v7);
    OUTLINED_FUNCTION_4_28(v8, &type metadata for IntelligenceFlowJointResolverTelemetry.RankingCandidateMatrix);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354C0B4()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v2 = v2 && v1 == 0xE600000000000000;
  if (v2 || (OUTLINED_FUNCTION_31_9(v0, 0xE600000000000000) & 1) != 0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
    OUTLINED_FUNCTION_16_17(v3);
  }

  else
  {
    v4 = sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v4);
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.RankingScoreTuple);
  }

  OUTLINED_FUNCTION_47_12();
}

uint64_t sub_19354C184(uint64_t a1, uint64_t a2)
{
  v6 = a1 == OUTLINED_FUNCTION_8_31() && a2 == v4;
  if (v6 || (v7 = v5, (sub_19393CA30() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF48, &qword_193960FE0);
    return sub_1934948FC();
  }

  else
  {
    v9 = sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
    *v11 = a1;
    v11[1] = a2;
    v11[5] = v7;
    OUTLINED_FUNCTION_7_27(v10, v11);
  }
}

void sub_19354C288()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = v2 == 0x73656C707574 && v0 == 0xE600000000000000;
  if (v4 || (v5 = v1, v6 = v0, (sub_19393CA30() & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_19_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    sub_1934948FC();
  }

  else
  {
    v9 = sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
    *v11 = v3;
    v11[1] = v6;
    v11[5] = v5;
    OUTLINED_FUNCTION_7_27(v10, v11);
  }

  OUTLINED_FUNCTION_27();
}

void sub_19354C394()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_28_11();
  v2 = v2 && v1 == 0xE500000000000000;
  if (v2 || (OUTLINED_FUNCTION_31_9(v0, 0xE500000000000000) & 1) != 0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF18, &qword_193960FB0);
    OUTLINED_FUNCTION_16_17(v3);
  }

  else
  {
    v4 = sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v4);
    OUTLINED_FUNCTION_23_21(v5, v6);
    OUTLINED_FUNCTION_4_28(v7, &type metadata for IntelligenceFlowJointResolverTelemetry.RiskTuple);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_19354C464()
{
  OUTLINED_FUNCTION_41_9();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  v8 = type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  v10 = v2 == 0x44496C6F6F74 && v1 == 0xE600000000000000;
  if (v10 || (OUTLINED_FUNCTION_59_0(0x44496C6F6F74, 0xE600000000000000) & 1) != 0)
  {
    sub_193448758(v0, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v8);
    if (!v10)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v3, v4, v11);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v12, v13, v14);
      OUTLINED_FUNCTION_0_37();
      sub_19344A630(v4, v15);
      return;
    }

    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v17 = v2 == 0xD000000000000011 && v16 == v1;
  if (v17 || (OUTLINED_FUNCTION_59_0(0xD000000000000011, v16) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
    v18 = &qword_1EAE3B9E8;
    v19 = &qword_193957EC8;
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
LABEL_17:
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v21 = v2 == 0xD000000000000012 && v20 == v1;
  if (v21 || (OUTLINED_FUNCTION_59_0(0xD000000000000012, v20) & 1) != 0)
  {
    if (*(v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0) + 24) + 4))
    {
LABEL_9:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v23 = v2 == 0xD000000000000019 && v22 == v1;
  if (v23 || (OUTLINED_FUNCTION_59_0(0xD000000000000019, v22) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
    v18 = &unk_1EAE3CF70;
    v19 = &unk_193961008;
    goto LABEL_16;
  }

  v24 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v24);
  v26 = v25;
  *v25 = v2;
  v25[1] = v1;
  v25[5] = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v26 + 2);
  v27 = OUTLINED_FUNCTION_141();
  sub_19354CCEC(v27, v28, v29);
  *(v26 + 48) = 1;
  swift_willThrow();
}

void sub_19354C750(uint64_t *a1@<X8>)
{
  v48 = a1;
  OUTLINED_FUNCTION_51_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v5 = OUTLINED_FUNCTION_47(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  OUTLINED_FUNCTION_38();
  v21 = v3 == 0xD000000000000019 && v20 == v2;
  if (v21 || (OUTLINED_FUNCTION_0_18(0xD000000000000019, v20) & 1) != 0)
  {
    if ((v1[1] & 1) == 0)
    {
      v49 = *v1;
LABEL_8:
      sub_1934948FC();
      return;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38();
  v23 = v3 == 0xD000000000000018 && v22 == v2;
  if (v23 || (OUTLINED_FUNCTION_0_18(0xD000000000000018, v22) & 1) != 0)
  {
    v24 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
    sub_193448758(v1 + *(v24 + 20), v11, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_5(v11);
    if (!v21)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v11, v19, v26);
      sub_193494798(v12, &off_1F07C3F90, v48);
      OUTLINED_FUNCTION_0_37();
      v28 = v19;
LABEL_19:
      sub_19344A630(v28, v27);
      return;
    }

    v25 = v11;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v30 = v3 == 0xD000000000000018 && v29 == v2;
  if (v30 || (OUTLINED_FUNCTION_0_18(0xD000000000000018, v29) & 1) != 0)
  {
    v31 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
    sub_193448758(v1 + *(v31 + 24), v8, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_5(v8);
    if (!v21)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v8, v16, v32);
      OUTLINED_FUNCTION_93_4();
      sub_193494798(v33, v34, v35);
      OUTLINED_FUNCTION_0_37();
      v28 = v16;
      goto LABEL_19;
    }

    v25 = v8;
LABEL_17:
    sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_18:
    OUTLINED_FUNCTION_27_13();
    return;
  }

  OUTLINED_FUNCTION_38();
  v37 = v3 == 0xD000000000000010 && v36 == v2;
  if (v37 || (OUTLINED_FUNCTION_0_18(0xD000000000000010, v36) & 1) != 0)
  {
    v38 = v1 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0) + 28);
    if ((*(v38 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_43_1(v38);
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v39 = sub_19349AB64();
  v40 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v39);
  v42 = OUTLINED_FUNCTION_42_15(v40, v41);
  v43 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v42);
  OUTLINED_FUNCTION_126(v43);
  v44 = OUTLINED_FUNCTION_141();
  sub_19354CCEC(v44, v45, v46);
  OUTLINED_FUNCTION_15_24();
  swift_willThrow();
}

void sub_19354CAC8()
{
  OUTLINED_FUNCTION_41_9();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  v8 = type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  v10 = v2 == 0x74616469646E6163 && v1 == 0xEB00000000444965;
  if (v10 || (OUTLINED_FUNCTION_59_0(0x74616469646E6163, 0xEB00000000444965) & 1) != 0)
  {
    sub_193448758(v0, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v8);
    if (!v10)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1935497C4(v3, v4, v11);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v12, v13, v14);
      OUTLINED_FUNCTION_0_37();
      sub_19344A630(v4, v15);
      return;
    }

    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_9;
  }

  v16 = OUTLINED_FUNCTION_50_7();
  v17 = v10 && v1 == 0xE500000000000000;
  if (v17 || (OUTLINED_FUNCTION_59_0(v16, 0xE500000000000000) & 1) != 0)
  {
    if (*(v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0) + 20) + 4))
    {
LABEL_9:
      OUTLINED_FUNCTION_104();
      return;
    }

    sub_1934948FC();
  }

  else
  {
    v18 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
    *v19 = v2;
    v19[1] = v1;
    v20 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
    OUTLINED_FUNCTION_126(v20);
    v21 = OUTLINED_FUNCTION_141();
    sub_19354CCEC(v21, v22, v23);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }
}

uint64_t sub_19354CCEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_19354CD60()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = v2 == 0x6E6143656C707574 && v1 == 0xEF73657461646964;
  if (v7 || (v8 = *(v0 + 2), v9 = *(v0 + 12), (OUTLINED_FUNCTION_31_3(0x6E6143656C707574, 0xEF73657461646964, v2) & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF48, &qword_193960FE0);
    return sub_1934948FC();
  }

  result = OUTLINED_FUNCTION_50_7();
  v11 = v7 && v1 == 0xE500000000000000;
  if (v11 || (result = OUTLINED_FUNCTION_31_3(result, 0xE500000000000000, v3), (result & 1) != 0))
  {
    if ((v9 & 1) == 0)
    {
      return sub_1934948FC();
    }

    *v5 = 0u;
    v5[1] = 0u;
  }

  else
  {
    v12 = sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    *v14 = v3;
    *(v14 + 8) = v1;
    *(v14 + 40) = &type metadata for IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount;
    *(v14 + 16) = v6;
    *(v14 + 24) = v8;
    *(v14 + 28) = v9;
    OUTLINED_FUNCTION_23_2(v13, v14);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_42_15(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

uint64_t IntelligenceFlowJointResolverTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193559594();
  v6 = v2[8];
  sub_19343E51C((a1 + v6));
  v7 = v2[9];
  sub_19355976C();
  v8 = v2[10];
  sub_193559884();
  v9 = v2[11];
  sub_1935092CC();
  *a1 = *sub_19355941C();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3CEB0, &qword_193960F60);
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1934354B4(*(a1 + v6));
  *(a1 + v6) = 0xF000000000000007;
  sub_19344E6DC(a1 + v7, &qword_1EAE3CEB8, &qword_193961930);
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_19344E6DC(a1 + v8, &qword_1EAE3CEC0, &qword_193960F68);
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_19344E6DC(a1 + v9, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
}

BOOL static IntelligenceFlowJointResolverTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v83 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  v84 = v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  v87 = v10;
  v11 = OUTLINED_FUNCTION_22_2();
  v93 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v11);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_289();
  v85 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_47(v14);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v89 = v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF78, &qword_193961278);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53_1();
  v92 = v18;
  v19 = OUTLINED_FUNCTION_22_2();
  v97 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v19);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_289();
  v90 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_47(v22);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53_1();
  v94 = v24;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF80, &qword_193961280);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_53_1();
  v96 = v26;
  v27 = OUTLINED_FUNCTION_22_2();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(v27);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_47(v31);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v83 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CF88, &qword_193961288) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v83 - v37;
  v98 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  v99 = a1;
  v39 = *(v98 + 28);
  v40 = *(v35 + 56);
  sub_1934486F8(a1 + v39, v38, &qword_1EAE3CEB0, &qword_193960F60);
  sub_1934486F8(a2 + v39, &v38[v40], &qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_31(v38);
  if (v41)
  {
    OUTLINED_FUNCTION_31(&v38[v40]);
    if (v41)
    {
      sub_19344E6DC(v38, &qword_1EAE3CEB0, &qword_193960F60);
      goto LABEL_12;
    }

LABEL_9:
    v42 = &qword_1EAE3CF88;
    v43 = &qword_193961288;
    v44 = v38;
LABEL_10:
    sub_19344E6DC(v44, v42, v43);
    return 0;
  }

  sub_1934486F8(v38, v34, &qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_31(&v38[v40]);
  if (v41)
  {
    sub_19344A688(v34, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
    goto LABEL_9;
  }

  sub_19354DAE8(&v38[v40], v30, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
  OUTLINED_FUNCTION_20_15();
  sub_19344A8DC(v45, v46, &protocol conformance descriptor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
  v47 = sub_19393C550();
  sub_19344A688(v30, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
  sub_19344A688(v34, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
  sub_19344E6DC(v38, &qword_1EAE3CEB0, &qword_193960F60);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v49 = v98;
  v48 = v99;
  v50 = *(v98 + 32);
  v51 = *(v99 + v50);
  v52 = *(a2 + v50);
  if ((~v51 & 0xF000000000000007) == 0)
  {
    sub_193438388(v51);
    sub_193438388(v52);
    if ((~v52 & 0xF000000000000007) == 0)
    {
      sub_1934354B4(v51);
      goto LABEL_21;
    }

LABEL_17:
    sub_1934354B4(v51);
    sub_1934354B4(v52);
    return 0;
  }

  v101 = *(v99 + v50);
  if ((~v52 & 0xF000000000000007) == 0)
  {
    sub_193438388(v51);
    sub_193438388(v52);
    sub_193438388(v51);

    goto LABEL_17;
  }

  v100 = v52;
  sub_193438388(v51);
  sub_193438388(v52);
  sub_193438388(v51);
  sub_19354DA94();
  v54 = sub_19393C550();

  sub_1934354B4(v51);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v55 = v49[9];
  v56 = v96;
  v57 = *(v95 + 48);
  OUTLINED_FUNCTION_25_6(v48 + v55, v96);
  OUTLINED_FUNCTION_40_8();
  v58 = v97;
  OUTLINED_FUNCTION_6_3(v56, 1, v97);
  if (v41)
  {
    OUTLINED_FUNCTION_31(v55 + v57);
    if (v41)
    {
      sub_19344E6DC(v55, &qword_1EAE3CEB8, &qword_193961930);
      goto LABEL_31;
    }

LABEL_29:
    v42 = &qword_1EAE3CF80;
    v43 = &qword_193961280;
LABEL_50:
    v44 = v55;
    goto LABEL_10;
  }

  v59 = v94;
  sub_1934486F8(v55, v94, &qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_31(v55 + v57);
  if (v60)
  {
    sub_19344A688(v59, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
    goto LABEL_29;
  }

  sub_19354DAE8(v55 + v57, v90, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
  OUTLINED_FUNCTION_19_23();
  v63 = sub_19344A8DC(v61, v62, &protocol conformance descriptor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
  OUTLINED_FUNCTION_53(v63);
  OUTLINED_FUNCTION_43_9();
  sub_19344A688(v59, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
  sub_19344E6DC(v55, &qword_1EAE3CEB8, &qword_193961930);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v55 = v49[10];
  v64 = v92;
  v65 = *(v91 + 48);
  OUTLINED_FUNCTION_25_6(v48 + v55, v92);
  OUTLINED_FUNCTION_40_8();
  v66 = v93;
  OUTLINED_FUNCTION_6_3(v64, 1, v93);
  if (v41)
  {
    OUTLINED_FUNCTION_31(v55 + v65);
    if (v41)
    {
      sub_19344E6DC(v55, &qword_1EAE3CEC0, &qword_193960F68);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v67 = v89;
  sub_1934486F8(v55, v89, &qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_31(v55 + v65);
  if (v68)
  {
    sub_19344A688(v67, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
LABEL_39:
    v42 = &qword_1EAE3CF78;
    v43 = &qword_193961278;
    goto LABEL_50;
  }

  sub_19354DAE8(v55 + v65, v85, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
  OUTLINED_FUNCTION_18_20();
  v71 = sub_19344A8DC(v69, v70, &protocol conformance descriptor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
  OUTLINED_FUNCTION_53(v71);
  OUTLINED_FUNCTION_43_9();
  sub_19344A688(v67, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
  sub_19344E6DC(v55, &qword_1EAE3CEC0, &qword_193960F68);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v72 = v49[11];
  v73 = *(v86 + 48);
  v74 = v48 + v72;
  v75 = v87;
  OUTLINED_FUNCTION_25_6(v74, v87);
  v76 = a2 + v72;
  v55 = v75;
  OUTLINED_FUNCTION_25_6(v76, v75 + v73);
  v77 = v88;
  OUTLINED_FUNCTION_6_3(v75, 1, v88);
  if (v41)
  {
    OUTLINED_FUNCTION_31(v75 + v73);
    if (v41)
    {
      sub_19344E6DC(v75, &qword_1EAE3B498, &unk_193959120);
      return 1;
    }

    goto LABEL_49;
  }

  v78 = v75;
  v79 = v84;
  sub_1934486F8(v78, v84, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(v55 + v73);
  if (v80)
  {
    sub_19344A688(v79, type metadata accessor for MonotonicTimestamp);
LABEL_49:
    v42 = &qword_1EAE3B958;
    v43 = &qword_193957B50;
    goto LABEL_50;
  }

  sub_19354DAE8(v55 + v73, v83, type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_17_17();
  sub_19344A8DC(v81, v82, &protocol conformance descriptor for MonotonicTimestamp);
  sub_19393C550();
  OUTLINED_FUNCTION_43_9();
  sub_19344A688(v79, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v55, &qword_1EAE3B498, &unk_193959120);
  return (v77 & 1) != 0;
}

unint64_t sub_19354DA94()
{
  result = qword_1EAE3CFA0;
  if (!qword_1EAE3CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFA0);
  }

  return result;
}

uint64_t sub_19354DAE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t IntelligenceFlowJointResolverTelemetry.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v54 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  v50 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_53_1();
  v53 = v7;
  v8 = OUTLINED_FUNCTION_22_2();
  v52 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_289();
  v49 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v51 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_289();
  v48 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_47(v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_47(v25);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - v27;
  v29 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  sub_1934486F8(v2 + v29[7], v28, &qword_1EAE3CEB0, &qword_193960F60);
  OUTLINED_FUNCTION_6_3(v28, 1, v21);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19354DAE8(v28, v24, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_20_15();
    sub_19344A8DC(v31, v32, &protocol conformance descriptor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_19344A688(v24, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
  }

  v34 = v51;
  v33 = v52;
  if ((~*(v2 + v29[8]) & 0xF000000000000007) != 0)
  {
    v55 = *(v2 + v29[8]);
    OUTLINED_FUNCTION_103_0();
    sub_19354E0A4();

    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v35 = v54;
  sub_1934486F8(v2 + v29[9], v20, &qword_1EAE3CEB8, &qword_193961930);
  OUTLINED_FUNCTION_6_3(v20, 1, v34);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v36 = v20;
    v37 = v48;
    sub_19354DAE8(v36, v48, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_19_23();
    sub_19344A8DC(v38, v39, &protocol conformance descriptor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_19344A688(v37, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
  }

  sub_1934486F8(v2 + v29[10], v14, &qword_1EAE3CEC0, &qword_193960F68);
  OUTLINED_FUNCTION_6_3(v14, 1, v33);
  if (v30)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v40 = v49;
    sub_19354DAE8(v14, v49, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_18_20();
    sub_19344A8DC(v41, v42, &protocol conformance descriptor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_19344A688(v40, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
  }

  v43 = v53;
  sub_1934486F8(v2 + v29[11], v53, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_6_3(v43, 1, v35);
  if (v30)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v44 = v50;
  sub_19354DAE8(v43, v50, type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_17_17();
  sub_19344A8DC(v45, v46, &protocol conformance descriptor for MonotonicTimestamp);
  OUTLINED_FUNCTION_21_1();
  sub_19393C540();
  return sub_19344A688(v44, type metadata accessor for MonotonicTimestamp);
}

unint64_t sub_19354E0A4()
{
  result = qword_1EAE3CFB8;
  if (!qword_1EAE3CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFB8);
  }

  return result;
}

void IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t static IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3D010, &qword_1939613B0);
  v6 = v3;
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    v22 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_84_2(v22, v23, v24, v25, &qword_1EAE3D010, &qword_1939613B0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v6 + 16) = v10;
  v11 = v6 + 16 * v8;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  if (v9 < (v8 + 2))
  {
    v26 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_85(v26, v27, v28, v29, &qword_1EAE3D010, &qword_1939613B0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v6 + 16) = v8 + 2;
  v12 = v6 + 16 * v10;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  if (v9 < (v8 + 3))
  {
    v30 = OUTLINED_FUNCTION_39(v7);
    v3 = OUTLINED_FUNCTION_84_2(v30, v31, v32, v33, &qword_1EAE3D010, &qword_1939613B0);
    v6 = v3;
  }

  OUTLINED_FUNCTION_50(v3, v4, v5, v6);
  *(v17 + 32) = 1;
  *(v17 + 40) = 1;
  v18 = *(v16 + 24);
  if ((v8 + 4) > (v18 >> 1))
  {
    v34 = OUTLINED_FUNCTION_39(v18);
    v13 = OUTLINED_FUNCTION_85(v34, v35, v36, v37, &qword_1EAE3D010, &qword_1939613B0);
    v16 = v13;
  }

  OUTLINED_FUNCTION_47_5(v13, v14, v15, v16);
  return OUTLINED_FUNCTION_38_1(v19, v20);
}

uint64_t IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6574617669746341;
  if (*v0 != 1)
  {
    v1 = 0x6176697463616544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657461636F6C6C41;
  }
}

void IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x657461636F6C6C41 ? (v5 = v0 == 0xE900000000000064) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x657461636F6C6C41, 0xE900000000000064) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x6574617669746341 && v0 == 0xE900000000000064;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x6574617669746341, 0xE900000000000064) & 1) != 0)
    {

      v6 = 1;
    }

    else if (v1 == 0x6176697463616544 && v0 == 0xEB00000000646574)
    {

      v6 = 2;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_0_9(0x6176697463616544, 0xEB00000000646574);

      v6 = 2;
      if ((v9 & 1) == 0)
      {
        v6 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

void IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t static IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3D008, &qword_1939613A8);
  OUTLINED_FUNCTION_16_0();
  if (!(!v11 & v10))
  {
    v55 = OUTLINED_FUNCTION_39(v9);
    OUTLINED_FUNCTION_84_2(v55, v56, v57, v58, &qword_1EAE3D008, &qword_1939613A8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v59 = OUTLINED_FUNCTION_39(v16);
    OUTLINED_FUNCTION_85(v59, v60, v61, v62, &qword_1EAE3D008, &qword_1939613A8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v63 = OUTLINED_FUNCTION_39(v23);
    v19 = sub_1934B0FCC(v63, v3, 1, v64, &qword_1EAE3D008, &qword_1939613A8);
    v22 = v19;
  }

  OUTLINED_FUNCTION_9_7(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v65 = OUTLINED_FUNCTION_39(v28);
    v24 = OUTLINED_FUNCTION_84_2(v65, v66, v67, v68, &qword_1EAE3D008, &qword_1939613A8);
    v27 = v24;
  }

  OUTLINED_FUNCTION_3_7(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v69 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_85(v69, v70, v71, v72, &qword_1EAE3D008, &qword_1939613A8);
    v32 = v29;
  }

  OUTLINED_FUNCTION_47_5(v29, v30, v31, v32);
  OUTLINED_FUNCTION_4(v34);
  if (v4 + 6 > (v39 >> 1))
  {
    v73 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v73, v74, v75, v76, &qword_1EAE3D008, &qword_1939613A8);
    v38 = v35;
  }

  OUTLINED_FUNCTION_50(v35, v36, v37, v38);
  OUTLINED_FUNCTION_4(v40);
  if (v4 + 7 > (v45 >> 1))
  {
    v77 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v77, v78, v79, v80, &qword_1EAE3D008, &qword_1939613A8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if (v4 + 8 > (v51 >> 1))
  {
    v81 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_84_2(v81, v82, v83, v84, &qword_1EAE3D008, &qword_1939613A8);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  return OUTLINED_FUNCTION_38_1(v52, v53);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x316C6576654CLL;
  switch(*v0)
  {
    case 1:
      result = 0x326C6576654CLL;
      break;
    case 2:
      result = 0x336C6576654CLL;
      break;
    case 3:
      result = 0x346C6576654CLL;
      break;
    case 4:
      result = 0x356C6576654CLL;
      break;
    case 5:
      result = 0x366C6576654CLL;
      break;
    case 6:
      result = 0x376C6576654CLL;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x316C6576654CLL ? (v5 = v0 == 0xE600000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x316C6576654CLL, 0xE600000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x326C6576654CLL && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x326C6576654CLL, 0xE600000000000000) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = v1 == 0x336C6576654CLL && v0 == 0xE600000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_9(0x336C6576654CLL, 0xE600000000000000) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v9 = v1 == 0x346C6576654CLL && v0 == 0xE600000000000000;
        if (v9 || (OUTLINED_FUNCTION_0_9(0x346C6576654CLL, 0xE600000000000000) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v10 = v1 == 0x356C6576654CLL && v0 == 0xE600000000000000;
          if (v10 || (OUTLINED_FUNCTION_0_9(0x356C6576654CLL, 0xE600000000000000) & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            v11 = v1 == 0x366C6576654CLL && v0 == 0xE600000000000000;
            if (v11 || (OUTLINED_FUNCTION_0_9(0x366C6576654CLL, 0xE600000000000000) & 1) != 0)
            {

              v6 = 5;
            }

            else if (v1 == 0x376C6576654CLL && v0 == 0xE600000000000000)
            {

              v6 = 6;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_0_9(0x376C6576654CLL, 0xE600000000000000);

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

  OUTLINED_FUNCTION_12_1(v6);
}

void IntelligenceFlowJointResolverTelemetry.JRParameterSubType.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (!v3 & v2)
  {
    switch(a2)
    {
      case 7000:
        a2 = 60;
        break;
      case 7001:
        a2 = 61;
        break;
      case 7002:
        a2 = 62;
        break;
      case 7003:
        a2 = 63;
        break;
      case 7004:
        a2 = 64;
        break;
      case 7005:
        a2 = 65;
        break;
      case 7006:
        a2 = 66;
        break;
      case 7007:
        a2 = 67;
        break;
      case 7008:
        a2 = 68;
        break;
      case 7009:
        a2 = 69;
        break;
      default:
        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 8000:
        a2 = 70;
        break;
      case 8001:
        a2 = 71;
        break;
      case 8002:
        a2 = 72;
        break;
      case 8003:
        a2 = 73;
        break;
      case 8004:
        a2 = 74;
        break;
      case 8005:
        a2 = 75;
        break;
      case 8006:
        a2 = 76;
        break;
      case 8007:
        a2 = 77;
        break;
      case 8008:
        a2 = 78;
        break;
      case 8009:
        a2 = 79;
        break;
      case 8010:
        a2 = 80;
        break;
      case 8011:
        a2 = 81;
        break;
      case 8012:
        a2 = 82;
        break;
      case 8013:
        a2 = 83;
        break;
      case 8014:
        a2 = 84;
        break;
      case 8015:
        a2 = 85;
        break;
      case 8016:
        a2 = 86;
        break;
      case 8017:
        a2 = 87;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRParameterSubType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1939613B8[result];
  }

  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRParameterSubType.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3D000, &qword_1939613A0);
  OUTLINED_FUNCTION_16_0();
  if (!(!v11 & v10))
  {
    v541 = OUTLINED_FUNCTION_39(v9);
    OUTLINED_FUNCTION_84_2(v541, v542, v543, v544, &qword_1EAE3D000, &qword_1939613A0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v545 = OUTLINED_FUNCTION_39(v16);
    OUTLINED_FUNCTION_85(v545, v546, v547, v548, &qword_1EAE3D000, &qword_1939613A0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v549 = OUTLINED_FUNCTION_39(v23);
    v19 = sub_1934B0FCC(v549, v3, 1, v550, &qword_1EAE3D000, &qword_1939613A0);
    v22 = v19;
  }

  OUTLINED_FUNCTION_9_7(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v551 = OUTLINED_FUNCTION_39(v28);
    v24 = OUTLINED_FUNCTION_84_2(v551, v552, v553, v554, &qword_1EAE3D000, &qword_1939613A0);
    v27 = v24;
  }

  OUTLINED_FUNCTION_3_7(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v555 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_85(v555, v556, v557, v558, &qword_1EAE3D000, &qword_1939613A0);
    v32 = v29;
  }

  OUTLINED_FUNCTION_47_5(v29, v30, v31, v32);
  OUTLINED_FUNCTION_4(v34);
  if (v4 + 6 > (v39 >> 1))
  {
    v559 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v559, v560, v561, v562, &qword_1EAE3D000, &qword_1939613A0);
    v38 = v35;
  }

  OUTLINED_FUNCTION_50(v35, v36, v37, v38);
  OUTLINED_FUNCTION_4(v40);
  if (v4 + 7 > (v45 >> 1))
  {
    v563 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v563, v564, v565, v566, &qword_1EAE3D000, &qword_1939613A0);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if (v4 + 8 > (v51 >> 1))
  {
    v567 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_84_2(v567, v568, v569, v570, &qword_1EAE3D000, &qword_1939613A0);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if (v4 + 9 > (v57 >> 1))
  {
    v571 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v571, v572, v573, v574, &qword_1EAE3D000, &qword_1939613A0);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  if (v4 + 10 > (v63 >> 1))
  {
    v575 = OUTLINED_FUNCTION_39(v63);
    v59 = OUTLINED_FUNCTION_84_2(v575, v576, v577, v578, &qword_1EAE3D000, &qword_1939613A0);
    v62 = v59;
  }

  OUTLINED_FUNCTION_50(v59, v60, v61, v62);
  OUTLINED_FUNCTION_4(v64);
  if (v4 + 11 > (v69 >> 1))
  {
    v579 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_85(v579, v580, v581, v582, &qword_1EAE3D000, &qword_1939613A0);
    v68 = v65;
  }

  OUTLINED_FUNCTION_47_5(v65, v66, v67, v68);
  OUTLINED_FUNCTION_4(v70);
  if (v4 + 12 > (v75 >> 1))
  {
    v583 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_84_2(v583, v584, v585, v586, &qword_1EAE3D000, &qword_1939613A0);
    v74 = v71;
  }

  OUTLINED_FUNCTION_50(v71, v72, v73, v74);
  OUTLINED_FUNCTION_4(v76);
  if (v4 + 13 > (v81 >> 1))
  {
    v587 = OUTLINED_FUNCTION_39(v81);
    v77 = OUTLINED_FUNCTION_85(v587, v588, v589, v590, &qword_1EAE3D000, &qword_1939613A0);
    v80 = v77;
  }

  OUTLINED_FUNCTION_47_5(v77, v78, v79, v80);
  OUTLINED_FUNCTION_4(v82);
  if (v4 + 14 > (v87 >> 1))
  {
    v591 = OUTLINED_FUNCTION_39(v87);
    v83 = OUTLINED_FUNCTION_84_2(v591, v592, v593, v594, &qword_1EAE3D000, &qword_1939613A0);
    v86 = v83;
  }

  OUTLINED_FUNCTION_50(v83, v84, v85, v86);
  OUTLINED_FUNCTION_4(v88);
  if (v4 + 15 > (v93 >> 1))
  {
    v595 = OUTLINED_FUNCTION_39(v93);
    v89 = OUTLINED_FUNCTION_85(v595, v596, v597, v598, &qword_1EAE3D000, &qword_1939613A0);
    v92 = v89;
  }

  OUTLINED_FUNCTION_47_5(v89, v90, v91, v92);
  OUTLINED_FUNCTION_4(v94);
  if (v4 + 16 > (v99 >> 1))
  {
    v599 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_84_2(v599, v600, v601, v602, &qword_1EAE3D000, &qword_1939613A0);
    v98 = v95;
  }

  OUTLINED_FUNCTION_50(v95, v96, v97, v98);
  OUTLINED_FUNCTION_4(v100);
  if (v4 + 17 > (v105 >> 1))
  {
    v603 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v603, v604, v605, v606, &qword_1EAE3D000, &qword_1939613A0);
    v104 = v101;
  }

  OUTLINED_FUNCTION_47_5(v101, v102, v103, v104);
  OUTLINED_FUNCTION_4(v106);
  if (v4 + 18 > (v111 >> 1))
  {
    v607 = OUTLINED_FUNCTION_39(v111);
    v107 = OUTLINED_FUNCTION_84_2(v607, v608, v609, v610, &qword_1EAE3D000, &qword_1939613A0);
    v110 = v107;
  }

  OUTLINED_FUNCTION_50(v107, v108, v109, v110);
  OUTLINED_FUNCTION_4(v112);
  if (v4 + 19 > (v117 >> 1))
  {
    v611 = OUTLINED_FUNCTION_39(v117);
    v113 = OUTLINED_FUNCTION_85(v611, v612, v613, v614, &qword_1EAE3D000, &qword_1939613A0);
    v116 = v113;
  }

  OUTLINED_FUNCTION_47_5(v113, v114, v115, v116);
  OUTLINED_FUNCTION_4(v118);
  if (v4 + 20 > (v123 >> 1))
  {
    v615 = OUTLINED_FUNCTION_39(v123);
    v119 = OUTLINED_FUNCTION_84_2(v615, v616, v617, v618, &qword_1EAE3D000, &qword_1939613A0);
    v122 = v119;
  }

  OUTLINED_FUNCTION_50(v119, v120, v121, v122);
  OUTLINED_FUNCTION_4(v124);
  if (v4 + 21 > (v129 >> 1))
  {
    v619 = OUTLINED_FUNCTION_39(v129);
    v125 = OUTLINED_FUNCTION_85(v619, v620, v621, v622, &qword_1EAE3D000, &qword_1939613A0);
    v128 = v125;
  }

  OUTLINED_FUNCTION_47_5(v125, v126, v127, v128);
  OUTLINED_FUNCTION_4(v130);
  if (v4 + 22 > (v135 >> 1))
  {
    v623 = OUTLINED_FUNCTION_39(v135);
    v131 = OUTLINED_FUNCTION_84_2(v623, v624, v625, v626, &qword_1EAE3D000, &qword_1939613A0);
    v134 = v131;
  }

  OUTLINED_FUNCTION_50(v131, v132, v133, v134);
  OUTLINED_FUNCTION_4(v136);
  if (v4 + 23 > (v141 >> 1))
  {
    v627 = OUTLINED_FUNCTION_39(v141);
    v137 = OUTLINED_FUNCTION_85(v627, v628, v629, v630, &qword_1EAE3D000, &qword_1939613A0);
    v140 = v137;
  }

  OUTLINED_FUNCTION_47_5(v137, v138, v139, v140);
  OUTLINED_FUNCTION_4(v142);
  if (v4 + 24 > (v147 >> 1))
  {
    v631 = OUTLINED_FUNCTION_39(v147);
    v143 = OUTLINED_FUNCTION_84_2(v631, v632, v633, v634, &qword_1EAE3D000, &qword_1939613A0);
    v146 = v143;
  }

  OUTLINED_FUNCTION_50(v143, v144, v145, v146);
  OUTLINED_FUNCTION_4(v148);
  if (v4 + 25 > (v153 >> 1))
  {
    v635 = OUTLINED_FUNCTION_39(v153);
    v149 = OUTLINED_FUNCTION_85(v635, v636, v637, v638, &qword_1EAE3D000, &qword_1939613A0);
    v152 = v149;
  }

  OUTLINED_FUNCTION_47_5(v149, v150, v151, v152);
  OUTLINED_FUNCTION_4(v154);
  if (v4 + 26 > (v159 >> 1))
  {
    v639 = OUTLINED_FUNCTION_39(v159);
    v155 = OUTLINED_FUNCTION_84_2(v639, v640, v641, v642, &qword_1EAE3D000, &qword_1939613A0);
    v158 = v155;
  }

  OUTLINED_FUNCTION_50(v155, v156, v157, v158);
  OUTLINED_FUNCTION_4(v160);
  if (v4 + 27 > (v165 >> 1))
  {
    v643 = OUTLINED_FUNCTION_39(v165);
    v161 = OUTLINED_FUNCTION_85(v643, v644, v645, v646, &qword_1EAE3D000, &qword_1939613A0);
    v164 = v161;
  }

  OUTLINED_FUNCTION_47_5(v161, v162, v163, v164);
  OUTLINED_FUNCTION_4(v166);
  if (v4 + 28 > (v171 >> 1))
  {
    v647 = OUTLINED_FUNCTION_39(v171);
    v167 = OUTLINED_FUNCTION_84_2(v647, v648, v649, v650, &qword_1EAE3D000, &qword_1939613A0);
    v170 = v167;
  }

  OUTLINED_FUNCTION_50(v167, v168, v169, v170);
  OUTLINED_FUNCTION_4(v172);
  if (v4 + 29 > (v177 >> 1))
  {
    v651 = OUTLINED_FUNCTION_39(v177);
    v173 = OUTLINED_FUNCTION_85(v651, v652, v653, v654, &qword_1EAE3D000, &qword_1939613A0);
    v176 = v173;
  }

  OUTLINED_FUNCTION_47_5(v173, v174, v175, v176);
  OUTLINED_FUNCTION_4(v178);
  if (v4 + 30 > (v183 >> 1))
  {
    v655 = OUTLINED_FUNCTION_39(v183);
    v179 = OUTLINED_FUNCTION_84_2(v655, v656, v657, v658, &qword_1EAE3D000, &qword_1939613A0);
    v182 = v179;
  }

  OUTLINED_FUNCTION_50(v179, v180, v181, v182);
  OUTLINED_FUNCTION_4(v184);
  if (v4 + 31 > (v189 >> 1))
  {
    v659 = OUTLINED_FUNCTION_39(v189);
    v185 = OUTLINED_FUNCTION_85(v659, v660, v661, v662, &qword_1EAE3D000, &qword_1939613A0);
    v188 = v185;
  }

  OUTLINED_FUNCTION_47_5(v185, v186, v187, v188);
  OUTLINED_FUNCTION_4(v190);
  if (v4 + 32 > (v195 >> 1))
  {
    v663 = OUTLINED_FUNCTION_39(v195);
    v191 = OUTLINED_FUNCTION_84_2(v663, v664, v665, v666, &qword_1EAE3D000, &qword_1939613A0);
    v194 = v191;
  }

  OUTLINED_FUNCTION_50(v191, v192, v193, v194);
  OUTLINED_FUNCTION_4(v196);
  if (v4 + 33 > (v201 >> 1))
  {
    v667 = OUTLINED_FUNCTION_39(v201);
    v197 = OUTLINED_FUNCTION_85(v667, v668, v669, v670, &qword_1EAE3D000, &qword_1939613A0);
    v200 = v197;
  }

  OUTLINED_FUNCTION_47_5(v197, v198, v199, v200);
  OUTLINED_FUNCTION_4(v202);
  if (v4 + 34 > (v207 >> 1))
  {
    v671 = OUTLINED_FUNCTION_39(v207);
    v203 = OUTLINED_FUNCTION_84_2(v671, v672, v673, v674, &qword_1EAE3D000, &qword_1939613A0);
    v206 = v203;
  }

  OUTLINED_FUNCTION_50(v203, v204, v205, v206);
  OUTLINED_FUNCTION_4(v208);
  if (v4 + 35 > (v213 >> 1))
  {
    v675 = OUTLINED_FUNCTION_39(v213);
    v209 = OUTLINED_FUNCTION_85(v675, v676, v677, v678, &qword_1EAE3D000, &qword_1939613A0);
    v212 = v209;
  }

  OUTLINED_FUNCTION_47_5(v209, v210, v211, v212);
  OUTLINED_FUNCTION_4(v214);
  if (v4 + 36 > (v219 >> 1))
  {
    v679 = OUTLINED_FUNCTION_39(v219);
    v215 = OUTLINED_FUNCTION_84_2(v679, v680, v681, v682, &qword_1EAE3D000, &qword_1939613A0);
    v218 = v215;
  }

  OUTLINED_FUNCTION_50(v215, v216, v217, v218);
  OUTLINED_FUNCTION_4(v220);
  if (v4 + 37 > (v225 >> 1))
  {
    v683 = OUTLINED_FUNCTION_39(v225);
    v221 = OUTLINED_FUNCTION_85(v683, v684, v685, v686, &qword_1EAE3D000, &qword_1939613A0);
    v224 = v221;
  }

  OUTLINED_FUNCTION_47_5(v221, v222, v223, v224);
  OUTLINED_FUNCTION_4(v226);
  if (v4 + 38 > (v231 >> 1))
  {
    v687 = OUTLINED_FUNCTION_39(v231);
    v227 = OUTLINED_FUNCTION_84_2(v687, v688, v689, v690, &qword_1EAE3D000, &qword_1939613A0);
    v230 = v227;
  }

  OUTLINED_FUNCTION_50(v227, v228, v229, v230);
  OUTLINED_FUNCTION_4(v232);
  if (v4 + 39 > (v237 >> 1))
  {
    v691 = OUTLINED_FUNCTION_39(v237);
    v233 = OUTLINED_FUNCTION_85(v691, v692, v693, v694, &qword_1EAE3D000, &qword_1939613A0);
    v236 = v233;
  }

  OUTLINED_FUNCTION_47_5(v233, v234, v235, v236);
  OUTLINED_FUNCTION_4(v238);
  if (v4 + 40 > (v243 >> 1))
  {
    v695 = OUTLINED_FUNCTION_39(v243);
    v239 = OUTLINED_FUNCTION_84_2(v695, v696, v697, v698, &qword_1EAE3D000, &qword_1939613A0);
    v242 = v239;
  }

  OUTLINED_FUNCTION_50(v239, v240, v241, v242);
  OUTLINED_FUNCTION_4(v244);
  if (v4 + 41 > (v249 >> 1))
  {
    v699 = OUTLINED_FUNCTION_39(v249);
    v245 = OUTLINED_FUNCTION_85(v699, v700, v701, v702, &qword_1EAE3D000, &qword_1939613A0);
    v248 = v245;
  }

  OUTLINED_FUNCTION_47_5(v245, v246, v247, v248);
  OUTLINED_FUNCTION_4(v250);
  if (v4 + 42 > (v255 >> 1))
  {
    v703 = OUTLINED_FUNCTION_39(v255);
    v251 = OUTLINED_FUNCTION_84_2(v703, v704, v705, v706, &qword_1EAE3D000, &qword_1939613A0);
    v254 = v251;
  }

  OUTLINED_FUNCTION_50(v251, v252, v253, v254);
  OUTLINED_FUNCTION_4(v256);
  if (v4 + 43 > (v261 >> 1))
  {
    v707 = OUTLINED_FUNCTION_39(v261);
    v257 = OUTLINED_FUNCTION_85(v707, v708, v709, v710, &qword_1EAE3D000, &qword_1939613A0);
    v260 = v257;
  }

  OUTLINED_FUNCTION_47_5(v257, v258, v259, v260);
  OUTLINED_FUNCTION_4(v262);
  if (v4 + 44 > (v267 >> 1))
  {
    v711 = OUTLINED_FUNCTION_39(v267);
    v263 = OUTLINED_FUNCTION_84_2(v711, v712, v713, v714, &qword_1EAE3D000, &qword_1939613A0);
    v266 = v263;
  }

  OUTLINED_FUNCTION_50(v263, v264, v265, v266);
  OUTLINED_FUNCTION_4(v268);
  if (v4 + 45 > (v273 >> 1))
  {
    v715 = OUTLINED_FUNCTION_39(v273);
    v269 = OUTLINED_FUNCTION_85(v715, v716, v717, v718, &qword_1EAE3D000, &qword_1939613A0);
    v272 = v269;
  }

  OUTLINED_FUNCTION_47_5(v269, v270, v271, v272);
  OUTLINED_FUNCTION_4(v274);
  if (v4 + 46 > (v279 >> 1))
  {
    v719 = OUTLINED_FUNCTION_39(v279);
    v275 = OUTLINED_FUNCTION_84_2(v719, v720, v721, v722, &qword_1EAE3D000, &qword_1939613A0);
    v278 = v275;
  }

  OUTLINED_FUNCTION_50(v275, v276, v277, v278);
  OUTLINED_FUNCTION_4(v280);
  if (v4 + 47 > (v285 >> 1))
  {
    v723 = OUTLINED_FUNCTION_39(v285);
    v281 = OUTLINED_FUNCTION_85(v723, v724, v725, v726, &qword_1EAE3D000, &qword_1939613A0);
    v284 = v281;
  }

  OUTLINED_FUNCTION_47_5(v281, v282, v283, v284);
  OUTLINED_FUNCTION_4(v286);
  if (v4 + 48 > (v291 >> 1))
  {
    v727 = OUTLINED_FUNCTION_39(v291);
    v287 = OUTLINED_FUNCTION_84_2(v727, v728, v729, v730, &qword_1EAE3D000, &qword_1939613A0);
    v290 = v287;
  }

  OUTLINED_FUNCTION_50(v287, v288, v289, v290);
  OUTLINED_FUNCTION_4(v292);
  if (v4 + 49 > (v297 >> 1))
  {
    v731 = OUTLINED_FUNCTION_39(v297);
    v293 = OUTLINED_FUNCTION_85(v731, v732, v733, v734, &qword_1EAE3D000, &qword_1939613A0);
    v296 = v293;
  }

  OUTLINED_FUNCTION_47_5(v293, v294, v295, v296);
  OUTLINED_FUNCTION_4(v298);
  if (v4 + 50 > (v303 >> 1))
  {
    v735 = OUTLINED_FUNCTION_39(v303);
    v299 = OUTLINED_FUNCTION_84_2(v735, v736, v737, v738, &qword_1EAE3D000, &qword_1939613A0);
    v302 = v299;
  }

  OUTLINED_FUNCTION_50(v299, v300, v301, v302);
  OUTLINED_FUNCTION_4(v304);
  if (v4 + 51 > (v309 >> 1))
  {
    v739 = OUTLINED_FUNCTION_39(v309);
    v305 = OUTLINED_FUNCTION_85(v739, v740, v741, v742, &qword_1EAE3D000, &qword_1939613A0);
    v308 = v305;
  }

  OUTLINED_FUNCTION_47_5(v305, v306, v307, v308);
  OUTLINED_FUNCTION_4(v310);
  if (v4 + 52 > (v315 >> 1))
  {
    v743 = OUTLINED_FUNCTION_39(v315);
    v311 = OUTLINED_FUNCTION_84_2(v743, v744, v745, v746, &qword_1EAE3D000, &qword_1939613A0);
    v314 = v311;
  }

  OUTLINED_FUNCTION_50(v311, v312, v313, v314);
  OUTLINED_FUNCTION_4(v316);
  if (v4 + 53 > (v321 >> 1))
  {
    v747 = OUTLINED_FUNCTION_39(v321);
    v317 = OUTLINED_FUNCTION_85(v747, v748, v749, v750, &qword_1EAE3D000, &qword_1939613A0);
    v320 = v317;
  }

  OUTLINED_FUNCTION_47_5(v317, v318, v319, v320);
  OUTLINED_FUNCTION_4(v322);
  if (v4 + 54 > (v327 >> 1))
  {
    v751 = OUTLINED_FUNCTION_39(v327);
    v323 = OUTLINED_FUNCTION_84_2(v751, v752, v753, v754, &qword_1EAE3D000, &qword_1939613A0);
    v326 = v323;
  }

  OUTLINED_FUNCTION_50(v323, v324, v325, v326);
  OUTLINED_FUNCTION_4(v328);
  if (v4 + 55 > (v333 >> 1))
  {
    v755 = OUTLINED_FUNCTION_39(v333);
    v329 = OUTLINED_FUNCTION_85(v755, v756, v757, v758, &qword_1EAE3D000, &qword_1939613A0);
    v332 = v329;
  }

  OUTLINED_FUNCTION_47_5(v329, v330, v331, v332);
  OUTLINED_FUNCTION_4(v334);
  if (v4 + 56 > (v339 >> 1))
  {
    v759 = OUTLINED_FUNCTION_39(v339);
    v335 = OUTLINED_FUNCTION_84_2(v759, v760, v761, v762, &qword_1EAE3D000, &qword_1939613A0);
    v338 = v335;
  }

  OUTLINED_FUNCTION_50(v335, v336, v337, v338);
  OUTLINED_FUNCTION_4(v340);
  if (v4 + 57 > (v345 >> 1))
  {
    v763 = OUTLINED_FUNCTION_39(v345);
    v341 = OUTLINED_FUNCTION_85(v763, v764, v765, v766, &qword_1EAE3D000, &qword_1939613A0);
    v344 = v341;
  }

  OUTLINED_FUNCTION_47_5(v341, v342, v343, v344);
  OUTLINED_FUNCTION_4(v346);
  if (v4 + 58 > (v351 >> 1))
  {
    v767 = OUTLINED_FUNCTION_39(v351);
    v347 = OUTLINED_FUNCTION_84_2(v767, v768, v769, v770, &qword_1EAE3D000, &qword_1939613A0);
    v350 = v347;
  }

  OUTLINED_FUNCTION_50(v347, v348, v349, v350);
  OUTLINED_FUNCTION_4(v352);
  if (v4 + 59 > (v357 >> 1))
  {
    v771 = OUTLINED_FUNCTION_39(v357);
    v353 = OUTLINED_FUNCTION_85(v771, v772, v773, v774, &qword_1EAE3D000, &qword_1939613A0);
    v356 = v353;
  }

  OUTLINED_FUNCTION_47_5(v353, v354, v355, v356);
  OUTLINED_FUNCTION_4(v358);
  if (v4 + 60 > (v363 >> 1))
  {
    v775 = OUTLINED_FUNCTION_39(v363);
    v359 = OUTLINED_FUNCTION_84_2(v775, v776, v777, v778, &qword_1EAE3D000, &qword_1939613A0);
    v362 = v359;
  }

  OUTLINED_FUNCTION_50(v359, v360, v361, v362);
  OUTLINED_FUNCTION_4(v364);
  if (v4 + 61 > (v369 >> 1))
  {
    v779 = OUTLINED_FUNCTION_39(v369);
    v365 = OUTLINED_FUNCTION_85(v779, v780, v781, v782, &qword_1EAE3D000, &qword_1939613A0);
    v368 = v365;
  }

  OUTLINED_FUNCTION_47_5(v365, v366, v367, v368);
  OUTLINED_FUNCTION_4(v370);
  if (v4 + 62 > (v375 >> 1))
  {
    v783 = OUTLINED_FUNCTION_39(v375);
    v371 = OUTLINED_FUNCTION_84_2(v783, v784, v785, v786, &qword_1EAE3D000, &qword_1939613A0);
    v374 = v371;
  }

  OUTLINED_FUNCTION_50(v371, v372, v373, v374);
  OUTLINED_FUNCTION_4(v376);
  if (v4 + 63 > (v381 >> 1))
  {
    v787 = OUTLINED_FUNCTION_39(v381);
    v377 = OUTLINED_FUNCTION_85(v787, v788, v789, v790, &qword_1EAE3D000, &qword_1939613A0);
    v380 = v377;
  }

  OUTLINED_FUNCTION_47_5(v377, v378, v379, v380);
  OUTLINED_FUNCTION_4(v382);
  if (v4 + 64 > (v387 >> 1))
  {
    v791 = OUTLINED_FUNCTION_39(v387);
    v383 = OUTLINED_FUNCTION_84_2(v791, v792, v793, v794, &qword_1EAE3D000, &qword_1939613A0);
    v386 = v383;
  }

  OUTLINED_FUNCTION_50(v383, v384, v385, v386);
  OUTLINED_FUNCTION_4(v388);
  if (v4 + 65 > (v393 >> 1))
  {
    v795 = OUTLINED_FUNCTION_39(v393);
    v389 = OUTLINED_FUNCTION_85(v795, v796, v797, v798, &qword_1EAE3D000, &qword_1939613A0);
    v392 = v389;
  }

  OUTLINED_FUNCTION_47_5(v389, v390, v391, v392);
  OUTLINED_FUNCTION_4(v394);
  if (v4 + 66 > (v399 >> 1))
  {
    v799 = OUTLINED_FUNCTION_39(v399);
    v395 = OUTLINED_FUNCTION_84_2(v799, v800, v801, v802, &qword_1EAE3D000, &qword_1939613A0);
    v398 = v395;
  }

  OUTLINED_FUNCTION_50(v395, v396, v397, v398);
  OUTLINED_FUNCTION_4(v400);
  if (v4 + 67 > (v405 >> 1))
  {
    v803 = OUTLINED_FUNCTION_39(v405);
    v401 = OUTLINED_FUNCTION_85(v803, v804, v805, v806, &qword_1EAE3D000, &qword_1939613A0);
    v404 = v401;
  }

  OUTLINED_FUNCTION_47_5(v401, v402, v403, v404);
  OUTLINED_FUNCTION_4(v406);
  if (v4 + 68 > (v411 >> 1))
  {
    v807 = OUTLINED_FUNCTION_39(v411);
    v407 = OUTLINED_FUNCTION_84_2(v807, v808, v809, v810, &qword_1EAE3D000, &qword_1939613A0);
    v410 = v407;
  }

  OUTLINED_FUNCTION_50(v407, v408, v409, v410);
  OUTLINED_FUNCTION_4(v412);
  if (v4 + 69 > (v417 >> 1))
  {
    v811 = OUTLINED_FUNCTION_39(v417);
    v413 = OUTLINED_FUNCTION_85(v811, v812, v813, v814, &qword_1EAE3D000, &qword_1939613A0);
    v416 = v413;
  }

  OUTLINED_FUNCTION_47_5(v413, v414, v415, v416);
  OUTLINED_FUNCTION_4(v418);
  if (v4 + 70 > (v423 >> 1))
  {
    v815 = OUTLINED_FUNCTION_39(v423);
    v419 = OUTLINED_FUNCTION_84_2(v815, v816, v817, v818, &qword_1EAE3D000, &qword_1939613A0);
    v422 = v419;
  }

  OUTLINED_FUNCTION_50(v419, v420, v421, v422);
  OUTLINED_FUNCTION_4(v424);
  if (v4 + 71 > (v429 >> 1))
  {
    v819 = OUTLINED_FUNCTION_39(v429);
    v425 = OUTLINED_FUNCTION_85(v819, v820, v821, v822, &qword_1EAE3D000, &qword_1939613A0);
    v428 = v425;
  }

  OUTLINED_FUNCTION_47_5(v425, v426, v427, v428);
  OUTLINED_FUNCTION_4(v430);
  if (v4 + 72 > (v435 >> 1))
  {
    v823 = OUTLINED_FUNCTION_39(v435);
    v431 = OUTLINED_FUNCTION_84_2(v823, v824, v825, v826, &qword_1EAE3D000, &qword_1939613A0);
    v434 = v431;
  }

  OUTLINED_FUNCTION_50(v431, v432, v433, v434);
  OUTLINED_FUNCTION_4(v436);
  if (v4 + 73 > (v441 >> 1))
  {
    v827 = OUTLINED_FUNCTION_39(v441);
    v437 = OUTLINED_FUNCTION_85(v827, v828, v829, v830, &qword_1EAE3D000, &qword_1939613A0);
    v440 = v437;
  }

  OUTLINED_FUNCTION_47_5(v437, v438, v439, v440);
  OUTLINED_FUNCTION_4(v442);
  if (v4 + 74 > (v447 >> 1))
  {
    v831 = OUTLINED_FUNCTION_39(v447);
    v443 = OUTLINED_FUNCTION_84_2(v831, v832, v833, v834, &qword_1EAE3D000, &qword_1939613A0);
    v446 = v443;
  }

  OUTLINED_FUNCTION_50(v443, v444, v445, v446);
  OUTLINED_FUNCTION_4(v448);
  if (v4 + 75 > (v453 >> 1))
  {
    v835 = OUTLINED_FUNCTION_39(v453);
    v449 = OUTLINED_FUNCTION_85(v835, v836, v837, v838, &qword_1EAE3D000, &qword_1939613A0);
    v452 = v449;
  }

  OUTLINED_FUNCTION_47_5(v449, v450, v451, v452);
  OUTLINED_FUNCTION_4(v454);
  if (v4 + 76 > (v459 >> 1))
  {
    v839 = OUTLINED_FUNCTION_39(v459);
    v455 = OUTLINED_FUNCTION_84_2(v839, v840, v841, v842, &qword_1EAE3D000, &qword_1939613A0);
    v458 = v455;
  }

  OUTLINED_FUNCTION_50(v455, v456, v457, v458);
  OUTLINED_FUNCTION_4(v460);
  if (v4 + 77 > (v465 >> 1))
  {
    v843 = OUTLINED_FUNCTION_39(v465);
    v461 = OUTLINED_FUNCTION_85(v843, v844, v845, v846, &qword_1EAE3D000, &qword_1939613A0);
    v464 = v461;
  }

  OUTLINED_FUNCTION_47_5(v461, v462, v463, v464);
  OUTLINED_FUNCTION_4(v466);
  if (v4 + 78 > (v471 >> 1))
  {
    v847 = OUTLINED_FUNCTION_39(v471);
    v467 = OUTLINED_FUNCTION_84_2(v847, v848, v849, v850, &qword_1EAE3D000, &qword_1939613A0);
    v470 = v467;
  }

  OUTLINED_FUNCTION_50(v467, v468, v469, v470);
  OUTLINED_FUNCTION_4(v472);
  if (v4 + 79 > (v477 >> 1))
  {
    v851 = OUTLINED_FUNCTION_39(v477);
    v473 = OUTLINED_FUNCTION_85(v851, v852, v853, v854, &qword_1EAE3D000, &qword_1939613A0);
    v476 = v473;
  }

  OUTLINED_FUNCTION_47_5(v473, v474, v475, v476);
  OUTLINED_FUNCTION_4(v478);
  if (v4 + 80 > (v483 >> 1))
  {
    v855 = OUTLINED_FUNCTION_39(v483);
    v479 = OUTLINED_FUNCTION_84_2(v855, v856, v857, v858, &qword_1EAE3D000, &qword_1939613A0);
    v482 = v479;
  }

  OUTLINED_FUNCTION_50(v479, v480, v481, v482);
  OUTLINED_FUNCTION_4(v484);
  if (v4 + 81 > (v489 >> 1))
  {
    v859 = OUTLINED_FUNCTION_39(v489);
    v485 = OUTLINED_FUNCTION_85(v859, v860, v861, v862, &qword_1EAE3D000, &qword_1939613A0);
    v488 = v485;
  }

  OUTLINED_FUNCTION_47_5(v485, v486, v487, v488);
  OUTLINED_FUNCTION_4(v490);
  if (v4 + 82 > (v495 >> 1))
  {
    v863 = OUTLINED_FUNCTION_39(v495);
    v491 = OUTLINED_FUNCTION_84_2(v863, v864, v865, v866, &qword_1EAE3D000, &qword_1939613A0);
    v494 = v491;
  }

  OUTLINED_FUNCTION_50(v491, v492, v493, v494);
  OUTLINED_FUNCTION_4(v496);
  if (v4 + 83 > (v501 >> 1))
  {
    v867 = OUTLINED_FUNCTION_39(v501);
    v497 = OUTLINED_FUNCTION_85(v867, v868, v869, v870, &qword_1EAE3D000, &qword_1939613A0);
    v500 = v497;
  }

  OUTLINED_FUNCTION_47_5(v497, v498, v499, v500);
  OUTLINED_FUNCTION_4(v502);
  if (v4 + 84 > (v507 >> 1))
  {
    v871 = OUTLINED_FUNCTION_39(v507);
    v503 = OUTLINED_FUNCTION_84_2(v871, v872, v873, v874, &qword_1EAE3D000, &qword_1939613A0);
    v506 = v503;
  }

  OUTLINED_FUNCTION_50(v503, v504, v505, v506);
  OUTLINED_FUNCTION_4(v508);
  if (v4 + 85 > (v513 >> 1))
  {
    v875 = OUTLINED_FUNCTION_39(v513);
    v509 = OUTLINED_FUNCTION_85(v875, v876, v877, v878, &qword_1EAE3D000, &qword_1939613A0);
    v512 = v509;
  }

  OUTLINED_FUNCTION_47_5(v509, v510, v511, v512);
  OUTLINED_FUNCTION_4(v514);
  if (v4 + 86 > (v519 >> 1))
  {
    v879 = OUTLINED_FUNCTION_39(v519);
    v515 = OUTLINED_FUNCTION_84_2(v879, v880, v881, v882, &qword_1EAE3D000, &qword_1939613A0);
    v518 = v515;
  }

  OUTLINED_FUNCTION_50(v515, v516, v517, v518);
  OUTLINED_FUNCTION_4(v520);
  if (v4 + 87 > (v525 >> 1))
  {
    v883 = OUTLINED_FUNCTION_39(v525);
    v521 = OUTLINED_FUNCTION_85(v883, v884, v885, v886, &qword_1EAE3D000, &qword_1939613A0);
    v524 = v521;
  }

  OUTLINED_FUNCTION_47_5(v521, v522, v523, v524);
  OUTLINED_FUNCTION_4(v526);
  if (v4 + 88 > (v531 >> 1))
  {
    v887 = OUTLINED_FUNCTION_39(v531);
    v527 = OUTLINED_FUNCTION_84_2(v887, v888, v889, v890, &qword_1EAE3D000, &qword_1939613A0);
    v530 = v527;
  }

  OUTLINED_FUNCTION_50(v527, v528, v529, v530);
  OUTLINED_FUNCTION_4(v532);
  if (v4 + 89 > (v537 >> 1))
  {
    v891 = OUTLINED_FUNCTION_39(v537);
    v533 = OUTLINED_FUNCTION_85(v891, v892, v893, v894, &qword_1EAE3D000, &qword_1939613A0);
    v536 = v533;
  }

  OUTLINED_FUNCTION_47_5(v533, v534, v535, v536);
  *(v538 + 32) = 87;
  *(v538 + 40) = v3;
  return v539;
}

void IntelligenceFlowJointResolverTelemetry.JRParameterSubType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 0xALL:
      case 0x17:
      case 0x18:
      case 0x1CLL:
      case 0x1ELL:
      case 0x21:
      case 0x22:
      case 0x23:
      case 0x25:
      case 0x26:
      case 0x35:
      case 0x36:
      case 0x47:
      case 0x49:
      case 0x4ALL:
      case 0x4BLL:
      case 0x4CLL:
      case 0x4DLL:
      case 0x4FLL:
      case 0x52:
      case 0x57:
        return;
      case 0xCLL:
      case 0xDLL:
      case 0xELL:
      case 0x11:
      case 0x13:
        OUTLINED_FUNCTION_34_14();
        break;
      case 0xFLL:
      case 0x12:
        OUTLINED_FUNCTION_30_10();
        break;
      case 0x14:
        OUTLINED_FUNCTION_44_10();
        break;
      case 0x16:
        OUTLINED_FUNCTION_47_13();
        break;
      case 0x19:
        OUTLINED_FUNCTION_45_11();
        break;
      case 0x1BLL:
        OUTLINED_FUNCTION_46_9();
        break;
      case 0x1DLL:
        OUTLINED_FUNCTION_39_12();
        break;
      default:
        OUTLINED_FUNCTION_38();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowJointResolverTelemetry.JRParameterSubType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || ((OUTLINED_FUNCTION_6_27(), v4) ? (v7 = v6 == v0) : (v7 = 0), v7 || (OUTLINED_FUNCTION_2_33(v5, v6) & 1) != 0))
  {

    v8 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v10 = v1 == 0xD000000000000017 && v9 == v0;
    if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v9) & 1) != 0)
    {

      v8 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v12 = v1 == 0xD000000000000014 && v11 == v0;
      if (v12 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v11) & 1) != 0)
      {

        v8 = 2;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v14 = v1 == 0xD000000000000010 && v13 == v0;
        if (v14 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v13) & 1) != 0)
        {

          v8 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_79_0();
          v16 = v4 && v15 == v0;
          if (v16 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v15) & 1) != 0)
          {

            v8 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_6_27();
            v19 = v4 && v18 == v0;
            if (v19 || (OUTLINED_FUNCTION_2_33(v17, v18) & 1) != 0)
            {

              v8 = 5;
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v21 = v1 == 0xD000000000000018 && v20 == v0;
              if (v21 || (OUTLINED_FUNCTION_0_9(0xD000000000000018, v20) & 1) != 0)
              {

                v8 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_6_27();
                v24 = v4 && v23 == v0;
                if (v24 || (OUTLINED_FUNCTION_2_33(v22, v23) & 1) != 0)
                {

                  v8 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_6_27();
                  v27 = v4 && v26 == v0;
                  if (v27 || (OUTLINED_FUNCTION_2_33(v25, v26) & 1) != 0)
                  {

                    v8 = 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_60();
                    v29 = v4 && v28 == v0;
                    if (v29 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v28) & 1) != 0)
                    {

                      v8 = 9;
                    }

                    else
                    {
                      v30 = OUTLINED_FUNCTION_30_10() & 0xFFFFFFFFFFFFLL | 0x6E55000000000000;
                      v32 = v1 == v30 && v0 == v31;
                      if (v32 || (OUTLINED_FUNCTION_0_9(v30, v31) & 1) != 0)
                      {

                        v8 = 10;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_6_27();
                        v35 = v4 && v34 == v0;
                        if (v35 || (OUTLINED_FUNCTION_2_33(v33, v34) & 1) != 0)
                        {

                          v8 = 11;
                        }

                        else
                        {
                          v36 = OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x694C000000000000;
                          v38 = v1 == v36 && v0 == v37;
                          if (v38 || (OUTLINED_FUNCTION_0_9(v36, v37) & 1) != 0)
                          {

                            v8 = 12;
                          }

                          else
                          {
                            v39 = OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x6D49000000000000;
                            v41 = v1 == v39 && v0 == v40;
                            if (v41 || (OUTLINED_FUNCTION_0_9(v39, v40) & 1) != 0)
                            {

                              v8 = 13;
                            }

                            else
                            {
                              v42 = OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x6956000000000000;
                              v44 = v1 == v42 && v0 == v43;
                              if (v44 || (OUTLINED_FUNCTION_0_9(v42, v43) & 1) != 0)
                              {

                                v8 = 14;
                              }

                              else
                              {
                                v45 = OUTLINED_FUNCTION_30_10() & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
                                v47 = v1 == v45 && v0 == v46;
                                if (v47 || (OUTLINED_FUNCTION_0_9(v45, v46) & 1) != 0)
                                {

                                  v8 = 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_38();
                                  v49 = v1 == 0xD000000000000013 && v48 == v0;
                                  if (v49 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, v48) & 1) != 0)
                                  {

                                    v8 = 16;
                                  }

                                  else
                                  {
                                    v50 = OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x654D000000000000;
                                    v51 = v1 == v50 && v0 == 0xED00006567617373;
                                    if (v51 || (OUTLINED_FUNCTION_0_9(v50, 0xED00006567617373) & 1) != 0)
                                    {

                                      v8 = 17;
                                    }

                                    else
                                    {
                                      v52 = OUTLINED_FUNCTION_30_10() & 0xFFFFFFFFFFFFLL | 0x6946000000000000;
                                      v54 = v1 == v52 && v0 == v53;
                                      if (v54 || (OUTLINED_FUNCTION_0_9(v52, v53) & 1) != 0)
                                      {

                                        v8 = 18;
                                      }

                                      else
                                      {
                                        v55 = OUTLINED_FUNCTION_34_14() & 0xFFFFFFFFFFFFLL | 0x6C41000000000000;
                                        v57 = v1 == v55 && v0 == v56;
                                        if (v57 || (OUTLINED_FUNCTION_0_9(v55, v56) & 1) != 0)
                                        {

                                          v8 = 19;
                                        }

                                        else
                                        {
                                          v58 = OUTLINED_FUNCTION_44_10();
                                          v60 = v1 == v58 && v0 == v59;
                                          if (v60 || (OUTLINED_FUNCTION_0_9(v58, v59) & 1) != 0)
                                          {

                                            v8 = 20;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_38();
                                            v62 = v1 == 0xD000000000000011 && v61 == v0;
                                            if (v62 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, v61) & 1) != 0)
                                            {

                                              v8 = 21;
                                            }

                                            else
                                            {
                                              v63 = OUTLINED_FUNCTION_47_13() & 0xFFFFFFFFFFFFLL | 0x7669000000000000;
                                              v65 = v1 == v63 && v0 == v64;
                                              if (v65 || (OUTLINED_FUNCTION_0_9(v63, v64) & 1) != 0)
                                              {

                                                v8 = 22;
                                              }

                                              else
                                              {
                                                v66 = v1 == 0x616D497972657551 && v0 == 0xEA00000000006567;
                                                if (v66 || (OUTLINED_FUNCTION_0_9(0x616D497972657551, 0xEA00000000006567) & 1) != 0)
                                                {

                                                  v8 = 23;
                                                }

                                                else
                                                {
                                                  v67 = v1 == 0x6469567972657551 && v0 == 0xEA00000000006F65;
                                                  if (v67 || (OUTLINED_FUNCTION_0_9(0x6469567972657551, 0xEA00000000006F65) & 1) != 0)
                                                  {

                                                    v8 = 24;
                                                  }

                                                  else
                                                  {
                                                    v68 = OUTLINED_FUNCTION_45_11();
                                                    v70 = v1 == v68 && v0 == v69;
                                                    if (v70 || (OUTLINED_FUNCTION_0_9(v68, v69) & 1) != 0)
                                                    {

                                                      v8 = 25;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_6_27();
                                                      v73 = v4 && v72 == v0;
                                                      if (v73 || (OUTLINED_FUNCTION_2_33(v71, v72) & 1) != 0)
                                                      {

                                                        v8 = 26;
                                                      }

                                                      else
                                                      {
                                                        v74 = OUTLINED_FUNCTION_46_9();
                                                        v76 = v1 == v74 && v0 == v75;
                                                        if (v76 || (OUTLINED_FUNCTION_0_9(v74, v75) & 1) != 0)
                                                        {

                                                          v8 = 27;
                                                        }

                                                        else
                                                        {
                                                          v77 = v1 == 0x6C69467972657551 && v0 == 0xEC0000006C725565;
                                                          if (v77 || (OUTLINED_FUNCTION_0_9(0x6C69467972657551, 0xEC0000006C725565) & 1) != 0)
                                                          {

                                                            v8 = 28;
                                                          }

                                                          else
                                                          {
                                                            v78 = OUTLINED_FUNCTION_39_12();
                                                            v80 = v1 == v78 && v0 == v79;
                                                            if (v80 || (v81 = OUTLINED_FUNCTION_0_9(v78, v79), (v81 & 1) != 0))
                                                            {

                                                              v8 = 29;
                                                            }

                                                            else
                                                            {
                                                              v82 = v1 == 0x6465727265666544 && v0 == 0xEF6E776F6E6B6E55;
                                                              if (v82 || (OUTLINED_FUNCTION_4_29(v81, 0xEF6E776F6E6B6E55) & 1) != 0)
                                                              {

                                                                v8 = 30;
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_60();
                                                                v84 = v4 && v83 == v0;
                                                                if (v84 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v83) & 1) != 0)
                                                                {

                                                                  v8 = 31;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_38();
                                                                  v86 = v1 == 0xD000000000000011 && v85 == v0;
                                                                  if (v86 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, v85) & 1) != 0)
                                                                  {

                                                                    v8 = 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v87 = v1 == 0x6465727265666544 && v0 == 0xED00006567616D49;
                                                                    if (v87 || (v88 = OUTLINED_FUNCTION_0_9(0x6465727265666544, 0xED00006567616D49), (v88 & 1) != 0))
                                                                    {

                                                                      v8 = 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v89 = v1 == 0x6465727265666544 && v0 == 0xED00006F65646956;
                                                                      if (v89 || (v90 = OUTLINED_FUNCTION_4_29(v88, 0xED00006F65646956), (v90 & 1) != 0))
                                                                      {

                                                                        v8 = 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v91 = v1 == 0x6465727265666544 && v0 == 0xEF746361746E6F43;
                                                                        if (v91 || (OUTLINED_FUNCTION_4_29(v90, 0xEF746361746E6F43) & 1) != 0)
                                                                        {

                                                                          v8 = 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_38();
                                                                          v93 = v1 == 0xD000000000000015 && v92 == v0;
                                                                          if (v93 || (v94 = OUTLINED_FUNCTION_0_9(0xD000000000000015, v92), (v94 & 1) != 0))
                                                                          {

                                                                            v8 = 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v95 = v1 == 0x6465727265666544 && v0 == 0xEF6567617373654DLL;
                                                                            if (v95 || (v96 = OUTLINED_FUNCTION_4_29(v94, 0xEF6567617373654DLL), (v96 & 1) != 0))
                                                                            {

                                                                              v8 = 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v97 = v1 == 0x6465727265666544 && v0 == 0xEF6C7255656C6946;
                                                                              if (v97 || (OUTLINED_FUNCTION_4_29(v96, 0xEF6C7255656C6946) & 1) != 0)
                                                                              {

                                                                                v8 = 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_38();
                                                                                v99 = v1 == 0xD000000000000011 && v98 == v0;
                                                                                if (v99 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, v98) & 1) != 0)
                                                                                {

                                                                                  v8 = 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  OUTLINED_FUNCTION_26_4();
                                                                                  v101 = v4 && v100 == v0;
                                                                                  if (v101 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v100) & 1) != 0)
                                                                                  {

                                                                                    v8 = 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_38();
                                                                                    v103 = v1 == 0xD00000000000001CLL && v102 == v0;
                                                                                    if (v103 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v102) & 1) != 0)
                                                                                    {

                                                                                      v8 = 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_38();
                                                                                      v105 = v1 == 0xD000000000000019 && v104 == v0;
                                                                                      if (v105 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v104) & 1) != 0)
                                                                                      {

                                                                                        v8 = 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_24_15();
                                                                                        v107 = v4 && v106 == v0;
                                                                                        if (v107 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v106) & 1) != 0)
                                                                                        {

                                                                                          v8 = 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_24_15();
                                                                                          v109 = v4 && v108 == v0;
                                                                                          if (v109 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v108) & 1) != 0)
                                                                                          {

                                                                                            v8 = 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_26_4();
                                                                                            v111 = v4 && v110 == v0;
                                                                                            if (v111 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v110) & 1) != 0)
                                                                                            {

                                                                                              v8 = 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_38();
                                                                                              v113 = v1 == 0xD00000000000001DLL && v112 == v0;
                                                                                              if (v113 || (OUTLINED_FUNCTION_0_9(0xD00000000000001DLL, v112) & 1) != 0)
                                                                                              {

                                                                                                v8 = 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_26_4();
                                                                                                v115 = v4 && v114 == v0;
                                                                                                if (v115 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v114) & 1) != 0)
                                                                                                {

                                                                                                  v8 = 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_26_4();
                                                                                                  v117 = v4 && v116 == v0;
                                                                                                  if (v117 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v116) & 1) != 0)
                                                                                                  {

                                                                                                    v8 = 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_38();
                                                                                                    v119 = v1 == 0xD000000000000019 && v118 == v0;
                                                                                                    if (v119 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v118) & 1) != 0)
                                                                                                    {

                                                                                                      v8 = 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_79_0();
                                                                                                      v121 = v4 && v120 == v0;
                                                                                                      if (v121 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v120) & 1) != 0)
                                                                                                      {

                                                                                                        v8 = 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_24_15();
                                                                                                        v123 = v4 && v122 == v0;
                                                                                                        if (v123 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v122) & 1) != 0)
                                                                                                        {

                                                                                                          v8 = 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_6_27();
                                                                                                          v126 = v4 && v125 == v0;
                                                                                                          if (v126 || (v127 = OUTLINED_FUNCTION_2_33(v124, v125), (v127 & 1) != 0))
                                                                                                          {

                                                                                                            v8 = 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v128 = v1 == 0x636E657265666552 && v0 == 0xEE006567616D4965;
                                                                                                            if (v128 || (v129 = OUTLINED_FUNCTION_4_29(v127, 0xEE006567616D4965), (v129 & 1) != 0))
                                                                                                            {

                                                                                                              v8 = 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v130 = v1 == 0x636E657265666552 && v0 == 0xEE006F6564695665;
                                                                                                              if (v130 || (OUTLINED_FUNCTION_4_29(v129, 0xEE006F6564695665) & 1) != 0)
                                                                                                              {

                                                                                                                v8 = 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_79_0();
                                                                                                                v132 = v4 && v131 == v0;
                                                                                                                if (v132 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v131) & 1) != 0)
                                                                                                                {

                                                                                                                  v8 = 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  OUTLINED_FUNCTION_38();
                                                                                                                  v134 = v1 == 0xD000000000000016 && v133 == v0;
                                                                                                                  if (v134 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, v133) & 1) != 0)
                                                                                                                  {

                                                                                                                    v8 = 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    OUTLINED_FUNCTION_79_0();
                                                                                                                    v136 = v4 && v135 == v0;
                                                                                                                    if (v136 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v135) & 1) != 0)
                                                                                                                    {

                                                                                                                      v8 = 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      OUTLINED_FUNCTION_79_0();
                                                                                                                      v138 = v4 && v137 == v0;
                                                                                                                      if (v138 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v137) & 1) != 0)
                                                                                                                      {

                                                                                                                        v8 = 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        OUTLINED_FUNCTION_6_27();
                                                                                                                        v141 = v4 && v140 == v0;
                                                                                                                        if (v141 || (OUTLINED_FUNCTION_2_33(v139, v140) & 1) != 0)
                                                                                                                        {

                                                                                                                          v8 = 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          OUTLINED_FUNCTION_38();
                                                                                                                          v144 = v1 == 0xD00000000000001ELL && v143 == v0;
                                                                                                                          if (v144 || (OUTLINED_FUNCTION_4_29(v142, v143) & 1) != 0)
                                                                                                                          {

                                                                                                                            v8 = 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                                            v146 = v1 == 0xD000000000000023 && v145 == v0;
                                                                                                                            if (v146 || (OUTLINED_FUNCTION_0_9(0xD000000000000023, v145) & 1) != 0)
                                                                                                                            {

                                                                                                                              v8 = 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_38();
                                                                                                                              v148 = v1 == 0xD000000000000020 && v147 == v0;
                                                                                                                              if (v148 || (OUTLINED_FUNCTION_0_9(0xD000000000000020, v147) & 1) != 0)
                                                                                                                              {

                                                                                                                                v8 = 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                OUTLINED_FUNCTION_38();
                                                                                                                                v150 = v1 == 0xD00000000000001CLL && v149 == v0;
                                                                                                                                if (v150 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v149) & 1) != 0)
                                                                                                                                {

                                                                                                                                  v8 = 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  OUTLINED_FUNCTION_38();
                                                                                                                                  v152 = v1 == 0xD00000000000001CLL && v151 == v0;
                                                                                                                                  if (v152 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v151) & 1) != 0)
                                                                                                                                  {

                                                                                                                                    v8 = 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    OUTLINED_FUNCTION_38();
                                                                                                                                    v154 = v1 == 0xD00000000000001ELL && v153 == v0;
                                                                                                                                    if (v154 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, v153) & 1) != 0)
                                                                                                                                    {

                                                                                                                                      v8 = 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      OUTLINED_FUNCTION_38();
                                                                                                                                      v156 = v1 == 0xD000000000000024 && v155 == v0;
                                                                                                                                      if (v156 || (OUTLINED_FUNCTION_0_9(0xD000000000000024, v155) & 1) != 0)
                                                                                                                                      {

                                                                                                                                        v8 = 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        OUTLINED_FUNCTION_38();
                                                                                                                                        v158 = v1 == 0xD00000000000001ELL && v157 == v0;
                                                                                                                                        if (v158 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, v157) & 1) != 0)
                                                                                                                                        {

                                                                                                                                          v8 = 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          OUTLINED_FUNCTION_38();
                                                                                                                                          v160 = v1 == 0xD00000000000001ELL && v159 == v0;
                                                                                                                                          if (v160 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, v159) & 1) != 0)
                                                                                                                                          {

                                                                                                                                            v8 = 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                                                            v162 = v1 == 0xD000000000000020 && v161 == v0;
                                                                                                                                            if (v162 || (OUTLINED_FUNCTION_0_9(0xD000000000000020, v161) & 1) != 0)
                                                                                                                                            {

                                                                                                                                              v8 = 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              OUTLINED_FUNCTION_79_0();
                                                                                                                                              v164 = v4 && v163 == v0;
                                                                                                                                              if (v164 || (v165 = OUTLINED_FUNCTION_0_9(0xD000000000000010, v163), (v165 & 1) != 0))
                                                                                                                                              {

                                                                                                                                                v8 = 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v166 = v1 == 0x766974696D697250 && v0 == 0xED0000656C694665;
                                                                                                                                                if (v166 || (OUTLINED_FUNCTION_4_29(v165, 0xED0000656C694665) & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  v8 = 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  OUTLINED_FUNCTION_60();
                                                                                                                                                  v168 = v4 && v167 == v0;
                                                                                                                                                  if (v168 || (v169 = OUTLINED_FUNCTION_0_9(0xD000000000000014, v167), (v169 & 1) != 0))
                                                                                                                                                  {

                                                                                                                                                    v8 = 72;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v170 = v1 == 0x766974696D697250 && v0 == 0xEF6E6F7372655065;
                                                                                                                                                    if (v170 || (v171 = OUTLINED_FUNCTION_4_29(v169, 0xEF6E6F7372655065), (v171 & 1) != 0))
                                                                                                                                                    {

                                                                                                                                                      v8 = 73;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v172 = v1 == 0x766974696D697250 && v0 == 0xEC00000070704165;
                                                                                                                                                      if (v172 || (v173 = OUTLINED_FUNCTION_4_29(v171, 0xEC00000070704165), (v173 & 1) != 0))
                                                                                                                                                      {

                                                                                                                                                        v8 = 74;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v174 = v1 == 0x766974696D697250 && v0 == 0xED00006C6F6F4265;
                                                                                                                                                        if (v174 || (v175 = OUTLINED_FUNCTION_4_29(v173, 0xED00006C6F6F4265), (v175 & 1) != 0))
                                                                                                                                                        {

                                                                                                                                                          v8 = 75;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v176 = v1 == 0x766974696D697250 && v0 == 0xEC000000746E4965;
                                                                                                                                                          if (v176 || (v177 = OUTLINED_FUNCTION_4_29(v175, 0xEC000000746E4965), (v177 & 1) != 0))
                                                                                                                                                          {

                                                                                                                                                            v8 = 76;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v178 = v1 == 0x766974696D697250 && v0 == 0xEF7265626D754E65;
                                                                                                                                                            if (v178 || (OUTLINED_FUNCTION_4_29(v177, 0xEF7265626D754E65) & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              v8 = 77;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              OUTLINED_FUNCTION_79_0();
                                                                                                                                                              v180 = v4 && v179 == v0;
                                                                                                                                                              if (v180 || (v181 = OUTLINED_FUNCTION_0_9(0xD000000000000010, v179), (v181 & 1) != 0))
                                                                                                                                                              {

                                                                                                                                                                v8 = 78;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v182 = v1 == 0x766974696D697250 && v0 == 0xED00006574614465;
                                                                                                                                                                if (v182 || (OUTLINED_FUNCTION_4_29(v181, 0xED00006574614465) & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  v8 = 79;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  OUTLINED_FUNCTION_26_4();
                                                                                                                                                                  v184 = v4 && v183 == v0;
                                                                                                                                                                  if (v184 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v183) & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    v8 = 80;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    OUTLINED_FUNCTION_60();
                                                                                                                                                                    v186 = v4 && v185 == v0;
                                                                                                                                                                    if (v186 || (v187 = OUTLINED_FUNCTION_0_9(0xD000000000000014, v185), (v187 & 1) != 0))
                                                                                                                                                                    {

                                                                                                                                                                      v8 = 81;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v188 = v1 == 0x766974696D697250 && v0 == 0xEF676E6972745365;
                                                                                                                                                                      if (v188 || (OUTLINED_FUNCTION_4_29(v187, 0xEF676E6972745365) & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        v8 = 82;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        OUTLINED_FUNCTION_38();
                                                                                                                                                                        v190 = v1 == 0xD000000000000019 && v189 == v0;
                                                                                                                                                                        if (v190 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v189) & 1) != 0)
                                                                                                                                                                        {

                                                                                                                                                                          v8 = 83;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          OUTLINED_FUNCTION_26_4();
                                                                                                                                                                          v192 = v4 && v191 == v0;
                                                                                                                                                                          if (v192 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v191) & 1) != 0)
                                                                                                                                                                          {

                                                                                                                                                                            v8 = 84;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            OUTLINED_FUNCTION_24_15();
                                                                                                                                                                            v194 = v4 && v193 == v0;
                                                                                                                                                                            if (v194 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, v193) & 1) != 0)
                                                                                                                                                                            {

                                                                                                                                                                              v8 = 85;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              OUTLINED_FUNCTION_6_27();
                                                                                                                                                                              v197 = v4 && v196 == v0;
                                                                                                                                                                              if (v197 || (OUTLINED_FUNCTION_2_33(v195, v196) & 1) != 0)
                                                                                                                                                                              {

                                                                                                                                                                                v8 = 86;
                                                                                                                                                                              }

                                                                                                                                                                              else if (v1 == 0x766974696D697250 && v0 == 0xEC0000006C725565)
                                                                                                                                                                              {

                                                                                                                                                                                v8 = 87;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v199 = OUTLINED_FUNCTION_0_9(0x766974696D697250, 0xEC0000006C725565);

                                                                                                                                                                                v8 = 87;
                                                                                                                                                                                if ((v199 & 1) == 0)
                                                                                                                                                                                {
                                                                                                                                                                                  v8 = 0;
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

  OUTLINED_FUNCTION_12_1(v8);
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRInferenceContext.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
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
        LOBYTE(__dst[0]) = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v10[0]) = v5;

        v6 = static IntelligenceFlowJointResolverTelemetry.JRInferenceFailed.== infix(_:_:)(__dst, v10);
LABEL_9:
        v8 = v6;

        goto LABEL_10;
      }
    }

    else if (v3 >> 62 == 2)
    {
      memcpy(v10, ((v3 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(v10));
      memcpy(__dst, ((v2 & 0x3FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

      v6 = static IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.== infix(_:_:)(__dst, v10);
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
  LOBYTE(__dst[0]) = *(v2 + 16);
  LOBYTE(v10[0]) = v7;

  v8 = static IntelligenceFlowJointResolverTelemetry.JRInferenceStarted.== infix(_:_:)(__dst, v10);

LABEL_10:

  return v8 & 1;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceContext.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (v3)
  {
    v4 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    if (v3 == 1)
    {
      __dst[0] = *(v4 + 16);
      sub_1935520D8();
    }

    else
    {
      memcpy(__dst, (v4 + 16), sizeof(__dst));
      memcpy(v6, __dst, sizeof(v6));
      sub_193552084();
    }
  }

  else
  {
    __dst[0] = *(v2 + 16);
    sub_19355212C();
  }

  return sub_19393C540();
}

unint64_t sub_193552084()
{
  result = qword_1EAE3CFD0;
  if (!qword_1EAE3CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFD0);
  }

  return result;
}

unint64_t sub_1935520D8()
{
  result = qword_1EAE3CFD8;
  if (!qword_1EAE3CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFD8);
  }

  return result;
}

unint64_t sub_19355212C()
{
  result = qword_1EAE3CFE0;
  if (!qword_1EAE3CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFE0);
  }

  return result;
}

unint64_t sub_193552184()
{
  result = qword_1EAE3CFE8;
  if (!qword_1EAE3CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFE8);
  }

  return result;
}

unint64_t sub_1935521DC()
{
  result = qword_1EAE3CFF0;
  if (!qword_1EAE3CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFF0);
  }

  return result;
}

unint64_t sub_193552234()
{
  result = qword_1EAE3CFF8;
  if (!qword_1EAE3CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CFF8);
  }

  return result;
}

void sub_1935522B0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9D58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  *v0 = 99;
  OUTLINED_FUNCTION_63("invocation");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_52();
  *v10 = 101;
  v11 = OUTLINED_FUNCTION_0_0(v9, "jrInferenceContext");
  v7(v11);
  v12 = OUTLINED_FUNCTION_46_10();
  *v13 = 102;
  v14 = OUTLINED_FUNCTION_0_0(v12, "jrExperimentTriggered");
  v7(v14);
  OUTLINED_FUNCTION_45_2(3 * v4);
  OUTLINED_FUNCTION_69_6(v15);
  v17 = OUTLINED_FUNCTION_0_0(v16, "eventMetadata");
  v7(v17);
  v18 = OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  *v19 = v1;
  v20 = OUTLINED_FUNCTION_0_0(v18, "timestamp");
  v7(v20);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193552474()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
        OUTLINED_FUNCTION_111();
LABEL_14:
        sub_193498018();
        break;
      case 2:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
        type metadata accessor for MonotonicTimestamp(0);
        OUTLINED_FUNCTION_111();
        goto LABEL_14;
      case 102:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
        OUTLINED_FUNCTION_111();
        goto LABEL_14;
      case 101:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
        OUTLINED_FUNCTION_140_4();
        goto LABEL_14;
      case 99:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(0);
        OUTLINED_FUNCTION_111();
        goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935525A8()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_193552660();
  if (!v0)
  {
    if ((~*(v1 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 32)) & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_79();
    sub_193552770();
    OUTLINED_FUNCTION_79();
    sub_193552880();
    OUTLINED_FUNCTION_79();
    sub_193552990();
  }
}

void sub_193552660()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_23();
  v8 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v8 + 28));
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3CEB0, &qword_193960F60);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation);
    OUTLINED_FUNCTION_12_12(v1, 99);
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193552770()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_23();
  v8 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v8 + 36));
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3CEB8, &qword_193961930);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered);
    OUTLINED_FUNCTION_12_12(v1, 102);
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193552880()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_23();
  v8 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v8 + 40));
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3CEC0, &qword_193960F68);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata);
    OUTLINED_FUNCTION_12_12(v1, 1);
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193552990()
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
  OUTLINED_FUNCTION_10_23();
  v8 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v8 + 44));
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_12_12(v1, 2);
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193552B04()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9D70);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "TreatmentAllocationStatusUnknown";
  *(v0 + 8) = 32;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  OUTLINED_FUNCTION_3_1(v1 + v4);
  OUTLINED_FUNCTION_69_6(v9);
  *v10 = "TreatmentAllocationStatusAllocated";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  *v11 = "TreatmentAllocationStatusActivated";
  *(v11 + 8) = 34;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v13 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v13 = "TreatmentAllocationStatusDeactivated";
  *(v13 + 1) = 36;
  v13[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193552CE0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9D88);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_1939526B0);
  *v0 = 0;
  OUTLINED_FUNCTION_83_0("JRBucketedDistanceUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  OUTLINED_FUNCTION_3_1(v0 + v4);
  OUTLINED_FUNCTION_69_6(v9);
  *v10 = "JRBucketedDistanceLevel1";
  v10[1] = 24;
  v11 = OUTLINED_FUNCTION_41(v10);
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v13 = v1;
  *v12 = "JRBucketedDistanceLevel2";
  v12[1] = 24;
  v14 = OUTLINED_FUNCTION_41(v12);
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  *v15 = "JRBucketedDistanceLevel3";
  *(v15 + 1) = 24;
  v16 = OUTLINED_FUNCTION_41(v15);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  *v17 = "JRBucketedDistanceLevel4";
  *(v17 + 1) = 24;
  v18 = OUTLINED_FUNCTION_41(v17);
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_44(5 * v4);
  *v20 = 5;
  *v19 = "JRBucketedDistanceLevel5";
  v19[1] = 24;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v7)(v21);
  v22 = (v0 + 6 * v4);
  v23 = (v22 + dword_1EAEA9DC0);
  *v22 = 6;
  *v23 = "JRBucketedDistanceLevel6";
  v23[1] = 24;
  v24 = OUTLINED_FUNCTION_41(v23);
  (v7)(v24);
  v25 = OUTLINED_FUNCTION_44(7 * v4);
  *v26 = 7;
  *v25 = "JRBucketedDistanceLevel7";
  *(v25 + 8) = 24;
  *(v25 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193552F60()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9DA0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v274 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v274, xmmword_193961680);
  *v1 = 0;
  *v0 = "JRParameterSubTypeUnknown";
  *(v0 + 8) = 25;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_52();
  *v9 = 1000;
  v10 = OUTLINED_FUNCTION_0_0(v8, "JRParameterSubTypeEnumerationUnknown");
  v6(v10);
  v11 = OUTLINED_FUNCTION_46_10();
  *v12 = 1001;
  v13 = OUTLINED_FUNCTION_0_0(v11, "JRParameterSubTypeEnumerationEmailMessage");
  v6(v13);
  v14 = OUTLINED_FUNCTION_45_2(3 * v4);
  *v15 = 1002;
  *v14 = "JRParameterSubTypeEnumerationLivePhoto";
  v14[1] = 38;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  v6(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 1003;
  *v17 = "JRParameterSubTypeEnumerationImage";
  v17[1] = 34;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  v6(v19);
  v20 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v21 = 1004;
  v22 = OUTLINED_FUNCTION_18_1(v20, "JRParameterSubTypeEnumerationVideo");
  v6(v22);
  v23 = OUTLINED_FUNCTION_3_29(6);
  *v24 = 1005;
  v25 = OUTLINED_FUNCTION_18_1(v23, "JRParameterSubTypeEnumerationContact");
  v6(v25);
  v26 = OUTLINED_FUNCTION_45_2(7 * v4);
  *v27 = 1006;
  v28 = OUTLINED_FUNCTION_0_0(v26, "JRParameterSubTypeEnumerationCalendarEvent");
  v6(v28);
  v29 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v30 = 1007;
  *v29 = "JRParameterSubTypeEnumerationMessage";
  v29[1] = 36;
  v31 = OUTLINED_FUNCTION_1_3(v29);
  v6(v31);
  v32 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v33 = 1008;
  *v32 = "JRParameterSubTypeEnumerationFileUrl";
  v32[1] = 36;
  v34 = OUTLINED_FUNCTION_1_3(v32);
  v6(v34);
  v35 = OUTLINED_FUNCTION_3_29(10);
  *v36 = 1009;
  v37 = OUTLINED_FUNCTION_16_6(v35, "JRParameterSubTypeEnumerationAliasFile");
  v6(v37);
  v38 = OUTLINED_FUNCTION_3_29(11);
  *v39 = 2000;
  *v38 = "JRParameterSubTypeEntityUnknown";
  v38[1] = 31;
  v40 = OUTLINED_FUNCTION_1_3(v38);
  v6(v40);
  v41 = OUTLINED_FUNCTION_3_29(12);
  *v42 = 2001;
  v43 = OUTLINED_FUNCTION_18_1(v41, "JRParameterSubTypeEntityEmailMessage");
  v6(v43);
  v44 = OUTLINED_FUNCTION_3_29(13);
  *v45 = 2002;
  v46 = OUTLINED_FUNCTION_0_0(v44, "JRParameterSubTypeEntityLivePhoto");
  v6(v46);
  v47 = OUTLINED_FUNCTION_3_29(14);
  *v48 = 2003;
  *v47 = "JRParameterSubTypeEntityImage";
  v47[1] = 29;
  v49 = OUTLINED_FUNCTION_1_3(v47);
  v6(v49);
  v50 = OUTLINED_FUNCTION_45_2(15 * v4);
  *v51 = 2004;
  v52 = OUTLINED_FUNCTION_18_1(v50, "JRParameterSubTypeEntityVideo");
  v6(v52);
  v53 = OUTLINED_FUNCTION_3_1(&v1[2 * v4]);
  *v54 = 2005;
  v55 = OUTLINED_FUNCTION_16_6(v53, "JRParameterSubTypeEntityContact");
  v6(v55);
  v56 = OUTLINED_FUNCTION_45_2(17 * v4);
  *v57 = 2006;
  v58 = OUTLINED_FUNCTION_0_0(v56, "JRParameterSubTypeEntityCalendarEvent");
  v6(v58);
  v59 = OUTLINED_FUNCTION_3_29(18);
  *v60 = 2007;
  v61 = OUTLINED_FUNCTION_16_6(v59, "JRParameterSubTypeEntityMessage");
  v6(v61);
  v62 = OUTLINED_FUNCTION_3_29(19);
  *v63 = 2008;
  v64 = OUTLINED_FUNCTION_16_6(v62, "JRParameterSubTypeEntityFileUrl");
  v6(v64);
  v65 = OUTLINED_FUNCTION_3_29(20);
  *v66 = 2009;
  v67 = OUTLINED_FUNCTION_28_4(v65, 33);
  v6(v67);
  v68 = OUTLINED_FUNCTION_3_29(21);
  *v69 = 3000;
  *v68 = "JRParameterSubTypeQueryUnknown";
  v68[1] = 30;
  v70 = OUTLINED_FUNCTION_1_3(v68);
  v6(v70);
  v71 = OUTLINED_FUNCTION_3_29(22);
  *v72 = 3001;
  v73 = OUTLINED_FUNCTION_0_0(v71, "JRParameterSubTypeQueryEmailMessage");
  v6(v73);
  v74 = OUTLINED_FUNCTION_3_29(23);
  *v75 = 3002;
  v76 = OUTLINED_FUNCTION_0_0(v74, "JRParameterSubTypeQueryLivePhoto");
  v6(v76);
  v77 = OUTLINED_FUNCTION_3_29(24);
  *v78 = 3003;
  v79 = OUTLINED_FUNCTION_18_1(v77, "JRParameterSubTypeQueryImage");
  v6(v79);
  v80 = OUTLINED_FUNCTION_3_29(25);
  *v81 = 3004;
  v82 = OUTLINED_FUNCTION_18_1(v80, "JRParameterSubTypeQueryVideo");
  v6(v82);
  v83 = OUTLINED_FUNCTION_3_29(26);
  *v84 = 3005;
  v85 = OUTLINED_FUNCTION_16_6(v83, "JRParameterSubTypeQueryContact");
  v6(v85);
  v86 = OUTLINED_FUNCTION_3_29(27);
  *v87 = 3006;
  v88 = OUTLINED_FUNCTION_28_4(v86, 36);
  v6(v88);
  v89 = OUTLINED_FUNCTION_3_1(v1 + 28 * v4);
  *v90 = 3007;
  v91 = OUTLINED_FUNCTION_16_6(v89, "JRParameterSubTypeQueryMessage");
  v6(v91);
  v92 = OUTLINED_FUNCTION_3_29(29);
  *v93 = 3008;
  v94 = OUTLINED_FUNCTION_16_6(v92, "JRParameterSubTypeQueryFileUrl");
  v6(v94);
  v95 = OUTLINED_FUNCTION_3_1(v1 + 30 * v4);
  *v96 = 3009;
  v97 = OUTLINED_FUNCTION_28_4(v95, 32);
  v6(v97);
  v98 = OUTLINED_FUNCTION_45_2(31 * v4);
  *v99 = 4000;
  v100 = OUTLINED_FUNCTION_28_4(v98, 33);
  v6(v100);
  v101 = OUTLINED_FUNCTION_3_1(&v1[4 * v4]);
  *v102 = 4001;
  v103 = OUTLINED_FUNCTION_28_4(v101, 38);
  v6(v103);
  v104 = OUTLINED_FUNCTION_45_2(33 * v4);
  *v105 = 4002;
  v106 = OUTLINED_FUNCTION_16_6(v104, "JRParameterSubTypeDeferredLivePhoto");
  v6(v106);
  v107 = OUTLINED_FUNCTION_3_29(34);
  *v108 = 4003;
  v109 = OUTLINED_FUNCTION_18_1(v107, "JRParameterSubTypeDeferredImage");
  v6(v109);
  v110 = OUTLINED_FUNCTION_3_1(v1 + 35 * v4);
  *v111 = 4004;
  v112 = OUTLINED_FUNCTION_18_1(v110, "JRParameterSubTypeDeferredVideo");
  v6(v112);
  v113 = OUTLINED_FUNCTION_3_29(36);
  *v114 = 4005;
  v115 = OUTLINED_FUNCTION_18_1(v113, "JRParameterSubTypeDeferredContact");
  v6(v115);
  v116 = OUTLINED_FUNCTION_3_29(37);
  *v117 = 4006;
  *v116 = "JRParameterSubTypeDeferredCalendarEvent";
  v116[1] = 39;
  v118 = OUTLINED_FUNCTION_1_3(v116);
  v6(v118);
  v119 = OUTLINED_FUNCTION_3_29(38);
  *v120 = 4007;
  *v119 = "JRParameterSubTypeDeferredMessage";
  v119[1] = 33;
  v121 = OUTLINED_FUNCTION_1_3(v119);
  v6(v121);
  v122 = OUTLINED_FUNCTION_3_1(v1 + 39 * v4);
  *v123 = 4008;
  v124 = OUTLINED_FUNCTION_18_1(v122, "JRParameterSubTypeDeferredFileUrl");
  v6(v124);
  v125 = OUTLINED_FUNCTION_3_29(40);
  *v126 = 4009;
  v127 = OUTLINED_FUNCTION_28_4(v125, 35);
  v6(v127);
  v128 = OUTLINED_FUNCTION_3_1(v1 + 41 * v4);
  *v129 = 5000;
  *v128 = "JRParameterSubTypeEntityIdentifierUnknown";
  v128[1] = v130;
  v131 = OUTLINED_FUNCTION_1_3(v128);
  v6(v131);
  v132 = OUTLINED_FUNCTION_3_29(42);
  *v133 = 5001;
  *v132 = "JRParameterSubTypeEntityIdentifierEmailMessage";
  v132[1] = 46;
  v134 = OUTLINED_FUNCTION_1_3(v132);
  v6(v134);
  v135 = OUTLINED_FUNCTION_3_1(v1 + 43 * v4);
  *v136 = 5002;
  *v135 = "JRParameterSubTypeEntityIdentifierLivePhoto";
  v135[1] = v137;
  v138 = OUTLINED_FUNCTION_1_3(v135);
  v6(v138);
  v139 = OUTLINED_FUNCTION_3_29(44);
  *v140 = 5003;
  v141 = OUTLINED_FUNCTION_16_6(v139, "JRParameterSubTypeEntityIdentifierImage");
  v6(v141);
  v142 = OUTLINED_FUNCTION_3_29(45);
  *v143 = 5004;
  v144 = OUTLINED_FUNCTION_16_6(v142, "JRParameterSubTypeEntityIdentifierVideo");
  v6(v144);
  v145 = OUTLINED_FUNCTION_3_1(v1 + 46 * v4);
  *v146 = 5005;
  v147 = OUTLINED_FUNCTION_16_6(v145, "JRParameterSubTypeEntityIdentifierContact");
  v6(v147);
  v148 = (v1 + 47 * v4);
  v149 = v148 + dword_1EAEA9DD8;
  *v148 = 5006;
  v150 = OUTLINED_FUNCTION_28_4(v149, 47);
  v6(v150);
  v151 = OUTLINED_FUNCTION_3_29(48);
  *v152 = 5007;
  *v151 = "JRParameterSubTypeEntityIdentifierMessage";
  v151[1] = 41;
  v153 = OUTLINED_FUNCTION_1_3(v151);
  v6(v153);
  v154 = OUTLINED_FUNCTION_3_29(49);
  *v155 = 5008;
  v156 = OUTLINED_FUNCTION_16_6(v154, "JRParameterSubTypeEntityIdentifierFileUrl");
  v6(v156);
  v157 = OUTLINED_FUNCTION_3_29(50);
  *v158 = 5009;
  v159 = OUTLINED_FUNCTION_28_4(v157, 43);
  v6(v159);
  v160 = OUTLINED_FUNCTION_3_29(51);
  *v161 = 6000;
  v162 = OUTLINED_FUNCTION_16_6(v160, "JRParameterSubTypeReferenceUnknown");
  v6(v162);
  v163 = OUTLINED_FUNCTION_3_29(52);
  *v164 = 6001;
  v165 = OUTLINED_FUNCTION_28_4(v163, 39);
  v6(v165);
  v166 = OUTLINED_FUNCTION_3_29(53);
  *v167 = 6002;
  v168 = OUTLINED_FUNCTION_28_4(v166, 36);
  v6(v168);
  v169 = OUTLINED_FUNCTION_3_29(54);
  *v170 = 6003;
  v171 = OUTLINED_FUNCTION_18_1(v169, "JRParameterSubTypeReferenceImage");
  v6(v171);
  v172 = OUTLINED_FUNCTION_3_29(55);
  *v173 = 6004;
  v174 = OUTLINED_FUNCTION_18_1(v172, "JRParameterSubTypeReferenceVideo");
  v6(v174);
  v175 = OUTLINED_FUNCTION_3_29(56);
  *v176 = 6005;
  v177 = OUTLINED_FUNCTION_16_6(v175, "JRParameterSubTypeReferenceContact");
  v6(v177);
  v178 = OUTLINED_FUNCTION_3_29(57);
  *v179 = 6006;
  v180 = OUTLINED_FUNCTION_28_4(v178, 40);
  v6(v180);
  v181 = OUTLINED_FUNCTION_3_29(58);
  *v182 = 6007;
  v183 = OUTLINED_FUNCTION_16_6(v181, "JRParameterSubTypeReferenceMessage");
  v6(v183);
  v184 = OUTLINED_FUNCTION_3_29(59);
  *v185 = 6008;
  v186 = OUTLINED_FUNCTION_16_6(v184, "JRParameterSubTypeReferenceFileUrl");
  v6(v186);
  v187 = OUTLINED_FUNCTION_3_29(60);
  *v188 = 6009;
  v189 = OUTLINED_FUNCTION_28_4(v187, 36);
  v6(v189);
  v190 = OUTLINED_FUNCTION_3_29(61);
  *v191 = 7000;
  v192 = OUTLINED_FUNCTION_28_4(v190, 48);
  v6(v192);
  v193 = OUTLINED_FUNCTION_3_29(62);
  *v194 = 7001;
  v195 = OUTLINED_FUNCTION_28_4(v193, 53);
  v6(v195);
  v196 = OUTLINED_FUNCTION_45_2(63 * v4);
  *v197 = 7002;
  v198 = OUTLINED_FUNCTION_16_6(v196, "JRParameterSubTypePrimitiveSearchableItemLivePhoto");
  v6(v198);
  v199 = OUTLINED_FUNCTION_3_1(&v1[8 * v4]);
  *v200 = 7003;
  v201 = OUTLINED_FUNCTION_18_1(v199, "JRParameterSubTypePrimitiveSearchableItemImage");
  v6(v201);
  v202 = OUTLINED_FUNCTION_45_2(65 * v4);
  *v203 = 7004;
  v204 = OUTLINED_FUNCTION_18_1(v202, "JRParameterSubTypePrimitiveSearchableItemVideo");
  v6(v204);
  v205 = OUTLINED_FUNCTION_3_29(66);
  *v206 = 7005;
  v207 = OUTLINED_FUNCTION_18_1(v205, "JRParameterSubTypePrimitiveSearchableItemContact");
  v6(v207);
  v208 = OUTLINED_FUNCTION_3_29(67);
  *v209 = 7006;
  v210 = OUTLINED_FUNCTION_28_4(v208, 54);
  v6(v210);
  v211 = OUTLINED_FUNCTION_3_29(68);
  *v212 = 7007;
  *v211 = "JRParameterSubTypePrimitiveSearchableItemMessage";
  v211[1] = 48;
  v213 = OUTLINED_FUNCTION_1_3(v211);
  v6(v213);
  v214 = OUTLINED_FUNCTION_3_29(69);
  *v215 = 7008;
  v216 = OUTLINED_FUNCTION_18_1(v214, "JRParameterSubTypePrimitiveSearchableItemFileUrl");
  v6(v216);
  v217 = OUTLINED_FUNCTION_3_29(70);
  *v218 = 7009;
  v219 = OUTLINED_FUNCTION_16_6(v217, "JRParameterSubTypePrimitiveSearchableItemAliasFile");
  v6(v219);
  v220 = OUTLINED_FUNCTION_3_29(71);
  *v221 = 8000;
  v222 = OUTLINED_FUNCTION_28_4(v220, 34);
  v6(v222);
  v223 = OUTLINED_FUNCTION_3_29(72);
  *v224 = 8001;
  v225 = OUTLINED_FUNCTION_28_4(v223, 31);
  v6(v225);
  v226 = OUTLINED_FUNCTION_3_29(73);
  *v227 = 8002;
  v228 = OUTLINED_FUNCTION_28_4(v226, 38);
  v6(v228);
  v229 = OUTLINED_FUNCTION_3_29(74);
  *v230 = 8003;
  v231 = OUTLINED_FUNCTION_18_1(v229, "JRParameterSubTypePrimitivePerson");
  v6(v231);
  v232 = OUTLINED_FUNCTION_3_29(75);
  *v233 = 8004;
  v234 = OUTLINED_FUNCTION_16_6(v232, "JRParameterSubTypePrimitiveApp");
  v6(v234);
  v235 = OUTLINED_FUNCTION_3_29(76);
  *v236 = 8005;
  v237 = OUTLINED_FUNCTION_28_4(v235, 31);
  v6(v237);
  v238 = OUTLINED_FUNCTION_3_29(77);
  *v239 = 8006;
  v240 = OUTLINED_FUNCTION_16_6(v238, "JRParameterSubTypePrimitiveInt");
  v6(v240);
  v241 = OUTLINED_FUNCTION_3_29(78);
  *v242 = 8007;
  *v241 = "JRParameterSubTypePrimitiveNumber";
  v241[1] = 33;
  v243 = OUTLINED_FUNCTION_1_3(v241);
  v6(v243);
  v244 = OUTLINED_FUNCTION_3_29(79);
  *v245 = 8008;
  v246 = OUTLINED_FUNCTION_28_4(v244, 34);
  v6(v246);
  v247 = OUTLINED_FUNCTION_3_29(80);
  *v248 = 8009;
  v249 = OUTLINED_FUNCTION_28_4(v247, 31);
  v6(v249);
  v250 = OUTLINED_FUNCTION_3_29(81);
  *v251 = 8010;
  v252 = OUTLINED_FUNCTION_16_6(v250, "JRParameterSubTypePrimitiveDateComponents");
  v6(v252);
  v253 = OUTLINED_FUNCTION_3_29(82);
  *v254 = 8011;
  v255 = OUTLINED_FUNCTION_28_4(v253, 38);
  v6(v255);
  v256 = OUTLINED_FUNCTION_3_29(83);
  *v257 = 8012;
  v258 = OUTLINED_FUNCTION_18_1(v256, "JRParameterSubTypePrimitiveString");
  v6(v258);
  v259 = OUTLINED_FUNCTION_3_29(84);
  *v260 = 8013;
  v261 = OUTLINED_FUNCTION_28_4(v259, 43);
  v6(v261);
  v262 = OUTLINED_FUNCTION_3_29(85);
  *v263 = 8014;
  v264 = OUTLINED_FUNCTION_16_6(v262, "JRParameterSubTypePrimitiveCurrencyAmount");
  v6(v264);
  v265 = OUTLINED_FUNCTION_3_29(86);
  *v266 = 8015;
  v267 = OUTLINED_FUNCTION_28_4(v265, 40);
  v6(v267);
  v268 = OUTLINED_FUNCTION_3_29(87);
  *v269 = 8016;
  v270 = OUTLINED_FUNCTION_28_4(v268, 36);
  v6(v270);
  v271 = OUTLINED_FUNCTION_3_29(88);
  *v272 = 8017;
  v273 = OUTLINED_FUNCTION_28_4(v271, 30);
  v6(v273);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193553FD8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA9DB8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("jrId");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_52();
  *v6 = 50;
  v7 = OUTLINED_FUNCTION_48(v5, "rowId");
  v3(v7);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193554114()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 50)
    {
      v4 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
      sub_193497890(v1 + *(v4 + 20));
    }

    else if (v2 == 1)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_23_22();
      sub_193498018();
    }
  }
}

void sub_1935541B0()
{
  OUTLINED_FUNCTION_46_5();
  sub_193556990();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_1935541F8();
  }
}

void sub_1935541F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_23();
  v11 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
  sub_1934486F8(v3 + *(v11 + 20), v1, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_78_0();
    v13(v12);
    OUTLINED_FUNCTION_116_0(v2, 50);
    v14 = OUTLINED_FUNCTION_86_0();
    v15(v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935543B8()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_193497890(v3);
    }
  }

  return result;
}

void sub_193554430()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_23();
  sub_1934486F8(v3, v1, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v2, 1);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::IntelligenceFlowJointResolverTelemetry::JRInferenceStarted sub_1935545CC@<W0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result.exists.value = IntelligenceFlowJointResolverTelemetry.JRInferenceStarted.init()().exists.value;
  *a1 = v2;
  return result;
}

void sub_193554610()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9DE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBB0);
  *v0 = 101;
  OUTLINED_FUNCTION_69_0("started");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = 102;
  v8 = OUTLINED_FUNCTION_48(v6, "failed");
  v4(v8);
  v9 = OUTLINED_FUNCTION_46_10();
  *v10 = 103;
  v11 = OUTLINED_FUNCTION_48(v9, "ended");
  v4(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193554788()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 'g':
        sub_1935549D8(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_193498018();

        memcpy(v10, __dst, sizeof(v10));
        memcpy(v11, __dst, sizeof(v11));
        if (sub_1935549E0(v11) == 1)
        {
          IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.init()(v9);
        }

        else
        {
          memcpy(v9, v10, sizeof(v9));
        }

        v8 = swift_allocObject();
        memcpy((v8 + 16), v9, 0x130uLL);
        *v1 = v8 | 0x8000000000000000;
        break;
      case 'f':
        __src[0] = 3;
        sub_193498018();

        v6 = __src[0];
        if (__src[0] == 3)
        {
          IntelligenceFlowJointResolverTelemetry.JRInferenceFailed.init()();
          v6 = __dst[0];
        }

        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *v1 = v7 | 0x4000000000000000;
        break;
      case 'e':
        __src[0] = 3;
        sub_193498018();

        v4 = __src[0];
        if (__src[0] == 3)
        {
          IntelligenceFlowJointResolverTelemetry.JRInferenceStarted.init()();
          v4 = __dst[0];
        }

        v5 = swift_allocObject();
        *(v5 + 16) = v4;
        *v1 = v5;
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935549E0(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1935549F8()
{
  OUTLINED_FUNCTION_88_7();
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    if (v2 == 1)
    {
      __dst[0] = *(v3 + 16);
    }

    else
    {
      memcpy(__dst, (v3 + 16), sizeof(__dst));
      memcpy(v4, __dst, sizeof(v4));
    }
  }

  else
  {
    __dst[0] = *(v1 + 16);
  }

  sub_193447600();
}

void sub_193554B44()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9E00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBE0);
  OUTLINED_FUNCTION_145_3("allocation");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = v0;
  *v6 = "codepathId";
  *(v6 + 8) = 10;
  *(v6 + 16) = v0;
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193554C84()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 2)
    {
      type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_23_22();
      sub_193498018();
    }

    else if (v3 == 1)
    {
      type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
      v5 = OUTLINED_FUNCTION_82_7();
      sub_193498238(v5, v2, v6, v1, &off_1F07CA458);
    }
  }
}

void sub_193554D40()
{
  v2 = v0;
  OUTLINED_FUNCTION_87_7();
  if (*(*v1 + 16))
  {
    type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
    OUTLINED_FUNCTION_78_1();
    sub_193451CFC(v3, v4, v5, v6, v7, v8);
    v2 = v0;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    sub_193556AA4();
  }
}

void sub_193554E34()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9E18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v4, xmmword_193952700);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("experimentNamespace");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_16_6(v8, "experimentId");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "treatmentId");
  v6(v11);
  OUTLINED_FUNCTION_45_2(3 * v3);
  OUTLINED_FUNCTION_34_8(v12);
  v14 = OUTLINED_FUNCTION_16_6(v13, "deploymentId");
  v6(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v16 = OUTLINED_FUNCTION_0_0(v15, "allocationStatus");
  v6(v16);
  v17 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v18 = 6;
  v19 = OUTLINED_FUNCTION_0_0(v17, "lastUpdatedAtInMs");
  v6(v19);
  v20 = OUTLINED_FUNCTION_3_1(v0 + 6 * v3);
  *v21 = 7;
  v22 = OUTLINED_FUNCTION_0_0(v20, "compatibilityVersion");
  v6(v22);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193555038()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 3:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_23_22();
        sub_193498018();
        break;
      case 4:
        v3 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
        OUTLINED_FUNCTION_8_2(*(v3 + 28));
        sub_19393C190();
        break;
      case 5:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
        OUTLINED_FUNCTION_68_6();
        sub_1934982A8();
        break;
      case 6:
        v4 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
        OUTLINED_FUNCTION_8_2(*(v4 + 36));
        sub_19393C230();
        break;
      case 7:
        v5 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
        OUTLINED_FUNCTION_8_2(*(v5 + 40));
        sub_19393C220();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19355516C()
{
  OUTLINED_FUNCTION_87_7();
  if (*(v1 + 8))
  {
    sub_19393C3C0();
  }

  if (!v0)
  {
    if (*(v1 + 24))
    {
      sub_19393C3C0();
    }

    OUTLINED_FUNCTION_79();
    sub_193558B00();
    v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
    if ((*(v1 + v2[7] + 8) & 1) == 0)
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C360();
    }

    if ((*(v1 + v2[8] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v3, v4, v5, v6, v7, v8);
    }

    if ((*(v1 + v2[9] + 8) & 1) == 0)
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C3E0();
    }

    OUTLINED_FUNCTION_147_3();
    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C3D0();
    }
  }
}

uint64_t sub_19355539C()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_1935553EC()
{
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_77_9();
    sub_19393C2E0();
  }
}

void sub_193555490()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9E60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v61 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v61, xmmword_193961690);
  *v0 = 1;
  OUTLINED_FUNCTION_83_0("modelInputShapes");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_5_4(v8, "modelOutputs");
  (v6)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  *v11 = "version";
  *(v11 + 1) = 7;
  v12 = OUTLINED_FUNCTION_41(v11);
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v14 = OUTLINED_FUNCTION_5_4(v13, "trialDisambiguationRate");
  (v6)(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v16 = OUTLINED_FUNCTION_5_4(v15, "trialConfirmationRate");
  (v6)(v16);
  v17 = OUTLINED_FUNCTION_44(5 * v4);
  *v18 = 6;
  v19 = OUTLINED_FUNCTION_5_4(v17, "riskProfile");
  (v6)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v0 + 6 * v4);
  *v21 = 7;
  v22 = OUTLINED_FUNCTION_5_4(v20, "parameterType");
  (v6)(v22);
  v23 = OUTLINED_FUNCTION_44(7 * v4);
  *v24 = 8;
  *v23 = "alreadyPrompted";
  v23[1] = 15;
  v25 = OUTLINED_FUNCTION_41(v23);
  (v6)(v25);
  v26 = OUTLINED_FUNCTION_3_1(&v0[v4]);
  *v27 = 9;
  *v26 = "callerComponent";
  v26[1] = 15;
  v28 = OUTLINED_FUNCTION_41(v26);
  (v6)(v28);
  v29 = OUTLINED_FUNCTION_44(9 * v4);
  *v30 = 10;
  *v29 = "candidateHistoryCount";
  v29[1] = 21;
  v31 = OUTLINED_FUNCTION_41(v29);
  (v6)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v0 + 10 * v4);
  *v33 = 11;
  v34 = OUTLINED_FUNCTION_5_4(v32, "tupleHistoryCount");
  (v6)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v0 + 11 * v4);
  *v36 = 12;
  *v35 = "candidateRisk";
  v35[1] = 13;
  v37 = OUTLINED_FUNCTION_41(v35);
  (v6)(v37);
  v38 = OUTLINED_FUNCTION_3_1(v0 + 12 * v4);
  *v39 = 13;
  *v38 = "searchToolRanks";
  v38[1] = 15;
  v40 = OUTLINED_FUNCTION_41(v38);
  (v6)(v40);
  v41 = OUTLINED_FUNCTION_3_1(v0 + 13 * v4);
  *v42 = 14;
  *v41 = "bucketedDistance";
  v41[1] = 16;
  v43 = OUTLINED_FUNCTION_41(v41);
  (v6)(v43);
  v44 = OUTLINED_FUNCTION_3_1(v0 + 14 * v4);
  *v45 = 15;
  v46 = OUTLINED_FUNCTION_5_4(v44, "intervalUntilStartTime");
  (v6)(v46);
  v47 = OUTLINED_FUNCTION_44(15 * v4);
  *v48 = 16;
  v49 = OUTLINED_FUNCTION_5_4(v47, "parameterSubType");
  (v6)(v49);
  v50 = OUTLINED_FUNCTION_3_1(&v0[2 * v4]);
  *v51 = 17;
  *v50 = "signalToNoiseRatio";
  v50[1] = 18;
  v52 = OUTLINED_FUNCTION_41(v50);
  (v6)(v52);
  v53 = OUTLINED_FUNCTION_44(17 * v4);
  *v54 = 18;
  *v53 = "loudnessLevel";
  v53[1] = 13;
  v55 = OUTLINED_FUNCTION_41(v53);
  (v6)(v55);
  v56 = OUTLINED_FUNCTION_3_1(v0 + 18 * v4);
  *v57 = 19;
  *v56 = "scores";
  v56[1] = 6;
  v58 = OUTLINED_FUNCTION_41(v56);
  (v6)(v58);
  v59 = OUTLINED_FUNCTION_3_1(v0 + 19 * v4);
  *v60 = 20;
  *v59 = "jrEntitySimilarityScores";
  *(v59 + 8) = 24;
  *(v59 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193555910()
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

    switch(v4)
    {
      case 1:
      case 2:
      case 3:
      case 6:
        sub_193498018();
        continue;
      case 4:
      case 5:
      case 17:
      case 18:
        OUTLINED_FUNCTION_113();
        sub_19393C160();
        continue;
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_113();
        sub_19393C120();
        continue;
      case 10:
        v8 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
        v6 = v1 + 216;
        v7 = v3;
        v9 = v2;
        v10 = &off_1F07CA998;
        goto LABEL_18;
      case 11:
        v6 = v1 + 224;
        v7 = v3;
        v8 = &type metadata for IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount;
        v9 = v2;
        v10 = &off_1F07CA9C8;
        goto LABEL_18;
      case 12:
        v6 = v1 + 232;
        v7 = v3;
        v8 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateRiskLevel;
        v9 = v2;
        v10 = &off_1F07CA518;
        goto LABEL_18;
      case 13:
        v6 = v1 + 240;
        v7 = v3;
        v8 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRCandidateSearchToolRank;
        v9 = v2;
        v10 = &off_1F07CA548;
        goto LABEL_18;
      case 14:
        v11 = v1 + 248;
        v12 = v3;
        v13 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRBucketedDistance;
        v14 = v2;
        v15 = &off_1F07CA348;
        goto LABEL_13;
      case 15:
        v6 = v1 + 256;
        v7 = v3;
        v8 = &type metadata for IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime;
        v9 = v2;
        v10 = &off_1F07CA578;
        goto LABEL_18;
      case 16:
        v11 = v1 + 264;
        v12 = v3;
        v13 = &type metadata for IntelligenceFlowJointResolverTelemetry.JRParameterSubType;
        v14 = v2;
        v15 = &off_1F07CA370;
LABEL_13:
        sub_1934984D4(v11, v12, v13, v14, v15);
        continue;
      case 19:
        OUTLINED_FUNCTION_68_6();
        goto LABEL_18;
      case 20:
        OUTLINED_FUNCTION_140_4();
LABEL_18:
        sub_193498238(v6, v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193555B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *v3;
  v7 = v3[15];
  v8 = v3[20];
  v9 = *(v3 + 172);
  v10 = *(v3 + 180);
  v77 = v3[23];
  v78 = v3[24];
  v79 = v3[25];
  v80 = v3[26];
  v76 = v3[27];
  v83 = v3[28];
  v74 = v3[30];
  v75 = v3[29];
  v72 = v3[32];
  v73 = v3[31];
  v71 = v3[33];
  v69 = *(v3 + 284);
  v70 = *(v3 + 276);
  v67 = v3[37];
  v68 = v3[36];
  if (v6)
  {
    *&__dst[8] = *(v3 + 1);
    *&__dst[24] = *(v3 + 3);
    *&__dst[40] = v3[5];
    *__dst = v6;
    v11 = a2;
    v12 = a3;
    sub_193447600();
    if (v4)
    {
      return;
    }
  }

  else
  {
    v11 = a2;
    v12 = a3;
    if (v4)
    {
      return;
    }
  }

  if (v7)
  {
    memcpy(__dst, v3 + 6, sizeof(__dst));
    v82 = v7;
    sub_193447600();
  }

  v13 = v12;
  if (v8 == 1)
  {
    v14 = v11;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = *(v3 + 9);
    *__dst = *(v3 + 8);
    *&__dst[16] = v15;
    *&__dst[32] = v8;
    v14 = v11;
    v16 = v13;
    sub_193447600();
    v13 = v16;
    if (v9)
    {
LABEL_9:
      if (v10)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_149_6(4);
  v5 = v4;
  v13 = v9;
  if ((v10 & 1) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_149_6(5);
    v5 = v4;
    v13 = v9;
  }

LABEL_14:
  v17 = v83;
  if (v77)
  {
    *__dst = v77;
    OUTLINED_FUNCTION_35_14();
    sub_193447600();
    v5 = v4;
    v13 = v9;
  }

  if (*(v78 + 16))
  {
    OUTLINED_FUNCTION_86_7(v78, 7);
    v5 = v4;
    v13 = v9;
  }

  if (*(v79 + 16))
  {
    OUTLINED_FUNCTION_86_7(v79, 8);
    v5 = v4;
    v13 = v9;
  }

  if (*(v80 + 16))
  {
    OUTLINED_FUNCTION_86_7(v80, 9);
    v5 = v4;
  }

  else
  {
    v9 = v13;
  }

  if (!*(v76 + 16) || (v18 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0), v4 = v5, sub_193451CFC(v76, 10, v14, v18, v9, &off_1F07CA998), !v5))
  {
    if (!*(v17 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193451CFC(v19, v20, v21, v22, v23, v24), (v5 = v4) == 0))
    {
      if (!*(v75 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193451CFC(v25, v26, v27, v28, v29, v30), (v5 = v4) == 0))
      {
        if (!*(v74 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193451CFC(v31, v32, v33, v34, v35, v36), (v5 = v4) == 0))
        {
          if (!*(v73 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193498B44(v37, v38, v39, v40, v41, v42), (v5 = v4) == 0))
          {
            if (!*(v72 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193451CFC(v43, v44, v45, v46, v47, v48), (v5 = v4) == 0))
            {
              if (!*(v71 + 16) || (OUTLINED_FUNCTION_35_14(), sub_193498B44(v49, v50, v51, v52, v53, v54), (v5 = v4) == 0))
              {
                if ((v70 & 1) != 0 || (v4 = v5, sub_19393C340(), !v5))
                {
                  if ((v69 & 1) != 0 || (v4 = v5, sub_19393C340(), !v5))
                  {
                    if (!*(v68 + 16) || (OUTLINED_FUNCTION_78_1(), sub_193451CFC(v55, v56, v57, v58, v59, v60), !v4))
                    {
                      if (*(v67 + 16))
                      {
                        OUTLINED_FUNCTION_78_1();
                        sub_193451CFC(v61, v62, v63, v64, v65, v66);
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

uint64_t sub_193556100()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_70_6();
    return sub_19393C390();
  }

  return result;
}

void sub_1935561DC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9EA8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("candidateBooleanMask");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "candidateTimeIntervalMatrix");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193556310()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_96_9();
LABEL_8:
      sub_193498238(v3, v4, v5, v6, v7);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_94_8();
      goto LABEL_8;
    }
  }
}

uint64_t sub_19355639C()
{
  result = *v0;
  v3 = v0[1];
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_106();
    result = sub_193451CFC(v4, v5, v6, v7, v8, v9);
  }

  if (!v1)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_106();
      return sub_193451CFC(v10, v11, v12, v13, v14, v15);
    }
  }

  return result;
}

uint64_t sub_1935564AC()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_70_6();
    return sub_19393C2D0();
  }

  return result;
}

uint64_t sub_19355659C()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_70_6();
    return sub_19393C310();
  }

  return result;
}

void sub_1935566C0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9F20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_145_3("candidateA");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_52();
  *v10 = v1;
  *v9 = "candidateB";
  *(v9 + 8) = 10;
  *(v9 + 16) = v1;
  v7();
  v11 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  *v11 = "similarityScore";
  *(v11 + 1) = 15;
  v11[16] = v1;
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19355683C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v3 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
        OUTLINED_FUNCTION_8_2(*(v3 + 24));
        sub_19393C160();
        break;
      case 2:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
        type metadata accessor for AIML.UUID(0);
LABEL_9:
        OUTLINED_FUNCTION_23_22();
        sub_193498018();
        break;
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_82_7();
        goto LABEL_9;
    }
  }
}

void sub_1935568FC()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_193556990();
  if (!v0)
  {
    OUTLINED_FUNCTION_79();
    sub_193556AA4();
    type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
    OUTLINED_FUNCTION_147_3();
    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C340();
    }
  }
}

void sub_193556990()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v3, v4);
  v5 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_23();
  sub_1934486F8(v2, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_12_12(v1, 1);
    OUTLINED_FUNCTION_80_8();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193556AA4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_87_8(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_23();
  v11 = v2(0);
  OUTLINED_FUNCTION_150_4(*(v11 + 20));
  OUTLINED_FUNCTION_25_0();
  if (v12)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_137_3();
    sub_193559254(v1, type metadata accessor for AIML.UUID);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193556C34()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9F38);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_1939526E0);
  *v0 = 1;
  OUTLINED_FUNCTION_83_0("candidateTuplesShapes");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v10 = v1;
  v11 = OUTLINED_FUNCTION_5_4(v9, "deviceContextShapes");
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v13 = OUTLINED_FUNCTION_5_4(v12, "candidateInteractionsShapes");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v15 = OUTLINED_FUNCTION_5_4(v14, "tupleInteractionsCandidatesShapes");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_19_2((v0 + 4 * v4));
  v17 = OUTLINED_FUNCTION_5_4(v16, "tupleInteractionsAlignmentShapes");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  *v18 = "similarityScoresShapes";
  *(v18 + 8) = 22;
  *(v18 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193556E24()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
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
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C1C0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193556EC0()
{
  result = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  if (*(*v0 + 16))
  {
    result = OUTLINED_FUNCTION_136_4(result, 1);
  }

  if (!v1)
  {
    if (*(v3 + 16))
    {
      result = OUTLINED_FUNCTION_136_4(v3, 2);
    }

    if (*(v5 + 16))
    {
      result = OUTLINED_FUNCTION_136_4(v5, 3);
    }

    if (*(v4 + 16))
    {
      result = OUTLINED_FUNCTION_136_4(v4, 4);
    }

    if (*(v7 + 16))
    {
      result = OUTLINED_FUNCTION_136_4(v7, 5);
    }

    if (*(v6 + 16))
    {
      return OUTLINED_FUNCTION_136_4(v6, 6);
    }
  }

  return result;
}

void sub_193557000()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9F50);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v4, xmmword_193951270);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("action");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "candidates");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "ranking");
  v6(v11);
  OUTLINED_FUNCTION_45_2(3 * v3);
  OUTLINED_FUNCTION_34_8(v12);
  v14 = OUTLINED_FUNCTION_0_0(v13, "jrAnonymizedHistoryAndContext");
  v6(v14);
  v15 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v16 = OUTLINED_FUNCTION_0_0(v15, "didJRForcePrompt");
  v6(v16);
  v17 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v18 = 6;
  v19 = OUTLINED_FUNCTION_0_0(v17, "modelDiagnosticSignals");
  v6(v19);
  v20 = OUTLINED_FUNCTION_3_1(v0 + 6 * v3);
  *v21 = 7;
  v22 = OUTLINED_FUNCTION_0_0(v20, "shadowAction");
  v6(v22);
  v23 = OUTLINED_FUNCTION_45_2(7 * v3);
  *v24 = 8;
  v25 = OUTLINED_FUNCTION_28_4(v23, 16);
  v6(v25);
  v26 = OUTLINED_FUNCTION_3_1(v0 + 8 * v3);
  *v27 = 9;
  v28 = OUTLINED_FUNCTION_0_0(v26, "userHistory");
  v6(v28);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193557264()
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

    switch(v4)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
        sub_193498018();
        break;
      case 5:
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
        break;
      case 9:
        v6 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
        sub_193498238(v1 + 72, v3, v6, v2, &off_1F07CA938);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935573E0()
{
  v1 = v0;
  OUTLINED_FUNCTION_22_0();
  v3 = *(v2 + 8);
  v15 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 48);
  v6 = *(v2 + 56);
  v14 = *(v2 + 64);
  v16 = *(v2 + 72);
  if (*v2)
  {
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    v1 = v0;
  }

  if (!v1)
  {
    if (!v3 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
    {
      if (v15 == 1 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
      {
        if (!v4 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
        {
          if (v5 == 2 || (OUTLINED_FUNCTION_15_11(), sub_19393C2E0(), !v0))
          {
            if (!v7 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
            {
              if (!v6 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
              {
                if (!v14 || (OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
                {
                  if (*(v16 + 16))
                  {
                    type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
                    OUTLINED_FUNCTION_78_1();
                    sub_193451CFC(v8, v9, v10, v11, v12, v13);
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

void sub_193557754()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9FB0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_47_4();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("candidateIds");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "contextSimilarityScore");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "uflScore");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935578B8()
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
      sub_19393C160();
    }

    else if (result == 1)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_23_22();
      sub_193498238(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

void sub_193557950()
{
  OUTLINED_FUNCTION_88_7();
  v4 = *v1;
  v5 = v1[12];
  v6 = v1[20];
  if (*(*v1 + 16))
  {
    v7 = type metadata accessor for AIML.UUID(0);
    sub_193451CFC(v4, 1, v3, v7, v2, &off_1F07C4010);
  }

  if (!v0)
  {
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C340();
    }

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C340();
    }
  }
}

uint64_t sub_193557AB4()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_193557B68()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9FE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34_5(v2, xmmword_19394FBE0);
  *v0 = 101;
  OUTLINED_FUNCTION_69_0("rankingScoreMatrix");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  v4(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = 102;
  v8 = OUTLINED_FUNCTION_48(v6, "rankingCandidateMatrix");
  v4(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193557CAC()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 102)
    {
      OUTLINED_FUNCTION_96_9();
LABEL_8:
      sub_193498018();
    }

    else if (v1 == 101)
    {
      OUTLINED_FUNCTION_94_8();
      goto LABEL_8;
    }
  }
}

void sub_193557D38()
{
  v2 = v0[1];
  if (*v0)
  {
    OUTLINED_FUNCTION_106();
    sub_193447600();
  }

  if (!v1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }
  }
}

uint64_t sub_193557E4C()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_193557F18()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_193558028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v13 = a4(0);
      sub_193498238(v5, a2, v13, a3, a5);
    }
  }

  return result;
}

uint64_t sub_1935580D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = *v5;
  if (*(*v5 + 16))
  {
    v10 = a4(0);
    return sub_193451CFC(v6, 1, a2, v10, a3, a5);
  }

  return result;
}

uint64_t sub_1935581EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_193498238(v5, a2, a4, a3, a5);
    }
  }

  return result;
}

uint64_t sub_193558268()
{
  result = OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_77_9();
    return sub_193451CFC(v2, v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_193558334(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

void sub_1935583DC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA088);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("toolID");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "historicalContext");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "historicalFeedback");
  v6(v11);
  OUTLINED_FUNCTION_45_2(3 * v3);
  OUTLINED_FUNCTION_34_8(v12);
  v14 = OUTLINED_FUNCTION_0_0(v13, "historicalLocationContext");
  v6(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193558564()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_82_7();
        OUTLINED_FUNCTION_23_22();
        sub_193498018();
        break;
      case 2:
        v8 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
        OUTLINED_FUNCTION_8_2(*(v8 + 20));
        sub_19393C120();
        break;
      case 3:
        v3 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
        OUTLINED_FUNCTION_8_2(*(v3 + 24));
        sub_19393C160();
        break;
      case 4:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
        v4 = OUTLINED_FUNCTION_111();
        sub_193498238(v4, v5, v6, v7, &off_1F07CA968);
        break;
      default:
        continue;
    }
  }
}