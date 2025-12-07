uint64_t static _AssistantUniqueEntityExample.ParameterValueBuilder.buildExpression(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00C8, &qword_18F5549C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18F53F800;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v4;
}

uint64_t static _AssistantUniqueEntityExample.ParameterValueBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 48);
  for (i = MEMORY[0x1E69E7CC0]; v1; --v1)
  {
    v5 = *(v2 - 2);
    v4 = *(v2 - 1);
    v6 = *v2;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_14();
      sub_18F1692C0();
      i = v9;
    }

    v7 = *(i + 16);
    if (v7 >= *(i + 24) >> 1)
    {
      OUTLINED_FUNCTION_14();
      sub_18F1692C0();
      i = v10;
    }

    *(i + 16) = v7 + 1;
    v8 = (i + 24 * v7);
    v8[4] = v5;
    v8[5] = v4;
    v8[6] = v6;
    v2 += 3;
  }

  return i;
}

void static _AssistantUniqueEntityExample.ParameterValueBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_14();
        sub_18F1692C0();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        OUTLINED_FUNCTION_2_67();
        if (v8 != v9)
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_5_45();

        if (v5)
        {
          v10 = *(v3 + 16);
          v9 = __OFADD__(v10, v5);
          v11 = v10 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v11;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t static _AssistantUniqueEntityExample.StringValueBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038, &qword_18F54C1C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18F53F800;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v4;
}

uint64_t static _AssistantUniqueEntityExample.StringValueBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 40);
  for (i = MEMORY[0x1E69E7CC0]; v1; --v1)
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_14();
      sub_18F141818();
      i = v8;
    }

    v6 = *(i + 16);
    if (v6 >= *(i + 24) >> 1)
    {
      OUTLINED_FUNCTION_14();
      sub_18F141818();
      i = v9;
    }

    *(i + 16) = v6 + 1;
    v7 = i + 16 * v6;
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;
    v2 += 2;
  }

  return i;
}

void static _AssistantUniqueEntityExample.StringValueBuilder.buildBlock(_:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    while (1)
    {
      OUTLINED_FUNCTION_7_41();
      if (v7)
      {
        break;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v3 > *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_14();
        sub_18F141818();
        v6 = v8;
      }

      if (*(v2 + 16))
      {
        OUTLINED_FUNCTION_2_67();
        if (v9 != v7)
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_5_45();

        if (v1)
        {
          v10 = *(v6 + 16);
          v7 = __OFADD__(v10, v1);
          v11 = v10 + v1;
          if (v7)
          {
            goto LABEL_17;
          }

          *(v6 + 16) = v11;
        }
      }

      else
      {

        if (v1)
        {
          goto LABEL_15;
        }
      }

      v5 += 8;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t static _AssistantUniqueEntityExample.PhraseBuilder.buildExpression(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = type metadata accessor for _AssistantUniqueEntityExample.Phrase(255, a2, a3, a4);
  sub_18F522CAC();
  swift_allocObject();
  v8 = sub_18F521CDC();
  *v9 = v4;
  v9[1] = v5;
  v9[2] = v6;
  v10 = sub_18F129FD4(v8, v7);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v10;
}

uint64_t static _AssistantUniqueEntityExample.PhraseBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _AssistantUniqueEntityExample.Phrase(255, a2, a3, a4);
  sub_18F521DBC();
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_53();
  return sub_18F521B3C();
}

{
  type metadata accessor for _AssistantUniqueEntityExample.Phrase(255, a2, a3, a4);
  sub_18F521DBC();
  sub_18F521DBC();
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_53();
  return sub_18F521BEC();
}

uint64_t static _AssistantUniqueEntityExample.PhraseBuilder.buildBlock()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _AssistantUniqueEntityExample.Phrase(0, a1, a2, a4);

  return sub_18F521D2C();
}

uint64_t static _AssistantUniqueEntityExample.Builder.buildExpression(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00C0, &unk_18F53FE80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18F53F800;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v3;
}

void static _AssistantUniqueEntityExample.Builder.buildBlock(_:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    while (1)
    {
      OUTLINED_FUNCTION_7_41();
      if (v7)
      {
        break;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v3 > *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_14();
        sub_18F169390();
        v6 = v8;
      }

      if (*(v2 + 16))
      {
        OUTLINED_FUNCTION_2_67();
        if (v9 != v7)
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_5_45();

        if (v1)
        {
          v10 = *(v6 + 16);
          v7 = __OFADD__(v10, v1);
          v11 = v10 + v1;
          if (v7)
          {
            goto LABEL_17;
          }

          *(v6 + 16) = v11;
        }
      }

      else
      {

        if (v1)
        {
          goto LABEL_15;
        }
      }

      v5 += 8;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

_BYTE *sub_18F2F0588(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F2F067C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t *a4@<X2>)
{
  sub_18F2F9C00(a2, a3, a4);
  v6 = [objc_opt_self() foregroundContinuableProtocol];
  OUTLINED_FUNCTION_3_50(v6, v7, v8, v9, v10, v11, v12, v13, v21, v22, v23, v24, v25, v26);
  v15 = v14;

  if (v15)
  {
    v18 = 8;
  }

  else
  {
    result = OUTLINED_FUNCTION_4_41(result, v17, &protocol descriptor for OpenIntent);
    if (result && ((result = OUTLINED_FUNCTION_4_41(result, v19, &protocol descriptor for URLRepresentableIntent)) != 0 || (result = OUTLINED_FUNCTION_4_41(0, v20, &protocol descriptor for _URLRepresentableIntent)) != 0))
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }
  }

  *a1 = v18;
  return result;
}

uint64_t sub_18F2F0740@<X0>(void (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  a1();
  v4 = [objc_opt_self() foregroundContinuableProtocol];
  OUTLINED_FUNCTION_3_50(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, v21, v22, v23, v24);
  v13 = v12;

  if (v13)
  {
    v16 = 8;
  }

  else
  {
    result = OUTLINED_FUNCTION_4_41(result, v15, &protocol descriptor for OpenIntent);
    if (result)
    {
      result = OUTLINED_FUNCTION_4_41(result, v17, &protocol descriptor for URLRepresentableIntent);
      if (!result)
      {
        result = OUTLINED_FUNCTION_4_41(0, v18, &protocol descriptor for _URLRepresentableIntent);
      }
    }

    v16 = 1;
  }

  *a2 = v16;
  return result;
}

uint64_t sub_18F2F07FC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t *a4@<X2>)
{
  sub_18F2F9C00(a2, a3, a4);
  v6 = [objc_opt_self() foregroundContinuableProtocol];
  OUTLINED_FUNCTION_3_50(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20, v21, v22, v23, v24);
  v15 = v14;

  if (v15)
  {
    v18 = 8;
  }

  else
  {
    result = OUTLINED_FUNCTION_4_41(result, v17, &protocol descriptor for OpenIntent);
    v18 = 1;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_18F2F0894@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t *a4@<X2>)
{
  sub_18F2F9C00(a2, a3, a4);
  v6 = [objc_opt_self() foregroundContinuableProtocol];
  OUTLINED_FUNCTION_3_50(v6, v7, v8, v9, v10, v11, v12, v13, v21, v22, v23, v24, v25, v26);
  v15 = v14;

  if (v15)
  {
    v18 = 8;
  }

  else
  {
    result = OUTLINED_FUNCTION_4_41(result, v17, &protocol descriptor for OpenIntent);
    if (result)
    {
      result = OUTLINED_FUNCTION_4_41(result, v19, &protocol descriptor for URLRepresentableIntent);
      if (!result)
      {
        result = OUTLINED_FUNCTION_4_41(0, v20, &protocol descriptor for _URLRepresentableIntent);
      }
    }

    v18 = 1;
  }

  *a1 = v18;
  return result;
}

uint64_t IntentSystemContext.currentMode.getter@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for IntentContext(0);
  OUTLINED_FUNCTION_20_26();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_50();
  static IntentContext.current.getter(v1);
  sub_18F21964C(v5);
  result = sub_18F178EA4(v1);
  *a1 = v5[0] & 1;
  return result;
}

BOOL IntentModes.Current.canContinueInForeground.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  type metadata accessor for IntentContext(0);
  OUTLINED_FUNCTION_20_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_50();
  static IntentContext.current.getter(v4);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v0);
  sub_18F2DEA04(v4, v1);
  v6 = *(v1 + *(v0 + 60));
  v7 = *(v1 + 24);
  sub_18F178EA4(v1);
  result = 0;
  if (v7 != 4)
  {
    if (v6 == 3)
    {
      return v7 == 3;
    }

    else if ((v6 & 8) != 0)
    {
      return 1;
    }

    else
    {
      return (v6 >> 2) & 1;
    }
  }

  return result;
}

BOOL sub_18F2F0BBC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

BOOL sub_18F2F0C1C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_18F2F0CCC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

uint64_t IntentModes.ForegroundMode.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

