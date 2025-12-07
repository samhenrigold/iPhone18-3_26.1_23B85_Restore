uint64_t sub_1C8A45CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE28, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A45D6C(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B40A8, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A45DDC(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B40A8, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A45E5C()
{
  if (qword_1EC2B5D18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BE978;
  v2 = unk_1EC2BE980;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000011, 0x80000001C8C27AC0);

  qword_1EC2BE9D0 = v1;
  *algn_1EC2BE9D8 = v2;
  return result;
}

uint64_t sub_1C8A45F94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C8A4600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
  sub_1C8776B78(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant, &protocol conformance descriptor for Siri_Nlu_External_MultilingualVariant);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_206_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_66();
  type metadata accessor for Siri_Nlu_External_MultilingualVariant(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33();
  v21 = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(0);
  OUTLINED_FUNCTION_173_4(v21);
  OUTLINED_FUNCTION_17_6(v11);
  if (v22)
  {
    v24 = sub_1C8778ED8(v11, &qword_1EC2BEBA0, &qword_1C8C10AD0);
    v23 = a10;
LABEL_6:
    OUTLINED_FUNCTION_144(v24, v25, v23);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_97_4();
  sub_1C8791864();
  sub_1C8776B78(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant, &protocol conformance descriptor for Siri_Nlu_External_MultilingualVariant);
  OUTLINED_FUNCTION_328();
  sub_1C8BD4E2C();
  v24 = sub_1C8A43180();
  if (!v10)
  {
    v23 = a10;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_MultilingualVariant(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_104_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEBE8, &qword_1C8C10AF0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_74();
  v16 = *(type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue(v15) + 20);
  v17 = *(v13 + 56);
  OUTLINED_FUNCTION_166_4(v1 + v16, v2);
  OUTLINED_FUNCTION_166_4(v0 + v16, v2 + v17);
  OUTLINED_FUNCTION_73(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_73(v2 + v17);
    if (v22)
    {
      sub_1C8778ED8(v2, &qword_1EC2BEBA0, &qword_1C8C10AD0);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_28();
      v27 = sub_1C8776B78(v25, v26, MEMORY[0x1E69AAC10]);
      v23 = OUTLINED_FUNCTION_159(v27);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v18 = OUTLINED_FUNCTION_268();
  sub_1C87867A0(v18, v19, v20, v21);
  OUTLINED_FUNCTION_73(v2 + v17);
  if (v22)
  {
    sub_1C8A43180();
LABEL_9:
    sub_1C8778ED8(v2, &qword_1EC2BEBE8, &qword_1C8C10AF0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_97_4();
  sub_1C8791864();
  v24 = static Siri_Nlu_External_MultilingualVariant.== infix(_:_:)(v3, v8);
  OUTLINED_FUNCTION_220();
  sub_1C8A43180();
  sub_1C8A43180();
  sub_1C8778ED8(v2, &qword_1EC2BEBA0, &qword_1C8C10AD0);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v23);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A464E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE20, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A46568(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2BECF0, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A465D8(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2BECF0, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A46658()
{
  if (qword_1EC2B5D18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BE978;
  v2 = unk_1EC2BE980;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C27AA0);

  qword_1EC2BE9F8 = v1;
  unk_1EC2BEA00 = v2;
  return result;
}

void sub_1C8A46740()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C8BE6F30;
  v12 = v11 + v10 + v9[14];
  *(v11 + v10) = 1;
  *v12 = v5;
  *(v12 + 8) = v3;
  *(v12 + 16) = 2;
  v13 = *v1;
  sub_1C8BD50FC();
  OUTLINED_FUNCTION_21();
  (*(v14 + 104))(v12, v13);
  sub_1C8BD510C();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8786894();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  v3 = v1 + *(type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(v2) + 20);
  if (!*(v3 + 8))
  {
    return OUTLINED_FUNCTION_15();
  }

  OUTLINED_FUNCTION_120_2(v3);
  result = sub_1C8BD4DDC();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue(v0);
  OUTLINED_FUNCTION_1();
  if (v3)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_35(v2);
      v6 = v6 && v4 == v5;
      if (v6 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v1)
  {
LABEL_8:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_28();
    v9 = sub_1C8776B78(v7, v8, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_159(v9) & 1;
  }

  return 0;
}

uint64_t sub_1C8A46AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE18, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A46B24(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2BED08, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A46B94(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2BED08, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue, &protocol conformance descriptor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A46C2C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEA20);
  __swift_project_value_buffer(v0, qword_1EC2BEA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale_id";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "device_type";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "user_interface_idiom";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "turn_input_rules";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A46EDC()
{
  OUTLINED_FUNCTION_9_2();
  v1 = v0(0);
  OUTLINED_FUNCTION_75_1(*(v1 + 32));
  return sub_1C8BD4C1C();
}

uint64_t Siri_Nlu_Internal_NluRequestRule.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_53_7();
  type metadata accessor for Siri_Nlu_Internal_NluRequestRule(v1);
  OUTLINED_FUNCTION_25_0();
  if (!*(v2 + 8) || (OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_513();
    if (!v4 || (OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v0))
    {
      OUTLINED_FUNCTION_513();
      if (!v5 || (OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v0))
      {
        OUTLINED_FUNCTION_513();
        if (!v6 || (OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v0))
        {
          OUTLINED_FUNCTION_514();
          if (!v7 || (type metadata accessor for Siri_Nlu_Internal_TurnInputRule(0), sub_1C8776B78(&qword_1EC2B4910, type metadata accessor for Siri_Nlu_Internal_TurnInputRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule), v8 = OUTLINED_FUNCTION_117(), result = OUTLINED_FUNCTION_69_6(v8, 5, v9, v10), !v0))
          {
            OUTLINED_FUNCTION_212_2();
            OUTLINED_FUNCTION_119();
            return sub_1C8BD49DC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C8A47244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE10, type metadata accessor for Siri_Nlu_Internal_NluRequestRule, &protocol conformance descriptor for Siri_Nlu_Internal_NluRequestRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A472C4(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B3050, type metadata accessor for Siri_Nlu_Internal_NluRequestRule, &protocol conformance descriptor for Siri_Nlu_Internal_NluRequestRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A47334(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B3050, type metadata accessor for Siri_Nlu_Internal_NluRequestRule, &protocol conformance descriptor for Siri_Nlu_Internal_NluRequestRule);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A473CC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEA38);
  __swift_project_value_buffer(v0, qword_1EC2BEA38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "utterance_rule";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "positive_context_rules";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "negative_context_rules";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_TurnInputRule.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_127_2();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v9 = OUTLINED_FUNCTION_66();
  v15 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v9);
  OUTLINED_FUNCTION_218_4(*(v15 + 28));
  OUTLINED_FUNCTION_17_6(v2);
  if (v10)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6020, &qword_1C8BE6CD8);
  }

  else
  {
    sub_1C8791864();
    sub_1C8776B78(&qword_1EC2B4938, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule);
    OUTLINED_FUNCTION_328();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_136();
    sub_1C8A43180();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(0), OUTLINED_FUNCTION_99_4(), sub_1C8776B78(v11, v12, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.ContextRule), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_328(), sub_1C8BD4E0C(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(0), OUTLINED_FUNCTION_99_4(), sub_1C8776B78(v13, v14, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.ContextRule), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_328(), sub_1C8BD4E0C(), !v1))
    {
      sub_1C8BD49DC();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_TurnInputRule.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_102();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6020, &qword_1C8BE6CD8);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_212();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6028, &unk_1C8BE6CE0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_45();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v7);
  OUTLINED_FUNCTION_192_3();
  OUTLINED_FUNCTION_222_3();
  v8 = OUTLINED_FUNCTION_43_1(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_43_1(v0 + v5);
    if (v10)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6020, &qword_1C8BE6CD8);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B6028, &unk_1C8BE6CE0);
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_226_3(v8, v9, &qword_1EC2B6020, &qword_1C8BE6CD8);
  OUTLINED_FUNCTION_43_1(v0 + v5);
  if (v10)
  {
    OUTLINED_FUNCTION_202_3();
    goto LABEL_9;
  }

  sub_1C8791864();
  OUTLINED_FUNCTION_246();
  static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.== infix(_:_:)();
  v12 = v11;
  OUTLINED_FUNCTION_268();
  sub_1C8A43180();
  OUTLINED_FUNCTION_516();
  sub_1C8A43180();
  sub_1C8778ED8(v0, &qword_1EC2B6020, &qword_1C8BE6CD8);
  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_1C87DDED0();
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C87DDED0();
  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  v17 = sub_1C8776B78(v15, v16, MEMORY[0x1E69AAC10]);
  v18 = OUTLINED_FUNCTION_299(v17);
LABEL_15:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A47B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE08, type metadata accessor for Siri_Nlu_Internal_TurnInputRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A47BBC(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B4910, type metadata accessor for Siri_Nlu_Internal_TurnInputRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A47C2C(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B4910, type metadata accessor for Siri_Nlu_Internal_TurnInputRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A47CF8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEA60);
  __swift_project_value_buffer(v0, qword_1EC2BEA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "turn_context";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matching_spans";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "apply_to_prompt_scenarios";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sda_comparison_mode";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_TurnInputRule.ContextRule.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_127_2();
  v8 = type metadata accessor for Siri_Nlu_External_TurnContext(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v10 = OUTLINED_FUNCTION_66();
  v12 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v10);
  OUTLINED_FUNCTION_218_4(v12[6]);
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6010, &unk_1C8BF5040);
  }

  else
  {
    sub_1C8791864();
    sub_1C8776B78(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext, &protocol conformance descriptor for Siri_Nlu_External_TurnContext);
    OUTLINED_FUNCTION_328();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_136();
    sub_1C8A43180();
    if (v1)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_514();
  if (!v11 || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776B78(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_445(), sub_1C8BD4E0C(), !v1))
  {
    if (*(v0 + v12[7]) == 2 || (OUTLINED_FUNCTION_170_3(), sub_1C8BD4D3C(), !v1))
    {
      if (*(v0 + v12[8]) == 2 || (sub_1C879EEEC(), OUTLINED_FUNCTION_445(), sub_1C8BD4D4C(), !v1))
      {
        sub_1C8BD49DC();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_TurnInputRule.ContextRule.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_102();
  type metadata accessor for Siri_Nlu_External_TurnContext(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6018, &qword_1C8BE6CD0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_45();
  v26 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v9);
  OUTLINED_FUNCTION_192_3();
  OUTLINED_FUNCTION_222_3();
  v10 = OUTLINED_FUNCTION_43_1(v2);
  if (v12)
  {
    OUTLINED_FUNCTION_43_1(v2 + v7);
    if (v12)
    {
      sub_1C8778ED8(v2, &qword_1EC2B6010, &unk_1C8BF5040);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v2, &qword_1EC2B6018, &qword_1C8BE6CD0);
LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_226_3(v10, v11, &qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_43_1(v2 + v7);
  if (v12)
  {
    OUTLINED_FUNCTION_202_3();
    goto LABEL_9;
  }

  sub_1C8791864();
  OUTLINED_FUNCTION_246();
  static Siri_Nlu_External_TurnContext.== infix(_:_:)();
  v14 = v13;
  OUTLINED_FUNCTION_268();
  sub_1C8A43180();
  OUTLINED_FUNCTION_516();
  sub_1C8A43180();
  sub_1C8778ED8(v2, &qword_1EC2B6010, &unk_1C8BF5040);
  if ((v14 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  sub_1C87D27C0(*v1, *v0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(v26 + 28);
  v17 = *(v1 + v16);
  v18 = *(v0 + v16);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_23;
    }
  }

  else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    goto LABEL_23;
  }

  v19 = *(v26 + 32);
  v20 = *(v1 + v19);
  v21 = *(v0 + v19);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      goto LABEL_23;
    }
  }

  else if (v21 == 2 || ((v21 ^ v20) & 1) != 0)
  {
    goto LABEL_23;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  v24 = sub_1C8776B78(v22, v23, MEMORY[0x1E69AAC10]);
  v25 = OUTLINED_FUNCTION_299(v24);
LABEL_24:
  OUTLINED_FUNCTION_157(v25);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A48504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE00, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.ContextRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A48584(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B49D0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.ContextRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A485F4(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B49D0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.ContextRule);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A48674()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEA78);
  __swift_project_value_buffer(v0, qword_1EC2BEA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "COMPARISON_MODE_SHALLOW";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COMPARISON_MODE_DEEP";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A48894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1CCA7E2D0](a2, a3);
  *a4 = 0xD00000000000001FLL;
  *a5 = 0x80000001C8C27600;
  return result;
}

uint64_t sub_1C8A48920()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEAA0);
  __swift_project_value_buffer(v0, qword_1EC2BEAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pattern";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "compare_options";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "spans_for_named_capture_groups";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A48B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(0);
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
  sub_1C8776B78(&qword_1EC2BEC18, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_450();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEBA8, &qword_1C8C10AD8);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v9 = OUTLINED_FUNCTION_127_2();
  v10 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v9);
  OUTLINED_FUNCTION_513();
  if (!v12 || (OUTLINED_FUNCTION_120_2(v11), sub_1C8BD4DDC(), (v0 = v1) == 0))
  {
    if (*(v3 + *(v10 + 28)) == 3 || (sub_1C8782BA4(), OUTLINED_FUNCTION_445(), sub_1C8BD4D4C(), (v0 = v1) == 0))
    {
      sub_1C87867A0(v3 + *(v10 + 32), v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
      if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
      {
        sub_1C8778ED8(v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
      }

      else
      {
        sub_1C8791864();
        sub_1C8776B78(&qword_1EC2BEC18, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_206_1();
        sub_1C8A43180();
        if (v0)
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_514();
      if (!v13 || (type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(0), sub_1C8776B78(&qword_1EC2B49B0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans), OUTLINED_FUNCTION_117(), sub_1C8BD4E0C(), !v0))
      {
        OUTLINED_FUNCTION_212_2();
        OUTLINED_FUNCTION_136();
        sub_1C8BD49DC();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEBA8, &qword_1C8C10AD8);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEC20, &qword_1C8C10AF8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v9);
  OUTLINED_FUNCTION_1();
  if (v13)
  {
    if (!v11)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_35(v12);
    v16 = v16 && v14 == v15;
    if (!v16 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v11)
  {
    goto LABEL_26;
  }

  v17 = *(v10 + 28);
  v18 = *(v1 + v17);
  v19 = *(v0 + v17);
  if (v18 != 3)
  {
    if (v18 == v19)
    {
      goto LABEL_14;
    }

LABEL_26:
    v30 = 0;
    goto LABEL_27;
  }

  if (v19 != 3)
  {
    goto LABEL_26;
  }

LABEL_14:
  v20 = *(v10 + 32);
  v21 = *(v7 + 48);
  sub_1C87867A0(v1 + v20, v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
  sub_1C87867A0(v0 + v20, v2 + v21, &qword_1EC2BEBA8, &qword_1C8C10AD8);
  v22 = OUTLINED_FUNCTION_43_1(v2);
  if (v16)
  {
    OUTLINED_FUNCTION_43_1(v2 + v21);
    if (v16)
    {
      sub_1C8778ED8(v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_226_3(v22, v23, &qword_1EC2BEBA8, &qword_1C8C10AD8);
  OUTLINED_FUNCTION_43_1(v2 + v21);
  if (v24)
  {
    OUTLINED_FUNCTION_202_3();
LABEL_22:
    sub_1C8778ED8(v2, &qword_1EC2BEC20, &qword_1C8C10AF8);
    goto LABEL_26;
  }

  sub_1C8791864();
  OUTLINED_FUNCTION_246();
  v25 = static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.== infix(_:_:)();
  OUTLINED_FUNCTION_268();
  sub_1C8A43180();
  OUTLINED_FUNCTION_516();
  sub_1C8A43180();
  sub_1C8778ED8(v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
  if ((v25 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  OUTLINED_FUNCTION_204_2();
  sub_1C87DDF24();
  if ((v26 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  v29 = sub_1C8776B78(v27, v28, MEMORY[0x1E69AAC10]);
  v30 = OUTLINED_FUNCTION_64_0(v29);
LABEL_27:
  OUTLINED_FUNCTION_157(v30);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A491F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEDF8, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A49278(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B4938, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A492E8(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B4938, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A49368()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEAB8);
  __swift_project_value_buffer(v0, qword_1EC2BEAB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "COMPARISON_TYPE_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COMPARISON_TYPE_EXACT_LITERAL";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "COMPARISON_TYPE_REGULAR_EXPRESSION";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A495E4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEAE0);
  __swift_project_value_buffer(v0, qword_1EC2BEAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "case_insensitive";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "diacritic_insensitive";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width_insensitive";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C87866FC();
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_8();
        sub_1C8A49904(v5, v6);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A498A0(v3, v4);
        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  v3 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v2);
  if (*(v1 + v3[5]) == 2 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), !v0))
  {
    if (*(v1 + v3[6]) == 2 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), !v0))
    {
      if (*(v1 + v3[7]) == 2)
      {
        return OUTLINED_FUNCTION_15();
      }

      OUTLINED_FUNCTION_48_0();
      result = sub_1C8BD4D3C();
      if (!v0)
      {
        return OUTLINED_FUNCTION_15();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v0);
  OUTLINED_FUNCTION_47();
  if (v3)
  {
    if (v1 != 2)
    {
      return 0;
    }
  }

  else if (v1 == 2 || ((v2 ^ v1) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v3)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else if (v4 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v3)
  {
    if (v6 == 2)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v6 == 2 || ((v7 ^ v6) & 1) != 0)
  {
    return 0;
  }

LABEL_20:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  v11 = sub_1C8776B78(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v11) & 1;
}

uint64_t sub_1C8A49B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEDF0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A49C08(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2BEC18, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A49C78(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2BEC18, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A49D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_1EC2B5D88 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC2BEA90;
  v10 = *algn_1EC2BEA98;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_97();
  MEMORY[0x1CCA7E2D0](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_1C8A49DF8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEB08);
  __swift_project_value_buffer(v0, qword_1EC2BEB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "capture_group_name";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spans";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_53_7();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v1);
  OUTLINED_FUNCTION_25_0();
  if (!*(v2 + 8) || (OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_514();
    if (!v4 || (type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0), sub_1C8776B78(&qword_1EC2B4958, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup), v5 = OUTLINED_FUNCTION_117(), result = OUTLINED_FUNCTION_69_6(v5, 2, v6, v7), !v0))
    {
      OUTLINED_FUNCTION_212_2();
      OUTLINED_FUNCTION_119();
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v0);
  OUTLINED_FUNCTION_1();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_204_2();
  sub_1C87DE35C();
  if (v7)
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_28();
    v10 = sub_1C8776B78(v8, v9, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_64_0(v10) & 1;
  }

  return 0;
}

uint64_t sub_1C8A4A1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEDE8, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A4A268(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B49B0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A4A2D8(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B49B0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A4A358()
{
  if (qword_1EC2B5D88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BEA90;
  v2 = *algn_1EC2BEA98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001DLL, 0x80000001C8C27840);

  qword_1EC2BEB20 = v1;
  *algn_1EC2BEB28 = v2;
  return result;
}

uint64_t sub_1C8A4A420()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEB30);
  __swift_project_value_buffer(v0, qword_1EC2BEB30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target_node_idx";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "target_uda_idx";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  v3 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v2);
  v4 = v1 + v3[5];
  if (!*(v4 + 8) || (OUTLINED_FUNCTION_120_2(v4), result = sub_1C8BD4DDC(), !v0))
  {
    if ((*(v1 + v3[6] + 4) & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D8C(), !v0))
    {
      if (*(v1 + v3[7] + 4))
      {
        return OUTLINED_FUNCTION_15();
      }

      OUTLINED_FUNCTION_48_0();
      result = sub_1C8BD4D8C();
      if (!v0)
      {
        return OUTLINED_FUNCTION_15();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v0);
  OUTLINED_FUNCTION_1();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11();
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_1();
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

LABEL_14:
  OUTLINED_FUNCTION_11();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v13)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  v16 = sub_1C8776B78(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v16) & 1;
}

uint64_t sub_1C8A4A830()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  sub_1C8BD530C();
  v2(0);
  v3 = OUTLINED_FUNCTION_184();
  sub_1C8776B78(v3, v4, v0);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A4A8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEDE0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A4A948(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B4958, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A4A9B8(uint64_t a1, uint64_t a2)
{
  sub_1C8776B78(&qword_1EC2B4958, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup, &protocol conformance descriptor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup);

  return sub_1C8BD4CFC();
}

unint64_t sub_1C8A4AA38()
{
  result = qword_1EC2B40D8;
  if (!qword_1EC2B40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B40D8);
  }

  return result;
}

unint64_t sub_1C8A4AA90()
{
  result = qword_1EC2B40C8;
  if (!qword_1EC2B40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B40C8);
  }

  return result;
}

unint64_t sub_1C8A4AAE8()
{
  result = qword_1EC2B40D0;
  if (!qword_1EC2B40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B40D0);
  }

  return result;
}

unint64_t sub_1C8A4AB40()
{
  result = qword_1EC2B40C0;
  if (!qword_1EC2B40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B40C0);
  }

  return result;
}

unint64_t sub_1C8A4AB98()
{
  result = qword_1EC2BEC48;
  if (!qword_1EC2BEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BEC48);
  }

  return result;
}

unint64_t sub_1C8A4ABF0()
{
  result = qword_1EC2BEC50;
  if (!qword_1EC2BEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BEC50);
  }

  return result;
}

unint64_t sub_1C8A4AC48()
{
  result = qword_1EC2BEC58;
  if (!qword_1EC2BEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BEC58);
  }

  return result;
}

unint64_t sub_1C8A4AD00()
{
  result = qword_1EC2B4178;
  if (!qword_1EC2B4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4178);
  }

  return result;
}

unint64_t sub_1C8A4AD58()
{
  result = qword_1EC2B4180;
  if (!qword_1EC2B4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4180);
  }

  return result;
}

unint64_t sub_1C8A4ADB0()
{
  result = qword_1EC2B4170;
  if (!qword_1EC2B4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4170);
  }

  return result;
}

unint64_t sub_1C8A4AE08()
{
  result = qword_1EC2B4968;
  if (!qword_1EC2B4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4968);
  }

  return result;
}

unint64_t sub_1C8A4AE60()
{
  result = qword_1EC2B4970;
  if (!qword_1EC2B4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4970);
  }

  return result;
}

unint64_t sub_1C8A4AEB8()
{
  result = qword_1EC2B4960;
  if (!qword_1EC2B4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4960);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_OverrideMetadata.OverrideNamespace(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_OverrideMetadata.OverrideSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_1C8A4C244(uint64_t a1)
{
  sub_1C8A4C390(319, &qword_1EC2BED68, type metadata accessor for Siri_Nlu_Internal_ParseOverride, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8A4C390(319, &qword_1EC2BED70, type metadata accessor for Siri_Nlu_Internal_ComponentOverride, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD378, MEMORY[0x1E69E76D8]);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A4C390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C8A4C45C(uint64_t a1)
{
  sub_1C8A4C390(319, &qword_1EC2BED78, type metadata accessor for Siri_Nlu_Internal_NluRequestRule, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2BED80, &type metadata for Siri_Nlu_Internal_OverrideMetadata.OverrideNamespace);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370]);
          if (v5 <= 0x3F)
          {
            sub_1C87EB4B0(319, &qword_1EDACD378, MEMORY[0x1E69E76D8]);
            if (v6 <= 0x3F)
            {
              sub_1C8A4C390(319, &qword_1EC2B4060, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C87EB4B0(319, &qword_1EC2B4228, MEMORY[0x1E6969080]);
                if (v8 <= 0x3F)
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

uint64_t __swift_get_extra_inhabitant_index_118Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void __swift_store_extra_inhabitant_index_119Tm()
{
  OUTLINED_FUNCTION_149_0();
  v4 = v3;
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v5 + 84) == v2)
  {
    v6 = OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v0 + *(v1 + 20)) = (v4 - 1);
  }
}

uint64_t sub_1C8A4C790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C8BD49FC();
  if (v6 <= 0x3F)
  {
    v17 = result;
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_83(result, v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[4], 0, v16, v17, v18);
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_145Tm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v5 + 84) == a2)
  {
    v6 = v4;
    v7 = v2;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_227();
    v7 = v2 + v10;
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_146Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v6 + 84) == a3)
  {
    v7 = OUTLINED_FUNCTION_117();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_226_2();
    v7 = v3 + v11;
  }

  return __swift_storeEnumTagSinglePayload(v7, a2, a2, v8);
}

void sub_1C8A4C9D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v7 = sub_1C8BD49FC();
  if (v8 <= 0x3F)
  {
    v20 = v7;
    sub_1C8A4C390(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_83(v9, v10, v11, v12, v13, v14, v15, v16, v17, *v18, *&v18[4], 0, v19, v20, v21);
    }
  }
}

void sub_1C8A4CA88(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A4CB1C(uint64_t a1)
{
  sub_1C8A4C390(319, &qword_1EC2B2F40, type metadata accessor for Siri_Nlu_Internal_TurnInputRule, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A4CC24(uint64_t a1)
{
  sub_1C8A4C390(319, &qword_1EC2B2F58, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C8A4C390(319, &qword_1EC2B4918, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A4CD48(uint64_t a1)
{
  sub_1C8A4C390(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C8A4C390(319, qword_1EDACC600, type metadata accessor for Siri_Nlu_External_TurnContext, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EC2B4168, &type metadata for Siri_Nlu_Internal_TurnInputRule.ContextRule.SDAContextComparisonMode);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A4CEA4(uint64_t a1)
{
  sub_1C8A4C390(319, &qword_1EC2B2F50, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2B4160, &type metadata for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.ComparisonType);
        if (v4 <= 0x3F)
        {
          sub_1C8A4C390(319, &qword_1EC2B4980, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A4D000(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A4D0C4(uint64_t a1)
{
  sub_1C8A4C390(319, &qword_1EC2B2F48, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A4D1A8(uint64_t a1)
{
  sub_1C8A4C390(319, &qword_1EC2B41D0, type metadata accessor for Siri_Nlu_External_UserParse, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C8A4D2AC(uint64_t a1)
{
  sub_1C8A4C390(319, &qword_1EC2B4088, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C8A4C390(319, &qword_1EC2B41D0, type metadata accessor for Siri_Nlu_External_UserParse, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C8A4C390(319, &qword_1EC2BEDD0, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C8A4C390(319, &qword_1EC2BEDD8, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1C8A4D4AC()
{
  result = qword_1EC2BEE58;
  if (!qword_1EC2BEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BEE58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_90_4()
{
  sub_1C87A8FA8(v1, v0);
  sub_1C87A8FA8(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_112_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_133_1(uint64_t a1@<X8>)
{
  v3 = *(v2 + a1);
  *(v1 + 8) = a1;
  *(v1 + 12) = (v3 == 2) | v3 & 1;
}

uint64_t OUTLINED_FUNCTION_167_3(uint64_t a1, uint64_t a2)
{

  return sub_1C87867A0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_173_4(uint64_t a1)
{
  v7 = *(a1 + 20);
  *(v5 - 88) = v1;

  return sub_1C87867A0(v1 + v7, v3, v4, v2);
}

uint64_t OUTLINED_FUNCTION_174_3()
{

  return sub_1C8791864();
}

uint64_t OUTLINED_FUNCTION_190_3(uint64_t a1, uint64_t a2)
{

  return sub_1C87867A0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_192_3()
{

  return sub_1C87867A0(v1 + v0, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_220_1()
{

  return sub_1C8776B78(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_222_3()
{

  return sub_1C87867A0(v1 + v0, v2 + v5, v3, v4);
}

uint64_t OUTLINED_FUNCTION_223_3()
{

  return sub_1C8A408E0(v0);
}

uint64_t OUTLINED_FUNCTION_226_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C87867A0(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_227_2()
{

  return sub_1C8791864();
}

uint64_t Siri_Nlu_External_SemVer.majorVersion.getter()
{
  type metadata accessor for Siri_Nlu_External_SemVer(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t (*Siri_Nlu_External_SemVer.majorVersion.modify(void *a1))(uint64_t result)
{
  *(v1 + 12) = *(OUTLINED_FUNCTION_8_20(a1) + 20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_2();
  return sub_1C87FE8F0;
}

uint64_t Siri_Nlu_External_SemVer.minorVersion.getter()
{
  type metadata accessor for Siri_Nlu_External_SemVer(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t (*Siri_Nlu_External_SemVer.minorVersion.modify(void *a1))(uint64_t result)
{
  *(v1 + 12) = *(OUTLINED_FUNCTION_8_20(a1) + 24);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_2();
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_SemVer.patchVersion.getter()
{
  type metadata accessor for Siri_Nlu_External_SemVer(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t (*Siri_Nlu_External_SemVer.patchVersion.modify(void *a1))(uint64_t result)
{
  *(v1 + 12) = *(OUTLINED_FUNCTION_8_20(a1) + 28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_2();
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_SemVer.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Siri_Nlu_External_SemVer.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C8A4DB3C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACCD80);
  __swift_project_value_buffer(v0, qword_1EDACCD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major_version";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor_version";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch_version";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SemVer._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDACCD78 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EDACCD80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SemVer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_17();
  v6 = type metadata accessor for Siri_Nlu_External_SemVer(v5);
  v7 = (v3 + v6[5]);
  if ((v7[1] & 1) != 0 || (result = OUTLINED_FUNCTION_30(*v7, 1), !v4))
  {
    v9 = (v3 + v6[6]);
    if ((v9[1] & 1) != 0 || (result = OUTLINED_FUNCTION_30(*v9, 2), !v4))
    {
      v10 = (v3 + v6[7]);
      if (v10[1])
      {
        return sub_1C8BD49DC();
      }

      result = OUTLINED_FUNCTION_30(*v10, 3);
      if (!v4)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_SemVer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_External_SemVer(v2);
  OUTLINED_FUNCTION_11();
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v5)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_1();
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

LABEL_9:
  OUTLINED_FUNCTION_11();
  if (v10)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v12)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776BC0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_External_SemVer.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SemVer(0);
  sub_1C8776BC0(&qword_1EC2BEE80, type metadata accessor for Siri_Nlu_External_SemVer, "\tc(&");
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A4E068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776BC0(&qword_1EC2BEE90, type metadata accessor for Siri_Nlu_External_SemVer, &protocol conformance descriptor for Siri_Nlu_External_SemVer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A4E0E8(uint64_t a1)
{
  v2 = sub_1C8776BC0(&qword_1EDACCD70, type metadata accessor for Siri_Nlu_External_SemVer, &protocol conformance descriptor for Siri_Nlu_External_SemVer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A4E158(uint64_t a1, uint64_t a2)
{
  sub_1C8776BC0(&qword_1EDACCD70, type metadata accessor for Siri_Nlu_External_SemVer, &protocol conformance descriptor for Siri_Nlu_External_SemVer);

  return sub_1C8BD4CFC();
}

void sub_1C8A4E2F8(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A4E384();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A4E384()
{
  if (!qword_1EDACD380)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDACD380);
    }
  }
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_7_27();
  sub_1C87E8DEC(v1 + *(v6 + 24), v2);
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_1C87E8E5C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_313(a1 + v7[5]);
  OUTLINED_FUNCTION_313(a1 + v7[6]);
  *(a1 + v7[7]) = 6;
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(uint64_t a1)
{
  result = qword_1EC2BEED0;
  if (!qword_1EC2BEED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8A4E52C(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87E9210(a1, v4);
  return Siri_Nlu_Internal_UaapParser_UaaPParserResponse.requestID.setter(v4);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_UUID(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserResponse.requestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0) + 24);
  *(v3 + 10) = v11;
  sub_1C87E8DEC(v1 + v11, v6);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C87E9130;
}

BOOL Siri_Nlu_Internal_UaapParser_UaaPParserResponse.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_7_27();
  sub_1C87E8DEC(v0 + *(v4 + 24), v1);
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v6;
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserResponse.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0) + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.hypotheses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Siri_Nlu_External_UUID(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t sub_1C8A4EAC4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEE98);
  __swift_project_value_buffer(v0, qword_1EC2BEE98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hypotheses";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_UaapParser_UaaPParserResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5DD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BEE98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = OUTLINED_FUNCTION_8();
      sub_1C8A4EE64(v10, v11, v12, v13);
    }

    else if (result == 1)
    {
      v6 = OUTLINED_FUNCTION_8();
      sub_1C8A4EDB0(v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t sub_1C8A4EDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8A4F89C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A4EE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8A4F89C(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0);
  sub_1C87E8DEC(v5 + *(v14 + 24), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C8778ED8(v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v9, v13);
    sub_1C8A4F89C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    result = sub_1C87E9274(v13);
    if (v4)
    {
      return result;
    }
  }

  if (!*(*v5 + 16))
  {
    return sub_1C8BD49DC();
  }

  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8A4F89C(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
  OUTLINED_FUNCTION_9_1();
  result = sub_1C8BD4E0C();
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_UaapParser_UaaPParserResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0) + 24);
  v16 = *(v11 + 56);
  sub_1C87E8DEC(a1 + v15, v14);
  sub_1C87E8DEC(a2 + v15, &v14[v16]);
  OUTLINED_FUNCTION_73(v14);
  if (v17)
  {
    OUTLINED_FUNCTION_73(&v14[v16]);
    if (v17)
    {
      sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v14, &qword_1EC2B5EE8, &unk_1C8BE6F90);
LABEL_13:
    v20 = 0;
    return v20 & 1;
  }

  sub_1C87E8DEC(v14, v10);
  OUTLINED_FUNCTION_73(&v14[v16]);
  if (v17)
  {
    sub_1C87E9274(v10);
    goto LABEL_9;
  }

  sub_1C87E8E5C(&v14[v16], v6);
  v18 = static Siri_Nlu_External_UUID.== infix(_:_:)(v10, v6);
  sub_1C87E9274(v6);
  sub_1C87E9274(v10);
  sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1C87D2A98(*a1, *a2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1C8BD49FC();
  sub_1C8A4F89C(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = sub_1C8BD517C();
  return v20 & 1;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0);
  sub_1C8A4F89C(&qword_1EC2BEEB0, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A4F484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A4F89C(&qword_1EC2BEEE0, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A4F504(uint64_t a1)
{
  v2 = sub_1C8A4F89C(&qword_1EC2BEEC0, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A4F574(uint64_t a1, uint64_t a2)
{
  sub_1C8A4F89C(&qword_1EC2BEEC0, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8A4F73C(uint64_t a1)
{
  sub_1C8A4F838(319, &qword_1EC2B4238, type metadata accessor for Siri_Nlu_External_UserParse, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C8A4F838(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A4F838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C8A4F89C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_27()
{

  return type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse(0);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_18_2(v1);
  OUTLINED_FUNCTION_18_2(*(v2 + 24));
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.originalUtterance.getter()
{
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_8_0(v0);

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.originalUtterance.setter()
{
  OUTLINED_FUNCTION_731();
  OUTLINED_FUNCTION_40_9();
  v4 = (v1 + v3);

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.originalUtterance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_40_9();
  *(v1 + 32) = v3;
  v4 = OUTLINED_FUNCTION_8_0(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v1 + 24) = v4;
  *v1 = v6;
  *(v1 + 8) = v7;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Nlv4Parser_Tokenisation.clearOriginalUtterance()()
{
  OUTLINED_FUNCTION_40_9();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.normalisedUtterance.getter()
{
  OUTLINED_FUNCTION_50_9();
  OUTLINED_FUNCTION_8_0(v0);

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.normalisedUtterance.setter()
{
  OUTLINED_FUNCTION_731();
  OUTLINED_FUNCTION_50_9();
  v4 = (v1 + v3);

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.normalisedUtterance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_50_9();
  *(v1 + 32) = v3;
  v4 = OUTLINED_FUNCTION_8_0(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v1 + 24) = v4;
  *v1 = v6;
  *(v1 + 8) = v7;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Nlv4Parser_Tokenisation.clearNormalisedUtterance()()
{
  OUTLINED_FUNCTION_50_9();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v8);
  sub_1C87867A0(v1 + *(v9 + 28), v2, &qword_1EC2B6048, &unk_1C8BE6F80);
  v10 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v10 + 24));
    OUTLINED_FUNCTION_18_2(*(v10 + 28));
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_29();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.tokenChain.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v1) + 28);
  sub_1C8778ED8(v0 + v2, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_200();
  sub_1C8797800();
  v3 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);

  return __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v3);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.tokenChain.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0) + 28);
  *(v3 + 10) = v11;
  sub_1C87867A0(v1 + v11, v6, &qword_1EC2B6048, &unk_1C8BE6F80);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(*(v7 + 24));
    OUTLINED_FUNCTION_26(*(v7 + 28));
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_29();
    sub_1C8797800();
  }

  return OUTLINED_FUNCTION_31();
}

void sub_1C8A4FFA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1C8A53384();
    sub_1C8778ED8(v7 + v3, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C8797800();
    OUTLINED_FUNCTION_67_10();
    sub_1C8A533D8();
  }

  else
  {
    sub_1C8778ED8(v7 + v3, &qword_1EC2B6048, &unk_1C8BE6F80);
    OUTLINED_FUNCTION_0_29();
    sub_1C8797800();
    OUTLINED_FUNCTION_67_10();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.hasTokenChain.getter()
{
  v2 = OUTLINED_FUNCTION_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v6);
  sub_1C87867A0(v0 + *(v7 + 28), v1, &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  v8 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v13, v14, &unk_1C8BE6F80);
  return v12;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Nlv4Parser_Tokenisation.clearTokenChain()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_15(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v8[5]);
    OUTLINED_FUNCTION_15_2(v8[6]);
    *(a1 + v8[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.requestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_16_14();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A52DB8(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_56_8();
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_33_1(v5);
  OUTLINED_FUNCTION_15_3();
  v6 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v6, v7, v8, v9);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.requestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_UUID(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[5]);
    OUTLINED_FUNCTION_11_0(v8[6]);
    v12[v8[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.tokenisedUtterance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  OUTLINED_FUNCTION_5_19();
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  OUTLINED_FUNCTION_16_0();
  sub_1C87867A0(v1 + v9, v8, &qword_1EC2B6538, &qword_1C8C12C80);
  v10 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  OUTLINED_FUNCTION_76(v8, 1, v10);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = (a1 + *(v10 + 20));
    *v12 = 0;
    v12[1] = 0;
    v13 = (a1 + *(v10 + 24));
    *v13 = 0;
    v13[1] = 0;
    type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    result = OUTLINED_FUNCTION_76(v8, 1, v10);
    if (!v11)
    {
      return sub_1C8778ED8(v8, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_19();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.tokenisedUtterance.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_16_14();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A52DB8(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_56_8();
  v5 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  OUTLINED_FUNCTION_33_1(v5);
  OUTLINED_FUNCTION_15_3();
  v6 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v6, v7, v8, v9);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.tokenisedUtterance.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(*(v8 + 20));
    OUTLINED_FUNCTION_26(*(v8 + 24));
    type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8A50910(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1C8A53384();
    a3(v6);
    sub_1C8A533D8();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t sub_1C8A509F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_731();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-v13 - 8];
  OUTLINED_FUNCTION_5_19();
  v15 = *a3;
  OUTLINED_FUNCTION_277(v5 + v15, v21);
  sub_1C87867A0(v5 + v15, v14, v6, v4);
  v16 = a4(0);
  OUTLINED_FUNCTION_76(v14, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_1C8778ED8(v14, v6, v4);
  return v18;
}

uint64_t sub_1C8A50AF0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_731();
  v9 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_80(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v19 = OUTLINED_FUNCTION_2();
    v18 = sub_1C8A52DB8(v19);
    *(v9 + v16) = v18;
  }

  a3(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = *a4;
  swift_beginAccess();
  sub_1C878656C(v15, v18 + v24, v6, v4);
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_15(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v8[6]);
    OUTLINED_FUNCTION_15_2(v8[7]);
    OUTLINED_FUNCTION_15_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_21();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.embeddings.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_16_14();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A52DB8(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_8_21();
  OUTLINED_FUNCTION_56_8();
  v5 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_33_1(v5);
  OUTLINED_FUNCTION_15_3();
  v6 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v6, v7, v8, v9);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.embeddings.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[6]);
    OUTLINED_FUNCTION_11_0(v8[7]);
    OUTLINED_FUNCTION_11_0(v8[8]);
    OUTLINED_FUNCTION_26(v8[9]);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_21();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.getter()
{
  OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_277(*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans, v3);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v7 = OUTLINED_FUNCTION_2();
    v6 = sub_1C8A52DB8(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  OUTLINED_FUNCTION_37_0(v6 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans, v10);
  *(v6 + v8) = v0;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_12_20();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans, v1);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

void sub_1C8A51110(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_13_21();
      v10 = OUTLINED_FUNCTION_2();
      v7 = sub_1C8A52DB8(v10);
      *(v9 + v8) = v7;
    }

    v11 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
    OUTLINED_FUNCTION_37_0(v7 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans, v2 + 24);
    *(v7 + v11) = v3;
  }

  free(v2);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_15(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(a1 + v10) = qword_1EDACCB68;
    v11 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_24();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.turnInput.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_16_14();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A52DB8(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_56_8();
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_33_1(v5);
  OUTLINED_FUNCTION_15_3();
  v6 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v6, v7, v8, v9);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.turnInput.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *&v12[v14] = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_24();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.maxNumParses.getter()
{
  OUTLINED_FUNCTION_12_20();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses);
  OUTLINED_FUNCTION_277(v2, v4);
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.maxNumParses.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v7 = OUTLINED_FUNCTION_2();
    v6 = sub_1C8A52DB8(v7);
    *(v2 + v4) = v6;
  }

  v8 = v6 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  result = OUTLINED_FUNCTION_37_0(v8, v10);
  *v8 = v0;
  *(v8 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.maxNumParses.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_12_20();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  OUTLINED_FUNCTION_277(v4, v1);
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8A51700(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 88);
    v10 = *(v3 + 80);
    OUTLINED_FUNCTION_13_21();
    v11 = OUTLINED_FUNCTION_2();
    v8 = sub_1C8A52DB8(v11);
    *(v10 + v9) = v8;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = v8 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  OUTLINED_FUNCTION_37_0(v13, v3 + v12);
  *v13 = v4;
  *(v13 + 8) = 0;

  free(v3);
}

BOOL Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.hasMaxNumParses.getter()
{
  OUTLINED_FUNCTION_12_20();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  OUTLINED_FUNCTION_277(v2, v4);
  return (*(v2 + 8) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.clearMaxNumParses()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v5 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A52DB8(v5);
    *(v1 + v2) = v4;
  }

  v6 = v4 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  OUTLINED_FUNCTION_37_0(v4 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses, v7);
  *v6 = 0;
  *(v6 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_15(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v8[5]);
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_18_2(v8[7]);
    OUTLINED_FUNCTION_18_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    OUTLINED_FUNCTION_18_2(v8[10]);
    *(a1 + v8[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t sub_1C8A519B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C8A53384();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.nluRequestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_16_14();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A52DB8(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_56_8();
  v5 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_33_1(v5);
  OUTLINED_FUNCTION_15_3();
  v6 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v6, v7, v8, v9);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.nluRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_RequestID(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_26(v8[7]);
    OUTLINED_FUNCTION_26(v8[8]);
    OUTLINED_FUNCTION_26(v8[9]);
    OUTLINED_FUNCTION_26(v8[10]);
    v12[v8[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0) + 20);
  if (qword_1EC2B4468 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2B4470;
}

uint64_t sub_1C8A51DBC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B45F8);
  __swift_project_value_buffer(v0, qword_1EC2B45F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "original_utterance";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "normalised_utterance";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "token_chain";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v14 = OUTLINED_FUNCTION_8();
        sub_1C8A5213C(v14, v15, v16, v17);
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C8A520D8(v10, v11, v12, v13);
        break;
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C8A52074(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8A5213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  sub_1C8A5342C(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  if (!*(v3 + v11[5] + 8) || (result = sub_1C8BD4DDC(), !v4))
  {
    if (!*(v3 + v11[6] + 8) || (result = sub_1C8BD4DDC(), !v4))
    {
      sub_1C87867A0(v3 + v11[7], v8, &qword_1EC2B6048, &unk_1C8BE6F80);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_1C8778ED8(v8, &qword_1EC2B6048, &unk_1C8BE6F80);
      }

      else
      {
        sub_1C8797800();
        sub_1C8A5342C(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
        sub_1C8BD4E2C();
        result = sub_1C8A533D8();
        if (v4)
        {
          return result;
        }
      }

      return sub_1C8BD49DC();
    }
  }

  return result;
}

void static Siri_Nlu_Internal_Nlv4Parser_Tokenisation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v23;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_84();
  v26 = type metadata accessor for Siri_Nlu_Internal_TokenChain(v25);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v30);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v35);
  v36 = OUTLINED_FUNCTION_74();
  v37 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v36);
  OUTLINED_FUNCTION_1();
  if (!v38)
  {
    if (v39)
    {
      goto LABEL_28;
    }

LABEL_10:
    OUTLINED_FUNCTION_1();
    if (v43)
    {
      if (!v44)
      {
        goto LABEL_28;
      }

      v47 = *v45 == *v46 && v43 == v44;
      if (!v47 && (sub_1C8BD529C() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v44)
    {
      goto LABEL_28;
    }

    v48 = *(v37 + 28);
    v49 = *(v34 + 48);
    sub_1C87867A0(v21 + v48, v22, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C87867A0(v20 + v48, v22 + v49, &qword_1EC2B6048, &unk_1C8BE6F80);
    v50 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v50, v51, v26);
    if (v42)
    {
      OUTLINED_FUNCTION_76(v22 + v49, 1, v26);
      if (v42)
      {
        sub_1C8778ED8(v22, &qword_1EC2B6048, &unk_1C8BE6F80);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1C87867A0(v22, v33, &qword_1EC2B6048, &unk_1C8BE6F80);
      OUTLINED_FUNCTION_76(v22 + v49, 1, v26);
      if (!v52)
      {
        sub_1C8797800();
        v53 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v33, v29);
        OUTLINED_FUNCTION_220();
        sub_1C8A533D8();
        sub_1C8A533D8();
        sub_1C8778ED8(v22, &qword_1EC2B6048, &unk_1C8BE6F80);
        if ((v53 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_30:
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_29_11();
        v56 = sub_1C8A5342C(v54, v55, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_159(v56);
        goto LABEL_28;
      }

      sub_1C8A533D8();
    }

    sub_1C8778ED8(v22, &qword_1EC2B6050, &qword_1C8BE6D00);
    goto LABEL_28;
  }

  if (v39)
  {
    v42 = *v40 == *v41 && v38 == v39;
    if (v42 || (sub_1C8BD529C() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A527CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A5342C(&qword_1EC2BEF18, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A5284C(uint64_t a1)
{
  v2 = sub_1C8A5342C(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A528BC(uint64_t a1, uint64_t a2)
{
  sub_1C8A5342C(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A52958()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4438);
  __swift_project_value_buffer(v0, qword_1EC2B4438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C8BE7150;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "request_id";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "tokenised_utterance";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "embeddings";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "matching_spans";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "turn_input";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "max_num_parses";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "nlu_request_id";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A52C70()
{
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest._StorageClass(0);
  swift_allocObject();
  result = sub_1C8A52CB0();
  qword_1EC2B4470 = result;
  return result;
}

uint64_t sub_1C8A52CB0()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  v4 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  v11 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  return v0;
}

uint64_t sub_1C8A52DB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  v14 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  v15 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  v17 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  v19 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  v44 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  v22 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  v46 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  v25 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v26, v13, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_beginAccess();
  sub_1C878656C(v13, v1 + v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v28 = v43;
  sub_1C87867A0(a1 + v27, v43, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_beginAccess();
  sub_1C878656C(v28, v1 + v16, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  swift_beginAccess();
  v30 = v45;
  sub_1C87867A0(a1 + v29, v45, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_beginAccess();
  sub_1C878656C(v30, v1 + v18, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  swift_beginAccess();
  v32 = *(a1 + v31);
  swift_beginAccess();
  *(v1 + v20) = v32;

  v33 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  swift_beginAccess();
  v34 = v47;
  sub_1C87867A0(a1 + v33, v47, &qword_1EC2B6038, &unk_1C8BE8850);
  v35 = v44;
  swift_beginAccess();
  sub_1C878656C(v34, v1 + v35, &qword_1EC2B6038, &unk_1C8BE8850);
  swift_endAccess();
  v36 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses);
  swift_beginAccess();
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  swift_beginAccess();
  *v23 = v37;
  *(v23 + 8) = v36;
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  swift_beginAccess();
  v39 = v48;
  sub_1C87867A0(a1 + v38, v48, &qword_1EC2B64B0, &unk_1C8BF3F40);

  v40 = v46;
  swift_beginAccess();
  sub_1C878656C(v39, v1 + v40, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C8A53384()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C8A533D8()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A5342C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8A53474()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings, &qword_1EC2B64A8, &unk_1C8BE7670);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C8A5353C()
{
  v0 = sub_1C8A53474();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A52DB8(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C8A53630(v10, a1, a2, a3);
}

uint64_t sub_1C8A53630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C8A53764(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C8A53840(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C8A5391C(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C8A539F8(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C8A53AD4(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C8A53BB0(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C8A53C3C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A53764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8A5342C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A53840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  sub_1C8A5342C(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A5391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  sub_1C8A5342C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A539F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8A5342C(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C8A53AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8A5342C(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A53BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C4C();
  return swift_endAccess();
}

uint64_t sub_1C8A53C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  sub_1C8A5342C(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0);
  result = sub_1C8A53D84(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A53D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v55 = a3;
  v57 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v43 - v6;
  v45 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v43 - v9;
  v47 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v43 - v12;
  v53 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v43 - v15;
  v51 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - v19;
  v21 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v21);
  v22 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v22, v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_1C8778ED8(v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v23 = v54;
  }

  else
  {
    sub_1C8797800();
    sub_1C8A5342C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    v24 = v54;
    sub_1C8BD4E2C();
    v23 = v24;
    result = sub_1C8A533D8();
    if (v24)
    {
      return result;
    }
  }

  v26 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  v27 = v57;
  swift_beginAccess();
  sub_1C87867A0(v27 + v26, v16, &qword_1EC2B6538, &qword_1C8C12C80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v51);
  v29 = v53;
  v30 = v52;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B6538, &qword_1C8C12C80);
  }

  else
  {
    sub_1C8797800();
    sub_1C8A5342C(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    sub_1C8BD4E2C();
    result = sub_1C8A533D8();
    if (v23)
    {
      return result;
    }
  }

  v31 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  v32 = v57;
  swift_beginAccess();
  sub_1C87867A0(v32 + v31, v30, &qword_1EC2B64A8, &unk_1C8BE7670);
  v33 = __swift_getEnumTagSinglePayload(v30, 1, v29);
  v34 = v50;
  if (v33 == 1)
  {
    sub_1C8778ED8(v30, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C8797800();
    sub_1C8A5342C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8BD4E2C();
    result = sub_1C8A533D8();
    if (v23)
    {
      return result;
    }
  }

  v35 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  v36 = v57;
  swift_beginAccess();
  if (!*(*(v36 + v35) + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8A5342C(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), , sub_1C8BD4E0C(), result = , !v23))
  {
    v37 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
    v38 = v57;
    swift_beginAccess();
    sub_1C87867A0(v38 + v37, v34, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v34, 1, v47) == 1)
    {
      sub_1C8778ED8(v34, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C8797800();
      sub_1C8A5342C(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
      sub_1C8BD4E2C();
      result = sub_1C8A533D8();
      if (v23)
      {
        return result;
      }
    }

    v39 = v57 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
    swift_beginAccess();
    if ((*(v39 + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v23))
    {
      v40 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
      v41 = v57;
      swift_beginAccess();
      v42 = v44;
      sub_1C87867A0(v41 + v40, v44, &qword_1EC2B64B0, &unk_1C8BF3F40);
      if (__swift_getEnumTagSinglePayload(v42, 1, v45) == 1)
      {
        return sub_1C8778ED8(v42, &qword_1EC2B64B0, &unk_1C8BF3F40);
      }

      else
      {
        sub_1C8797800();
        sub_1C8A5342C(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
        sub_1C8BD4E2C();
        return sub_1C8A533D8();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_20();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1C8A54854(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_29_11();
  v10 = sub_1C8A5342C(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v10) & 1;
}

BOOL sub_1C8A54854(uint64_t a1, uint64_t a2)
{
  v134 = a2;
  v111 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v108 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v109 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v114 = &v108 - v8;
  v117 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v108 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v108 - v14;
  v124 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  MEMORY[0x1EEE9AC00](v124);
  v119 = (&v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v121 = (&v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v108 - v20;
  v130 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  MEMORY[0x1EEE9AC00](v130);
  v122 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6570, &unk_1C8C13000);
  MEMORY[0x1EEE9AC00](v128);
  v131 = &v108 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v126 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v129 = &v108 - v26;
  v27 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v27);
  v127 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v30 = v29 - 8;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v108 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v133 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v108 - v36;
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v38, v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v39 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  v40 = v134;
  swift_beginAccess();
  v41 = *(v30 + 56);
  sub_1C87867A0(v37, v32, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87867A0(v40 + v39, &v32[v41], &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v32, 1, v27) == 1)
  {

    sub_1C8778ED8(v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(&v32[v41], 1, v27) == 1)
    {
      sub_1C8778ED8(v32, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_8;
    }

LABEL_6:
    v43 = &qword_1EC2B5EE8;
    v44 = &unk_1C8BE6F90;
    v45 = v32;
LABEL_22:
    sub_1C8778ED8(v45, v43, v44);
    goto LABEL_23;
  }

  v42 = v133;
  sub_1C87867A0(v32, v133, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(&v32[v41], 1, v27) == 1)
  {

    sub_1C8778ED8(v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C8A533D8();
    goto LABEL_6;
  }

  v46 = v127;
  sub_1C8797800();

  v47 = static Siri_Nlu_External_UUID.== infix(_:_:)(v42, v46);
  sub_1C8A533D8();
  sub_1C8778ED8(v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8A533D8();
  sub_1C8778ED8(v32, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v48 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v49 = v129;
  sub_1C87867A0(a1 + v48, v129, &qword_1EC2B6538, &qword_1C8C12C80);
  v50 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v51 = *(v128 + 48);
  v52 = v131;
  sub_1C87867A0(v49, v131, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C87867A0(v40 + v50, v52 + v51, &qword_1EC2B6538, &qword_1C8C12C80);
  v53 = v130;
  if (__swift_getEnumTagSinglePayload(v52, 1, v130) == 1)
  {
    sub_1C8778ED8(v49, &qword_1EC2B6538, &qword_1C8C12C80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52 + v51, 1, v53);
    v55 = v132;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v52, &qword_1EC2B6538, &qword_1C8C12C80);
      goto LABEL_15;
    }

LABEL_13:
    v43 = &qword_1EC2B6570;
    v44 = &unk_1C8C13000;
LABEL_21:
    v45 = v52;
    goto LABEL_22;
  }

  v56 = v126;
  sub_1C87867A0(v52, v126, &qword_1EC2B6538, &qword_1C8C12C80);
  v57 = __swift_getEnumTagSinglePayload(v52 + v51, 1, v53);
  v55 = v132;
  if (v57 == 1)
  {
    sub_1C8778ED8(v49, &qword_1EC2B6538, &qword_1C8C12C80);
    sub_1C8A533D8();
    goto LABEL_13;
  }

  v58 = v122;
  sub_1C8797800();
  static Siri_Nlu_Internal_Nlv4Parser_Tokenisation.== infix(_:_:)(v56, v58, v59, v60, v61, v62, v63, v64, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
  v66 = v65;
  sub_1C8A533D8();
  sub_1C8778ED8(v49, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C8A533D8();
  sub_1C8778ED8(v52, &qword_1EC2B6538, &qword_1C8C12C80);
  if ((v66 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v67 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  swift_beginAccess();
  sub_1C87867A0(a1 + v67, v55, &qword_1EC2B64A8, &unk_1C8BE7670);
  v68 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  swift_beginAccess();
  v69 = *(v123 + 48);
  v52 = v125;
  sub_1C87867A0(v55, v125, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87867A0(v40 + v68, v52 + v69, &qword_1EC2B64A8, &unk_1C8BE7670);
  v70 = v124;
  if (__swift_getEnumTagSinglePayload(v52, 1, v124) == 1)
  {
    sub_1C8778ED8(v55, &qword_1EC2B64A8, &unk_1C8BE7670);
    if (__swift_getEnumTagSinglePayload(v52 + v69, 1, v70) == 1)
    {
      sub_1C8778ED8(v52, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v71 = v121;
  sub_1C87867A0(v52, v121, &qword_1EC2B64A8, &unk_1C8BE7670);
  if (__swift_getEnumTagSinglePayload(v52 + v69, 1, v70) == 1)
  {
    sub_1C8778ED8(v55, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C8A533D8();
LABEL_20:
    v43 = &qword_1EC2B64E0;
    v44 = &unk_1C8BE7880;
    goto LABEL_21;
  }

  v73 = v119;
  sub_1C8797800();
  v74 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v71, v73);
  sub_1C8A533D8();
  sub_1C8778ED8(v55, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C8A533D8();
  sub_1C8778ED8(v52, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v74 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_27:
  v75 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  swift_beginAccess();
  v76 = *(a1 + v75);
  v77 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  swift_beginAccess();
  v78 = *(v40 + v77);

  sub_1C87D27C0(v76, v78);
  v80 = v79;

  if ((v80 & 1) == 0)
  {
    goto LABEL_23;
  }

  v81 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  swift_beginAccess();
  v82 = v120;
  sub_1C87867A0(a1 + v81, v120, &qword_1EC2B6038, &unk_1C8BE8850);
  v83 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  swift_beginAccess();
  v84 = *(v116 + 48);
  v85 = v118;
  sub_1C87867A0(v82, v118, &qword_1EC2B6038, &unk_1C8BE8850);
  v86 = v40 + v83;
  v87 = v85;
  sub_1C87867A0(v86, v85 + v84, &qword_1EC2B6038, &unk_1C8BE8850);
  v88 = v117;
  if (__swift_getEnumTagSinglePayload(v85, 1, v117) == 1)
  {
    sub_1C8778ED8(v82, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v85 + v84, 1, v88) == 1)
    {
      sub_1C8778ED8(v85, &qword_1EC2B6038, &unk_1C8BE8850);
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v89 = v115;
  sub_1C87867A0(v85, v115, &qword_1EC2B6038, &unk_1C8BE8850);
  if (__swift_getEnumTagSinglePayload(v85 + v84, 1, v88) == 1)
  {
    sub_1C8778ED8(v120, &qword_1EC2B6038, &unk_1C8BE8850);
    sub_1C8A533D8();
LABEL_33:
    v43 = &qword_1EC2B6040;
    v44 = &unk_1C8BE6CF0;
    v45 = v85;
    goto LABEL_22;
  }

  v90 = v113;
  sub_1C8797800();
  if (*(v89 + *(v88 + 20)) != *(v90 + *(v88 + 20)))
  {

    sub_1C88AD618();
    v92 = v91;

    if ((v92 & 1) == 0)
    {
      sub_1C8A533D8();
      sub_1C8778ED8(v120, &qword_1EC2B6038, &unk_1C8BE8850);
      sub_1C8A533D8();
      v45 = v87;
      v43 = &qword_1EC2B6038;
      v44 = &unk_1C8BE8850;
      goto LABEL_22;
    }
  }

  sub_1C8BD49FC();
  sub_1C8A5342C(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v93 = sub_1C8BD517C();
  sub_1C8A533D8();
  sub_1C8778ED8(v120, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C8A533D8();
  sub_1C8778ED8(v87, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v93 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_37:
  v94 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses);
  swift_beginAccess();
  v95 = *v94;
  v96 = *(v94 + 8);
  v97 = v40 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  swift_beginAccess();
  if ((v96 & 1) == 0)
  {
    if ((*(v97 + 8) & 1) == 0 && v95 == *v97)
    {
      goto LABEL_42;
    }

LABEL_23:

    return 0;
  }

  if ((*(v97 + 8) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_42:
  v98 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  swift_beginAccess();
  v99 = v114;
  sub_1C87867A0(a1 + v98, v114, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v100 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  swift_beginAccess();
  v101 = *(v110 + 48);
  v102 = v99;
  v103 = v112;
  sub_1C87867A0(v102, v112, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C87867A0(v40 + v100, v103 + v101, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v104 = v111;
  if (__swift_getEnumTagSinglePayload(v103, 1, v111) == 1)
  {

    sub_1C8778ED8(v114, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v103 + v101, 1, v104) == 1)
    {
      sub_1C8778ED8(v103, &qword_1EC2B64B0, &unk_1C8BF3F40);
      return 1;
    }

    goto LABEL_48;
  }

  v105 = v109;
  sub_1C87867A0(v103, v109, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v103 + v101, 1, v104) == 1)
  {

    sub_1C8778ED8(v114, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C8A533D8();
LABEL_48:
    sub_1C8778ED8(v103, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v106 = v108;
  sub_1C8797800();
  v107 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v105, v106);

  sub_1C8A533D8();
  sub_1C8778ED8(v114, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C8A533D8();
  sub_1C8778ED8(v103, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v107 & 1) != 0;
}

uint64_t sub_1C8A55AC8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8A5342C(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A55BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A5342C(&qword_1EC2BEF10, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A55C24(uint64_t a1)
{
  v2 = sub_1C8A5342C(&qword_1EC2BEF00, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A55C94(uint64_t a1, uint64_t a2)
{
  sub_1C8A5342C(&qword_1EC2BEF00, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest);

  return sub_1C8BD4CFC();
}

void sub_1C8A55F7C(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v2 <= 0x3F)
    {
      sub_1C8A56304(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8A5605C(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8A560E8(uint64_t a1)
{
  sub_1C8A56304(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    sub_1C8A56304(319, &qword_1EC2B45C8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    if (v2 <= 0x3F)
    {
      sub_1C8A56304(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v3 <= 0x3F)
      {
        sub_1C8A56304(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput);
        if (v4 <= 0x3F)
        {
          sub_1C8A56304(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C8A56304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_56_8()
{

  return sub_1C8797800();
}

uint64_t sub_1C8A56A18(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = sub_1C8BD530C();
  v5 = a3(v4);
  OUTLINED_FUNCTION_243_4(v5, v6);
  return sub_1C8BD531C();
}

uint64_t sub_1C8A56B10()
{
  OUTLINED_FUNCTION_225_3();
  v1 = sub_1C8BD530C();
  v2 = v0(v1);
  OUTLINED_FUNCTION_135_2(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return sub_1C8BD531C();
}

uint64_t sub_1C8A56B80()
{
  OUTLINED_FUNCTION_225_3();
  v1 = sub_1C8BD530C();
  v2 = v0(v1);
  OUTLINED_FUNCTION_135_2(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return sub_1C8BD531C();
}

uint64_t sub_1C8A571EC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5 = sub_1C8BD530C();
  v6 = a4(v5);
  OUTLINED_FUNCTION_243_4(v6, v7);
  return sub_1C8BD531C();
}

uint64_t sub_1C8A572C0(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = sub_1C8BD530C();
  v5 = a3(v4);
  OUTLINED_FUNCTION_135_2(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  return sub_1C8BD531C();
}

uint64_t sub_1C8A573B0(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = sub_1C8BD530C();
  v5 = a3(v4);
  OUTLINED_FUNCTION_135_2(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  return sub_1C8BD531C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.getter()
{
  OUTLINED_FUNCTION_63_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_277(v2 + 16, v4);
  if (!*(v2 + 24))
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.setter()
{
  v4 = OUTLINED_FUNCTION_68();
  v5 = OUTLINED_FUNCTION_222_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C8A5F93C(v7);
    OUTLINED_FUNCTION_40(v8);
  }

  OUTLINED_FUNCTION_37_0(v6 + 16, v10);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
}

void (*Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_63_6();
  *(v3 + 18) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_277(v5 + 16, v3);
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C8A575DC;
}

void sub_1C8A575DC()
{
  OUTLINED_FUNCTION_732();
  if (v3)
  {

    OUTLINED_FUNCTION_184();
    Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.setter();
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v0 + 72);
      v9 = *(v0 + 64);
      OUTLINED_FUNCTION_72_6();
      v10 = OUTLINED_FUNCTION_2();
      v7 = sub_1C8A5F93C(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_37_0(v7 + 16, v0 + 24);
    *(v7 + 16) = v2;
    *(v7 + 24) = v1;
  }

  free(v0);
}

BOOL Siri_Nlu_External_NluRouter_NLRouterServiceRequest.hasCurrentUserQuery.getter()
{
  OUTLINED_FUNCTION_63_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_277(v2 + 16, v4);
  return *(v2 + 24) != 0;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterServiceRequest.clearCurrentUserQuery()()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v3 = sub_1C8A5F93C(v3);
    *(v0 + v1) = v3;
  }

  OUTLINED_FUNCTION_37_0(v3 + 16, v4);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.turnContext.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v6);
  OUTLINED_FUNCTION_277(*(v0 + *(v7 + 20)) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext, v10);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    OUTLINED_FUNCTION_227_3(MEMORY[0x1E69E7CC0]);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF178, &qword_1C8C13010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.turnContext.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF178, &qword_1C8C13010);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_222_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A5F93C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_196_0();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.init()(uint64_t a1)
{
  OUTLINED_FUNCTION_227_3(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

void Siri_Nlu_External_NluRouter_NLRouterServiceRequest.turnContext.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(v9);
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_277(*(v0 + v13) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext, v2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v15;
    v12[2] = v15;
    v12[3] = v15;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v1, &qword_1EC2BF178, &qword_1C8C13010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.getter()
{
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_277(*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory, v3);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v7 = OUTLINED_FUNCTION_2();
    v6 = sub_1C8A5F93C(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
  OUTLINED_FUNCTION_37_0(v6 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory, v10);
  *(v6 + v8) = v0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  OUTLINED_FUNCTION_63_6();
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
  OUTLINED_FUNCTION_277(v5 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory, v3);
  v3[6] = *(v5 + v6);

  return OUTLINED_FUNCTION_12();
}

void sub_1C8A57CB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_72_6();
      v10 = OUTLINED_FUNCTION_2();
      v7 = sub_1C8A5F93C(v10);
      *(v9 + v8) = v7;
    }

    v11 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
    OUTLINED_FUNCTION_37_0(v7 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory, v2 + 24);
    *(v7 + v11) = v3;
  }

  free(v2);
}

uint64_t sub_1C8A57D80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_NLRouterServiceRequest.requestID.setter(v1, v2);
}

void (*Siri_Nlu_External_NluRouter_NLRouterServiceRequest.requestID.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_63_6();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
  v6 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_277(v6, v7);
  if (v5[1])
  {
    v8 = *v5;
    v9 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v8;
  v3[7] = v9;

  return sub_1C8A57E6C;
}

uint64_t sub_1C8A57EB0(void *a1)
{
  OUTLINED_FUNCTION_63_6();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_277(v4, v6);
  if (!*(v4 + 8))
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A57F14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_NLRouterServiceRequest.trpCandidateID.setter(v1, v2);
}

uint64_t sub_1C8A57F60(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  v8 = OUTLINED_FUNCTION_68();
  v9 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v8) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v12 = OUTLINED_FUNCTION_2();
    v11 = sub_1C8A5F93C(v12);
    *(v7 + v9) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_37_0(v13, v15);
  *v13 = v5;
  v13[1] = v3;
}

void (*Siri_Nlu_External_NluRouter_NLRouterServiceRequest.trpCandidateID.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_63_6();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
  v6 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_277(v6, v7);
  if (v5[1])
  {
    v8 = *v5;
    v9 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v8;
  v3[7] = v9;

  return sub_1C8A5808C;
}

void sub_1C8A580AC()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_732();
  if (v5)
  {
    v6 = v4;

    v7 = OUTLINED_FUNCTION_184();
    v6(v7);
  }

  else
  {
    v8 = v3;
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      OUTLINED_FUNCTION_72_6();
      v15 = OUTLINED_FUNCTION_2();
      v12 = sub_1C8A5F93C(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_37_0(v16, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  OUTLINED_FUNCTION_260();

  free(v17);
}

BOOL sub_1C8A5817C(void *a1)
{
  OUTLINED_FUNCTION_63_6();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_277(v4, v6);
  return *(v4 + 8) != 0;
}

uint64_t sub_1C8A581D8(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v7 = OUTLINED_FUNCTION_2();
    v6 = sub_1C8A5F93C(v7);
    *(v3 + v4) = v6;
  }

  v8 = (v6 + *a1);
  OUTLINED_FUNCTION_37_0(v8, v10);
  *v8 = 0;
  v8[1] = 0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.probingResult.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v6);
  OUTLINED_FUNCTION_277(*(v1 + *(v7 + 20)) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult, v17);
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_65(v0);
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v9 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(v9);
    v10 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_313_0();
    v15 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(v14);
    result = OUTLINED_FUNCTION_9_13(v15);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF180, &qword_1C8C13018);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_4();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.probingResult.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF180, &qword_1C8C13018);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_222_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A5F93C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_196_0();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_NluRouter_NLRouterServiceRequest.probingResult.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v9);
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_277(*(v0 + v12) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult, v2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0);
    v14 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(0);
    v18 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v1, &qword_1EC2BF180, &qword_1C8C13018);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8A5860C()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_97();
    sub_1C8A5FE98();
    v2(v3);
    sub_1C8A5FEEC();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t sub_1C8A586E0(uint64_t *a1, uint64_t *a2, void *a3, void (*a4)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_277(*(v4 + v10) + *a3, v19);
  sub_1C8778810();
  a4(0);
  v11 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v11, v12, v13);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = OUTLINED_FUNCTION_100();
  sub_1C8778ED8(v16, v17, a2);
  return v15;
}

void sub_1C8A587D8()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v8 = OUTLINED_FUNCTION_2();
    *(v0 + v7) = sub_1C8A5F93C(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.queryDecorationOutput.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v8);
  OUTLINED_FUNCTION_277(*(v1 + *(v9 + 20)) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput, v13);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    OUTLINED_FUNCTION_227_3(MEMORY[0x1E69E7CC0]);
    a1[4] = v11;
    a1[5] = v11;
    a1[6] = v11;
    a1[7] = v11;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v2, &qword_1EC2BF188, &qword_1C8C13020);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_11();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.queryDecorationOutput.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF188, &qword_1C8C13020);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_222_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A5F93C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_57_11();
  OUTLINED_FUNCTION_196_0();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.init()@<X0>(void *a2@<X8>)
{
  OUTLINED_FUNCTION_227_3(MEMORY[0x1E69E7CC0]);
  a2[4] = v3;
  a2[5] = v3;
  a2[6] = v3;
  a2[7] = v3;
  type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

void Siri_Nlu_External_NluRouter_NLRouterServiceRequest.queryDecorationOutput.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(v9);
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_277(*(v0 + v13) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput, v2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v15;
    v12[2] = v15;
    v12[3] = v15;
    v12[4] = v15;
    v12[5] = v15;
    v12[6] = v15;
    v12[7] = v15;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v1, &qword_1EC2BF188, &qword_1C8C13020);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_11();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  if (qword_1EC2B37B0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2B37B8;
}

uint64_t Siri_Nlu_External_NluRouter_NLParseResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8A58E30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_PommesResponse.metadataDomainName.setter(v1, v2);
}

uint64_t Siri_Nlu_External_NluRouter_PommesResponse.metadataDomainName.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.primitive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v7);
  OUTLINED_FUNCTION_84_5();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_65(v1);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v8 + 20)) = 2;
    v10 = OUTLINED_FUNCTION_313_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(v10);
    v11 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    v15 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
    result = OUTLINED_FUNCTION_9_13(v15);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF190, &qword_1C8C13028);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_9();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.primitive.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BF190, &qword_1C8C13028);
  OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a2 + *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0) + 20)) = 2;
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
  v7 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Siri_Nlu_External_NluRouter_TypedValue.primitive.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v12);
  OUTLINED_FUNCTION_130_3(*(v13 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = OUTLINED_FUNCTION_198_1();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(v15);
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
    v20 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF190, &qword_1C8C13028);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_9();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.entityIdentifier.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v8 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v8);
    v9 = OUTLINED_FUNCTION_27_1();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_18_2(*(v6 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF198, &qword_1C8C13030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.entityIdentifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BF198, &qword_1C8C13030);
  OUTLINED_FUNCTION_53_8();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
}

void Siri_Nlu_External_NluRouter_TypedValue.entityIdentifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v13);
  OUTLINED_FUNCTION_130_3(*(v14 + 24));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = (v9 + *(v7 + 24));
    *v20 = 0;
    v20[1] = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF198, &qword_1C8C13030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.BOOLValue.setter(char a1)
{
  result = OUTLINED_FUNCTION_202_4();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.BOOLValue.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v1);
  OUTLINED_FUNCTION_173_5(v2);
  return j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.hasBoolValue.getter()
{
  OUTLINED_FUNCTION_202_4();
  OUTLINED_FUNCTION_195_3();
  return !v0;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.person.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v7);
  OUTLINED_FUNCTION_57_0();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v8 + 20)) = xmmword_1C8BFA8E0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF1A0, &qword_1C8C13038);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_8();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.person.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BF1A0, &qword_1C8C13038);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

double Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.init()@<D0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  result = 0.0;
  *(a2 + *(v3 + 20)) = xmmword_1C8BFA8E0;
  return result;
}

void Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.person.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(v7);
  OUTLINED_FUNCTION_47_3(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v14);
  OUTLINED_FUNCTION_85(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v10 + *(v1 + 20)) = xmmword_1C8BFA8E0;
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1A0, &qword_1C8C13038);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_8();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A59A7C()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v1(0);
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v0(0);
  v7 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_258();
  sub_1C8778ED8(v12, v13, v2);
  return v11;
}

uint64_t sub_1C8A59B68()
{
  OUTLINED_FUNCTION_50();
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.app.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v6 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF1A8, &qword_1C8C13040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_15();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.app.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2BF1A8, &qword_1C8C13040);
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_1C8A59D38(void (*a1)(void))
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  a1(0);
  OUTLINED_FUNCTION_10_1();
  *v2 = 0;
  v2[1] = 0;
}

void Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.app.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(v6);
  OUTLINED_FUNCTION_47_3(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v12);
  OUTLINED_FUNCTION_85(*(v13 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1A8, &qword_1C8C13040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_15();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A59F50()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 20)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A59F98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App.bundleIdentifier.setter(v1, v2);
}

uint64_t sub_1C8A59FF0()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8A5A0DC()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.person.getter()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_10_1();
  sub_1C87A8FA8(*v0, *(v0 + 8));
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.person.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = v1 + *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(v3) + 20);
  result = sub_1C87A9A24(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.person.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_1C87A8FA8(v5, v6);
  return OUTLINED_FUNCTION_74_0();
}

BOOL Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.hasPerson.getter()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_10_1();
  return *(v0 + 8) >> 60 != 15;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.clearPerson()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0) + 20);
  sub_1C87A9A24(*v1, *(v1 + 8));
  *v1 = xmmword_1C8BFA8E0;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.type.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v5);
  OUTLINED_FUNCTION_84_5();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
  OUTLINED_FUNCTION_65(v0);
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    v8 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v7);
    result = OUTLINED_FUNCTION_9_13(v8);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF1B0, &qword_1C8C13048);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_10();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.type.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BF1B0, &qword_1C8C13048);
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.type.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v6);
  OUTLINED_FUNCTION_47_3(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v12);
  OUTLINED_FUNCTION_85(*(v13 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
    v15 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1B0, &qword_1C8C13048);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_10();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A5A5E8()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v1(0);
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v0(0);
  v7 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_258();
  sub_1C8778ED8(v12, v13, v2);
  return v11;
}

uint64_t sub_1C8A5A6D4()
{
  OUTLINED_FUNCTION_50();
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C8A5A760(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.identifier.setter(v1, v2);
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.custom.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v6 + 20));
    OUTLINED_FUNCTION_18_2(*(v6 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF1B8, &unk_1C8C13050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_10();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.custom.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BF1B8, &unk_1C8C13050);
  OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
  return OUTLINED_FUNCTION_89_4(v1);
}

void Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.custom.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v7);
  OUTLINED_FUNCTION_47_3(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_140_3();
    v17 = (v10 + *(v1 + 24));
    *v17 = 0;
    v17[1] = 0;
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1B8, &unk_1C8C13050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_10();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8A5AD14()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 24)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A5AD5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.typeName.setter(v1, v2);
}

uint64_t sub_1C8A5ADB4()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.typeName.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8A5AEA0()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1C8A5AF34()
{
  OUTLINED_FUNCTION_225_3();
  v3 = v2;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3(0);
  v1(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_313_0();
  v0(v8);
  v9 = OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void Siri_Nlu_External_NluRouter_RetrievedContext.type.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v1);
  OUTLINED_FUNCTION_141_3();
  *v0 = v2;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_RetrievedContext.type.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  *(v1 + 8) = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v2) + 20);
  OUTLINED_FUNCTION_141_3();
  *(v1 + 12) = v3;
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.typedValue.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v5);
  OUTLINED_FUNCTION_84_5();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(0);
  OUTLINED_FUNCTION_65(v0);
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    v8 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v7);
    result = OUTLINED_FUNCTION_9_13(v8);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5F88, &qword_1C8BE6C38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_11();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.typedValue.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5F88, &qword_1C8BE6C38);
  OUTLINED_FUNCTION_47_11();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1C8A5B2A8()
{
  OUTLINED_FUNCTION_12_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1(0);
  v0(0);
  v2 = OUTLINED_FUNCTION_73_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Siri_Nlu_External_NluRouter_RetrievedContext.typedValue.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v6);
  OUTLINED_FUNCTION_47_3(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v12);
  OUTLINED_FUNCTION_85(*(v13 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0);
    v15 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F88, &qword_1C8BE6C38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_11();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

SiriNLUTypes::Siri_Nlu_External_NluRouter_RetrievedContext::ContextType_optional __swiftcall Siri_Nlu_External_NluRouter_RetrievedContext.ContextType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 28)
  {
    v2 = 2;
  }

  else
  {
    v2 = 5;
  }

  if (rawValue == 29)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 50)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (rawValue == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (!rawValue)
  {
    v5 = 0;
  }

  *v1 = v5;
  return rawValue;
}

uint64_t sub_1C8A5B57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A6F4F0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8A5B610@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_RetrievedContext.ContextType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.primitive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v7);
  OUTLINED_FUNCTION_84_5();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_65(v1);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v8 + 20)) = 2;
    v10 = OUTLINED_FUNCTION_313_0();
    v11 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v10);
    result = OUTLINED_FUNCTION_9_13(v11);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5F78, &unk_1C8C13060);
    }
  }

  else
  {
    OUTLINED_FUNCTION_59_10();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.primitive.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5F78, &unk_1C8C13060);
  OUTLINED_FUNCTION_59_10();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.primitive.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v12);
  OUTLINED_FUNCTION_130_3(*(v13 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = OUTLINED_FUNCTION_198_1();
    type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v15);
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F78, &unk_1C8C13060);
    }
  }

  else
  {
    OUTLINED_FUNCTION_59_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.BOOLValue.setter(char a1)
{
  result = OUTLINED_FUNCTION_168_3();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.BOOLValue.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v1);
  OUTLINED_FUNCTION_173_5(v2);
  return j_j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.hasBoolValue.getter()
{
  OUTLINED_FUNCTION_168_3();
  OUTLINED_FUNCTION_195_3();
  return !v0;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.app.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v6 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5F68, &qword_1C8BE6C18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.app.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5F68, &qword_1C8BE6C18);
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.app.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v6);
  OUTLINED_FUNCTION_47_3(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v12);
  OUTLINED_FUNCTION_85(*(v13 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F68, &qword_1C8BE6C18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8A5BEE8@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a4 + *(a1(0) + 20)) = a2;
  a3(0);
  v8 = OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.typedValue.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(v5);
  OUTLINED_FUNCTION_84_5();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0);
  OUTLINED_FUNCTION_65(v0);
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v7);
    v8 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_313_0();
    v13 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5F58, &qword_1C8C13070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_8();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.typedValue.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5F58, &qword_1C8C13070);
  OUTLINED_FUNCTION_58_8();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.typedValue.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(v12);
  OUTLINED_FUNCTION_130_3(*(v13 + 24));
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
    v15 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
    v19 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F58, &qword_1C8C13070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_8();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A5C2D0()
{
  v0 = OUTLINED_FUNCTION_207();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_196();

  return v3(v2);
}

uint64_t sub_1C8A5C35C()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.sourceItemIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.entityName.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.startIndex.getter()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_0();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.startIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v0);
  OUTLINED_FUNCTION_7_19(*(v1 + 28));
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.startIndex.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  *(v1 + 16) = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2) + 28);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_233_1();
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.endIndex.getter()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_0();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.endIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v0);
  OUTLINED_FUNCTION_7_19(*(v1 + 32));
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.endIndex.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  *(v1 + 16) = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2) + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_233_1();
  return OUTLINED_FUNCTION_74_0();
}

float Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchScore.getter()
{
  OUTLINED_FUNCTION_181_2();
  result = OUTLINED_FUNCTION_32_11(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchScore.setter(float a1)
{
  result = OUTLINED_FUNCTION_181_2();
  *v3 = a1;
  *(v3 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchScore.modify(void *a1))(uint64_t result)
{
  v3 = OUTLINED_FUNCTION_55_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3) + 36);
  *(v1 + 12) = v4;
  v5 = OUTLINED_FUNCTION_32_11(v2 + v4);
  if (!v7)
  {
    v5 = v6;
  }

  *(v1 + 8) = v5;
  return sub_1C87FE8F0;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearMatchScore()()
{
  OUTLINED_FUNCTION_181_2();
  *v0 = 0;
  *(v0 + 4) = 1;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v7);
  OUTLINED_FUNCTION_84_5();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_65(v1);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + *(matched + 20));
    OUTLINED_FUNCTION_313(a1 + *(matched + 24));
    v10 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
    result = OUTLINED_FUNCTION_9_13(v10);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF1C0, &qword_1C8C13078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_12();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchProperties.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2BF1C0, &qword_1C8C13078);
  OUTLINED_FUNCTION_27_12();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_2_1(v3);
  v5 = a2 + *(v4 + 24);
  *v5 = 0;
  *(v5 + 8) = v6;
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
  v7 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchProperties.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v6);
  OUTLINED_FUNCTION_51_0(matched);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v13);
  OUTLINED_FUNCTION_130_3(*(v14 + 40));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(v9 + *(matched + 20));
    OUTLINED_FUNCTION_313(v9 + *(matched + 24));
    type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1C0, &qword_1C8C13078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.hasMatchProperties.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v5);
  OUTLINED_FUNCTION_242_3();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_76(v0, 1, matched);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v9, v10, &qword_1C8C13078);
  return v8;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearMatchProperties()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  sub_1C8778ED8(v0 + *(v1 + 40), &qword_1EC2BF1C0, &qword_1C8C13078);
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matcherType.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  v4 = *(v1 + *(result + 44));
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1C8A5CD74@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matcherType.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matcherType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matcherType.modify(void *a1))(uint64_t result)
{
  v3 = OUTLINED_FUNCTION_55_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3) + 44);
  *(v1 + 8) = v4;
  v5 = *(v2 + v4);
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *(v1 + 12) = v5;
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.originAppBundleID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 48)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.originAppBundleID.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.originAppBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 48)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearOriginAppBundleID()()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.userUtterance.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 52)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.userUtterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.userUtterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 52)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearUserUtterance()()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.identifier.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 56)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.identifier.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 56)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearIdentifier()()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t sub_1C8A5D3B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A6F544();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.maxTokenCount.getter()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_0();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.maxTokenCount.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v1);
  OUTLINED_FUNCTION_10_1();
  *v2 = v0;
  *(v2 + 8) = 0;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.maxTokenCount.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  *(v1 + 16) = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v2) + 20);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_233_1();
  return OUTLINED_FUNCTION_74_0();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.clearMaxTokenCount()()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_2_1(v0);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedTokenCount.getter()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_0();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedTokenCount.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v0);
  OUTLINED_FUNCTION_7_19(*(matched + 24));
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedTokenCount.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  *(v1 + 16) = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v2) + 24);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_233_1();
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedAliasTypes.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v7);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_386();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF1C8, &qword_1C8C13080);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_14();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedAliasTypes.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v1);
  sub_1C8778ED8(v0 + *(matched + 28), &qword_1EC2BF1C8, &qword_1C8C13080);
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1C8A5D780@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  OUTLINED_FUNCTION_109_0();
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedAliasTypes.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(v6);
  OUTLINED_FUNCTION_47_3(matched);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v13);
  OUTLINED_FUNCTION_85(*(v14 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1C8, &qword_1C8C13080);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_14();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A5D938()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v1(0);
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v0(0);
  v7 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_258();
  sub_1C8778ED8(v12, v13, v2);
  return v11;
}

uint64_t sub_1C8A5DA24()
{
  OUTLINED_FUNCTION_50();
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C8A5DB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A6F598();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  v4 = OUTLINED_FUNCTION_89_4(v3);
  OUTLINED_FUNCTION_2_1(a2 + *(v4 + 28));
  v6 = a2 + *(v5 + 32);
  *v6 = 0;
  *(v6 + 8) = v7;
  v8 = a2 + *(v5 + 36);
  *v8 = 0;
  *(v8 + 4) = v7;
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *(a2 + v3[11]) = 3;
  OUTLINED_FUNCTION_18_2(v3[12]);
  OUTLINED_FUNCTION_18_2(v3[13]);
  OUTLINED_FUNCTION_18_2(v3[14]);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(0);
  OUTLINED_FUNCTION_109_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0);
  v1 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.originalRankedSpans.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.adjustedRankedSpans.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.spans.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.context.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_196();

  return v2(v1);
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(v2) + 48);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.nlParseResponse.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v7);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_386();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF1D0, &qword_1C8C13088);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.nlParseResponse.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BF1D0, &qword_1C8C13088);
  OUTLINED_FUNCTION_23_18();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.nlParseResponse.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(v6);
  OUTLINED_FUNCTION_47_3(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v13);
  OUTLINED_FUNCTION_85(*(v14 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1D0, &qword_1C8C13088);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.pommesResponse.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v6 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF1D8, &unk_1C8C13090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.pommesResponse.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BF1D8, &unk_1C8C13090);
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.pommesResponse.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(v6);
  OUTLINED_FUNCTION_47_3(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v12);
  OUTLINED_FUNCTION_85(*(v13 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1D8, &unk_1C8C13090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.executedTasks.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.systemDialogActs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.salientEntities.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_196();

  return v2(v1);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(v2) + 32);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_NluRouter_RequestSummary.userQuery.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_NluRouter_RequestSummary.turnSummaries.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RequestSummary.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_NluRouter_RequestSummary.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(0);
  OUTLINED_FUNCTION_109_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.executedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.responseText.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

void Siri_Nlu_External_NluRouter_TurnSummary.executionSource.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v1);
  OUTLINED_FUNCTION_141_3();
  *v0 = v2;
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.executionSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_TurnSummary.executionSource.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  *(v1 + 8) = *(type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v2) + 28);
  OUTLINED_FUNCTION_141_3();
  *(v1 + 12) = v3;
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.genAiMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v7);
  OUTLINED_FUNCTION_84_5();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_65(v1);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v8 + 20)) = 5;
    *(a1 + *(v8 + 24)) = 3;
    v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
    result = OUTLINED_FUNCTION_9_13(v10);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5FA8, &unk_1C8BEBC60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_12();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t sub_1C8A5EF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_253();
  sub_1C8A5FE98();
  return a7(v7);
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.genAiMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B5FA8, &unk_1C8BEBC60);
  OUTLINED_FUNCTION_48_12();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_TurnSummary.genAiMetadata.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v13);
  OUTLINED_FUNCTION_130_3(*(v14 + 32));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v9 + *(v7 + 20)) = 5;
    *(v9 + *(v7 + 24)) = 3;
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FA8, &unk_1C8BEBC60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C8A5F184()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C8A5FE98();
    sub_1C8778ED8(v10 + v5, v3, v2);
    sub_1C8A5FE44();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    OUTLINED_FUNCTION_253();
    sub_1C8A5FEEC();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v0, v1);
    sub_1C8A5FE44();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v18);
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.hasGenAiMetadata.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v5);
  OUTLINED_FUNCTION_242_3();
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_76(v0, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v9, v10, &unk_1C8BEBC60);
  return v8;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_TurnSummary.clearGenAiMetadata()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B5FA8, &unk_1C8BEBC60);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C8A5F3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A6F5EC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0);
  *(a2 + *(OUTLINED_FUNCTION_89_4(v3) + 28)) = 5;
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  v4 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1C8A5F514()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3778);
  __swift_project_value_buffer(v0, qword_1EC2B3778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "current_user_query";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "turn_context";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "conversation_history";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "request_id";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "trp_candidate_id";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "probing_result";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "query_decoration_output";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A5F838()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest._StorageClass(0);
  swift_allocObject();
  result = sub_1C8A5F878();
  qword_1EC2B37B8 = result;
  return result;
}

uint64_t sub_1C8A5F878()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext;
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory) = MEMORY[0x1E69E7CC0];
  v3 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult;
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput;
  DecorationOutput = type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, DecorationOutput);
  return v0;
}

uint64_t sub_1C8A5F93C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF188, &qword_1C8C13020);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28[4] = v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF180, &qword_1C8C13018);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28[3] = v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF178, &qword_1C8C13010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext;
  v28[0] = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext;
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory) = MEMORY[0x1E69E7CC0];
  v11 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult;
  v28[1] = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult;
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput;
  v28[2] = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput;
  DecorationOutput = type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, DecorationOutput);
  swift_beginAccess();
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v18;
  *(v1 + 24) = v17;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();

  sub_1C8786514();
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
  swift_beginAccess();
  v20 = *(a1 + v19);
  swift_beginAccess();
  *(v1 + v10) = v20;

  v21 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
  swift_beginAccess();
  v23 = *v21;
  v22 = v21[1];
  swift_beginAccess();
  *v11 = v23;
  v11[1] = v22;

  v24 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v12 = v26;
  v12[1] = v25;

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C8A5FE44()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C8A5FE98()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C8A5FEEC()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A60180()
{

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext, &qword_1EC2BF178, &qword_1C8C13010);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult, &qword_1EC2BF180, &qword_1C8C13018);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput, &qword_1EC2BF188, &qword_1C8C13020);
  return v0;
}

uint64_t sub_1C8A60238()
{
  v0 = sub_1C8A60180();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_2();
    *(v0 + v1) = sub_1C8A5F93C(v2);
  }

  OUTLINED_FUNCTION_85_1();
  return sub_1C8A60328(v3, v4, v5, v6);
}

uint64_t sub_1C8A60328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C8793380(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C8A60474(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C8A60550(a2, a1, a3, a4);
        break;
      case 4:
      case 5:
        sub_1C8A6062C();
        break;
      case 6:
        sub_1C8A606A0(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C8A6077C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A60474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  sub_1C8776C08(&qword_1EC2B3848, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterTurnContext);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A60550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(0);
  sub_1C8776C08(&qword_1EC2B39F8, type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_RequestSummary);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C8A6062C()
{
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_119();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C8A606A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  sub_1C8776C08(&qword_1EC2B34F0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A6077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  sub_1C8776C08(&qword_1EC2B3800, type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_QueryDecorationOutput);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0);
  OUTLINED_FUNCTION_119();
  result = sub_1C8A608BC(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A608BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF188, &qword_1C8C13020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = v22 - v7;
  DecorationOutput = type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  MEMORY[0x1EEE9AC00](DecorationOutput);
  v22[1] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF180, &qword_1C8C13018);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v25 = v22 - v10;
  v26 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  MEMORY[0x1EEE9AC00](v26);
  v22[2] = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF178, &qword_1C8C13010);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v22 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  if (!*(a1 + 24) || (, sub_1C8BD4DDC(), result = , !v4))
  {
    swift_beginAccess();
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1C8778ED8(v14, &qword_1EC2BF178, &qword_1C8C13010);
    }

    else
    {
      sub_1C8A5FE44();
      sub_1C8776C08(&qword_1EC2B3848, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterTurnContext);
      sub_1C8BD4E2C();
      result = sub_1C8A5FEEC();
      if (v4)
      {
        return result;
      }
    }

    v17 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
    swift_beginAccess();
    if (!*(*(a1 + v17) + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(0), sub_1C8776C08(&qword_1EC2B39F8, type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_RequestSummary), , sub_1C8BD4E0C(), result = , !v4))
    {
      v18 = a1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID;
      swift_beginAccess();
      if (!*(v18 + 8) || (, sub_1C8BD4DDC(), result = , !v4))
      {
        v19 = a1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID;
        swift_beginAccess();
        if (!*(v19 + 8) || (, sub_1C8BD4DDC(), result = , !v4))
        {
          swift_beginAccess();
          v20 = v25;
          sub_1C8778810();
          if (__swift_getEnumTagSinglePayload(v20, 1, v26) == 1)
          {
            sub_1C8778ED8(v20, &qword_1EC2BF180, &qword_1C8C13018);
          }

          else
          {
            sub_1C8A5FE44();
            sub_1C8776C08(&qword_1EC2B34F0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult);
            sub_1C8BD4E2C();
            result = sub_1C8A5FEEC();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v21 = v23;
          sub_1C8778810();
          if (__swift_getEnumTagSinglePayload(v21, 1, DecorationOutput) == 1)
          {
            return sub_1C8778ED8(v21, &qword_1EC2BF188, &qword_1C8C13020);
          }

          else
          {
            sub_1C8A5FE44();
            sub_1C8776C08(&qword_1EC2B3800, type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_QueryDecorationOutput);
            sub_1C8BD4E2C();
            return sub_1C8A5FEEC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_NLRouterServiceRequest.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v2);
  if (*(v1 + *(v3 + 20)) != *(v0 + *(v3 + 20)))
  {

    v4 = OUTLINED_FUNCTION_271();
    v6 = sub_1C8A6108C(v4, v5);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  v9 = sub_1C8776C08(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v9) & 1;
}