AppIntents::IntentModes sub_18F2F0ECC@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = IntentModes.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18F2F0F0C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentModes.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t IntentModes.Current.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F2F1004()
{
  v46 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for AssistantIntent))
  {
    v0 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for _AssistantAppIntent))
  {
    v1 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for _AssistantInvocableIntent))
  {
    v2 = [objc_opt_self() assistantInvocableIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for CancelIntent))
  {
    v3 = [objc_opt_self() cancelProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for ChangeBinarySettingIntent))
  {
    v4 = [objc_opt_self() changeBinarySettingSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for CloseIntent))
  {
    v5 = [objc_opt_self() closeEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v6 = objc_opt_self();
  [v6 copySystemProtocol];
  MEMORY[0x193ADB260]();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  sub_18F521D6C();
  v7 = v46;
  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for CreateIntent))
  {
    v8 = [v6 createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for _CreateIntent))
  {
    v9 = [v6 createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for DeleteIntent))
  {
    v10 = [v6 deleteEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  v45 = &type metadata for _CopyIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD5CB0, &qword_18F555140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C20, &unk_18F55B340);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v11 = [v6 duplicateEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for FavoriteIntent))
  {
    v12 = [v6 favoriteEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  v45 = &type metadata for _CopyIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C28, &qword_18F5550C8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v13 = [v6 moveSpatialProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  v45 = &type metadata for _CopyIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C30, &unk_18F55B350);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v14 = [v6 navigateSequentiallyProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  v45 = &type metadata for _CopyIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8, &qword_18F54F5F8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v15 = [v6 openEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for _PreviewIntent))
  {
    v16 = [v6 previewEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for _EnterMarkupIntent))
  {
    v17 = [v6 enterMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for PutInContainerIntent))
  {
    v18 = [v6 putEntityInContainerProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for ResizeIntent))
  {
    v19 = [v6 resizeProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  v45 = &type metadata for _CopyIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C38, &unk_18F55B360);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v20 = [v6 saveEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for ScrollIntent))
  {
    v21 = [v6 scrollProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  v45 = &type metadata for _CopyIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C40, &qword_18F5550D0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v22 = [v6 searchSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for ZoomIntent))
  {
    v23 = [v6 zoomProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for WidgetConfigurationIntent))
  {
    v24 = [v6 widgetConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for SetFocusFilterIntent))
  {
    v25 = [v6 focusConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for __CopyIntent))
  {
    [v6 copyEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for CutIntent))
  {
    v26 = [v6 cutEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for StartWorkoutIntent))
  {
    v27 = [v6 startWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for PauseWorkoutIntent))
  {
    v28 = [v6 pauseWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for ResumeWorkoutIntent))
  {
    v29 = [v6 resumeWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for ProgressReportingIntent))
  {
    v30 = [v6 progressReportingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for LiveActivityStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for LiveActivityIntent))
  {
    v31 = [v6 sessionStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for SnippetIntent))
  {
    v32 = [v6 snippetProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for AudioStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for AudioPlaybackIntent))
  {
    v33 = [v6 audioStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for AudioRecordingIntent))
  {
    v34 = [v6 audioRecordingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for ManagedDestinationIntent))
  {
    v35 = [v6 requiresMDMChecksProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for CameraCaptureIntent))
  {
    v36 = [v6 cameraCaptureProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for StaccatoLongPressIntent))
  {
    v37 = [v6 staccatoLongPressProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for ToggleIntent))
  {
    v38 = [v6 toggleProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for PushToTalkTransmissionIntent))
  {
    v39 = [v6 pushToTalkTransmissionProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for UndoableIntent))
  {
    v40 = [v6 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for _UndoableIntent))
  {
    v41 = [v6 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v7 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CopyIntent, &type metadata for _CopyIntent, &protocol descriptor for ForegroundContinuableIntent))
  {
    v42 = [v6 foregroundContinuableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    return v46;
  }

  return v7;
}

uint64_t sub_18F2F2768()
{
  v47 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for AssistantIntent))
  {
    v0 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for _AssistantAppIntent))
  {
    v1 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for _AssistantInvocableIntent))
  {
    v2 = [objc_opt_self() assistantInvocableIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for CancelIntent))
  {
    v3 = [objc_opt_self() cancelProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for ChangeBinarySettingIntent))
  {
    v4 = [objc_opt_self() changeBinarySettingSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for CloseIntent))
  {
    v5 = [objc_opt_self() closeEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for CreateIntent))
  {
    v6 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for _CreateIntent))
  {
    v7 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v8 = objc_opt_self();
  v9 = [v8 cutSystemProtocol];
  MEMORY[0x193ADB260]();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  sub_18F521D6C();
  v10 = v47;
  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for DeleteIntent))
  {
    v11 = [v8 deleteEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  v46 = &type metadata for _CutIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C90, &qword_18F555120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C20, &unk_18F55B340);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v12 = [v8 duplicateEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for FavoriteIntent))
  {
    v13 = [v8 favoriteEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  v46 = &type metadata for _CutIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C28, &qword_18F5550C8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v14 = [v8 moveSpatialProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  v46 = &type metadata for _CutIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C30, &unk_18F55B350);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v15 = [v8 navigateSequentiallyProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  v46 = &type metadata for _CutIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8, &qword_18F54F5F8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v16 = [v8 openEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for _PreviewIntent))
  {
    v17 = [v8 previewEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for _EnterMarkupIntent))
  {
    v18 = [v8 enterMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for PutInContainerIntent))
  {
    v19 = [v8 putEntityInContainerProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for ResizeIntent))
  {
    v20 = [v8 resizeProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  v46 = &type metadata for _CutIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C38, &unk_18F55B360);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v21 = [v8 saveEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for ScrollIntent))
  {
    v22 = [v8 scrollProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  v46 = &type metadata for _CutIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C40, &qword_18F5550D0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v23 = [v8 searchSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for ZoomIntent))
  {
    v24 = [v8 zoomProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for WidgetConfigurationIntent))
  {
    v25 = [v8 widgetConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for SetFocusFilterIntent))
  {
    v26 = [v8 focusConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for __CopyIntent))
  {
    [v8 copyEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for CutIntent))
  {
    v27 = [v8 cutEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for StartWorkoutIntent))
  {
    v28 = [v8 startWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for PauseWorkoutIntent))
  {
    v29 = [v8 pauseWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for ResumeWorkoutIntent))
  {
    v30 = [v8 resumeWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for ProgressReportingIntent))
  {
    v31 = [v8 progressReportingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for LiveActivityStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for LiveActivityIntent))
  {
    v32 = [v8 sessionStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for SnippetIntent))
  {
    v33 = [v8 snippetProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for AudioStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for AudioPlaybackIntent))
  {
    v34 = [v8 audioStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for AudioRecordingIntent))
  {
    v35 = [v8 audioRecordingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for ManagedDestinationIntent))
  {
    v36 = [v8 requiresMDMChecksProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for CameraCaptureIntent))
  {
    v37 = [v8 cameraCaptureProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for StaccatoLongPressIntent))
  {
    v38 = [v8 staccatoLongPressProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for ToggleIntent))
  {
    v39 = [v8 toggleProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for PushToTalkTransmissionIntent))
  {
    v40 = [v8 pushToTalkTransmissionProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for UndoableIntent))
  {
    v41 = [v8 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for _UndoableIntent))
  {
    v42 = [v8 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v10 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _CutIntent, &type metadata for _CutIntent, &protocol descriptor for ForegroundContinuableIntent))
  {
    v43 = [v8 foregroundContinuableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    return v47;
  }

  return v10;
}

uint64_t sub_18F2F3ED4()
{
  v47 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for AssistantIntent))
  {
    v0 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for _AssistantAppIntent))
  {
    v1 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for _AssistantInvocableIntent))
  {
    v2 = [objc_opt_self() assistantInvocableIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for CancelIntent))
  {
    v3 = [objc_opt_self() cancelProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for ChangeBinarySettingIntent))
  {
    v4 = [objc_opt_self() changeBinarySettingSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for CloseIntent))
  {
    v5 = [objc_opt_self() closeEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for CreateIntent))
  {
    v6 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for _CreateIntent))
  {
    v7 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for DeleteIntent))
  {
    v8 = [objc_opt_self() deleteEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _UndoIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5CA8, &qword_18F555138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C20, &unk_18F55B340);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v9 = [objc_opt_self() duplicateEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for FavoriteIntent))
  {
    v10 = [objc_opt_self() favoriteEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _UndoIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C28, &qword_18F5550C8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v11 = [objc_opt_self() moveSpatialProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _UndoIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C30, &unk_18F55B350);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v12 = [objc_opt_self() navigateSequentiallyProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _UndoIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8, &qword_18F54F5F8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v13 = [objc_opt_self() openEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for _PreviewIntent))
  {
    v14 = [objc_opt_self() previewEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for _EnterMarkupIntent))
  {
    v15 = [objc_opt_self() enterMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for PutInContainerIntent))
  {
    v16 = [objc_opt_self() putEntityInContainerProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for ResizeIntent))
  {
    v17 = [objc_opt_self() resizeProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _UndoIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C38, &unk_18F55B360);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v18 = [objc_opt_self() saveEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for ScrollIntent))
  {
    v19 = [objc_opt_self() scrollProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _UndoIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C40, &qword_18F5550D0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v20 = [objc_opt_self() searchSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v21 = objc_opt_self();
  v22 = [v21 undoSystemProtocol];
  MEMORY[0x193ADB260]();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  sub_18F521D6C();
  v23 = v47;
  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for ZoomIntent))
  {
    v24 = [v21 zoomProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for WidgetConfigurationIntent))
  {
    v25 = [v21 widgetConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for SetFocusFilterIntent))
  {
    v26 = [v21 focusConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for __CopyIntent))
  {
    [v21 copyEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for CutIntent))
  {
    v27 = [v21 cutEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for StartWorkoutIntent))
  {
    v28 = [v21 startWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for PauseWorkoutIntent))
  {
    v29 = [v21 pauseWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for ResumeWorkoutIntent))
  {
    v30 = [v21 resumeWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for ProgressReportingIntent))
  {
    v31 = [v21 progressReportingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for LiveActivityStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for LiveActivityIntent))
  {
    v32 = [v21 sessionStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for SnippetIntent))
  {
    v33 = [v21 snippetProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for AudioStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for AudioPlaybackIntent))
  {
    v34 = [v21 audioStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for AudioRecordingIntent))
  {
    v35 = [v21 audioRecordingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for ManagedDestinationIntent))
  {
    v36 = [v21 requiresMDMChecksProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for CameraCaptureIntent))
  {
    v37 = [v21 cameraCaptureProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for StaccatoLongPressIntent))
  {
    v38 = [v21 staccatoLongPressProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for ToggleIntent))
  {
    v39 = [v21 toggleProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for PushToTalkTransmissionIntent))
  {
    v40 = [v21 pushToTalkTransmissionProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for UndoableIntent))
  {
    v41 = [v21 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for _UndoableIntent))
  {
    v42 = [v21 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v23 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _UndoIntent, &type metadata for _UndoIntent, &protocol descriptor for ForegroundContinuableIntent))
  {
    v43 = [v21 foregroundContinuableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    return v47;
  }

  return v23;
}

uint64_t sub_18F2F5640()
{
  v47 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for AssistantIntent))
  {
    v0 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for _AssistantAppIntent))
  {
    v1 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for _AssistantInvocableIntent))
  {
    v2 = [objc_opt_self() assistantInvocableIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for CancelIntent))
  {
    v3 = [objc_opt_self() cancelProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for ChangeBinarySettingIntent))
  {
    v4 = [objc_opt_self() changeBinarySettingSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for CloseIntent))
  {
    v5 = [objc_opt_self() closeEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for CreateIntent))
  {
    v6 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for _CreateIntent))
  {
    v7 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for DeleteIntent))
  {
    v8 = [objc_opt_self() deleteEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _PasteIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C78, &qword_18F555108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C20, &unk_18F55B340);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v9 = [objc_opt_self() duplicateEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for FavoriteIntent))
  {
    v10 = [objc_opt_self() favoriteEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _PasteIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C28, &qword_18F5550C8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v11 = [objc_opt_self() moveSpatialProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _PasteIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C30, &unk_18F55B350);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v12 = [objc_opt_self() navigateSequentiallyProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _PasteIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8, &qword_18F54F5F8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v13 = [objc_opt_self() openEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v14 = objc_opt_self();
  v15 = [v14 pasteSystemProtocol];
  MEMORY[0x193ADB260]();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  sub_18F521D6C();
  v16 = v47;
  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for _PreviewIntent))
  {
    v17 = [v14 previewEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for _EnterMarkupIntent))
  {
    v18 = [v14 enterMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for PutInContainerIntent))
  {
    v19 = [v14 putEntityInContainerProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for ResizeIntent))
  {
    v20 = [v14 resizeProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  v46 = &type metadata for _PasteIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C38, &unk_18F55B360);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v21 = [v14 saveEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for ScrollIntent))
  {
    v22 = [v14 scrollProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  v46 = &type metadata for _PasteIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C40, &qword_18F5550D0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v23 = [v14 searchSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for ZoomIntent))
  {
    v24 = [v14 zoomProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for WidgetConfigurationIntent))
  {
    v25 = [v14 widgetConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for SetFocusFilterIntent))
  {
    v26 = [v14 focusConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for __CopyIntent))
  {
    [v14 copyEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for CutIntent))
  {
    v27 = [v14 cutEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for StartWorkoutIntent))
  {
    v28 = [v14 startWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for PauseWorkoutIntent))
  {
    v29 = [v14 pauseWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for ResumeWorkoutIntent))
  {
    v30 = [v14 resumeWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for ProgressReportingIntent))
  {
    v31 = [v14 progressReportingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for LiveActivityStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for LiveActivityIntent))
  {
    v32 = [v14 sessionStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for SnippetIntent))
  {
    v33 = [v14 snippetProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for AudioStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for AudioPlaybackIntent))
  {
    v34 = [v14 audioStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for AudioRecordingIntent))
  {
    v35 = [v14 audioRecordingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for ManagedDestinationIntent))
  {
    v36 = [v14 requiresMDMChecksProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for CameraCaptureIntent))
  {
    v37 = [v14 cameraCaptureProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for StaccatoLongPressIntent))
  {
    v38 = [v14 staccatoLongPressProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for ToggleIntent))
  {
    v39 = [v14 toggleProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for PushToTalkTransmissionIntent))
  {
    v40 = [v14 pushToTalkTransmissionProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for UndoableIntent))
  {
    v41 = [v14 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for _UndoableIntent))
  {
    v42 = [v14 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v16 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _PasteIntent, &type metadata for _PasteIntent, &protocol descriptor for ForegroundContinuableIntent))
  {
    v43 = [v14 foregroundContinuableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    return v47;
  }

  return v16;
}

uint64_t sub_18F2F6DAC()
{
  v47 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for AssistantIntent))
  {
    v0 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for _AssistantAppIntent))
  {
    v1 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for _AssistantInvocableIntent))
  {
    v2 = [objc_opt_self() assistantInvocableIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for CancelIntent))
  {
    v3 = [objc_opt_self() cancelProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for ChangeBinarySettingIntent))
  {
    v4 = [objc_opt_self() changeBinarySettingSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for CloseIntent))
  {
    v5 = [objc_opt_self() closeEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for CreateIntent))
  {
    v6 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for _CreateIntent))
  {
    v7 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for DeleteIntent))
  {
    v8 = [objc_opt_self() deleteEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _ExitMarkupIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C88, &qword_18F555118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C20, &unk_18F55B340);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v9 = [objc_opt_self() duplicateEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for FavoriteIntent))
  {
    v10 = [objc_opt_self() favoriteEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _ExitMarkupIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C28, &qword_18F5550C8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v11 = [objc_opt_self() moveSpatialProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _ExitMarkupIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C30, &unk_18F55B350);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v12 = [objc_opt_self() navigateSequentiallyProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v46 = &type metadata for _ExitMarkupIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8, &qword_18F54F5F8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v13 = [objc_opt_self() openEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for _PreviewIntent))
  {
    v14 = [objc_opt_self() previewEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for _EnterMarkupIntent))
  {
    v15 = [objc_opt_self() enterMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v16 = objc_opt_self();
  v17 = [v16 exitMarkupProtocol];
  MEMORY[0x193ADB260]();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  sub_18F521D6C();
  v18 = v47;
  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for PutInContainerIntent))
  {
    v19 = [v16 putEntityInContainerProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for ResizeIntent))
  {
    v20 = [v16 resizeProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  v46 = &type metadata for _ExitMarkupIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C38, &unk_18F55B360);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v21 = [v16 saveEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for ScrollIntent))
  {
    v22 = [v16 scrollProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  v46 = &type metadata for _ExitMarkupIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C40, &qword_18F5550D0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v23 = [v16 searchSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for ZoomIntent))
  {
    v24 = [v16 zoomProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for WidgetConfigurationIntent))
  {
    v25 = [v16 widgetConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for SetFocusFilterIntent))
  {
    v26 = [v16 focusConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for __CopyIntent))
  {
    [v16 copyEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for CutIntent))
  {
    v27 = [v16 cutEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for StartWorkoutIntent))
  {
    v28 = [v16 startWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for PauseWorkoutIntent))
  {
    v29 = [v16 pauseWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for ResumeWorkoutIntent))
  {
    v30 = [v16 resumeWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for ProgressReportingIntent))
  {
    v31 = [v16 progressReportingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for LiveActivityStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for LiveActivityIntent))
  {
    v32 = [v16 sessionStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for SnippetIntent))
  {
    v33 = [v16 snippetProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for AudioStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for AudioPlaybackIntent))
  {
    v34 = [v16 audioStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for AudioRecordingIntent))
  {
    v35 = [v16 audioRecordingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for ManagedDestinationIntent))
  {
    v36 = [v16 requiresMDMChecksProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for CameraCaptureIntent))
  {
    v37 = [v16 cameraCaptureProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for StaccatoLongPressIntent))
  {
    v38 = [v16 staccatoLongPressProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for ToggleIntent))
  {
    v39 = [v16 toggleProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for PushToTalkTransmissionIntent))
  {
    v40 = [v16 pushToTalkTransmissionProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for UndoableIntent))
  {
    v41 = [v16 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for _UndoableIntent))
  {
    v42 = [v16 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v18 = v47;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for _ExitMarkupIntent, &type metadata for _ExitMarkupIntent, &protocol descriptor for ForegroundContinuableIntent))
  {
    v43 = [v16 foregroundContinuableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    return v47;
  }

  return v18;
}

uint64_t sub_18F2F8518()
{
  v46 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for AssistantIntent))
  {
    v0 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for _AssistantAppIntent))
  {
    v1 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for _AssistantInvocableIntent))
  {
    v2 = [objc_opt_self() assistantInvocableIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for CancelIntent))
  {
    v3 = [objc_opt_self() cancelProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for ChangeBinarySettingIntent))
  {
    v4 = [objc_opt_self() changeBinarySettingSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for CloseIntent))
  {
    v5 = [objc_opt_self() closeEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for CreateIntent))
  {
    v6 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for _CreateIntent))
  {
    v7 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for DeleteIntent))
  {
    v8 = [objc_opt_self() deleteEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v45 = &type metadata for EmptySnippetIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C80, &qword_18F555110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C20, &unk_18F55B340);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v9 = [objc_opt_self() duplicateEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for FavoriteIntent))
  {
    v10 = [objc_opt_self() favoriteEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v45 = &type metadata for EmptySnippetIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C28, &qword_18F5550C8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v11 = [objc_opt_self() moveSpatialProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v45 = &type metadata for EmptySnippetIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C30, &unk_18F55B350);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v12 = [objc_opt_self() navigateSequentiallyProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v45 = &type metadata for EmptySnippetIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8, &qword_18F54F5F8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v13 = [objc_opt_self() openEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for _PreviewIntent))
  {
    v14 = [objc_opt_self() previewEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for _EnterMarkupIntent))
  {
    v15 = [objc_opt_self() enterMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for PutInContainerIntent))
  {
    v16 = [objc_opt_self() putEntityInContainerProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for ResizeIntent))
  {
    v17 = [objc_opt_self() resizeProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v45 = &type metadata for EmptySnippetIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C38, &unk_18F55B360);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v18 = [objc_opt_self() saveEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for ScrollIntent))
  {
    v19 = [objc_opt_self() scrollProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v45 = &type metadata for EmptySnippetIntent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C40, &qword_18F5550D0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v20 = [objc_opt_self() searchSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for ZoomIntent))
  {
    v21 = [objc_opt_self() zoomProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for WidgetConfigurationIntent))
  {
    v22 = [objc_opt_self() widgetConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for SetFocusFilterIntent))
  {
    v23 = [objc_opt_self() focusConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for __CopyIntent))
  {
    [objc_opt_self() copyEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for CutIntent))
  {
    v24 = [objc_opt_self() cutEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for StartWorkoutIntent))
  {
    v25 = [objc_opt_self() startWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for PauseWorkoutIntent))
  {
    v26 = [objc_opt_self() pauseWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for ResumeWorkoutIntent))
  {
    v27 = [objc_opt_self() resumeWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for ProgressReportingIntent))
  {
    v28 = [objc_opt_self() progressReportingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for LiveActivityStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for LiveActivityIntent))
  {
    v29 = [objc_opt_self() sessionStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v30 = objc_opt_self();
  v31 = [v30 snippetProtocol];
  MEMORY[0x193ADB260]();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  sub_18F521D6C();
  v32 = v46;
  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for AudioStartingIntent) || dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for AudioPlaybackIntent))
  {
    v33 = [v30 audioStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v32 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for AudioRecordingIntent))
  {
    v34 = [v30 audioRecordingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v32 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for ManagedDestinationIntent))
  {
    v35 = [v30 requiresMDMChecksProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v32 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for CameraCaptureIntent))
  {
    v36 = [v30 cameraCaptureProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v32 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for StaccatoLongPressIntent))
  {
    v37 = [v30 staccatoLongPressProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v32 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for ToggleIntent))
  {
    v38 = [v30 toggleProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v32 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for PushToTalkTransmissionIntent))
  {
    v39 = [v30 pushToTalkTransmissionProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v32 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for UndoableIntent))
  {
    v40 = [v30 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v32 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for _UndoableIntent))
  {
    v41 = [v30 undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    v32 = v46;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for EmptySnippetIntent, &type metadata for EmptySnippetIntent, &protocol descriptor for ForegroundContinuableIntent))
  {
    v42 = [v30 foregroundContinuableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    return v46;
  }

  return v32;
}

uint64_t sub_18F2F9C00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = MEMORY[0x1E69E7CC0];
  v177 = MEMORY[0x1E69E7CC0];
  v7 = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for AssistantIntent);
  if (v7)
  {
    v9 = [objc_opt_self() assistantIntentProtocol];
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_2_68();
    if (v11)
    {
      OUTLINED_FUNCTION_9_38(v10 > 1);
    }

    v7 = OUTLINED_FUNCTION_10_37();
    v6 = v177;
  }

  v12 = OUTLINED_FUNCTION_11_34(v7, v8, &protocol descriptor for _AssistantAppIntent);
  if (v12)
  {
    v14 = [objc_opt_self() assistantIntentProtocol];
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_2_68();
    if (v11)
    {
      OUTLINED_FUNCTION_9_38(v15 > 1);
    }

    v12 = OUTLINED_FUNCTION_10_37();
    v6 = v177;
  }

  v16 = OUTLINED_FUNCTION_11_34(v12, v13, &protocol descriptor for _AssistantInvocableIntent);
  if (v16)
  {
    v18 = [objc_opt_self() assistantInvocableIntentProtocol];
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_2_68();
    if (v11)
    {
      OUTLINED_FUNCTION_9_38(v19 > 1);
    }

    v16 = OUTLINED_FUNCTION_10_37();
    v6 = v177;
  }

  v20 = OUTLINED_FUNCTION_11_34(v16, v17, &protocol descriptor for CancelIntent);
  if (v20)
  {
    v22 = [objc_opt_self() cancelProtocol];
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_2_68();
    if (v11)
    {
      OUTLINED_FUNCTION_9_38(v23 > 1);
    }

    v20 = OUTLINED_FUNCTION_10_37();
    v6 = v177;
  }

  v24 = OUTLINED_FUNCTION_11_34(v20, v21, &protocol descriptor for ChangeBinarySettingIntent);
  if (v24)
  {
    v26 = [objc_opt_self() changeBinarySettingSystemProtocol];
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_2_68();
    if (v11)
    {
      OUTLINED_FUNCTION_9_38(v27 > 1);
    }

    v24 = OUTLINED_FUNCTION_10_37();
    v6 = v177;
  }

  v28 = OUTLINED_FUNCTION_11_34(v24, v25, &protocol descriptor for CloseIntent);
  if (v28)
  {
    v30 = [objc_opt_self() closeEntityProtocol];
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_2_68();
    if (v11)
    {
      OUTLINED_FUNCTION_9_38(v31 > 1);
    }

    v28 = OUTLINED_FUNCTION_10_37();
    v6 = v177;
  }

  v32 = OUTLINED_FUNCTION_11_34(v28, v29, &protocol descriptor for CreateIntent);
  if (v32)
  {
    v34 = [objc_opt_self() createEntitySystemProtocol];
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_2_68();
    if (v11)
    {
      OUTLINED_FUNCTION_9_38(v35 > 1);
    }

    v32 = OUTLINED_FUNCTION_10_37();
    v6 = v177;
  }

  v36 = OUTLINED_FUNCTION_11_34(v32, v33, &protocol descriptor for _CreateIntent);
  if (v36)
  {
    v38 = [objc_opt_self() createEntitySystemProtocol];
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_2_68();
    if (v11)
    {
      OUTLINED_FUNCTION_9_38(v39 > 1);
    }

    v36 = OUTLINED_FUNCTION_10_37();
    v6 = v177;
  }

  if (OUTLINED_FUNCTION_11_34(v36, v37, &protocol descriptor for DeleteIntent))
  {
    v40 = [objc_opt_self() deleteEntitySystemProtocol];
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_2_68();
    if (v11)
    {
      OUTLINED_FUNCTION_9_38(v41 > 1);
    }

    OUTLINED_FUNCTION_10_37();
    v6 = v177;
  }

  v176 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C20, &unk_18F55B340);
  v44 = OUTLINED_FUNCTION_4_52(v42, v43);
  if (v44)
  {
    v46 = [OUTLINED_FUNCTION_21_27(v175) duplicateEntitySystemProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v47 > 1);
    }

    v44 = OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  if (OUTLINED_FUNCTION_11_34(v44, v45, &protocol descriptor for FavoriteIntent))
  {
    v48 = [objc_opt_self() favoriteEntityProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v49 > 1);
    }

    OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  v176 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C28, &qword_18F5550C8);
  if (OUTLINED_FUNCTION_4_52(v50, v51))
  {
    v52 = [OUTLINED_FUNCTION_21_27(v175) moveSpatialProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v53 > 1);
    }

    OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  v176 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C30, &unk_18F55B350);
  if (OUTLINED_FUNCTION_4_52(v54, v55))
  {
    v56 = [OUTLINED_FUNCTION_21_27(v175) navigateSequentiallyProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v57 > 1);
    }

    OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  v176 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8, &qword_18F54F5F8);
  v60 = OUTLINED_FUNCTION_4_52(v58, v59);
  if (v60)
  {
    v62 = [OUTLINED_FUNCTION_21_27(v175) openEntitySystemProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v63 > 1);
    }

    v60 = OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  v64 = OUTLINED_FUNCTION_11_34(v60, v61, &protocol descriptor for _PreviewIntent);
  if (v64)
  {
    v66 = [objc_opt_self() previewEntityProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v67 > 1);
    }

    v64 = OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  v68 = OUTLINED_FUNCTION_11_34(v64, v65, &protocol descriptor for _EnterMarkupIntent);
  if (v68)
  {
    v70 = [objc_opt_self() enterMarkupProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v71 > 1);
    }

    v68 = OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  v72 = OUTLINED_FUNCTION_11_34(v68, v69, &protocol descriptor for PutInContainerIntent);
  if (v72)
  {
    v74 = [objc_opt_self() putEntityInContainerProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v75 > 1);
    }

    v72 = OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  if (OUTLINED_FUNCTION_11_34(v72, v73, &protocol descriptor for ResizeIntent))
  {
    v76 = [objc_opt_self() resizeProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v77 > 1);
    }

    OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  v176 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C38, &unk_18F55B360);
  v80 = OUTLINED_FUNCTION_4_52(v78, v79);
  if (v80)
  {
    v82 = [OUTLINED_FUNCTION_21_27(v175) saveEntitySystemProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v83 > 1);
    }

    v80 = OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  if (OUTLINED_FUNCTION_11_34(v80, v81, &protocol descriptor for ScrollIntent))
  {
    v84 = [objc_opt_self() scrollProtocol];
    OUTLINED_FUNCTION_15_33();
    OUTLINED_FUNCTION_1_66();
    if (v11)
    {
      OUTLINED_FUNCTION_7_42(v85 > 1);
    }

    OUTLINED_FUNCTION_8_39();
    v6 = v177;
  }

  v176 = a1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C40, &qword_18F5550D0);
  v88 = OUTLINED_FUNCTION_4_52(v86, v87);
  if (v88)
  {
    v90 = [OUTLINED_FUNCTION_21_27(v175) searchSystemProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v91 > 1);
    }

    v88 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v92 = OUTLINED_FUNCTION_11_34(v88, v89, &protocol descriptor for ZoomIntent);
  if (v92)
  {
    v94 = [objc_opt_self() zoomProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v95 > 1);
    }

    v92 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v96 = OUTLINED_FUNCTION_11_34(v92, v93, &protocol descriptor for WidgetConfigurationIntent);
  if (v96)
  {
    v98 = [objc_opt_self() widgetConfigurationProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v99 > 1);
    }

    v96 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v100 = OUTLINED_FUNCTION_11_34(v96, v97, &protocol descriptor for SetFocusFilterIntent);
  if (v100)
  {
    v102 = [objc_opt_self() focusConfigurationProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v103 > 1);
    }

    v100 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v104 = OUTLINED_FUNCTION_11_34(v100, v101, &protocol descriptor for __CopyIntent);
  if (v104)
  {
    [objc_opt_self() copyEntityProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v106 > 1);
    }

    v104 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v107 = OUTLINED_FUNCTION_11_34(v104, v105, &protocol descriptor for CutIntent);
  if (v107)
  {
    v109 = [objc_opt_self() cutEntityProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v110 > 1);
    }

    v107 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v111 = OUTLINED_FUNCTION_11_34(v107, v108, &protocol descriptor for StartWorkoutIntent);
  if (v111)
  {
    v113 = [objc_opt_self() startWorkoutProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v114 > 1);
    }

    v111 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v115 = OUTLINED_FUNCTION_11_34(v111, v112, &protocol descriptor for PauseWorkoutIntent);
  if (v115)
  {
    v117 = [objc_opt_self() pauseWorkoutProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v118 > 1);
    }

    v115 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v119 = OUTLINED_FUNCTION_11_34(v115, v116, &protocol descriptor for ResumeWorkoutIntent);
  if (v119)
  {
    v121 = [objc_opt_self() resumeWorkoutProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v122 > 1);
    }

    v119 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v123 = OUTLINED_FUNCTION_11_34(v119, v120, &protocol descriptor for ProgressReportingIntent);
  if (v123)
  {
    v125 = [objc_opt_self() progressReportingProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v126 > 1);
    }

    v123 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  if (OUTLINED_FUNCTION_11_34(v123, v124, &protocol descriptor for LiveActivityStartingIntent) || (v128 = OUTLINED_FUNCTION_11_34(0, v127, &protocol descriptor for LiveActivityIntent)) != 0)
  {
    v130 = [objc_opt_self() sessionStartingProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v131 > 1);
    }

    v128 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v132 = OUTLINED_FUNCTION_11_34(v128, v129, &protocol descriptor for SnippetIntent);
  if (v132)
  {
    v134 = [objc_opt_self() snippetProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v135 > 1);
    }

    v132 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  if (OUTLINED_FUNCTION_11_34(v132, v133, &protocol descriptor for AudioStartingIntent) || (v137 = OUTLINED_FUNCTION_11_34(0, v136, &protocol descriptor for AudioPlaybackIntent)) != 0)
  {
    v139 = [objc_opt_self() audioStartingProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v140 > 1);
    }

    v137 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v141 = OUTLINED_FUNCTION_11_34(v137, v138, &protocol descriptor for AudioRecordingIntent);
  if (v141)
  {
    v143 = [objc_opt_self() audioRecordingProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v144 > 1);
    }

    v141 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v145 = OUTLINED_FUNCTION_11_34(v141, v142, &protocol descriptor for ManagedDestinationIntent);
  if (v145)
  {
    v147 = [objc_opt_self() requiresMDMChecksProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v148 > 1);
    }

    v145 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v149 = OUTLINED_FUNCTION_11_34(v145, v146, &protocol descriptor for CameraCaptureIntent);
  if (v149)
  {
    v151 = [objc_opt_self() cameraCaptureProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v152 > 1);
    }

    v149 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v153 = OUTLINED_FUNCTION_11_34(v149, v150, &protocol descriptor for StaccatoLongPressIntent);
  if (v153)
  {
    v155 = [objc_opt_self() staccatoLongPressProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v156 > 1);
    }

    v153 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v157 = OUTLINED_FUNCTION_11_34(v153, v154, &protocol descriptor for ToggleIntent);
  if (v157)
  {
    v159 = [objc_opt_self() toggleProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v160 > 1);
    }

    v157 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v161 = OUTLINED_FUNCTION_11_34(v157, v158, &protocol descriptor for PushToTalkTransmissionIntent);
  if (v161)
  {
    v163 = [objc_opt_self() pushToTalkTransmissionProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v164 > 1);
    }

    v161 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v165 = OUTLINED_FUNCTION_11_34(v161, v162, &protocol descriptor for UndoableIntent);
  if (v165)
  {
    v167 = [objc_opt_self() undoableProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v168 > 1);
    }

    v165 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  v169 = OUTLINED_FUNCTION_11_34(v165, v166, &protocol descriptor for _UndoableIntent);
  if (v169)
  {
    v171 = [objc_opt_self() undoableProtocol];
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_0_81();
    if (v11)
    {
      OUTLINED_FUNCTION_5_46(v172 > 1);
    }

    v169 = OUTLINED_FUNCTION_6_45();
    v6 = v177;
  }

  if (OUTLINED_FUNCTION_11_34(v169, v170, &protocol descriptor for ForegroundContinuableIntent))
  {
    v173 = [objc_opt_self() foregroundContinuableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
    return v177;
  }

  return v6;
}

uint64_t sub_18F2FAA28()
{
  v52 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for AssistantIntent))
  {
    v0 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for _AssistantAppIntent))
  {
    v1 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for _AssistantInvocableIntent))
  {
    v2 = [objc_opt_self() assistantInvocableIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for CancelIntent))
  {
    v3 = [objc_opt_self() cancelProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for ChangeBinarySettingIntent))
  {
    v4 = [objc_opt_self() changeBinarySettingSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for CloseIntent))
  {
    v5 = [objc_opt_self() closeEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    [objc_opt_self() copySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for CreateIntent))
  {
    v6 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for _CreateIntent))
  {
    v7 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    v8 = [objc_opt_self() cutSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v9 = MEMORY[0x1E69E73E0];
  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for DeleteIntent))
  {
    v10 = [objc_opt_self() deleteEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v51 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C98, &qword_18F555128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C20, &unk_18F55B340);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v11 = [objc_opt_self() duplicateEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v12 = MEMORY[0x1E69E73E0];
  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for FavoriteIntent))
  {
    v13 = [objc_opt_self() favoriteEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v51 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C28, &qword_18F5550C8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v14 = [objc_opt_self() moveSpatialProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v51 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C30, &unk_18F55B350);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v15 = [objc_opt_self() navigateSequentiallyProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v51 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8, &qword_18F54F5F8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v16 = [objc_opt_self() openEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    v17 = [objc_opt_self() pasteSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for _PreviewIntent))
  {
    v18 = [objc_opt_self() previewEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for _EnterMarkupIntent))
  {
    v19 = [objc_opt_self() enterMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    v20 = [objc_opt_self() exitMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for PutInContainerIntent))
  {
    v21 = [objc_opt_self() putEntityInContainerProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v22 = MEMORY[0x1E69E73E0];
  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for ResizeIntent))
  {
    v23 = [objc_opt_self() resizeProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v51 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C38, &unk_18F55B360);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v24 = [objc_opt_self() saveEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v25 = MEMORY[0x1E69E73E0];
  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for ScrollIntent))
  {
    v26 = [objc_opt_self() scrollProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v51 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C40, &qword_18F5550D0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v27 = [objc_opt_self() searchSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    v28 = [objc_opt_self() undoSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for ZoomIntent))
  {
    v29 = [objc_opt_self() zoomProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for WidgetConfigurationIntent))
  {
    v30 = [objc_opt_self() widgetConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for SetFocusFilterIntent))
  {
    v31 = [objc_opt_self() focusConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for __CopyIntent))
  {
    [objc_opt_self() copyEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for CutIntent))
  {
    v32 = [objc_opt_self() cutEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for StartWorkoutIntent))
  {
    v33 = [objc_opt_self() startWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for PauseWorkoutIntent))
  {
    v34 = [objc_opt_self() pauseWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for ResumeWorkoutIntent))
  {
    v35 = [objc_opt_self() resumeWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for ProgressReportingIntent))
  {
    v36 = [objc_opt_self() progressReportingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for LiveActivityStartingIntent) || dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for LiveActivityIntent))
  {
    v37 = [objc_opt_self() sessionStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for SnippetIntent))
  {
    v38 = [objc_opt_self() snippetProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for AudioStartingIntent) || dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for AudioPlaybackIntent))
  {
    v39 = [objc_opt_self() audioStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for AudioRecordingIntent))
  {
    v40 = [objc_opt_self() audioRecordingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for ManagedDestinationIntent))
  {
    v41 = [objc_opt_self() requiresMDMChecksProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for CameraCaptureIntent))
  {
    v42 = [objc_opt_self() cameraCaptureProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for StaccatoLongPressIntent))
  {
    v43 = [objc_opt_self() staccatoLongPressProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for ToggleIntent))
  {
    v44 = [objc_opt_self() toggleProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for PushToTalkTransmissionIntent))
  {
    v45 = [objc_opt_self() pushToTalkTransmissionProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for UndoableIntent))
  {
    v46 = [objc_opt_self() undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for _UndoableIntent))
  {
    v47 = [objc_opt_self() undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], &protocol descriptor for ForegroundContinuableIntent))
  {
    v48 = [objc_opt_self() foregroundContinuableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  return v52;
}

unint64_t sub_18F2FC67C()
{
  result = qword_1EACD5BF8;
  if (!qword_1EACD5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD5BF8);
  }

  return result;
}

unint64_t sub_18F2FC6D4()
{
  result = qword_1ED6FC1A0;
  if (!qword_1ED6FC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC1A0);
  }

  return result;
}

unint64_t sub_18F2FC72C()
{
  result = qword_1ED6FC198;
  if (!qword_1ED6FC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC198);
  }

  return result;
}

unint64_t sub_18F2FC780()
{
  result = qword_1ED6FC5A8;
  if (!qword_1ED6FC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC5A8);
  }

  return result;
}

unint64_t sub_18F2FC7D8()
{
  result = qword_1ED6FC190;
  if (!qword_1ED6FC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC190);
  }

  return result;
}

unint64_t sub_18F2FC830()
{
  result = qword_1EACD5C00;
  if (!qword_1EACD5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD5C00);
  }

  return result;
}

_BYTE *sub_18F2FC8A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_18F2FC984(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F2FCA70()
{
  result = qword_1EACD5C08;
  if (!qword_1EACD5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD5C08);
  }

  return result;
}

unint64_t sub_18F2FCAC8()
{
  result = qword_1EACD5C10;
  if (!qword_1EACD5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD5C10);
  }

  return result;
}

uint64_t sub_18F2FCB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  if (*(v4 + 24))
  {
    v7 = type metadata accessor for _EnumURLRepresentation.EnumSingleURLRepresentation(0, *(a2 + 16), *(a2 + 24), a4);
    sub_18F52175C();
    if (v11)
    {
      sub_18F2FCE8C(a1, v7, a3);
    }

    else
    {
      v10 = sub_18F520C8C();
      return __swift_storeEnumTagSinglePayload(a3, 1, 1, v10);
    }
  }

  else
  {
    v9 = type metadata accessor for _EnumURLRepresentation.EnumSingleURLRepresentation(0, *(a2 + 16), *(a2 + 24), a4);
    return sub_18F2FCE8C(a1, v9, a3);
  }
}

uint64_t _URLRepresentableEnum.urlRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(a2 + 24))(v16);
  v8 = v16[0];
  v9 = v16[1];
  v10 = v16[2];
  v11 = v17;
  v13 = type metadata accessor for _EnumURLRepresentation(0, a1, *(a2 + 8), v12);
  sub_18F2FCB4C(v4, v13, a3, v14);

  return sub_18F19CDA4(v8, v9, v10, v11);
}

double _EnumURLRepresentation.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)(a1, a2, a3, a4, &v8);
  result = *&v8;
  v7 = v9;
  *a5 = v8;
  *(a5 + 16) = v7;
  *(a5 + 24) = 0;
  return result;
}

uint64_t _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[1] = a1;
  a5[2] = a2;
  type metadata accessor for _EnumURLRepresentation.StringInterpolation.ValueStorage(0, a3, a4, a4);
  result = sub_18F521D2C();
  *a5 = result;
  return result;
}

double _EnumURLRepresentation.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  _EnumURLRepresentation.init(_:)(a1, a2, a3, a4, &v9);
  v6 = v10;
  v7 = v11;
  result = *&v9;
  *a5 = v9;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  return result;
}

__n128 _EnumURLRepresentation.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u8[8] = 0;
  return result;
}

__n128 _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t _EnumURLRepresentation.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_18F2FCE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v38 = a3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v48 = *(v4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v38 - v7;
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v4;
  v10 = type metadata accessor for _EnumURLRepresentation.StringInterpolation.ValueStorage(0, v5, v4, v9);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = sub_18F52254C();
  v50 = *(v53 - 8);
  v14 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v18 = v3[1];
  v19 = v3[2];
  v60[0] = *v3;
  v20 = sub_18F521DBC();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193ADB130](&v58, v20, WitnessTable);
  v56 = v58;
  sub_18F522A8C();
  sub_18F522A5C();
  v22 = sub_18F522A7C();
  v50 += 4;
  v51 = v22;
  v44 += 4;
  v40 = (v39 + 4);
  ++v43;
  ++v39;
  for (i = TupleTypeMetadata2; ; TupleTypeMetadata2 = i)
  {
    v23 = v52;
    sub_18F522A6C();
    (*v50)(v17, v23, v53);
    if (__swift_getEnumTagSinglePayload(v17, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v24 = *v17;
    (*v44)(v12, &v17[*(TupleTypeMetadata2 + 48)], v10);
    if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
    {
      v58 = v18;
      v59 = v19;
      v56 = 0x657361637B24;
      v57 = 0xE600000000000000;
      v54 = v24;
      v25 = sub_18F522C9C();
      MEMORY[0x193ADB000](v25);

      MEMORY[0x193ADB000](125, 0xE100000000000000);
      v54 = 0;
      v55 = 0xE000000000000000;
      v26 = v46;
      sub_18F521C0C();
      v27 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      sub_18F522D2C();
      (*v43)(v26, v27);
      sub_18F12A000();
      v18 = sub_18F5225CC();
      v29 = v28;
    }

    else
    {
      v30 = v10;
      v31 = v41;
      (*v40)(v41, v12, v5);
      v58 = v18;
      v59 = v19;
      v56 = 0x657361637B24;
      v57 = 0xE600000000000000;
      v54 = v24;
      v32 = sub_18F522C9C();
      MEMORY[0x193ADB000](v32);

      MEMORY[0x193ADB000](125, 0xE100000000000000);
      v54 = 0;
      v55 = 0xE000000000000000;
      v33 = v46;
      sub_18F521C0C();
      v34 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      sub_18F522D2C();
      (*v43)(v33, v34);
      sub_18F12A000();
      v18 = sub_18F5225CC();
      v29 = v35;

      v36 = v31;
      v10 = v30;
      (*v39)(v36, v5);
    }

    v19 = v29;
  }

  sub_18F520C6C();
}

uint64_t _EnumURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for _EnumURLRepresentation.StringInterpolation.ValueStorage(0, a3, a4, a4);
  OUTLINED_FUNCTION_4_9();
  result = sub_18F521D2C();
  *a5 = result;
  a5[1] = 0;
  a5[2] = 0xE000000000000000;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = a1 + 2 * a2;
    if (!__OFADD__(a1, 2 * a2))
    {
      MEMORY[0x193ADAF90](result);
      OUTLINED_FUNCTION_4_9();
      sub_18F521DBC();
      return sub_18F521CFC();
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall _EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  sub_18F12A000();
  v1 = sub_18F5225CC();
  MEMORY[0x193ADB000](v1);
}

uint64_t _EnumURLRepresentation.StringInterpolation.Token.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t sub_18F2FD77C(uint64_t a1)
{
  sub_18F522EFC();
  _EnumURLRepresentation.StringInterpolation.Token.hash(into:)();
  return sub_18F522F4C();
}

uint64_t _EnumURLRepresentation.StringInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_15();
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_4_9();
  type metadata accessor for _EnumURLRepresentation.StringInterpolation.ValueStorage(v4, v5, v6, v7);
  OUTLINED_FUNCTION_45();
  sub_18F521D7C();
  v8 = sub_18F522C9C();
  MEMORY[0x193ADB000](v8);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000]();

  sub_18F522CAC();
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_1_17();
  sub_18F521CDC();
  v10 = v9;
  (*(*(v3 - 8) + 16))(v9, a1, v3);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v3);
  v11 = OUTLINED_FUNCTION_45();
  v13 = sub_18F129FD4(v11, v12);
  OUTLINED_FUNCTION_5_15(v13);
}

uint64_t _EnumURLRepresentation.StringInterpolation.appendInterpolation(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_4_9();
  type metadata accessor for _EnumURLRepresentation.StringInterpolation.ValueStorage(v2, v3, v4, v5);
  OUTLINED_FUNCTION_45();
  sub_18F521D7C();
  v6 = sub_18F522C9C();
  MEMORY[0x193ADB000](v6);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000]();

  sub_18F522CAC();
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_1_17();
  sub_18F521CDC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v1);
  v8 = OUTLINED_FUNCTION_45();
  v10 = sub_18F129FD4(v8, v9);
  OUTLINED_FUNCTION_5_15(v10);
}

uint64_t sub_18F2FDB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_18F2FDBE0(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F2FDC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F2FDCE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
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
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_18F2FDE60(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t NSUserActivity.widgetConfigurationIntent<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  sub_18F2FE140(v2, &unk_1EACD5E38, v7);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D70, &qword_18F555640);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v5 ^ 1u, 1, a1);
}

double sub_18F2FE140@<D0>(void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  if (objc_getAssociatedObject(a1, a2))
  {
    sub_18F52261C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    type metadata accessor for WrappedAppIntent();
    if (swift_dynamicCast())
    {
      sub_18F0FD724(v5 + 16, a3);

      return result;
    }
  }

  else
  {
    sub_18F0EF148(v8, &qword_1EACD0430, &qword_18F540CE0);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_18F2FE234()
{
  OUTLINED_FUNCTION_69();
  v1 = [*(v0 + 160) _appIntent];
  if (v1 && (v2 = v1, v3 = [v1 linkAction], *(v0 + 168) = v3, v2, v3))
  {
    v4 = swift_task_alloc();
    *(v0 + 176) = v4;
    *v4 = v0;
    v4[1] = sub_18F2FE35C;

    return sub_18F114AB0();
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_18F0EF148(v0 + 56, &qword_1EACD0D70, &qword_18F555640);
    OUTLINED_FUNCTION_71();

    return v6();
  }
}

uint64_t sub_18F2FE35C()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 184) = v0;

  if (v0)
  {
    v5 = sub_18F2FE54C;
  }

  else
  {
    v5 = sub_18F2FE464;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F2FE464()
{
  v1 = *(v0 + 160);

  sub_18F0FF968((v0 + 56), v0 + 16);
  swift_beginAccess();
  sub_18F0FD724(v0 + 16, v0 + 96);
  type metadata accessor for WrappedAppIntent();
  v2 = swift_allocObject();
  sub_18F0FF968((v0 + 96), v2 + 16);
  objc_setAssociatedObject(v1, &unk_1EACD5E38, v2, 1);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F2FE54C()
{
  v16 = v0;

  if (qword_1ED6FDA70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_18F52165C();
  __swift_project_value_buffer(v2, qword_1ED7076B0);
  v3 = v1;
  v4 = sub_18F52163C();
  v5 = sub_18F52221C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 184);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_18F11897C(0xD000000000000024, 0x800000018F529840, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_18F0E9000, v4, v5, "%{public}s - Error converting INIntent to App Intent: %@", v8, 0x16u);
    sub_18F0EF148(v9, &qword_1EACD0578, &unk_18F541870);
    MEMORY[0x193ADD350](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x193ADD350](v10, -1, -1);
    MEMORY[0x193ADD350](v8, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_71();

  return v13();
}

uint64_t sub_18F2FE7D8(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_18F2FE888;

  return static UserActivityHelper.associateAppIntent(forUserActivity:)(v4);
}

uint64_t sub_18F2FE888()
{
  OUTLINED_FUNCTION_69();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  v1[2](v1);
  _Block_release(v1);
  OUTLINED_FUNCTION_71();

  return v5();
}

id UserActivityHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserActivityHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserActivityHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UserActivityHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserActivityHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18F2FEA70()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18F2FEAF0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18F1EC4D0;

  return sub_18F2FE7D8(v2, v3);
}

uint64_t EntityProperty<>.init(title:_get:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a2;
  v8 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  (*(v10 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = *(v4 + 80);
  v14 = *(a4 + 8);
  OUTLINED_FUNCTION_7_43();
  OUTLINED_FUNCTION_13_0();
  v19 = sub_18F31D80C(v15, v16, v17, v18);
  v20 = *(a4 + 56);
  v25[3] = v13;
  v25[4] = v14;
  __swift_allocate_boxed_opaque_existential_1(v25);

  v20(v24, a3, v13, a4);
  sub_18F31D30C(v25);

  (*(v10 + 8))(v23, v8);
  return v19;
}

uint64_t EntityProperty<>.init(title:_get:_set:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a2;
  v28 = a4;
  v26 = a1;
  v25 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  (*(v12 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15 = *(v6 + 80);
  v16 = *(a6 + 8);
  OUTLINED_FUNCTION_7_43();
  OUTLINED_FUNCTION_13_0();
  v21 = sub_18F31D80C(v17, v18, v19, v20);
  v22 = *(a6 + 48);
  v29[3] = v15;
  v29[4] = v16;
  __swift_allocate_boxed_opaque_existential_1(v29);

  v22(v27, a3, v28, a5, v15, a6);
  sub_18F31D30C(v29);

  (*(v12 + 8))(v26, v25);
  return v21;
}

uint64_t sub_18F2FEF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*v3 + 80);
  v4[11] = v5;
  v6 = sub_18F52254C();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2FF030, 0, 0);
}

uint64_t sub_18F2FF030()
{
  sub_18F11E02C((v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v1 = swift_dynamicCast();
  v2 = v0[11];
  if (v1)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[14];
    v6 = v0[9];
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v0[11]);
    (*(v4 + 32))(v3, v5, v2);
    v7 = (*(v6 + 64))(v2, v6);
    v0[17] = v8;
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_18F2FF258;
    v10 = v0[7];
    v11 = v0[8];

    return v18(v10, v11);
  }

  else
  {
    v14 = v0[13];
    v13 = v0[14];
    v15 = OUTLINED_FUNCTION_8_24();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v2);
    (*(v14 + 8))(v13, v0);
    return sub_18F522A3C();
  }
}

uint64_t sub_18F2FF258()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2FF370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*v3 + 80);
  v4[11] = v5;
  v6 = sub_18F52254C();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2FF4A0, 0, 0);
}

uint64_t sub_18F2FF4A0()
{
  sub_18F11E02C((v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v1 = swift_dynamicCast();
  v2 = v0[11];
  if (!v1)
  {
    v14 = v0[13];
    v13 = v0[14];
    v15 = OUTLINED_FUNCTION_8_24();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v2);
    (*(v14 + 8))(v13, v0);
    return sub_18F522A3C();
  }

  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[9];
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v0[11]);
  (*(v4 + 32))(v3, v5, v2);
  v7 = (*(v6 + 72))(v2, v6);
  v0[17] = v7;
  v0[18] = v8;
  if (!v7)
  {
    return sub_18F522A3C();
  }

  v18 = (v7 + *v7);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_18F2FF6F0;
  v10 = v0[7];
  v11 = v0[8];

  return v18(v11, v10);
}

uint64_t sub_18F2FF6F0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2FF804()
{
  OUTLINED_FUNCTION_69();
  swift_getAtKeyPath();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_18F2FF8B0;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return sub_18F2FEF00(v4, v2, v3);
}

uint64_t sub_18F2FF8B0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F2FF9E8()
{
  OUTLINED_FUNCTION_69();
  swift_getAtKeyPath();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_18F2FFA94;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return sub_18F2FF370(v4, v2, v3);
}

uint64_t sub_18F2FFA94()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t AppIntent.requestConfirmation(conditions:actionName:dialog:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v1[38] = v6;
  v1[39] = v0;
  v1[36] = v7;
  v1[37] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v9);
  v1[40] = OUTLINED_FUNCTION_34_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E30, &qword_18F5557A0);
  v1[41] = v10;
  OUTLINED_FUNCTION_10(v10);
  v11 = OUTLINED_FUNCTION_34_0();
  v12 = *v5;
  v1[42] = v11;
  v1[43] = v12;
  v1[44] = *v3;
  v13 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_18F2FFFA8()
{
  v24 = *(v0 + 352);
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  *(v0 + 120) = 0u;
  *(v0 + 129) = 0u;
  *(v0 + 104) = 0u;
  OUTLINED_FUNCTION_19_32();
  v22 = v3;
  v23 = v4;
  sub_18F306F94(v5, v3, v6);
  v7 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
  *(v0 + 184) = 0;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_18F543360;
  *(v0 + 96) = 0;
  v20 = v2[17];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  *(v1 + v2[18]) = 1;
  v11 = v2[20];
  v21 = (v1 + v2[19]);
  *(v1 + v11) = 2;
  v12 = (v1 + v2[21]);
  *(v12 + 25) = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  v13 = v1 + v2[22];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  OUTLINED_FUNCTION_45_12(v2[23]);
  v14 = v1 + v2[24];
  *(v14 + 32) = v15;
  *(v14 + 48) = v15;
  *v14 = v15;
  *(v14 + 16) = v15;
  *(v14 + 64) = xmmword_18F543360;
  *(v14 + 80) = 0;
  OUTLINED_FUNCTION_53_8(v15);
  sub_18F0FF5DC(v0 + 192, v16, &qword_1EACD0D70, &qword_18F555640);
  *(v1 + v11) = 2;
  sub_18F0FF5DC(v0 + 104, v12, &qword_1EACD0550, &qword_18F547EB0);
  sub_18F0FF5DC(v0 + 232, v13, &qword_1EACD0D78, &unk_18F555790);
  OUTLINED_FUNCTION_106_6();
  OUTLINED_FUNCTION_63_6();
  sub_18F0FF5DC(v0 + 16, v14, &qword_1EACD0D80, &qword_18F54A340);
  sub_18F0FF5DC(v22, v1 + v20, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0FF5DC(v0 + 152, v7, &qword_1EACD0D70, &qword_18F555640);
  *(v1 + v19) = 0;
  *v21 = 0;
  v21[1] = 0;
  *(v1 + 1) = 0;
  *(v1 + v2[28]) = 0;
  *(v0 + 272) = v24;
  *(v0 + 280) = v23;
  v17 = swift_task_alloc();
  *(v0 + 360) = v17;
  sub_18F306EDC();
  *v17 = v0;
  v17[1] = sub_18F30029C;

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:conditions:)();
}

uint64_t sub_18F30029C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v3 + 368) = v0;

  sub_18F0EF1A8(v6, &qword_1EACD0E30, &qword_18F5557A0);
  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_6();

    return v12();
  }
}

uint64_t sub_18F3003FC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F300464@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5E68, &qword_18F555768);
  result = swift_dynamicCast();
  if (LOBYTE(v4[0]) == 1)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40, &qword_18F54F490);
  v3 = MEMORY[0x1E69E73E0];
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_4:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  *(a1 + 24) = v3;
  result = sub_18F199B34();
  *(a1 + 32) = result;
  return result;
}

uint64_t AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  *(v1 + 144) = v4;
  *(v1 + 152) = v0;
  *(v1 + 128) = v5;
  *(v1 + 136) = v6;
  *(v1 + 57) = v7;
  *(v1 + 112) = v8;
  *(v1 + 120) = v9;
  v10 = type metadata accessor for IntentContext(0);
  OUTLINED_FUNCTION_10(v10);
  v11 = OUTLINED_FUNCTION_34_0();
  v12 = *v3;
  *(v1 + 160) = v11;
  *(v1 + 168) = v12;
  v13 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_18F3005A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  OUTLINED_FUNCTION_29();
  static IntentContext.current.getter(*(v11 + 160));
  v12 = *(v11 + 168);
  v13 = [*(*(v11 + 160) + 8) localeIdentifier];
  sub_18F5218DC();
  v15 = v14;

  *(v11 + 176) = v15;
  OUTLINED_FUNCTION_116_1();
  v13[12] = v12;
  *(v11 + 92) = 0;
  *(v11 + 104) = 0;
  v16 = v12;
  v17 = swift_task_alloc();
  *(v11 + 184) = v17;
  *v17 = v11;
  v17[1] = sub_18F300708;
  OUTLINED_FUNCTION_33_22();
  OUTLINED_FUNCTION_101_7();

  return sub_18F3079A8(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11);
}

uint64_t sub_18F300708()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  v6 = *v0;
  *v5 = *v0;
  *(v4 + 192) = v2;

  v7 = v2;
  v8 = swift_task_alloc();
  *(v4 + 200) = v8;
  *v8 = v6;
  v8[1] = sub_18F3008B4;
  v9 = OUTLINED_FUNCTION_115_3();

  return sub_18F300AA8(v9, v10, v11, v12, v13);
}

uint64_t sub_18F3008B4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 192);
    sub_18F18F600(v3 + 16);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F3009C4()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v1, v2);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F300A34()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v1, v2);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F300AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = type metadata accessor for IntentContext(0);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F300B44, 0, 0);
}

uint64_t sub_18F300B44()
{
  OUTLINED_FUNCTION_31();
  static IntentContext.current.getter(v0[9]);
  v2 = v0[8];
  v1 = v0[9];
  v3 = sub_18F1A0DE4(v0[5], v0[6]);
  v0[10] = v3;
  v10 = (*(v1 + *(v2 + 80)) + **(v1 + *(v2 + 80)));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_18F300CB0;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v3, v6, v7);
}

uint64_t sub_18F300CB0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F300DA8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v1, v2);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F300E14()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v1, v2);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t AppIntent.requestConfirmation()()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_18F300F2C;
  OUTLINED_FUNCTION_13_0();

  return sub_18F300AA8(v7, v8, v9, v4, v2);
}

uint64_t sub_18F300F2C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
    sub_18F18F600(v3 + 16);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:conditions:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  *(v1 + 144) = v6;
  *(v1 + 152) = v0;
  *(v1 + 128) = v7;
  *(v1 + 136) = v8;
  *(v1 + 57) = v9;
  *(v1 + 112) = v10;
  *(v1 + 120) = v11;
  v12 = type metadata accessor for IntentContext(0);
  OUTLINED_FUNCTION_10(v12);
  v13 = OUTLINED_FUNCTION_34_0();
  v14 = *v5;
  *(v1 + 160) = v13;
  *(v1 + 168) = v14;
  *(v1 + 176) = *v3;
  v15 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_18F3010CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  OUTLINED_FUNCTION_29();
  static IntentContext.current.getter(*(v11 + 160));
  v13 = *(v11 + 168);
  v12 = *(v11 + 176);
  v14 = [*(*(v11 + 160) + 8) localeIdentifier];
  sub_18F5218DC();
  v16 = v15;

  *(v11 + 184) = v16;
  OUTLINED_FUNCTION_116_1();
  v14[12] = v13;
  *(v11 + 92) = 0;
  *(v11 + 104) = v12;
  v17 = v13;
  v18 = swift_task_alloc();
  *(v11 + 192) = v18;
  *v18 = v11;
  v18[1] = sub_18F301228;
  OUTLINED_FUNCTION_33_22();
  OUTLINED_FUNCTION_101_7();
  OUTLINED_FUNCTION_36();

  return sub_18F3079A8(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11);
}

uint64_t sub_18F301228()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  v6 = *v0;
  *v5 = *v0;
  *(v4 + 200) = v2;

  v7 = v2;
  v8 = swift_task_alloc();
  *(v4 + 208) = v8;
  *v8 = v6;
  v8[1] = sub_18F3013D4;
  v9 = OUTLINED_FUNCTION_115_3();

  return sub_18F300AA8(v9, v10, v11, v12, v13);
}

uint64_t sub_18F3013D4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 200);
    sub_18F18F600(v3 + 16);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F3014E4()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v1, v2);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F301554()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v1, v2);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t AppIntent.requestConfirmation<A>(conditions:actionName:dialog:showDialogAsPrompt:snippetIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  *(v18 + 312) = a17;
  *(v18 + 320) = v17;
  *(v18 + 296) = a15;
  *(v18 + 304) = a16;
  *(v18 + 280) = v25;
  *(v18 + 288) = v19;
  *(v18 + 264) = v26;
  *(v18 + 272) = v27;
  *(v18 + 153) = v28;
  *(v18 + 256) = v29;
  *(v18 + 328) = *(a16 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v18 + 336) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v18 + 344) = AssociatedConformanceWitness;
  v32 = sub_18F199AE0();
  *(v18 + 16) = AssociatedTypeWitness;
  v33 = MEMORY[0x1E69E73E0];
  *(v18 + 352) = v32;
  *(v18 + 24) = v33;
  *(v18 + 32) = &type metadata for _SnippetIntentContainer;
  *(v18 + 40) = v33;
  *(v18 + 48) = AssociatedConformanceWitness;
  *(v18 + 56) = v32;
  v34 = type metadata accessor for IntentResultContainer(0, v18 + 16);
  *(v18 + 360) = v34;
  OUTLINED_FUNCTION_51(v34);
  *(v18 + 368) = v35;
  *(v18 + 376) = OUTLINED_FUNCTION_34_0();
  *(v18 + 384) = *(v20 - 8);
  *(v18 + 392) = OUTLINED_FUNCTION_34_0();
  v36 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v36);
  *(v18 + 400) = OUTLINED_FUNCTION_34_0();
  v37 = type metadata accessor for IntentDialog(255);
  *(v18 + 64) = AssociatedTypeWitness;
  *(v18 + 408) = v37;
  *(v18 + 72) = v33;
  *(v18 + 80) = &type metadata for _SnippetIntentContainer;
  *(v18 + 88) = v37;
  *(v18 + 96) = AssociatedConformanceWitness;
  *(v18 + 104) = v32;
  v38 = type metadata accessor for IntentResultContainer(0, v18 + 64);
  *(v18 + 416) = v38;
  OUTLINED_FUNCTION_51(v38);
  *(v18 + 424) = v39;
  *(v18 + 432) = OUTLINED_FUNCTION_34_0();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v40);
  *(v18 + 440) = swift_task_alloc();
  *(v18 + 448) = swift_task_alloc();
  *(v18 + 456) = OUTLINED_FUNCTION_34_0();
  v41 = type metadata accessor for IntentContext(0);
  OUTLINED_FUNCTION_10(v41);
  v42 = OUTLINED_FUNCTION_34_0();
  v43 = *v24;
  *(v18 + 464) = v42;
  *(v18 + 472) = v43;
  *(v18 + 480) = *v22;
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_43_2();

  return MEMORY[0x1EEE6DFA0](v44, v45, v46);
}

uint64_t sub_18F3018B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  v143 = v11;
  static IntentContext.current.getter(*(v11 + 464));
  v12 = *(v11 + 448);
  v13 = *(v11 + 408);
  sub_18F0F9F88(*(v11 + 264), v12, &qword_1EACCF7A0, &unk_18F53E6F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v139 = *(v11 + 472);
  v140 = *(v11 + 464);
  v141 = *(v11 + 480);
  if (EnumTagSinglePayload == 1)
  {
    v15 = *(v11 + 408);
    v16 = *(v11 + 392);
    v131 = *(v11 + 376);
    v135 = *(v11 + 360);
    v17 = *(v11 + 336);
    v123 = *(v11 + 344);
    v127 = *(v11 + 352);
    v18 = *(v11 + 304);
    v19 = *(v11 + 288);
    v20 = *(v11 + 272);
    sub_18F0EF1A8(*(v11 + 448), &qword_1EACCF7A0, &unk_18F53E6F0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
    v24 = OUTLINED_FUNCTION_87_6();
    v25(v16, v20, v19, v24);
    _SnippetIntentContainer.init<A>(_:)(v16, v19, v18, v142);
    OUTLINED_FUNCTION_11();
    v29 = __swift_storeEnumTagSinglePayload(v26, v27, v28, v15);
    OUTLINED_FUNCTION_79_4(v29, v30, v31, v32, v33, v34, v35, v36, v99, v102, v105, v106, v109, v110, v113, v116, v119, v123, v127, v131, v135, v139);
    v111 = MEMORY[0x1E69E73E0];
    v107 = MEMORY[0x1E69E73E0];
    OUTLINED_FUNCTION_78_4();
    IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetIntent:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)();
    v37 = [*(v140 + 8) localeIdentifier];
    v38 = sub_18F5218DC();
    v40 = v39;

    *(v11 + 504) = v40;
    v41 = *(v140 + 48);
    *(v11 + 156) = *(v140 + 32);
    *(v11 + 172) = v41;
    *(v11 + 188) = 0;
    *(v11 + 224) = v141;
    v50 = OUTLINED_FUNCTION_58_6(v42, v43, v44, v45, v46, v47, v48, v49, v100, v103, v17, v107, &type metadata for _SnippetIntentContainer, v111, v114, v117, v120, v124, v128, v132, v136);
    *(v11 + 232) = 0;
    v51 = v11 + 232;
    v52 = v141;
    v53 = swift_task_alloc();
    *(v11 + 512) = v53;
    *v53 = v11;
    v53[1] = sub_18F301F08;
    v145 = *(v11 + 360);
    v146 = v50;
    v54 = OUTLINED_FUNCTION_33_22();
    v56 = v38;
    v57 = v40;
    v58 = v11 + 224;
    v59 = 0;
  }

  else
  {
    v60 = *(v11 + 456);
    v61 = *(v11 + 440);
    v133 = *(v11 + 432);
    v137 = *(v11 + 416);
    v62 = *(v11 + 392);
    v129 = *(v11 + 352);
    v121 = *(v11 + 408);
    v125 = *(v11 + 344);
    v63 = *(v11 + 336);
    v64 = *(v11 + 304);
    v65 = *(v11 + 288);
    v66 = *(v11 + 272);
    sub_18F18F540(*(v11 + 448), v60);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v63);
    v70 = OUTLINED_FUNCTION_87_6();
    v71(v62, v66, v65, v70);
    _SnippetIntentContainer.init<A>(_:)(v62, v65, v64, v142);
    OUTLINED_FUNCTION_19_32();
    sub_18F306F94(v60, v61, v72);
    v73 = v121;
    v74 = __swift_storeEnumTagSinglePayload(v61, 0, 1, v121);
    OUTLINED_FUNCTION_79_4(v74, v75, v76, v77, v78, v79, v80, v81, v99, v102, v105, v106, v109, v110, v113, v116, v121, v125, v129, v133, v137, v139);
    v112 = v73;
    v108 = MEMORY[0x1E69E73E0];
    OUTLINED_FUNCTION_78_4();
    IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetIntent:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)();
    v82 = [*(v140 + 8) localeIdentifier];
    v83 = sub_18F5218DC();
    v85 = v84;

    *(v11 + 488) = v85;
    v86 = *(v140 + 48);
    *(v11 + 560) = *(v140 + 32);
    *(v11 + 576) = v86;
    *(v11 + 592) = 0;
    *(v11 + 240) = v141;
    v95 = OUTLINED_FUNCTION_58_6(v87, v88, v89, v90, v91, v92, v93, v94, v101, v104, v63, v108, &type metadata for _SnippetIntentContainer, v112, v115, v118, v122, v126, v130, v134, v138);
    *(v11 + 248) = 0;
    v51 = v11 + 248;
    v96 = v141;
    v97 = swift_task_alloc();
    *(v11 + 496) = v97;
    *v97 = v11;
    v97[1] = sub_18F301D3C;
    v145 = *(v11 + 416);
    v146 = v95;
    v54 = OUTLINED_FUNCTION_33_22();
    v56 = v83;
    v57 = v85;
    v58 = v11 + 240;
  }

  return sub_18F3079A8(v54, v56, v57, v55, v58, v59, v51, 0, a9, a10, a11);
}

uint64_t sub_18F301D3C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v1 + 192) = v0;
  *(v1 + 200) = v3;
  OUTLINED_FUNCTION_114_4();
  v4 = *v0;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  OUTLINED_FUNCTION_114_4();

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F301E5C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[57];
  (*(v0[53] + 8))(v0[54], v0[52]);
  OUTLINED_FUNCTION_2_69();
  sub_18F306FF0(v1, v2);
  v3 = v0[25];
  v0[65] = v3;
  v4 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[66] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_37_20(v5);

  return sub_18F300AA8(v7, v8, v9, v10, v11);
}

uint64_t sub_18F301F08()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v1 + 208) = v0;
  *(v1 + 216) = v3;
  OUTLINED_FUNCTION_114_4();
  v4 = *v0;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  OUTLINED_FUNCTION_114_4();

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F302028()
{
  OUTLINED_FUNCTION_21();
  (*(v0[46] + 8))(v0[47], v0[45]);
  v1 = v0[27];
  v0[65] = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[66] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_37_20(v3);

  return sub_18F300AA8(v5, v6, v7, v8, v9);
}

uint64_t sub_18F3020C4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 536) = v0;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 520);
    sub_18F18F600(v3 + 112);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F3021D4()
{
  OUTLINED_FUNCTION_69();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 544) = v1;
  *v1 = v2;
  v1[1] = sub_18F302278;

  return AppIntent.callAsFunction<>(donate:)();
}

uint64_t sub_18F302278()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 552) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F302370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 464);
  OUTLINED_FUNCTION_61_8();

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v11, v13);

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_18F302428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 464);

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v11, v12);
  OUTLINED_FUNCTION_61_8();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F3024E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 464);

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v11, v12);
  OUTLINED_FUNCTION_61_8();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t AppIntent.requestConfirmation<A>(conditions:actionName:dialog:showDialogAsPrompt:snippetIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_21();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *(v10 + 848) = v9;
  *(v10 + 840) = a9;
  *(v10 + 832) = v17;
  *(v10 + 824) = v11;
  *(v10 + 816) = v18;
  *(v10 + 808) = v19;
  *(v10 + 97) = v20;
  *(v10 + 800) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5E48, &qword_18F555730);
  *(v10 + 856) = v22;
  OUTLINED_FUNCTION_10(v22);
  *(v10 + 864) = OUTLINED_FUNCTION_34_0();
  *(v10 + 872) = *(v12 - 8);
  *(v10 + 880) = OUTLINED_FUNCTION_34_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5E50, &qword_18F5557C0);
  *(v10 + 888) = v23;
  OUTLINED_FUNCTION_10(v23);
  *(v10 + 896) = OUTLINED_FUNCTION_34_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v24);
  *(v10 + 904) = swift_task_alloc();
  *(v10 + 912) = swift_task_alloc();
  v25 = type metadata accessor for IntentDialog(0);
  *(v10 + 920) = v25;
  OUTLINED_FUNCTION_10(v25);
  *(v10 + 928) = OUTLINED_FUNCTION_34_0();
  v26 = type metadata accessor for IntentContext(0);
  OUTLINED_FUNCTION_10(v26);
  *(v10 + 936) = OUTLINED_FUNCTION_34_0();
  *(v10 + 944) = *v16;
  *(v10 + 952) = *v14;
  v27 = OUTLINED_FUNCTION_9_12();
  return OUTLINED_FUNCTION_119_3(v27, v28, v29);
}

void sub_18F30275C(uint64_t a1)
{
  static IntentContext.current.getter(*(v1 + 936));
  v2 = *(v1 + 920);
  v3 = *(v1 + 912);
  v4 = *(v1 + 872);
  sub_18F0F9F88(*(v1 + 800), v3, &qword_1EACCF7A0, &unk_18F53E6F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v2);
  v6 = (v4 + 16);
  v71 = *(v1 + 944);
  v72 = *(v1 + 936);
  if (EnumTagSinglePayload == 1)
  {
    v68 = *(v1 + 920);
    v70 = *(v1 + 904);
    v7 = *(v1 + 880);
    v8 = *(v1 + 864);
    v9 = *(v1 + 856);
    v10 = *(v1 + 840);
    v11 = *(v1 + 824);
    v12 = *(v1 + 808);
    sub_18F0EF1A8(*(v1 + 912), &qword_1EACCF7A0, &unk_18F53E6F0);
    *(v1 + 448) = 0u;
    *(v1 + 464) = 0u;
    *(v1 + 480) = 0;
    (*v6)(v7, v12, v11);
    _SnippetIntentContainer.init<A>(_:)(v7, v11, v10, (v1 + 488));
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v68);
    *(v1 + 560) = 0;
    *(v1 + 528) = 0u;
    *(v1 + 544) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 281) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = xmmword_18F543360;
    *(v1 + 96) = 0;
    v65 = v9[17];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v68);
    v8[v9[18]] = 1;
    v19 = v9[20];
    v69 = &v8[v9[19]];
    v8[v19] = 2;
    v20 = &v8[v9[21]];
    *(v20 + 25) = 0u;
    *v20 = 0u;
    v20[1] = 0u;
    v21 = &v8[v9[22]];
    *(v21 + 32) = 0;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    OUTLINED_FUNCTION_45_12(v9[23]);
    v22 = &v8[v9[24]];
    *(v22 + 32) = v23;
    *(v22 + 48) = v23;
    *v22 = v23;
    *(v22 + 16) = v23;
    *(v22 + 64) = xmmword_18F543360;
    *(v22 + 80) = 0;
    v24 = &v8[v9[25]];
    *(v24 + 32) = 0;
    *v24 = v23;
    *(v24 + 16) = v23;
    v62 = v9[26];
    v63 = v9[27];
    *&v8[v63] = 0;
    v25 = &v8[v9[29]];
    *(v25 + 32) = 0;
    *v25 = v23;
    *(v25 + 16) = v23;
    *v8 = v26;
    sub_18F0FF5DC(v1 + 448, v25, &qword_1EACD0D70, &qword_18F555640);
    v8[v19] = 2;
    sub_18F0FF5DC(v1 + 256, v20, &qword_1EACD0550, &qword_18F547EB0);
    sub_18F0FF5DC(v1 + 488, v21, &qword_1EACD0D78, &unk_18F555790);
    OUTLINED_FUNCTION_106_6();
    OUTLINED_FUNCTION_63_6();
    sub_18F0FF5DC(v1 + 16, v22, &qword_1EACD0D80, &qword_18F54A340);
    sub_18F0FF5DC(v70, &v8[v65], &qword_1EACCF7A0, &unk_18F53E6F0);
    sub_18F0FF5DC(v1 + 528, v24, &qword_1EACD0D70, &qword_18F555640);
    *&v8[v62] = 0;
    *v69 = 0;
    v69[1] = 0;
    *&v8[v63] = v71;
    *&v8[v9[28]] = 0;
    v27 = [*(v72 + 8) localeIdentifier];
    sub_18F5218DC();
    v29 = v28;

    *(v1 + 976) = v29;
    v30 = *(v72 + 48);
    *(v1 + 100) = *(v72 + 32);
    *(v1 + 116) = v30;
    *(v1 + 132) = 0;
    *(v1 + 592) = v9;
    *(v1 + 600) = &off_1F0306DD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 568));
    sub_18F0F9F88(v8, boxed_opaque_existential_1, &qword_1EACD5E48, &qword_18F555730);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 568), *(v1 + 592));
    OUTLINED_FUNCTION_6_1(&unk_18F555738);
    v73 = v32;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 984) = v33;
    *v33 = v34;
    v33[1] = sub_18F3030D8;
  }

  else
  {
    v35 = *(v1 + 928);
    v66 = *(v1 + 920);
    v36 = *(v1 + 904);
    v37 = *(v1 + 896);
    v38 = *(v1 + 888);
    v39 = *(v1 + 880);
    v40 = *(v1 + 840);
    v41 = *(v1 + 824);
    v42 = *(v1 + 808);
    sub_18F18F540(*(v1 + 912), v35);
    *(v1 + 608) = 0u;
    *(v1 + 624) = 0u;
    *(v1 + 640) = 0;
    (*v6)(v39, v42, v41);
    _SnippetIntentContainer.init<A>(_:)(v39, v41, v40, (v1 + 648));
    OUTLINED_FUNCTION_19_32();
    sub_18F306F94(v35, v36, v43);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v66);
    *(v1 + 720) = 0;
    *(v1 + 688) = 0u;
    *(v1 + 704) = 0u;
    *(v1 + 400) = 0u;
    *(v1 + 416) = 0u;
    *(v1 + 425) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 136) = 0u;
    *(v1 + 184) = 0u;
    *(v1 + 200) = xmmword_18F543360;
    *(v1 + 216) = 0;
    v64 = v38[17];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v66);
    *(v37 + v38[18]) = 1;
    v47 = v38[20];
    v67 = (v37 + v38[19]);
    *(v37 + v47) = 2;
    v48 = (v37 + v38[21]);
    *(v48 + 25) = 0u;
    *v48 = 0u;
    v48[1] = 0u;
    v49 = v37 + v38[22];
    *(v49 + 32) = 0;
    *v49 = 0u;
    *(v49 + 16) = 0u;
    OUTLINED_FUNCTION_45_12(v38[23]);
    v50 = v37 + v38[24];
    *(v50 + 32) = v51;
    *(v50 + 48) = v51;
    *v50 = v51;
    *(v50 + 16) = v51;
    *(v50 + 64) = xmmword_18F543360;
    *(v50 + 80) = 0;
    OUTLINED_FUNCTION_53_8(v51);
    sub_18F0FF5DC(v1 + 608, v52, &qword_1EACD0D70, &qword_18F555640);
    *(v37 + v47) = 2;
    sub_18F0FF5DC(v1 + 400, v48, &qword_1EACD0550, &qword_18F547EB0);
    sub_18F0FF5DC(v1 + 648, v49, &qword_1EACD0D78, &unk_18F555790);
    OUTLINED_FUNCTION_106_6();
    OUTLINED_FUNCTION_63_6();
    sub_18F0FF5DC(v1 + 136, v50, &qword_1EACD0D80, &qword_18F54A340);
    sub_18F0FF5DC(v36, v37 + v64, &qword_1EACCF7A0, &unk_18F53E6F0);
    sub_18F0FF5DC(v1 + 688, v36, &qword_1EACD0D70, &qword_18F555640);
    *(v37 + v61) = 0;
    *v67 = 0;
    v67[1] = 0;
    *(v37 + 1) = v71;
    *(v37 + v38[28]) = 0;
    v53 = [*(v72 + 8) localeIdentifier];
    sub_18F5218DC();
    v55 = v54;

    *(v1 + 960) = v55;
    v56 = *(v72 + 48);
    *(v1 + 220) = *(v72 + 32);
    *(v1 + 236) = v56;
    *(v1 + 252) = 0;
    *(v1 + 752) = v38;
    *(v1 + 760) = &off_1F0306DD8;
    v57 = __swift_allocate_boxed_opaque_existential_1((v1 + 728));
    sub_18F0F9F88(v37, v57, &qword_1EACD5E50, &qword_18F5557C0);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 728), *(v1 + 752));
    OUTLINED_FUNCTION_6_1(&unk_18F555740);
    v73 = v58;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 968) = v59;
    *v59 = v60;
    v59[1] = sub_18F302F20;
  }

  OUTLINED_FUNCTION_85_5();

  __asm { BR              X8 }
}

uint64_t sub_18F302F20()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *(v1 + 768) = v0;
  *(v1 + 776) = v3;
  v4 = *v0;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F303020()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[116];
  v2 = v0[112];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 91);
  OUTLINED_FUNCTION_2_69();
  sub_18F306FF0(v1, v3);
  sub_18F0EF1A8(v2, &qword_1EACD5E50, &qword_18F5557C0);
  v4 = v0[97];
  v0[124] = v4;
  v5 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[125] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_38_16(v6);

  return sub_18F300AA8(v8, v9, v10, v11, v12);
}

uint64_t sub_18F3030D8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *(v1 + 784) = v0;
  *(v1 + 792) = v3;
  v4 = *v0;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F3031D8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[108];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 71);
  sub_18F0EF1A8(v1, &qword_1EACD5E48, &qword_18F555730);
  v2 = v0[99];
  v0[124] = v2;
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[125] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_38_16(v4);

  return sub_18F300AA8(v6, v7, v8, v9, v10);
}

uint64_t sub_18F303280()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1008) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F3033A4()
{
  OUTLINED_FUNCTION_24_4();
  sub_18F18F5A4(v0 + 304, v0 + 352);
  if (*(v0 + 392))
  {
    sub_18F18F600(v0 + 352);
    if (qword_1EACCF550 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 992);
    v2 = *(v0 + 936);
    v3 = type metadata accessor for AppIntentError(0);
    v4 = __swift_project_value_buffer(v3, qword_1EACD4AD0);
    sub_18F2199DC();
    swift_allocError();
    sub_18F306F94(v4, v5, type metadata accessor for AppIntentError);
    swift_willThrow();

    sub_18F18F600(v0 + 304);
    OUTLINED_FUNCTION_0_82();
    sub_18F306FF0(v2, v6);
    OUTLINED_FUNCTION_30_25();

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v8 = *(v0 + 992);
    v9 = *(v0 + 936);
    OUTLINED_FUNCTION_30_25();
    sub_18F18F600(v0 + 304);

    OUTLINED_FUNCTION_0_82();
    sub_18F306FF0(v9, v10);
    sub_18F18F600(v0 + 352);

    OUTLINED_FUNCTION_6();
  }

  return v7();
}

uint64_t sub_18F303584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 936);

  OUTLINED_FUNCTION_0_82();
  sub_18F306FF0(v11, v12);
  OUTLINED_FUNCTION_30_25();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_36();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t AppIntent.requestConfirmation(systemStyle:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v7;
  *v7 = v8;
  v7[1] = sub_18F3036E4;

  return sub_18F300AA8(v0 + 16, 0, v6, v4, v2);
}

uint64_t sub_18F3036E4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
    sub_18F18F600(v3 + 16);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t AppIntent.requestConfirmation<A>(output:confirmationActionName:showPrompt:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  *(v0 + 16) = *v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_18F1E86F8;
  OUTLINED_FUNCTION_43_2();

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)();
}

uint64_t sub_18F3038D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  *(v11 + 736) = v10;
  *(v11 + 728) = a10;
  *(v11 + 99) = a9;
  *(v11 + 720) = v12;
  *(v11 + 712) = v13;
  *(v11 + 98) = v14;
  *(v11 + 704) = v15;
  *(v11 + 97) = v16;
  *(v11 + 696) = v17;
  *(v11 + 688) = v18;
  *(v11 + 680) = v19;
  v20 = sub_18F520E6C();
  OUTLINED_FUNCTION_10(v20);
  *(v11 + 744) = OUTLINED_FUNCTION_34_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  OUTLINED_FUNCTION_10(v21);
  *(v11 + 752) = OUTLINED_FUNCTION_34_0();
  v22 = sub_18F520C8C();
  *(v11 + 760) = v22;
  OUTLINED_FUNCTION_51(v22);
  *(v11 + 768) = v23;
  *(v11 + 776) = OUTLINED_FUNCTION_34_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v24);
  *(v11 + 784) = swift_task_alloc();
  *(v11 + 792) = swift_task_alloc();
  v25 = type metadata accessor for IntentDialog.Storage(0);
  *(v11 + 800) = v25;
  OUTLINED_FUNCTION_10(v25);
  *(v11 + 808) = OUTLINED_FUNCTION_34_0();
  v26 = OUTLINED_FUNCTION_9_12();
  return OUTLINED_FUNCTION_119_3(v26, v27, v28);
}

uint64_t sub_18F303BF4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  OUTLINED_FUNCTION_69_5(v3);
  v4 = *v0;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F3041E0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F304700()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *v4 = *v2;

  v5 = *(v3 + 704);
  if (v1)
  {
  }

  else
  {

    *(v3 + 872) = v0;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F304D98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 736) = v8;
  *(v9 + 728) = v14;
  *(v9 + 99) = v13;
  *(v9 + 720) = a8;
  *(v9 + 712) = a7;
  *(v9 + 98) = a6;
  *(v9 + 704) = a5;
  *(v9 + 97) = a4;
  *(v9 + 696) = a3;
  *(v9 + 688) = a2;
  *(v9 + 680) = a1;
  sub_18F520E6C();
  *(v9 + 744) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  *(v9 + 752) = swift_task_alloc();
  v10 = sub_18F520C8C();
  *(v9 + 760) = v10;
  *(v9 + 768) = *(v10 - 8);
  *(v9 + 776) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = type metadata accessor for IntentDialog.Storage(0);
  *(v9 + 808) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F304F64, 0, 0);
}

uint64_t sub_18F305108()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  OUTLINED_FUNCTION_69_5(v3);
  v4 = *v0;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F3056F4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F305C14()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *v4 = *v2;

  v5 = *(v3 + 704);
  if (v1)
  {
  }

  else
  {

    *(v3 + 872) = v0;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F305D48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 736) = v8;
  *(v9 + 728) = v14;
  *(v9 + 99) = v13;
  *(v9 + 720) = a8;
  *(v9 + 712) = a7;
  *(v9 + 98) = a6;
  *(v9 + 704) = a5;
  *(v9 + 97) = a4;
  *(v9 + 696) = a3;
  *(v9 + 688) = a2;
  *(v9 + 680) = a1;
  sub_18F520E6C();
  *(v9 + 744) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  *(v9 + 752) = swift_task_alloc();
  v10 = sub_18F520C8C();
  *(v9 + 760) = v10;
  *(v9 + 768) = *(v10 - 8);
  *(v9 + 776) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = type metadata accessor for IntentDialog.Storage(0);
  *(v9 + 808) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F305F14, 0, 0);
}

uint64_t sub_18F3060B8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  OUTLINED_FUNCTION_69_5(v3);
  v4 = *v0;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F3066C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = v10[17];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E30, &qword_18F5557A0);
  v10[18] = v12;
  sub_18F0F9F88(v11 + *(v12 + 84), (v10 + 8), &qword_1EACD0550, &qword_18F547EB0);
  if (v10[11])
  {
    OUTLINED_FUNCTION_68_8();
    v13 = swift_task_alloc();
    v10[19] = v13;
    *v13 = v10;
    OUTLINED_FUNCTION_92_4(v13);
    OUTLINED_FUNCTION_36();

    return _SnippetViewContainer.data()();
  }

  else
  {
    sub_18F0EF1A8((v10 + 8), &qword_1EACD0550, &qword_18F547EB0);
    OUTLINED_FUNCTION_26_30();
    if (!v16)
    {
      OUTLINED_FUNCTION_66_7();
      sub_18F0F21A8(0, &qword_1EACD0558, 0x1E69AD0A0);
      objc_allocWithZone(MEMORY[0x1E69AD0A8]);
      v17 = OUTLINED_FUNCTION_8_40();
      sub_18F307048(v17, v18, v19, v20);
      v21 = OUTLINED_FUNCTION_123();
      sub_18F16AAE0(v21, v22);
      v23 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      OUTLINED_FUNCTION_121_3(v23, sel_initWithCanReplacePrintableText_);
      v24 = OUTLINED_FUNCTION_9_39();
      sub_18F1F0D28(v24, v25, v26, v27, v28);
      v29 = OUTLINED_FUNCTION_8_40();
      sub_18F138888(v29, v30, v31, v32);
    }

    OUTLINED_FUNCTION_16_35();
    OUTLINED_FUNCTION_36();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

uint64_t sub_18F306860()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  OUTLINED_FUNCTION_64_5(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v8 + 160) = v7;

  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F30693C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  if (*(v10 + 160) >> 60 == 15)
  {
    sub_18F18F3F8(v10 + 16);
    OUTLINED_FUNCTION_26_30();
    if (!v11)
    {
      OUTLINED_FUNCTION_66_7();
      sub_18F0F21A8(0, &qword_1EACD0558, 0x1E69AD0A0);
      objc_allocWithZone(MEMORY[0x1E69AD0A8]);
      v15 = OUTLINED_FUNCTION_8_40();
      sub_18F307048(v15, v16, v17, v18);
      v19 = OUTLINED_FUNCTION_123();
      sub_18F16AAE0(v19, v20);
      v21 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      OUTLINED_FUNCTION_121_3(v21, sel_initWithCanReplacePrintableText_);
      v22 = OUTLINED_FUNCTION_9_39();
      sub_18F1F0D28(v22, v23, v24, v25, v26);
      v27 = OUTLINED_FUNCTION_8_40();
      sub_18F138888(v27, v28, v29, v30);
    }
  }

  else
  {
    sub_18F0F21A8(0, &qword_1EACD0558, 0x1E69AD0A0);
    [objc_allocWithZone(MEMORY[0x1E69AD0A8]) initWithCanReplacePrintableText_];
    v12 = OUTLINED_FUNCTION_56();
    sub_18F1F0B68(v12, v13, v14);
    sub_18F18F3F8(v10 + 16);
  }

  OUTLINED_FUNCTION_16_35();
  OUTLINED_FUNCTION_36();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_18F306AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = v10[17];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5E48, &qword_18F555730);
  v10[18] = v12;
  sub_18F0F9F88(v11 + *(v12 + 84), (v10 + 8), &qword_1EACD0550, &qword_18F547EB0);
  if (v10[11])
  {
    OUTLINED_FUNCTION_68_8();
    v13 = swift_task_alloc();
    v10[19] = v13;
    *v13 = v10;
    OUTLINED_FUNCTION_92_4(v13);
    OUTLINED_FUNCTION_36();

    return _SnippetViewContainer.data()();
  }

  else
  {
    sub_18F0EF1A8((v10 + 8), &qword_1EACD0550, &qword_18F547EB0);
    OUTLINED_FUNCTION_26_30();
    if (!v16)
    {
      OUTLINED_FUNCTION_66_7();
      sub_18F0F21A8(0, &qword_1EACD0558, 0x1E69AD0A0);
      objc_allocWithZone(MEMORY[0x1E69AD0A8]);
      v17 = OUTLINED_FUNCTION_8_40();
      sub_18F307048(v17, v18, v19, v20);
      v21 = OUTLINED_FUNCTION_123();
      sub_18F16AAE0(v21, v22);
      v23 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      OUTLINED_FUNCTION_121_3(v23, sel_initWithCanReplacePrintableText_);
      v24 = OUTLINED_FUNCTION_9_39();
      sub_18F1F0D28(v24, v25, v26, v27, v28);
      v29 = OUTLINED_FUNCTION_8_40();
      sub_18F138888(v29, v30, v31, v32);
    }

    OUTLINED_FUNCTION_16_35();
    OUTLINED_FUNCTION_36();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

uint64_t sub_18F306C44()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  OUTLINED_FUNCTION_64_5(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v8 + 160) = v7;

  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F306D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = v10[17];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5E50, &qword_18F5557C0);
  v10[18] = v12;
  sub_18F0F9F88(v11 + *(v12 + 84), (v10 + 8), &qword_1EACD0550, &qword_18F547EB0);
  if (v10[11])
  {
    OUTLINED_FUNCTION_68_8();
    v13 = swift_task_alloc();
    v10[19] = v13;
    *v13 = v10;
    OUTLINED_FUNCTION_92_4(v13);
    OUTLINED_FUNCTION_36();

    return _SnippetViewContainer.data()();
  }

  else
  {
    sub_18F0EF1A8((v10 + 8), &qword_1EACD0550, &qword_18F547EB0);
    OUTLINED_FUNCTION_26_30();
    if (!v16)
    {
      OUTLINED_FUNCTION_66_7();
      sub_18F0F21A8(0, &qword_1EACD0558, 0x1E69AD0A0);
      objc_allocWithZone(MEMORY[0x1E69AD0A8]);
      v17 = OUTLINED_FUNCTION_8_40();
      sub_18F307048(v17, v18, v19, v20);
      v21 = OUTLINED_FUNCTION_123();
      sub_18F16AAE0(v21, v22);
      v23 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      OUTLINED_FUNCTION_121_3(v23, sel_initWithCanReplacePrintableText_);
      v24 = OUTLINED_FUNCTION_9_39();
      sub_18F1F0D28(v24, v25, v26, v27, v28);
      v29 = OUTLINED_FUNCTION_8_40();
      sub_18F138888(v29, v30, v31, v32);
    }

    OUTLINED_FUNCTION_16_35();
    OUTLINED_FUNCTION_36();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }
}

unint64_t sub_18F306EDC()
{
  result = qword_1EACD5E40;
  if (!qword_1EACD5E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0E30, &qword_18F5557A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD5E40);
  }

  return result;
}

uint64_t sub_18F306F94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F306FF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F307048(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_18F16AAE0(result, a2);

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_82_3@<X0>(uint64_t a1@<X8>)
{

  return sub_18F0F9F88(v3 + a1, v4 + 104, v2, v1);
}

id OUTLINED_FUNCTION_95_6(uint64_t a1)
{

  return sub_18F1A0DE4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_97_4()
{

  return sub_18F0FD724(v0, v1 + 424);
}

uint64_t OUTLINED_FUNCTION_119_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

void IntentResultContainer.init(value:opensIntent:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_18();
  v72 = v28;
  v74 = v29;
  v73 = v30;
  v75 = v31;
  v76 = v33;
  v77 = v32;
  v35 = v34;
  v37 = v36;
  v71 = v38;
  v69 = a26;
  v68 = a25;
  v67 = a24;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_28_0();
  v66 = v41;
  OUTLINED_FUNCTION_172_1();
  v42 = sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v44 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_101();
  v70 = a22;
  sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v47 = v46;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  v64 = *a21;
  v49 = *(v47 + 16);
  v79 = v37;
  v65 = v51;
  v49(&v62 - v50, v37);
  v52 = OUTLINED_FUNCTION_204();
  v78 = v35;
  v53(v52, v35, v42);
  v54 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_106(v54, v55, a23);
  v63 = v42;
  if (v56)
  {
    (*(v44 + 8))(v27, v42);
    OUTLINED_FUNCTION_11_2();
  }

  else
  {
    v83[3] = a23;
    v83[4] = a27;
    __swift_allocate_boxed_opaque_existential_1(v83);
    OUTLINED_FUNCTION_78_0();
    (*(v57 + 32))();
  }

  OUTLINED_FUNCTION_170_1();
  v58 = v77;
  sub_18F0F9F88(v77, &v82, &qword_1EACD0550, &qword_18F547EB0);
  v59 = v76;
  sub_18F0F9F88(v76, v66, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0F9F88(v75, &v81, &qword_1EACD0D70, &qword_18F555640);
  v80 = v64;
  IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)();
  v60 = OUTLINED_FUNCTION_287();
  sub_18F0EF1A8(v60, v61, &qword_18F555640);
  sub_18F0EF1A8(v59, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF1A8(v58, &qword_1EACD0550, &qword_18F547EB0);
  (*(v44 + 8))(v78, v63);
  (*(v47 + 8))(v79, v65);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F307524()
{
  OUTLINED_FUNCTION_69();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v1[18] = *(v3 - 8);
  v1[19] = OUTLINED_FUNCTION_34_0();
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3075CC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_204();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5EC0, &qword_18F555CE0);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v1 + 56), v1 + 16);
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 16), v4);
    OUTLINED_FUNCTION_155_0();
    v16 = (v6 + *v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 160) = v7;
    *v7 = v8;
    v7[1] = sub_18F3077B8;
    v9 = *(v1 + 120);
    v10 = *(v1 + 128);
    v11 = *(v1 + 96);
    v12 = *(v1 + 104);

    return v16(v11, v12, v9, v10, v4, v5);
  }

  else
  {
    v14 = *(v1 + 96);
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0;
    sub_18F0EF1A8(v1 + 56, &qword_1EACD5EC8, &qword_18F555CE8);
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0;

    OUTLINED_FUNCTION_71();

    return v15();
  }
}

uint64_t sub_18F3077B8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F30789C()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v1();
}

id sub_18F3078FC()
{
  v0 = sub_18F520E6C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v2 = objc_allocWithZone(MEMORY[0x1E69ACD48]);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_65_11();
  return sub_18F316A78(v3, v4, v5, v6, v7, v8, v9, v10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_18F3079A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  OUTLINED_FUNCTION_21();
  v14 = v13;
  v16 = v15;
  *(v12 + 152) = a11;
  *(v12 + 160) = v11;
  *(v12 + 218) = a10;
  *(v12 + 136) = v17;
  *(v12 + 144) = a9;
  *(v12 + 217) = v18;
  *(v12 + 120) = v19;
  *(v12 + 128) = v20;
  *(v12 + 112) = v21;
  *(v12 + 216) = v22;
  OUTLINED_FUNCTION_212();
  *(v12 + 168) = v23;
  v24 = OUTLINED_FUNCTION_34_0();
  v25 = *v16;
  *(v12 + 176) = v24;
  *(v12 + 184) = v25;
  *(v12 + 192) = *v14;
  v26 = OUTLINED_FUNCTION_9_12();
  return OUTLINED_FUNCTION_305(v26, v27, v28);
}

uint64_t sub_18F307A74()
{
  OUTLINED_FUNCTION_24_4();
  v1 = OUTLINED_FUNCTION_204();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5EB0, &qword_18F555CC8);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    *(v0 + 96) = v3;
    *(v0 + 104) = v4;
    OUTLINED_FUNCTION_14_6();
    v8 = v5 + *v5;
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v6[1] = sub_18F307CBC;
    OUTLINED_FUNCTION_171(*(v0 + 128));

    __asm { BRAA            X8, X16 }
  }

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_18F0EF1A8(v0 + 56, &qword_1EACD5EB8, &qword_18F555CD0);
  return sub_18F522A3C();
}

uint64_t sub_18F307CBC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = v3;

  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F307DA8()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];
  v2 = v0[26];

  return v1(v2);
}

void static IntentResult.result<>(dialog:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_284();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_23();
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  OUTLINED_FUNCTION_0_83();
  v5 = OUTLINED_FUNCTION_82();
  sub_18F317494(v5, v6, v7);
  v8 = type metadata accessor for IntentDialog(0);
  v9 = OUTLINED_FUNCTION_47_15();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v28[4] = 0;
  v12.n128_f64[0] = OUTLINED_FUNCTION_242();
  v27[4] = 0;
  OUTLINED_FUNCTION_7_45(v12);
  OUTLINED_FUNCTION_37_21(xmmword_18F543360);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E30, &qword_18F5557A0);
  OUTLINED_FUNCTION_3_52(v13);
  v14 = v1[20];
  OUTLINED_FUNCTION_61_9(v1[19]);
  *(v0 + v14) = v15;
  OUTLINED_FUNCTION_2_70();
  OUTLINED_FUNCTION_35_17();
  OUTLINED_FUNCTION_1_68(v16);
  *(v0 + v1[27]) = 0;
  OUTLINED_FUNCTION_5_48(v17);
  sub_18F0FF5DC(v27, v18, &qword_1EACD0D70, &qword_18F555640);
  OUTLINED_FUNCTION_142_2();
  v21 = OUTLINED_FUNCTION_315(v19, v20, &qword_1EACD0550, &qword_18F547EB0);
  OUTLINED_FUNCTION_209(v21, v22, &qword_1EACD0D78, &unk_18F555790);
  OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_36_22();
  OUTLINED_FUNCTION_208(v23, v24, &qword_1EACD0D80, &qword_18F54A340);
  v25 = OUTLINED_FUNCTION_59_6();
  sub_18F0FF5DC(v25, v26, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0FF5DC(v28, v2, &qword_1EACD0D70, &qword_18F555640);
  OUTLINED_FUNCTION_12_42();
  OUTLINED_FUNCTION_16();
}

void IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetIntent:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_114_5(v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19();
  v12 = OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_11_0();
  v14 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v17 = OUTLINED_FUNCTION_146_1(v16, v37);
  v18(v17);
  sub_18F0F9F88(v1, &v65, &qword_1EACD0D70, &qword_18F555640);
  v64 = v0;
  OUTLINED_FUNCTION_127_2();
  v19 = v38;
  sub_18F0F9F88(v38, v63, &qword_1EACD0D78, &unk_18F555790);
  memset(v60, 0, sizeof(v60));
  v61 = 1;
  v62 = 0;
  v20 = OUTLINED_FUNCTION_245(xmmword_18F543360);
  sub_18F0F9F88(v20, v21, &qword_1EACCF7A0, &unk_18F53E6F0);
  v22 = OUTLINED_FUNCTION_298();
  sub_18F0F9F88(v22, v23, v24, &qword_18F555640);
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_309(v25, v26, v27, v28, v29, v63, v60, v30, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, 0, 0);
  OUTLINED_FUNCTION_241();
  sub_18F0EF1A8(v31, v32, v33);
  sub_18F0EF1A8(v0, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF1A8(v19, &qword_1EACD0D78, &unk_18F555790);
  OUTLINED_FUNCTION_241();
  sub_18F0EF1A8(v34, v35, v36);
  (*(v14 + 8))(v48, v12);
  OUTLINED_FUNCTION_16();
}

uint64_t OpensIntentHint.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t IntentResultContainer.value.getter(uint64_t a1)
{
  sub_18F52254C();
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_56();

  return v2(v1);
}

uint64_t IntentResultContainer.value.setter(uint64_t a1, uint64_t a2)
{
  sub_18F52254C();
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_22();

  return v3(v2);
}

uint64_t IntentResultContainer.opensIntent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  sub_18F52254C();
  OUTLINED_FUNCTION_10_0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t IntentResultContainer.opensIntent.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  sub_18F52254C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t IntentResultContainer.activityIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 76));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void sub_18F308568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_18();
  v84 = v31;
  v33 = v32;
  v83 = v34;
  v80 = v35;
  v81 = v36;
  v85 = v37;
  v39 = v38;
  v74 = v40;
  v42 = v41;
  v87 = sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v44 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_28_0();
  v86 = v46;
  v73 = *v39;
  v78 = v33[1];
  v79 = *v33;
  v77 = *(v33 + 32);
  v82 = *a26;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, a27);
  v88[0] = a27;
  v88[1] = a28;
  v89 = a29;
  v90 = a30;
  v91 = a31;
  v50 = type metadata accessor for IntentResultContainer(0, v88);
  v51 = v50[17];
  type metadata accessor for IntentDialog(0);
  v76 = v51;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v56 = OUTLINED_FUNCTION_28_37(v50[18]);
  __swift_storeEnumTagSinglePayload(v56, v57, v58, a28);
  v71 = v50[20];
  *(v42 + v71) = 2;
  v59 = (v42 + v50[21]);
  *(v59 + 25) = 0u;
  *v59 = 0u;
  v59[1] = 0u;
  OUTLINED_FUNCTION_32_30(v50[22], 0);
  v60 = v42 + v50[23];
  *v60 = 0;
  *(v60 + 8) = 0;
  *(v60 + 16) = 0;
  *(v60 + 24) = 1;
  *(v60 + 32) = 0;
  v61 = v42 + v50[24];
  *(v61 + 32) = v62;
  *(v61 + 48) = v62;
  *v61 = v62;
  *(v61 + 16) = v62;
  *(v61 + 64) = xmmword_18F543360;
  *(v61 + 80) = 0;
  v63 = v42 + v50[25];
  *(v63 + 32) = 0;
  *v63 = v62;
  *(v63 + 16) = v62;
  v72 = v50[27];
  *(v42 + v72) = 0;
  v64 = v42 + v50[29];
  v65 = MEMORY[0x1E69E73E0];
  *(v64 + 32) = 0;
  *v64 = v62;
  *(v64 + 16) = v62;
  if (a27 == v65)
  {
    (*(v44 + 8))(v74, v87);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  }

  else
  {
    (*(v44 + 32))(v86, v74, v87);
  }

  v70 = (v42 + v50[19]);
  v75 = v50[26];
  (*(v44 + 40))(v42, v86, v87);
  sub_18F0FF5DC(v80, v64, &qword_1EACD0D70, &qword_18F555640);
  *(v42 + v71) = v73;
  sub_18F0FF5DC(v81, v59, &qword_1EACD0550, &qword_18F547EB0);
  sub_18F0FF5DC(v83, a30, &qword_1EACD0D78, &unk_18F555790);
  sub_18F138888(*v60, *(v60 + 8), *(v60 + 16), *(v60 + 24));
  *v60 = v79;
  *(v60 + 16) = v78;
  *(v60 + 32) = v77;
  sub_18F0FF5DC(v84, v61, &qword_1EACD0D80, &qword_18F54A340);
  sub_18F0FF5DC(a21, v42 + v76, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0FF5DC(a22, v63, &qword_1EACD0D70, &qword_18F555640);
  *(v42 + v75) = a23;
  *v70 = a24;
  v70[1] = a25;
  *(v42 + v72) = v82;
  *(v42 + v50[28]) = v85;
  OUTLINED_FUNCTION_16();
}

void IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_114_5(v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19();
  v12 = OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_11_0();
  v14 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v17 = OUTLINED_FUNCTION_146_1(v16, v37);
  v18(v17);
  sub_18F0F9F88(v1, &v67, &qword_1EACD0D70, &qword_18F555640);
  v66 = v0;
  v19 = v38;
  sub_18F0F9F88(v38, &v65, &qword_1EACD0550, &qword_18F547EB0);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  memset(v60, 0, sizeof(v60));
  v61 = 1;
  v62 = 0;
  v20 = OUTLINED_FUNCTION_245(xmmword_18F543360);
  sub_18F0F9F88(v20, v21, &qword_1EACCF7A0, &unk_18F53E6F0);
  v22 = OUTLINED_FUNCTION_298();
  sub_18F0F9F88(v22, v23, v24, &qword_18F555640);
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_309(v25, v26, v27, v28, v29, v63, v60, v30, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, 0, 0);
  OUTLINED_FUNCTION_241();
  sub_18F0EF1A8(v31, v32, v33);
  sub_18F0EF1A8(v0, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF1A8(v19, &qword_1EACD0550, &qword_18F547EB0);
  OUTLINED_FUNCTION_241();
  sub_18F0EF1A8(v34, v35, v36);
  (*(v14 + 8))(v48, v12);
  OUTLINED_FUNCTION_16();
}

void static IntentResult.result<A>(value:)()
{
  OUTLINED_FUNCTION_279();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_23();
  v4 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_13_7();
  v6 = OUTLINED_FUNCTION_43_1();
  v7(v6);
  v8 = OUTLINED_FUNCTION_31_32();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v0);
  v35 = 1;
  type metadata accessor for IntentDialog(0);
  v33 = 0u;
  memset(v34, 0, 25);
  v11 = OUTLINED_FUNCTION_33_23();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v15 = sub_18F199AE0();
  v16 = MEMORY[0x1E69E73E0];
  OUTLINED_FUNCTION_220();
  sub_18F0F9044(v17);
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_65_11();
  IntentResultContainer.init(value:opensIntent:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)(v18, v19, v20, v21, v22, v23, v24, v25, &v28, v0, v16, v16, v16, v1, v15, v26, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, v32, v33, *(&v33 + 1), v34[0]);
}

void static IntentResult.result<A>(opensIntent:)()
{
  OUTLINED_FUNCTION_279();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_23();
  v4 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_6();
  v34 = 1;
  OUTLINED_FUNCTION_13_7();
  v6 = OUTLINED_FUNCTION_43_1();
  v7(v6);
  v8 = OUTLINED_FUNCTION_31_32();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v0);
  type metadata accessor for IntentDialog(0);
  v32 = 0u;
  memset(v33, 0, 25);
  v11 = OUTLINED_FUNCTION_33_23();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v15 = sub_18F199B34();
  v16 = MEMORY[0x1E69E73E0];
  sub_18F0F9044(&v27);
  OUTLINED_FUNCTION_65_11();
  IntentResultContainer.init(value:opensIntent:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)(v17, v18, v19, v20, v21, v22, v23, v24, &v27, v16, v0, v16, v16, v15, v1, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31, v32, *(&v32 + 1), v33[0]);
}

{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_173_1();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_296();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23();
  *(v2 - 104) = v6;
  *(v2 - 96) = v4;
  __swift_allocate_boxed_opaque_existential_1((v2 - 128));
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_143_0();
  v9();
  v10 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_98_5();
  v11 = OUTLINED_FUNCTION_33_23();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_7_45(0);
  OUTLINED_FUNCTION_37_21(xmmword_18F543360);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0158, &unk_18F54A330);
  OUTLINED_FUNCTION_3_52(v14);
  v15 = v6[20];
  OUTLINED_FUNCTION_61_9(v6[19]);
  *(v0 + v15) = v16;
  OUTLINED_FUNCTION_2_70();
  OUTLINED_FUNCTION_26_31();
  OUTLINED_FUNCTION_1_68(v17);
  *(v0 + v6[27]) = 0;
  OUTLINED_FUNCTION_5_48(v18);
  sub_18F0FF5DC(v2 - 128, v19, &qword_1EACD0D70, &qword_18F555640);
  OUTLINED_FUNCTION_136_1();
  v20 = sub_18F0FF5DC(v2 - 176, v1, &qword_1EACD0550, &qword_18F547EB0);
  OUTLINED_FUNCTION_209(v20, v21, &qword_1EACD0D78, &unk_18F555790);
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_208(v22, v23, &qword_1EACD0D80, &qword_18F54A340);
  v24 = OUTLINED_FUNCTION_59_6();
  sub_18F0FF5DC(v24, v25, &qword_1EACCF7A0, &unk_18F53E6F0);
  v26 = OUTLINED_FUNCTION_183_0();
  sub_18F0FF5DC(v26, v27, &qword_1EACD0D70, &qword_18F555640);
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_16();
}

void static IntentResult.result<A>(opensIntent:hint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v14 = 1;
  v13[3] = a3;
  v13[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_13_7();
  (*(v8 + 16))();
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_99_6();
  v9 = OUTLINED_FUNCTION_33_23();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_18F199B34();
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_71_7();
  IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)();
}

void static IntentResult.result<A>(opensIntent:hint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_173_1();
  v17 = v16;
  OUTLINED_FUNCTION_97_5();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v20);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23();
  v45 = *v13;
  *(v15 - 104) = v12;
  *(v15 - 96) = v17;
  __swift_allocate_boxed_opaque_existential_1((v15 - 128));
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_235();
  v22();
  v23 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_98_5();
  v24 = OUTLINED_FUNCTION_33_23();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  OUTLINED_FUNCTION_7_45(0);
  OUTLINED_FUNCTION_37_21(xmmword_18F543360);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0158, &unk_18F54A330);
  OUTLINED_FUNCTION_281(v27);
  v29 = OUTLINED_FUNCTION_28_37(v28);
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v23);
  OUTLINED_FUNCTION_21_28();
  v44 = v32;
  OUTLINED_FUNCTION_136_1();
  OUTLINED_FUNCTION_2_70();
  OUTLINED_FUNCTION_26_31();
  OUTLINED_FUNCTION_1_68(v33);
  v34 = v27[27];
  v43 = v27[26];
  *(v19 + v34) = 0;
  OUTLINED_FUNCTION_5_48(v35);
  sub_18F0FF5DC(v15 - 128, v36, &qword_1EACD0D70, &qword_18F555640);
  *(v19 + v14) = v45;
  v37 = sub_18F0FF5DC(v15 - 176, v11, &qword_1EACD0550, &qword_18F547EB0);
  OUTLINED_FUNCTION_209(v37, v38, &qword_1EACD0D78, &unk_18F555790);
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_208(v39, v40, &qword_1EACD0D80, &qword_18F54A340);
  sub_18F0FF5DC(v11, v19 + a11, &qword_1EACCF7A0, &unk_18F53E6F0);
  v41 = OUTLINED_FUNCTION_183_0();
  sub_18F0FF5DC(v41, v42, &qword_1EACD0D70, &qword_18F555640);
  *(v19 + v43) = 0;
  *v44 = 0;
  v44[1] = 0;
  *(v19 + v34) = 0;
  *(v19 + v27[28]) = 0;
  OUTLINED_FUNCTION_16();
}

void static IntentResult.result<A, B>(value:opensIntent:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_7();
  v16 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19();
  v18 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_31_0();
  (*(v20 + 16))(v1, v13, v9);
  v21 = OUTLINED_FUNCTION_39_18();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v9);
  OUTLINED_FUNCTION_13_7();
  (*(v24 + 16))(v0, v11, v7);
  v25 = OUTLINED_FUNCTION_64_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v7);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_72_8();
  v28 = OUTLINED_FUNCTION_80_5();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_8();
  v32 = MEMORY[0x1E69E73E0];
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_56();
  sub_18F0F9044(v33);
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_65_11();
  IntentResultContainer.init(value:opensIntent:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v32, v32, v5, v3, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_210();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23();
  v11 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_13_7();
  (*(v13 + 16))(v1, v2, v0);
  v14 = OUTLINED_FUNCTION_31_32();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v0);
  v31[3] = v8;
  v31[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(v31);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_143_0();
  v17();
  v30 = 2;
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_98_5();
  v18 = OUTLINED_FUNCTION_33_23();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_18F199AE0();
  OUTLINED_FUNCTION_15_35();
  v28 = v6;
  v29 = v22;
  v26 = MEMORY[0x1E69E73E0];
  v27 = MEMORY[0x1E69E73E0];
  v24 = v0;
  v25 = MEMORY[0x1E69E73E0];
  v23 = &v23;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_71_7();
  IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)();
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_16();
}

void static IntentResult.result<A, B>(value:opensIntent:hint:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_226();
  v4 = v3;
  OUTLINED_FUNCTION_267();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_7();
  v7 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_207();
  v9();
  v10 = OUTLINED_FUNCTION_64_6();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  v19 = v0;
  v20 = v2;
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_19_33();
  (*(v13 + 16))();
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_98_5();
  v14 = OUTLINED_FUNCTION_80_5();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_6_47();
  OUTLINED_FUNCTION_111_3();
  IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)();
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_228();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_23();
  v7 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_207();
  v9();
  v10 = OUTLINED_FUNCTION_31_32();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v0);
  v18[3] = v4;
  v18[4] = v2;
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_143_0();
  v13();
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_98_5();
  v14 = OUTLINED_FUNCTION_33_23();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_18F199AE0();
  OUTLINED_FUNCTION_15_35();
  OUTLINED_FUNCTION_6_47();
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_71_7();
  IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)();
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_16();
}

void static IntentResult.result<A>(value:dialog:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_229();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v8 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_13_7();
  (*(v10 + 16))(v3, v5, v0);
  v11 = OUTLINED_FUNCTION_31_32();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v0);
  v34 = 1;
  v32 = 0u;
  memset(v33, 0, 25);
  OUTLINED_FUNCTION_0_83();
  sub_18F317494(v4, v2, v14);
  v15 = type metadata accessor for IntentDialog(0);
  v16 = OUTLINED_FUNCTION_47_15();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_8();
  v19 = sub_18F199AE0();
  v20 = MEMORY[0x1E69E73E0];
  sub_18F0F9044(v31);
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_65_11();
  IntentResultContainer.init(value:opensIntent:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)(v21, v22, v23, v24, v25, v26, v27, v28, v31, v0, v20, v20, v15, v1, v19, v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v32, *(&v32 + 1), v33[0]);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_16();
}

void static IntentResult.result<A, B>(value:opensIntent:dialog:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v48 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_7();
  v17 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_19();
  v19 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v19);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_31_0();
  (*(v21 + 16))(v1, v13, v9);
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v9);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_207();
  v25();
  v26 = OUTLINED_FUNCTION_64_6();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v7);
  OUTLINED_FUNCTION_0_83();
  sub_18F317494(v11, v0, v29);
  v30 = type metadata accessor for IntentDialog(0);
  v31 = OUTLINED_FUNCTION_42_12();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_8();
  v34 = MEMORY[0x1E69E73E0];
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_56();
  sub_18F0F9044(v35);
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_65_11();
  IntentResultContainer.init(value:opensIntent:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v34, v30, v5, v3, v47, v48, v49, v50, v51, v52, v53, v54, v55, 0, 0, 0);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_267();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23();
  v11 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_207();
  v13();
  v14 = OUTLINED_FUNCTION_31_32();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
  v23[3] = v4;
  v23[4] = v2;
  __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_181();
  v17();
  OUTLINED_FUNCTION_170_1();
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_0_83();
  sub_18F317494(v8, v0, v18);
  v19 = type metadata accessor for IntentDialog(0);
  v20 = OUTLINED_FUNCTION_47_15();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  sub_18F199AE0();
  OUTLINED_FUNCTION_15_35();
  OUTLINED_FUNCTION_6_47();
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_71_7();
  IntentResultContainer.init(value:opensIntent:opensIntentHint:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)();
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_16();
}

void static IntentResult.result<A>(opensIntent:dialog:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_229();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v8 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_6();
  v34 = 1;
  OUTLINED_FUNCTION_13_7();
  (*(v10 + 16))(v3, v5, v0);
  v11 = OUTLINED_FUNCTION_31_32();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v0);
  v32 = 0u;
  memset(v33, 0, 25);
  OUTLINED_FUNCTION_0_83();
  sub_18F317494(v4, v2, v14);
  v15 = type metadata accessor for IntentDialog(0);
  v16 = OUTLINED_FUNCTION_47_15();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_8();
  v19 = sub_18F199B34();
  v20 = MEMORY[0x1E69E73E0];
  sub_18F0F9044(v31);
  OUTLINED_FUNCTION_65_11();
  IntentResultContainer.init(value:opensIntent:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)(v21, v22, v23, v24, v25, v26, v27, v28, v31, v20, v0, v20, v15, v19, v1, v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v32, *(&v32 + 1), v33[0]);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_173_1();
  v5 = v4;
  OUTLINED_FUNCTION_97_5();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23();
  *(v3 - 104) = v1;
  *(v3 - 96) = v5;
  __swift_allocate_boxed_opaque_existential_1((v3 - 128));
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_235();
  v10();
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_0_83();
  sub_18F317494(v2, v0, v11);
  v12 = type metadata accessor for IntentDialog(0);
  v13 = OUTLINED_FUNCTION_47_15();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_7_45(0);
  OUTLINED_FUNCTION_37_21(xmmword_18F543360);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E30, &qword_18F5557A0);
  OUTLINED_FUNCTION_3_52(v16);
  v17 = v1[20];
  OUTLINED_FUNCTION_61_9(v1[19]);
  *(v7 + v17) = v18;
  OUTLINED_FUNCTION_2_70();
  OUTLINED_FUNCTION_35_17();
  OUTLINED_FUNCTION_1_68(v19);
  *(v7 + v1[27]) = 0;
  OUTLINED_FUNCTION_5_48(v20);
  sub_18F0FF5DC(v3 - 128, v21, &qword_1EACD0D70, &qword_18F555640);
  OUTLINED_FUNCTION_142_2();
  v22 = sub_18F0FF5DC(v3 - 176, v0, &qword_1EACD0550, &qword_18F547EB0);
  OUTLINED_FUNCTION_209(v22, v23, &qword_1EACD0D78, &unk_18F555790);
  OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_36_22();
  OUTLINED_FUNCTION_208(v24, v25, &qword_1EACD0D80, &qword_18F54A340);
  v26 = OUTLINED_FUNCTION_59_6();
  sub_18F0FF5DC(v26, v27, &qword_1EACCF7A0, &unk_18F53E6F0);
  v28 = OUTLINED_FUNCTION_183_0();
  sub_18F0FF5DC(v28, v29, &qword_1EACD0D70, &qword_18F555640);
  OUTLINED_FUNCTION_12_42();
  OUTLINED_FUNCTION_16();
}

void static IntentResult.result<>(snippetModel:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_263(v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_6();
  v10.n128_f64[0] = OUTLINED_FUNCTION_16_36();
  OUTLINED_FUNCTION_262(v10);
  v23[4] = xmmword_18F543360;
  v24 = 0;
  v11 = type metadata accessor for IntentDialog(0);
  v12 = OUTLINED_FUNCTION_66_8();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5E70, &qword_18F5557A8);
  OUTLINED_FUNCTION_257();
  v20 = v15;
  v16 = OUTLINED_FUNCTION_28_37(v15);
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  OUTLINED_FUNCTION_94_7();
  sub_18F0FF5DC(&v27, v11, &qword_1EACD0D70, &qword_18F555640);
  *(v0 + v19) = 2;
  sub_18F0FF5DC(&v26, v2, &qword_1EACD0550, &qword_18F547EB0);
  sub_18F0FF5DC(&v25, v1, &qword_1EACD0D78, &unk_18F555790);
  sub_18F138888(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  OUTLINED_FUNCTION_259();
  sub_18F0FF5DC(v23, v5, &qword_1EACD0D80, &qword_18F54A340);
  sub_18F0FF5DC(v1, v0 + v20, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0FF5DC(v21, v4, &qword_1EACD0D70, &qword_18F555640);
  OUTLINED_FUNCTION_156_1();
  OUTLINED_FUNCTION_16();
}

void static IntentResult.result<>(pluginContainer:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_284();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_23();
  v6 = *v1;
  v28 = *(v1 + 16);
  v29 = *(v1 + 24);
  v30 = *(v1 + 8);
  v27 = *(v1 + 32);
  OUTLINED_FUNCTION_9_40();
  OUTLINED_FUNCTION_68_9(xmmword_18F543360);
  v7 = type metadata accessor for IntentDialog(0);
  v8 = OUTLINED_FUNCTION_33_23();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_87_7();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5E70, &qword_18F5557A8);
  v12 = OUTLINED_FUNCTION_28_37(v11[17]);
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  OUTLINED_FUNCTION_139_1();
  v16 = &v0[v15];
  *(v16 + 25) = 0u;
  *v16 = 0u;
  v16[1] = 0u;
  v17 = &v0[v11[22]];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v18 = &v0[v11[23]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = v19;
  v18[32] = 0;
  OUTLINED_FUNCTION_14_37(0);
  *&v0[v11[27]] = 0;
  OUTLINED_FUNCTION_32_30(v11[29], v20);
  *v0 = v21;
  sub_18F16AAE0(v6, v30);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F0FF5DC(&v34, v2, &qword_1EACD0D70, &qword_18F555640);
  OUTLINED_FUNCTION_161_1();
  sub_18F0FF5DC(&v33, v16, &qword_1EACD0550, &qword_18F547EB0);
  sub_18F0FF5DC(&v32, v17, &qword_1EACD0D78, &unk_18F555790);
  v22 = sub_18F138888(*v18, *(v18 + 1), *(v18 + 2), *(v18 + 3));
  *v18 = v6;
  *(v18 + 1) = v30;
  *(v18 + 2) = v28;
  *(v18 + 3) = v29;
  v18[32] = v27;
  OUTLINED_FUNCTION_209(v22, v23, &qword_1EACD0D80, &qword_18F54A340);
  v24 = OUTLINED_FUNCTION_280();
  sub_18F0FF5DC(v24, v25, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0FF5DC(&v31, v3, &qword_1EACD0D70, &qword_18F555640);
  OUTLINED_FUNCTION_258();
  OUTLINED_FUNCTION_57_11(v26);
  OUTLINED_FUNCTION_16();
}