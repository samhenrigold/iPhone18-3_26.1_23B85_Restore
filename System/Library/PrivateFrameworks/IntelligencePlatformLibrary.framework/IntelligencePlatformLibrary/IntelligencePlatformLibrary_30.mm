void sub_19368F52C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABC00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19394FBC0;
  v4 = v3 + v0 + dword_1EAEABC38;
  *(v3 + v0) = 0;
  *v4 = "PGModelInterfaceUnknown";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v3 + v0 + v2);
  *v8 = 1;
  *v7 = "PGModelInterfaceFullPlannerHTTPClient";
  *(v7 + 8) = 37;
  *(v7 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v9 = OUTLINED_FUNCTION_3_1(v3 + v0 + 2 * v2);
  *v10 = 2;
  *v9 = "PGModelInterfaceFullPlannerTokenGenerationClient";
  *(v9 + 8) = 48;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v11 = OUTLINED_FUNCTION_9_4((v3 + v0 + 3 * v2));
  *v11 = "PGModelInterfaceFullPlannerTokenGenerationClientConstrainedDecoding";
  *(v11 + 1) = 67;
  v11[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19368F72C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABC18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_47_4();
  v1 = OUTLINED_FUNCTION_65_16();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("domain");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "code");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19368F860()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_19368F8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);
  if (*(v3 + 8))
  {
    result = sub_19393C3C0();
  }

  if (!v4 && (v5 & 1) == 0)
  {
    return sub_19393C360();
  }

  return result;
}

void sub_19368F9AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEABC30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("ifRequestId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = v0;
  *v6 = "postingSpanId";
  *(v6 + 8) = 13;
  *(v6 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  v8 = OUTLINED_FUNCTION_13_12();
  *v8 = "planCycleId";
  *(v8 + 1) = 11;
  v8[16] = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19368FB10()
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
        type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
        type metadata accessor for AIML.UUID(0);
LABEL_10:
        OUTLINED_FUNCTION_57_7();
        sub_193498018();
        break;
      case 2:
        v3 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
        OUTLINED_FUNCTION_8_2(*(v3 + 20));
        sub_19393C230();
        break;
      case 1:
        type metadata accessor for AIML.UUID(0);
        goto LABEL_10;
    }
  }
}

void sub_19368FBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_24(a1, a2, a3);
  if (!v3)
  {
    if ((*(v4 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0) + 20) + 8) & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C3E0();
    }

    OUTLINED_FUNCTION_11_1();
    sub_193690114();
  }
}

void sub_19368FCE4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  sub_193448758(v1, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_20_10();
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v12, v13);
    OUTLINED_FUNCTION_17(v10, 1);
    OUTLINED_FUNCTION_19_44();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368FE2C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABC60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("reason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = v0;
  *v6 = "linkId";
  *(v6 + 8) = 6;
  *(v6 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  v8 = OUTLINED_FUNCTION_13_12();
  *v8 = "transcriptEventId";
  *(v8 + 1) = 17;
  v8[16] = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19368FF90()
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

    if (v1 == 3 || v1 == 2)
    {
      type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_57_7();
      sub_193498018();
    }

    else if (v1 == 1)
    {
      sub_1934982A8();
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193690064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(v8 + 9) & 1) == 0)
  {
    v12 = OUTLINED_FUNCTION_134(result, a2, a3, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGFailureReason, a5, &off_1F07DD188, a7, a8, *v8);
    sub_193447324(v12, v13, a2, v14, a3, v15);
  }

  if (!v9)
  {
    OUTLINED_FUNCTION_47_21();
    sub_193690868();
    OUTLINED_FUNCTION_47_21();
    sub_193690114();
  }
}

void sub_193690114()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_87_8(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_1_10();
  v11 = v1(v10);
  OUTLINED_FUNCTION_129_9(*(v11 + 24));
  OUTLINED_FUNCTION_20_10();
  if (v12)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v13, v14);
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_19_44();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1936902D4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABC90);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_65_16();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBE0);
  *v0 = "linkId";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  v7(v8);
  v9 = OUTLINED_FUNCTION_9_4((v1 + v4));
  v10 = OUTLINED_FUNCTION_48(v9, "modelInterface");
  v7(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193690414()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      v3 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0);
      OUTLINED_FUNCTION_74_14(v3);
      sub_1934982A8();
    }

    else if (v1 == 1)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_86();
      sub_193498018();
    }
  }
}

void sub_1936904C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_24(a1, a2, a3);
  if (!v3 && (*(v4 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0) + 20) + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_70_12();
    sub_193447324(v5, v6, v7, v8, v9, v10);
  }
}

void sub_1936905BC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABCA8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("linkId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "transcriptEventId");
  v6(v9);
  v10 = OUTLINED_FUNCTION_3_1(v0 + 2 * v3);
  *v11 = 4;
  v12 = OUTLINED_FUNCTION_48(v10, "modelIdentifier");
  v6(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193690718()
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
      case 4:
        v3 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
        OUTLINED_FUNCTION_8_2(*(v3 + 24));
        sub_19393C200();
        break;
      case 2:
        type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
        type metadata accessor for AIML.UUID(0);
LABEL_9:
        OUTLINED_FUNCTION_57_7();
        sub_193498018();
        break;
      case 1:
        type metadata accessor for AIML.UUID(0);
        goto LABEL_9;
    }
  }
}

void sub_1936907E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_24(a1, a2, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_11_1();
    sub_193690868();
    type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
    OUTLINED_FUNCTION_16_4();
    if (v4)
    {
      OUTLINED_FUNCTION_2_7(*v5, v4, 4);
    }
  }
}

void sub_193690868()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_87_8(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_1_10();
  v11 = v1(v10);
  OUTLINED_FUNCTION_129_9(*(v11 + 20));
  OUTLINED_FUNCTION_20_10();
  if (v12)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v13, v14);
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_19_44();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193690A2C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABCD8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_47_4();
  v1 = OUTLINED_FUNCTION_65_16();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("criticalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "modelIdentifier");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193690BDC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABD08);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("transcriptEventId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "overridesMatched");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "assetVersion");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193690D2C()
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
        v4 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
        OUTLINED_FUNCTION_8_2(*(v4 + 24));
        sub_19393C200();
        break;
      case 2:
        v3 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
        OUTLINED_FUNCTION_74_14(v3);
LABEL_9:
        sub_193498018();
        break;
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_86();
        goto LABEL_9;
    }
  }
}

void sub_193690DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_24(a1, a2, a3);
  if (!v3)
  {
    if (*(v4 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0) + 20)) != 3)
    {
      OUTLINED_FUNCTION_70_12();
      sub_193447600();
    }

    OUTLINED_FUNCTION_16_4();
    if (v5)
    {
      OUTLINED_FUNCTION_2_7(*v6, v5, 3);
    }
  }
}

void sub_193690F00()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABD20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_47_4();
  v1 = OUTLINED_FUNCTION_65_16();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("criticalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "assetVersion");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193691034()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_119_1();
    }
  }
}

void sub_1936910B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8[5];
  if (v8[1] != 1)
  {
    OUTLINED_FUNCTION_134(a1, a2, a3, &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, a5, &off_1F07DD1D8, a7, a8, *v8);
    sub_193447600();
  }

  if (!v9)
  {
    if (v10)
    {
      sub_19393C3C0();
    }
  }
}

void sub_193691224()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_57_7();
      sub_193498018();
    }
  }
}

void sub_193691414()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_119_1();
    }
  }
}

void sub_193691474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8[1] != 1)
  {
    OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, a3, &off_1F07DD1D8, a7, a8, *v8);
    sub_193447600();
  }
}

uint64_t sub_19369154C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  v2 = swift_allocBox();
  result = IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted.init()();
  *a1 = v2;
  return result;
}

void sub_193691588()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABDC8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  *(v4 + 16) = xmmword_19394FBB0;
  v5 = (v4 + v0);
  v6 = v4 + v0 + dword_1EAEABE00;
  *v5 = 2;
  *v6 = "startedOrChanged";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  (v8)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v5 + v3));
  *v10 = "ended";
  *(v10 + 1) = 5;
  v10[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v8();
  v11 = OUTLINED_FUNCTION_3_1(v5 + 2 * v3);
  *v12 = 4;
  *v11 = "failed";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193691710()
{
  OUTLINED_FUNCTION_26();
  v67 = v0;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_166_3();
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v60 = v9 - v8;
  v10 = OUTLINED_FUNCTION_123_11();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_47(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_8();
  v64 = v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_83_17();
  v63 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v59 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40168, &qword_193979C60);
  v20 = OUTLINED_FUNCTION_47(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_8();
  v57 = v21;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v22);
  v62 = &v57 - v23;
  v61 = xmmword_19395BB80;
  v65 = v2;
  v66 = v0;
  v58 = v6;
  while (1)
  {
    v24 = sub_19393C0E0();
    if (v1 || (v25 & 1) != 0)
    {
      break;
    }

    switch(v24)
    {
      case 4:
        v71 = v61;
        v72 = 0;
        v73 = 0;
        sub_193498018();
        v42 = v4;
        v43 = v6;
        v44 = v67;

        v45 = *(&v71 + 1);
        if (*(&v71 + 1) == 2)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGRequestFailed.init()();
          v45 = *(&v68 + 1);
          v46 = v68;
          v47 = v69;
          v48 = v70;
        }

        else
        {
          v48 = v73;
          v47 = v72;
          v46 = v71;
          v68 = v71;
          v69 = v72;
        }

        OUTLINED_FUNCTION_184();
        v51 = swift_allocObject();
        *(v51 + 16) = v46;
        *(v51 + 24) = v45;
        *(v51 + 32) = v47;
        *(v51 + 40) = v48;
        *v44 = v51 | 0x8000000000000000;
        v6 = v43;
        v4 = v42;
        v2 = v65;
        v0 = v66;
        break;
      case 3:
        v32 = OUTLINED_FUNCTION_50_19();
        __swift_storeEnumTagSinglePayload(v32, v33, 1, v6);
        sub_193498018();

        v34 = v2;
        v35 = v2;
        v36 = v64;
        sub_193448758(v34, v64, &qword_1EAE40160, &qword_193979C58);
        v37 = OUTLINED_FUNCTION_50_19();
        if (__swift_getEnumTagSinglePayload(v37, v38, v6) == 1)
        {
          v39 = v60;
          IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.init()(v60);
          sub_19344E6DC(v35, &qword_1EAE40160, &qword_193979C58);
          v40 = OUTLINED_FUNCTION_50_19();
          if (__swift_getEnumTagSinglePayload(v40, v41, v6) != 1)
          {
            sub_19344E6DC(v64, &qword_1EAE40160, &qword_193979C58);
          }
        }

        else
        {
          sub_19344E6DC(v35, &qword_1EAE40160, &qword_193979C58);
          OUTLINED_FUNCTION_56_16();
          v39 = v60;
          sub_193694370(v36, v60);
        }

        v49 = swift_allocBox();
        OUTLINED_FUNCTION_56_16();
        sub_193694370(v39, v50);
        v0 = v66;
        *v67 = v49 | 0x4000000000000000;
        v2 = v65;
        break;
      case 2:
        v26 = v62;
        OUTLINED_FUNCTION_130_8(v62, 1);
        v27 = v0;
        sub_193498018();

        v28 = v57;
        sub_193448758(v26, v57, &qword_1EAE40168, &qword_193979C60);
        OUTLINED_FUNCTION_3_22(v28);
        if (v29)
        {
          v54 = v59;
          IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted.init()();
          v30 = OUTLINED_FUNCTION_123_11();
          sub_19344E6DC(v30, v31, &qword_193979C60);
          OUTLINED_FUNCTION_3_22(v28);
          if (!v29)
          {
            sub_19344E6DC(v28, &qword_1EAE40168, &qword_193979C60);
          }
        }

        else
        {
          v52 = OUTLINED_FUNCTION_123_11();
          sub_19344E6DC(v52, v53, &qword_193979C60);
          OUTLINED_FUNCTION_55_15();
          v54 = v59;
          sub_193694370(v28, v59);
        }

        v55 = swift_allocBox();
        OUTLINED_FUNCTION_55_15();
        sub_193694370(v54, v56);
        *v67 = v55;
        v6 = v58;
        v0 = v27;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193691C24()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_103();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v4 = v3 - v2;
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = *v0 >> 62;
  if (v9)
  {
    if (v9 != 1)
    {
      OUTLINED_FUNCTION_78_14((*v0 & 0x3FFFFFFFFFFFFFFFLL));
      OUTLINED_FUNCTION_70_12();
      sub_193447600();
      goto LABEL_7;
    }

    v10 = swift_projectBox();
    sub_193693D84(v10, v4);
    sub_193447600();
    v11 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded;
    v12 = v4;
  }

  else
  {
    v13 = swift_projectBox();
    sub_193693D84(v13, v8);
    sub_193447600();
    v11 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted;
    v12 = v8;
  }

  sub_1936943C8(v12, v11);
LABEL_7:
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193691E60()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABDE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("linkId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_52();
  *v7 = v0;
  *v6 = "prompt";
  *(v6 + 8) = 6;
  *(v6 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  v8 = OUTLINED_FUNCTION_13_12();
  *v8 = "grammar";
  *(v8 + 1) = 7;
  v8[16] = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193692030()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABDF8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("linkId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "promptResponse");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "grammar");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193692180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  while (1)
  {
    v7 = sub_19393C0E0();
    if (v6 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 3 || v7 == 2)
    {
      a4(0);
      sub_19393C200();
LABEL_9:
      v6 = 0;
    }

    else if (v7 == 1)
    {
      type metadata accessor for AIML.UUID(0);
      sub_193498018();
      goto LABEL_9;
    }
  }
}

void sub_193692274(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_26_24(a1, a2, a3);
  if (!v4)
  {
    a4(0);
    OUTLINED_FUNCTION_16_4();
    if (v6)
    {
      OUTLINED_FUNCTION_2_7(*v7, v6, 2);
    }

    OUTLINED_FUNCTION_16_4();
    if (v8)
    {
      OUTLINED_FUNCTION_2_7(*v9, v8, 3);
    }
  }
}

void sub_193692370()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABE10);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  *v0 = "startedOrChanged";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "ended");
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "failed");
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v13 = 100;
  *v12 = "traceId";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193692518()
{
  OUTLINED_FUNCTION_26();
  v70 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_166_3();
  v7 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v51 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40170, &qword_193979C68);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_8();
  v54 = v13;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - v15;
  v17 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v50 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40178, &qword_193979C70);
  v22 = OUTLINED_FUNCTION_47(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15_8();
  v53 = v23;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v49 - v25;
  v57 = v49 - v25;
  v52 = v16;
  v55 = v17;
  v49[2] = v3;
  v49[1] = v5;
  v56 = v7;
  while (1)
  {
    v27 = OUTLINED_FUNCTION_124();
    if (v1 || (v28 & 1) != 0)
    {
      break;
    }

    switch(v27)
    {
      case 100:
        type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
        type metadata accessor for AIML.UUID(0);
        v26 = v57;
        sub_193498018();
        break;
      case 2:
        v33 = v52;
        __swift_storeEnumTagSinglePayload(v52, 1, 1, v7);
        sub_193498018();
        v34 = v7;
        v35 = v54;
        sub_193448758(v33, v54, &qword_1EAE40170, &qword_193979C68);
        if (__swift_getEnumTagSinglePayload(v35, 1, v34) == 1)
        {
          v36 = v51;
          IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.init()();
          sub_19344E6DC(v33, &qword_1EAE40170, &qword_193979C68);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v34);
          v7 = v34;
          if (EnumTagSinglePayload != 1)
          {
            sub_19344E6DC(v54, &qword_1EAE40170, &qword_193979C68);
          }
        }

        else
        {
          sub_19344E6DC(v33, &qword_1EAE40170, &qword_193979C68);
          v36 = v51;
          sub_193694370(v35, v51);
          v7 = v34;
        }

        v44 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
        sub_193692AF4(v36, v70 + *(v44 + 20));
        break;
      case 3:
        OUTLINED_FUNCTION_85_16();
        sub_193498018();
        v38 = v69;
        if (v69 == 1)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceFailed.init()();
          v39 = v58;
          v40 = v59;
          v41 = v60;
          v42 = v61;
          v43 = v62;
          v38 = v63;
        }

        else
        {
          v43 = v68;
          v40 = v65;
          v41 = v66;
          v39 = v64;
          v42 = v67;
          v58 = v64;
          v59 = v65;
          v60 = v66;
          v61 = v67;
          v62 = v68;
          v63 = v69;
        }

        v48 = v70 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 24);
        sub_193456418(*v48, *(v48 + 8));

        *v48 = v39;
        *(v48 + 8) = v40;
        *(v48 + 16) = v41;
        *(v48 + 24) = v42;
        *(v48 + 32) = v43;
        *(v48 + 40) = v38;
        v7 = v56;
        v26 = v57;
        break;
      case 1:
        OUTLINED_FUNCTION_130_8(v26, 1);
        sub_193498018();
        v29 = v26;
        v30 = v26;
        v31 = v53;
        sub_193448758(v29, v53, &qword_1EAE40178, &qword_193979C70);
        OUTLINED_FUNCTION_3_22(v31);
        if (v32)
        {
          v47 = v50;
          IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.init()();
          sub_19344E6DC(v30, &qword_1EAE40178, &qword_193979C70);
          OUTLINED_FUNCTION_3_22(v31);
          if (!v32)
          {
            sub_19344E6DC(v53, &qword_1EAE40178, &qword_193979C70);
          }
        }

        else
        {
          v45 = OUTLINED_FUNCTION_123_11();
          sub_19344E6DC(v45, v46, &qword_193979C70);
          v47 = v50;
          sub_193694370(v31, v50);
        }

        sub_193692AF4(v47, v70);
        v26 = v57;
        v7 = v56;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193692AF4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_166_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return a2;
}

void sub_193692B4C()
{
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_130();
  sub_193692D40();
  if (!v1)
  {
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_130();
    sub_193692E44();
    v2 = (v0 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 24));
    v3 = *v2;
    v4 = v2[1];
    v8 = *v2;
    sub_19350CB08(*v2, v4);

    IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceFailed.init()();
    sub_1936942D4();
    v5 = sub_19393C550();
    sub_193456418(v6, v7);

    sub_193456418(v8, v4);

    if ((v5 & 1) == 0)
    {
      sub_19350CB08(v3, v4);

      OUTLINED_FUNCTION_70_12();
      sub_193447600();
      sub_193456418(v3, v4);
    }

    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_130();
    sub_193692F48();
  }
}

void sub_193692D40()
{
  v1 = OUTLINED_FUNCTION_14_10();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.init()();
  sub_193694328(&qword_1EAE401A0, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted);
  v6 = sub_19393C550();
  sub_1936943C8(v5, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_4(v0, 1);
  }
}

void sub_193692E44()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_14_10();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 20);
  IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.init()();
  sub_193694328(&qword_1EAE40198, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded, &protocol conformance descriptor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded);
  v7 = sub_19393C550();
  sub_1936943C8(v5, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_4(v0 + v6, 2);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193692F48()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_10();
  v9 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 28));
  OUTLINED_FUNCTION_20_10();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v11, v12);
    OUTLINED_FUNCTION_17(v1, 100);
    OUTLINED_FUNCTION_19_44();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::IntelligenceFlowPlanGenerationTelemetry::PGOverridesStarted sub_1936930B0@<W0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  v2 = swift_allocObject();
  result.exists.value = IntelligenceFlowPlanGenerationTelemetry.PGOverridesStarted.init()().exists.value;
  *a1 = v2;
  return result;
}

void sub_1936930F0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABE28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193693240()
{
  OUTLINED_FUNCTION_26();
  v3 = v0;
  OUTLINED_FUNCTION_22_0();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v25 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40180, &qword_193979C78);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_8();
  v26 = v9;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_83_17();
  v38 = v2;
  while (1)
  {
    v11 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v12 & 1) != 0)
    {
      break;
    }

    switch(v11)
    {
      case 3:
        OUTLINED_FUNCTION_85_16();
        sub_193498018();
        OUTLINED_FUNCTION_84_11();
        v17 = v37;
        if (v37 == 1)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.init()();
          v27 = v28;
          v18 = v29;
          v3 = v30;
          v19 = v31;
          v17 = v32;
        }

        else
        {
          v19 = v36;
          v18 = v34;
          v3 = v35;
          v27 = v33;
          *&v28 = v33;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v27;
        *(v24 + 32) = v18;
        *(v24 + 40) = v3;
        *(v24 + 48) = v19;
        *(v24 + 56) = v17;
        OUTLINED_FUNCTION_68_17(v24);
        v2 = v38;
        break;
      case 2:
        v14 = OUTLINED_FUNCTION_50_19();
        OUTLINED_FUNCTION_130_8(v14, v15);
        OUTLINED_FUNCTION_124_7();
        sub_193498018();
        OUTLINED_FUNCTION_217();
        sub_193448758(v2, v26, &qword_1EAE40180, &qword_193979C78);
        OUTLINED_FUNCTION_3_22(v26);
        if (v16)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.init()();
          OUTLINED_FUNCTION_72_12();
          OUTLINED_FUNCTION_3_22(v26);
          if (!v16)
          {
            sub_19344E6DC(v26, &qword_1EAE40180, &qword_193979C78);
          }
        }

        else
        {
          OUTLINED_FUNCTION_72_12();
          v20 = OUTLINED_FUNCTION_54_16();
          sub_193694370(v20, v25);
        }

        v21 = swift_allocBox();
        v22 = OUTLINED_FUNCTION_54_16();
        sub_193694370(v22, v23);
        v3 = v0;
        *v0 = v21 | 0x4000000000000000;
        v2 = v38;
        break;
      case 1:
        LOBYTE(v33) = 3;
        sub_193498018();
        OUTLINED_FUNCTION_217();
        IntelligenceFlowPlanGenerationTelemetry.PGOverridesStarted.init()();
        OUTLINED_FUNCTION_111_7();
        v13 = swift_allocObject();
        *(v13 + 16) = v28;
        *v3 = v13;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19369357C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_193456418(result, a2);
  }

  return result;
}

void sub_1936935C0()
{
  OUTLINED_FUNCTION_103();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_228_1();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = swift_projectBox();
      sub_193693D84(v4, v0);
      OUTLINED_FUNCTION_71_18();
      sub_1936943C8(v0, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
      return;
    }

    OUTLINED_FUNCTION_78_14((v2 & 0x3FFFFFFFFFFFFFFFLL));
  }

  OUTLINED_FUNCTION_70_12();
  sub_193447600();
}

IntelligencePlatformLibrary::IntelligenceFlowPlanGenerationTelemetry::PGPrescribedPlanStarted sub_193693768@<W0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  v2 = swift_allocObject();
  result.exists.value = IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanStarted.init()().exists.value;
  *a1 = v2;
  return result;
}

void sub_1936937A8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABE40);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936938F8()
{
  OUTLINED_FUNCTION_26();
  v3 = v0;
  OUTLINED_FUNCTION_22_0();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v22 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40188, &qword_193979C80);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_8();
  v23 = v9;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_83_17();
  v28 = v2;
  while (1)
  {
    v11 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v12 & 1) != 0)
    {
      break;
    }

    switch(v11)
    {
      case 3:
        sub_193498018();
        OUTLINED_FUNCTION_84_11();
        IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanFailed.init()();
        v3 = v24;
        OUTLINED_FUNCTION_184();
        v21 = swift_allocObject();
        *(v21 + 16) = v24;
        *(v21 + 24) = v25;
        *(v21 + 32) = v26;
        *(v21 + 40) = v27;
        OUTLINED_FUNCTION_68_17(v21);
        v2 = v28;
        break;
      case 2:
        v14 = OUTLINED_FUNCTION_50_19();
        OUTLINED_FUNCTION_130_8(v14, v15);
        OUTLINED_FUNCTION_124_7();
        sub_193498018();
        OUTLINED_FUNCTION_217();
        sub_193448758(v2, v23, &qword_1EAE40188, &qword_193979C80);
        OUTLINED_FUNCTION_3_22(v23);
        if (v16)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded.init()();
          OUTLINED_FUNCTION_72_12();
          OUTLINED_FUNCTION_3_22(v23);
          if (!v16)
          {
            sub_19344E6DC(v23, &qword_1EAE40188, &qword_193979C80);
          }
        }

        else
        {
          OUTLINED_FUNCTION_72_12();
          v17 = OUTLINED_FUNCTION_53_20();
          sub_193694370(v17, v22);
        }

        v18 = swift_allocBox();
        v19 = OUTLINED_FUNCTION_53_20();
        sub_193694370(v19, v20);
        v3 = v0;
        *v0 = v18 | 0x4000000000000000;
        v2 = v28;
        break;
      case 1:
        sub_193498018();
        OUTLINED_FUNCTION_217();
        IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanStarted.init()();
        OUTLINED_FUNCTION_111_7();
        v13 = swift_allocObject();
        *(v13 + 16) = v24;
        *v3 = v13;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193693C34()
{
  OUTLINED_FUNCTION_103();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_228_1();
  if (v2 == 1)
  {
    v3 = swift_projectBox();
    sub_193693D84(v3, v0);
    OUTLINED_FUNCTION_71_18();
    sub_1936943C8(v0, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
  }

  else
  {
    OUTLINED_FUNCTION_70_12();
    sub_193447600();
  }
}

uint64_t sub_193693D84(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_166_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return a2;
}

void sub_193693E40()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABE58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193693F90()
{
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
      case 3:
        v18 = xmmword_19395BB80;
        v19 = 0;
        v20 = 0;
        sub_193498018();

        v8 = *(&v18 + 1);
        if (*(&v18 + 1) == 2)
        {
          v9 = &v14;
          IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanFailed.init()();
          v8 = v15;
          v10 = v16;
          v11 = v17;
        }

        else
        {
          v11 = v20;
          v9 = &v18;
          v10 = v19;
        }

        v12 = *v9;
        OUTLINED_FUNCTION_184();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v8;
        *(v13 + 32) = v10;
        *(v13 + 40) = v11;
        *v1 = v13 | 0x8000000000000000;
        break;
      case 2:
        LOBYTE(v18) = 3;
        sub_193498018();

        v6 = v18;
        if (v18 == 3)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanEnded.init()();
          v6 = v14;
        }

        OUTLINED_FUNCTION_111_7();
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *v1 = v7 | 0x4000000000000000;
        break;
      case 1:
        LOBYTE(v18) = 3;
        sub_193498018();

        v4 = v18;
        if (v18 == 3)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.init()();
          v4 = v14;
        }

        OUTLINED_FUNCTION_111_7();
        v5 = swift_allocObject();
        *(v5 + 16) = v4;
        *v1 = v5;
        break;
    }
  }
}

void sub_1936941AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!(*v8 >> 62))
  {
    LOBYTE(v9) = *(*v8 + 16);
    OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted, a3, &off_1F07DD4A8, a7, a8, v9);
  }

  sub_193447600();
}

unint64_t sub_1936942D4()
{
  result = qword_1EAE40190;
  if (!qword_1EAE40190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40190);
  }

  return result;
}

uint64_t sub_193694328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_193694370(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_166_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return a2;
}

uint64_t sub_1936943C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_59_17()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_65_16()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_72_12()
{

  return sub_19344E6DC(v1, v2, v0);
}

void OUTLINED_FUNCTION_118_9()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_129_9@<X0>(uint64_t a1@<X8>)
{

  return sub_193448758(v4 + a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_130_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 24));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193694738()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 32));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgRequestContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v2) + 36));
  *v0 = v3;

  return sub_193438388(v3);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgRequestContext.setter()
{
  v2 = *(OUTLINED_FUNCTION_95_12() + 36);
  result = sub_1934354B4(*(v1 + v2));
  *(v1 + v2) = v0;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgRequestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19369499C()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptTier1.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 40));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptTier1.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptTier1.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193694AB8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptResponseTier1.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 44));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptResponseTier1.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptResponseTier1.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193694BD4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgModelInferenceContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 48));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgModelInferenceContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgModelInferenceContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgOverridesRequestContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v2) + 52));
  *v0 = v3;

  return sub_193438388(v3);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgOverridesRequestContext.setter()
{
  v2 = *(OUTLINED_FUNCTION_95_12() + 52);
  result = sub_1934354B4(*(v1 + v2));
  *(v1 + v2) = v0;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgOverridesRequestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPrescribedPlanRequestContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v2) + 56));
  *v0 = v3;

  return sub_193438388(v3);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPrescribedPlanRequestContext.setter()
{
  v2 = *(OUTLINED_FUNCTION_95_12() + 56);
  result = sub_1934354B4(*(v1 + v2));
  *(v1 + v2) = v0;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPrescribedPlanRequestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgGeneratePlanContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  *v0 = *(v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v2) + 60));
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgGeneratePlanContext.setter()
{
  v2 = *(OUTLINED_FUNCTION_95_12() + 60);

  *(v1 + v2) = v0;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgGeneratePlanContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193694F28@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193694F50@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193694FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1936950B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936951C0@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936951E8@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.code.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void IntelligenceFlowPlanGenerationTelemetry.IFError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.IFError.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
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
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v1);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v3)
  {
    MEMORY[0x193B18060](v2);
  }

  return sub_19393CB00();
}

uint64_t sub_193695560()
{
  v0 = OUTLINED_FUNCTION_45_23();
  OUTLINED_FUNCTION_90_15(v1, v0);
  IntelligenceFlowPlanGenerationTelemetry.IFError.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.postingSpanId.getter()
{
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  OUTLINED_FUNCTION_71_0();
  return *v0;
}

void IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.postingSpanId.setter(uint64_t a1, char a2)
{
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  OUTLINED_FUNCTION_71_0();
  *v4 = a1;
  *(v4 + 8) = a2 & 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.postingSpanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.planCycleId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.init()()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0) + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  *v6 = 0;
  *(v6 + 8) = 1;
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v18, v19, v20);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_236();

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

void static IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v46 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v45 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - v18;
  v20 = *(v17 + 48);
  sub_193448804(v1, &v45 - v18, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v0, &v19[v20], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v19);
  if (!v21)
  {
    sub_193448804(v19, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v19[v20]);
    if (!v21)
    {
      v23 = &v19[v20];
      v24 = v46;
      sub_19355A5F8(v23, v46);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v25, v26, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_65_17();
      v27 = sub_19393C550();
      sub_1934F8A10(v24);
      sub_1934F8A10(v2);
      sub_19344E6DC(v19, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v27 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_1934F8A10(v2);
LABEL_9:
    v22 = v19;
LABEL_10:
    sub_19344E6DC(v22, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31(&v19[v20]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v19, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_13:
  v28 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  v29 = *(v28 + 20);
  v30 = (v1 + v29);
  v31 = *(v1 + v29 + 8);
  v32 = (v0 + v29);
  v33 = *(v0 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (*v30 != *v32)
  {
    LOBYTE(v33) = 1;
  }

  if ((v33 & 1) == 0)
  {
LABEL_19:
    v34 = *(v28 + 24);
    v35 = *(v11 + 48);
    OUTLINED_FUNCTION_175();
    sub_193448804(v36, v37, v38, &unk_19395C320);
    sub_193448804(v0 + v34, v15 + v35, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v15);
    if (v21)
    {
      OUTLINED_FUNCTION_31(v15 + v35);
      if (v21)
      {
        sub_19344E6DC(v15, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_11;
      }
    }

    else
    {
      v39 = v45;
      sub_193448804(v15, v45, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_31(v15 + v35);
      if (!v40)
      {
        v41 = v46;
        sub_19355A5F8(v15 + v35, v46);
        OUTLINED_FUNCTION_0_83();
        v44 = sub_193695D2C(v42, v43, &protocol conformance descriptor for AIML.UUID);
        OUTLINED_FUNCTION_139(v44);
        sub_1934F8A10(v41);
        sub_1934F8A10(v39);
        sub_19344E6DC(v15, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_11;
      }

      sub_1934F8A10(v39);
    }

    v22 = v15;
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_237();
  a17 = v21;
  a18 = v22;
  v23 = v18;
  v24 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for AIML.UUID(v24);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v26 = OUTLINED_FUNCTION_165_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  v29 = OUTLINED_FUNCTION_47(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_17();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v33, v34, v35, v36);
  OUTLINED_FUNCTION_5_9(v32);
  if (v37)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v32, v19);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    v40 = sub_193695D2C(v38, v39, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v40);
    sub_1934F8A10(v19);
  }

  v41 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  v42 = (v23 + *(v41 + 20));
  if (*(v42 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v43 = *v42;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v43);
  }

  sub_193448804(v23 + *(v41 + 24), v20, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v20);
  if (v37)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v44 = OUTLINED_FUNCTION_5_7();
    sub_19355A5F8(v44, v45);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    v48 = sub_193695D2C(v46, v47, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v48);
    sub_1934F8A10(v19);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_193695D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_193695DE8(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_193695E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

void IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t sub_193695F08()
{
  v1 = OUTLINED_FUNCTION_222();
  v2(v1);
  OUTLINED_FUNCTION_148_4();
  return sub_193448804(v3, v4, v5, v0);
}

uint64_t sub_193695F94()
{
  v0 = OUTLINED_FUNCTION_266();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_89_13(*(v2 + 20));
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.linkId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193696024()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_101(*(v2 + 24));
  return sub_193448804(v3, v4, v5, v6);
}

uint64_t sub_193696084()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1(v0);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.transcriptEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = *(v2 + 24);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  *a1 = 0;
  *(a1 + 8) = 256;
  sub_19344E6DC(a1 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  sub_19344E6DC(a1 + v8, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
}

void static IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v5 = v4;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_137_2();
  v21 = *(v3 + 9);
  if (*(v5 + 9))
  {
    v48 = v11;
    if ((v21 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*(v3 + 9))
    {
      goto LABEL_26;
    }

    v22 = *(v5 + 8);
    v23 = *v3;
    v24 = *(v3 + 8);
    v51 = *v5;
    v52 = v22 & 1;
    v48 = v11;
    v49 = v23;
    v50 = v24 & 1;
    v25 = IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter();
    if (v25 != IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter())
    {
      goto LABEL_26;
    }
  }

  v47 = v19;
  v45 = v0;
  v46 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  v26 = *(v46 + 20);
  v27 = *(v15 + 48);
  OUTLINED_FUNCTION_96(v5 + v26, v1);
  OUTLINED_FUNCTION_96(v3 + v26, v1 + v27);
  OUTLINED_FUNCTION_14_1(v1);
  if (!v28)
  {
    sub_193448804(v1, v14, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_14_1(v1 + v27);
    if (!v28)
    {
      v30 = v1 + v27;
      v31 = v45;
      sub_19355A5F8(v30, v45);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v32, v33, &protocol conformance descriptor for AIML.UUID);
      v34 = sub_19393C550();
      sub_1934F8A10(v31);
      sub_1934F8A10(v14);
      sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v34 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    sub_1934F8A10(v14);
LABEL_14:
    v29 = v1;
LABEL_25:
    sub_19344E6DC(v29, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_14_1(v1 + v27);
  if (!v28)
  {
    goto LABEL_14;
  }

  sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_16:
  v35 = *(v46 + 24);
  v36 = *(v15 + 48);
  v37 = v5 + v35;
  v38 = v47;
  OUTLINED_FUNCTION_96(v37, v47);
  OUTLINED_FUNCTION_96(v3 + v35, v38 + v36);
  OUTLINED_FUNCTION_14_1(v38);
  if (!v28)
  {
    v39 = v48;
    sub_193448804(v38, v48, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_14_1(v38 + v36);
    if (!v40)
    {
      v41 = v38 + v36;
      v42 = v45;
      sub_19355A5F8(v41, v45);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v43, v44, &protocol conformance descriptor for AIML.UUID);
      sub_19393C550();
      sub_1934F8A10(v42);
      sub_1934F8A10(v39);
      sub_19344E6DC(v38, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_26;
    }

    sub_1934F8A10(v39);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_14_1(v38 + v36);
  if (!v28)
  {
LABEL_24:
    v29 = v38;
    goto LABEL_25;
  }

  sub_19344E6DC(v38, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_26:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for AIML.UUID(v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_17();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v10 = *(v0 + 8);
    v11 = *v0;
    OUTLINED_FUNCTION_103_0();
    v23 = v11;
    v24 = v10 & 1;
    v12 = IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter();
    MEMORY[0x193B18030](v12);
  }

  v13 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  sub_193448804(v0 + *(v13 + 20), v9, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v9);
  if (v14)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v9, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    v17 = sub_193695D2C(v15, v16, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v17);
    sub_1934F8A10(v1);
  }

  sub_193448804(v0 + *(v13 + 24), v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v2);
  if (v14)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_5_7();
    sub_19355A5F8(v18, v19);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    v22 = sub_193695D2C(v20, v21, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v22);
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.modelInterface.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(v1);
  OUTLINED_FUNCTION_71_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 9);
  *v0 = v3;
  *(v0 + 8) = v4;
  *(v0 + 9) = v2;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.modelInterface.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = OUTLINED_FUNCTION_56_17();
  v7 = v1 + v6;
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.modelInterface.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_56_17();
  v7 = v0 + v6;
  *v7 = 0;
  *(v7 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *v7 = 0;
  *(v7 + 8) = 256;
  return result;
}

void static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v5 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for AIML.UUID(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_76_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_220();
  v14 = *(v13 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v15, v16, v17, v18);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v19, v20, v21, v22);
  OUTLINED_FUNCTION_31(v3);
  if (!v23)
  {
    sub_193448804(v3, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v3 + v14);
    if (!v23)
    {
      sub_19355A5F8(v3 + v14, v2);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v24, v25, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_5_7();
      v26 = sub_19393C550();
      sub_1934F8A10(v2);
      sub_1934F8A10(v4);
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v26 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    sub_1934F8A10(v4);
LABEL_9:
    sub_19344E6DC(v3, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v3 + v14);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  v27 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0) + 20);
  v28 = *(v1 + v27 + 9);
  v29 = v0 + v27;
  if ((v28 & 1) == 0 && (*(v29 + 9) & 1) == 0)
  {
    IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.rawValue.getter();
    IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.rawValue.getter();
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v2 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_25_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_32_26();
  sub_193448804(v8, v9, &qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_32_15(v10, v11);
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v13, v14);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v15, v16, &protocol conformance descriptor for AIML.UUID);
    v17 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_94_11(v17, v18, v19);
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_56_17();
  if (*(v0 + v20 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v21 = IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.rawValue.getter();
    MEMORY[0x193B18030](v21);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.transcriptEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.modelIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = (v0 + *(v6 + 24));
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v19, v20, v21);
  OUTLINED_FUNCTION_26_1();
  result = __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

void static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v47 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v46 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - v20;
  v22 = *(v19 + 48);
  v48 = v4;
  sub_193448804(v4, &v46 - v20, &qword_1EAE3BCA0, &unk_19395C320);
  v49 = v2;
  sub_193448804(v2, &v21[v22], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v21);
  if (v23)
  {
    OUTLINED_FUNCTION_31(&v21[v22]);
    if (v23)
    {
      sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_11;
    }

LABEL_9:
    v24 = v21;
LABEL_20:
    sub_19344E6DC(v24, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_21;
  }

  sub_193448804(v21, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v21[v22]);
  if (v23)
  {
    sub_1934F8A10(v0);
    goto LABEL_9;
  }

  v25 = &v21[v22];
  v26 = v47;
  sub_19355A5F8(v25, v47);
  OUTLINED_FUNCTION_0_83();
  sub_193695D2C(v27, v28, &protocol conformance descriptor for AIML.UUID);
  v29 = sub_19393C550();
  sub_1934F8A10(v26);
  sub_1934F8A10(v0);
  sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v30 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  v31 = *(v30 + 20);
  v32 = *(v13 + 48);
  v33 = v48;
  sub_193448804(v48 + v31, v17, &qword_1EAE3BCA0, &unk_19395C320);
  v34 = v49 + v31;
  v35 = v49;
  sub_193448804(v34, v17 + v32, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v17);
  if (!v23)
  {
    v36 = v46;
    sub_193448804(v17, v46, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v17 + v32);
    if (!v37)
    {
      v38 = v47;
      sub_19355A5F8(v17 + v32, v47);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v39, v40, &protocol conformance descriptor for AIML.UUID);
      v41 = sub_19393C550();
      sub_1934F8A10(v38);
      sub_1934F8A10(v36);
      sub_19344E6DC(v17, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v41 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    sub_1934F8A10(v36);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(v17 + v32);
  if (!v23)
  {
LABEL_19:
    v24 = v17;
    goto LABEL_20;
  }

  sub_19344E6DC(v17, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_23:
  v42 = *(v30 + 24);
  if (*(v33 + v42 + 8) && *(v35 + v42 + 8))
  {
    OUTLINED_FUNCTION_5(v33 + v42);
    if (v23)
    {
      v45 = v43 == v44;
    }

    else
    {
      v45 = 0;
    }

    if (!v45)
    {
      sub_19393CA30();
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v3 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for AIML.UUID(v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v5 = OUTLINED_FUNCTION_165_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_32_15(v14, v15);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v17, v18);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v19, v20, &protocol conformance descriptor for AIML.UUID);
    v21 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_94_11(v21, v22, v23);
    sub_1934F8A10(v1);
  }

  v24 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  sub_193448804(v0 + *(v24 + 20), v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_32_15(v2, 1);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v2, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v25, v26, &protocol conformance descriptor for AIML.UUID);
    v27 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_94_11(v27, v28, v29);
    sub_1934F8A10(v1);
  }

  if (*(v0 + *(v24 + 24) + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.overridesMatched.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.overridesMatched.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.overridesMatched.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193697794(void (*a1)(void))
{
  a1(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_1936977F0()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = (v1 + *(v4(v3) + 24));

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.assetVersion.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  v7 = *(v6 + 20);
  *(v0 + v7) = 3;
  v8 = (v0 + *(v6 + 24));
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *(v0 + v7) = 3;
  *v8 = 0;
  v8[1] = 0;
  return result;
}

void static IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v5 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for AIML.UUID(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_76_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_220();
  v14 = *(v13 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v15, v16, v17, v18);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v19, v20, v21, v22);
  OUTLINED_FUNCTION_31(v3);
  if (!v23)
  {
    sub_193448804(v3, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v3 + v14);
    if (!v23)
    {
      sub_19355A5F8(v3 + v14, v2);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v24, v25, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_5_7();
      v26 = sub_19393C550();
      sub_1934F8A10(v2);
      sub_1934F8A10(v4);
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v26 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    sub_1934F8A10(v4);
LABEL_9:
    sub_19344E6DC(v3, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v3 + v14);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  v27 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0) + 20);
  v28 = *(v1 + v27);
  v29 = *(v0 + v27);
  if (v28 == 3)
  {
    if (v29 != 3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v29 == 3)
    {
      goto LABEL_10;
    }

    if (v28 == 2)
    {
      if (v29 != 2)
      {
        goto LABEL_10;
      }
    }

    else if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v32 && v30)
  {
    OUTLINED_FUNCTION_5(v31);
    if (v23)
    {
      v35 = v33 == v34;
    }

    else
    {
      v35 = 0;
    }

    if (!v35)
    {
      sub_19393CA30();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v2 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_25_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_32_26();
  sub_193448804(v8, v9, &qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_32_15(v10, v11);
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v13, v14);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v15, v16, &protocol conformance descriptor for AIML.UUID);
    v17 = OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_94_11(v17, v18, v19);
    sub_1934F8A10(v1);
  }

  v20 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  v21 = *(v0 + *(v20 + 20));
  if (v21 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v21 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  if (*(v0 + *(v20 + 24) + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.assetVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_74_15(v1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

BOOL sub_193697E54(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  v5 = a1[4];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  if (v2 != 1)
  {
    if (v7 == 1)
    {
      v18 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v18, v19);
      OUTLINED_FUNCTION_28_23();
      sub_19350CB08(v20, v21);
      v22 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v22, v23);

LABEL_15:
      v26 = OUTLINED_FUNCTION_8_6();
      sub_193456418(v26, v27);
      v28 = OUTLINED_FUNCTION_13_41();
LABEL_33:
      sub_193456418(v28, v29);
      return 0;
    }

    if (v2)
    {
      if (v7)
      {
        v59 = *(a2 + 32);
        v60 = a1[5];
        v58 = a1[4];
        if (*a1 != v6 || v2 != v7)
        {
          v31 = sub_19393CA30();
          v32 = OUTLINED_FUNCTION_8_6();
          sub_19350CB08(v32, v33);
          v34 = OUTLINED_FUNCTION_13_41();
          sub_19350CB08(v34, v35);
          v36 = OUTLINED_FUNCTION_8_6();
          sub_19350CB08(v36, v37);
          v38 = OUTLINED_FUNCTION_13_41();
          sub_193456418(v38, v39);
          if ((v31 & 1) == 0)
          {
            goto LABEL_32;
          }

          if (v4)
          {
            goto LABEL_24;
          }

          goto LABEL_37;
        }

        OUTLINED_FUNCTION_69_1();
        sub_19350CB08(v50, v51);
        OUTLINED_FUNCTION_115_0();
        OUTLINED_FUNCTION_28_23();
        sub_19350CB08(v52, v53);
        v54 = OUTLINED_FUNCTION_8_6();
        sub_19350CB08(v54, v55);
        OUTLINED_FUNCTION_115_0();
LABEL_36:
        OUTLINED_FUNCTION_28_23();
        sub_193456418(v56, v57);
        if (v4)
        {
LABEL_24:
          if (v9)
          {
LABEL_39:

            v5 = v58;
            goto LABEL_4;
          }

LABEL_32:

          v28 = OUTLINED_FUNCTION_8_6();
          goto LABEL_33;
        }

LABEL_37:
        if ((v9 & 1) == 0 && v3 == v8)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      v45 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v45, v46);
      v43 = v2;
    }

    else
    {
      v59 = *(a2 + 32);
      v60 = a1[5];
      v58 = a1[4];
      OUTLINED_FUNCTION_69_1();
      sub_19350CB08(v41, v42);
      v43 = 0;
      if (!v7)
      {
        v44 = OUTLINED_FUNCTION_10_49(v6, 0);
        OUTLINED_FUNCTION_12_35(v44, 0);
        goto LABEL_36;
      }
    }

    v47 = OUTLINED_FUNCTION_10_49(v6, v7);
    OUTLINED_FUNCTION_12_35(v47, v43);
    OUTLINED_FUNCTION_28_23();
    sub_193456418(v48, v49);
    goto LABEL_32;
  }

  v59 = *(a2 + 32);
  v60 = a1[5];
  OUTLINED_FUNCTION_69_1();
  sub_19350CB08(v11, v12);
  if (v7 != 1)
  {
    v24 = OUTLINED_FUNCTION_13_41();
    sub_19350CB08(v24, v25);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_28_23();
  sub_19350CB08(v13, v14);
LABEL_4:
  v15 = OUTLINED_FUNCTION_8_6();
  sub_193456418(v15, v16);
  if (v60)
  {
    if (!v10)
    {
      return 0;
    }

    v17 = v5 == v59 && v60 == v10;
    return v17 || (sub_19393CA30() & 1) != 0;
  }

  return !v10;
}

void sub_1936980B4()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  if (v1 != 1)
  {
    v4 = *v0;
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_19393CAD0();
    if (v1)
    {
      sub_19393CAD0();

      sub_19393C640();
      if (v6)
      {
LABEL_8:
        sub_19393CAD0();
        goto LABEL_11;
      }
    }

    else
    {
      sub_19393CAD0();
      if (v6)
      {
        goto LABEL_8;
      }
    }

    sub_19393CAD0();
    MEMORY[0x193B18060](v5);
LABEL_11:
    sub_193456418(v4, v1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_19393CAD0();
    OUTLINED_FUNCTION_236();
    return;
  }

  sub_19393CAD0();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_236();

  sub_19393C640();
}

uint64_t sub_1936981D4(uint64_t (*a1)(_BYTE *))
{
  v2 = OUTLINED_FUNCTION_45_23();
  OUTLINED_FUNCTION_62_17(v3, v2);
  sub_19393CAB0();
  a1(v5);
  return sub_19393CB00();
}

uint64_t sub_193698244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v5 = OUTLINED_FUNCTION_45_23();
  OUTLINED_FUNCTION_62_17(v6, v5);
  sub_19393CAB0();
  a4(v8);
  return sub_19393CB00();
}

void sub_193698338()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = OUTLINED_FUNCTION_165_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_150();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94_7();
  v13 = *(v12 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v14, v15, v16, v17);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v18, v19, v20, v21);
  OUTLINED_FUNCTION_31(v0);
  if (!v26)
  {
    v22 = OUTLINED_FUNCTION_115_0();
    sub_193448804(v22, v23, v24, v25);
    OUTLINED_FUNCTION_31(v0 + v13);
    if (!v26)
    {
      sub_19355A5F8(v0 + v13, v5);
      OUTLINED_FUNCTION_0_83();
      v29 = sub_193695D2C(v27, v28, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_139(v29);
      sub_1934F8A10(v5);
      sub_1934F8A10(v1);
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_10;
    }

    sub_1934F8A10(v1);
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v0 + v13);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void sub_193698534()
{
  OUTLINED_FUNCTION_237();
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v4 = OUTLINED_FUNCTION_25_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_150();
  sub_193448804(v0, v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_14_1(v2);
  if (v8)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19355A5F8(v2, v1);
    sub_19393CAD0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v9, v10, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_151();
    sub_19393C540();
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_1936986D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v5 = OUTLINED_FUNCTION_45_23();
  OUTLINED_FUNCTION_90_15(v6, v5);
  a4(v8);
  return sub_19393CB00();
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanEnded.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return OUTLINED_FUNCTION_9_2();
    }

    return 1;
  }

  if (v3 == 2)
  {
    return 1;
  }

  return OUTLINED_FUNCTION_9_2();
}

double IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanFailed.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_74_15(v1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

void sub_19369882C()
{
  OUTLINED_FUNCTION_117();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  if (v1 != 1)
  {
    if (v6 == 1)
    {
      v13 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v13, v14);
      OUTLINED_FUNCTION_28_23();
      sub_19350CB08(v15, v16);
      v17 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v17, v18);

LABEL_7:
      v21 = OUTLINED_FUNCTION_8_6();
      sub_193456418(v21, v22);
      v23 = OUTLINED_FUNCTION_14_42();
LABEL_23:
      sub_193456418(v23, v24);
      goto LABEL_24;
    }

    if (v1)
    {
      if (v6)
      {
        if (*v0 != v5 || v1 != v6)
        {
          OUTLINED_FUNCTION_34_15();
          v26 = sub_19393CA30();
          v27 = OUTLINED_FUNCTION_8_6();
          sub_19350CB08(v27, v28);
          v29 = OUTLINED_FUNCTION_14_42();
          sub_19350CB08(v29, v30);
          v31 = OUTLINED_FUNCTION_8_6();
          sub_19350CB08(v31, v32);
          v33 = OUTLINED_FUNCTION_14_42();
          sub_193456418(v33, v34);
          if ((v26 & 1) == 0)
          {
            goto LABEL_22;
          }

          if (v3)
          {
            goto LABEL_16;
          }

          goto LABEL_27;
        }

        OUTLINED_FUNCTION_69_1();
        sub_19350CB08(v46, v47);
        OUTLINED_FUNCTION_115_0();
        OUTLINED_FUNCTION_28_23();
        sub_19350CB08(v48, v49);
        v50 = OUTLINED_FUNCTION_8_6();
        sub_19350CB08(v50, v51);
        OUTLINED_FUNCTION_115_0();
LABEL_26:
        OUTLINED_FUNCTION_28_23();
        sub_193456418(v52, v53);
        if (v3)
        {
LABEL_16:
          if (v8)
          {
LABEL_29:

            v54 = OUTLINED_FUNCTION_8_6();
            sub_193456418(v54, v55);
            goto LABEL_24;
          }

LABEL_22:

          v23 = OUTLINED_FUNCTION_8_6();
          goto LABEL_23;
        }

LABEL_27:
        if ((v8 & 1) == 0 && v2 == v7)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

      v39 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v39, v40);
      v37 = v1;
    }

    else
    {
      OUTLINED_FUNCTION_69_1();
      sub_19350CB08(v35, v36);
      v37 = 0;
      if (!v6)
      {
        v38 = OUTLINED_FUNCTION_10_49(v5, 0);
        OUTLINED_FUNCTION_12_35(v38, 0);
        goto LABEL_26;
      }
    }

    v41 = OUTLINED_FUNCTION_165_1();
    v43 = OUTLINED_FUNCTION_10_49(v41, v42);
    OUTLINED_FUNCTION_12_35(v43, v37);
    OUTLINED_FUNCTION_28_23();
    sub_193456418(v44, v45);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_69_1();
  sub_19350CB08(v9, v10);
  if (v6 != 1)
  {
    v19 = OUTLINED_FUNCTION_14_42();
    sub_19350CB08(v19, v20);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_49(v5, 1);
  OUTLINED_FUNCTION_69_1();
  sub_193456418(v11, v12);
LABEL_24:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_193698A20()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v3 = *v0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_19393CAD0();
  if (!v1)
  {
    sub_19393CAD0();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_19393CAD0();
    MEMORY[0x193B18060](v4);
    goto LABEL_8;
  }

  sub_19393CAD0();

  OUTLINED_FUNCTION_112();
  sub_19393C640();
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_19393CAD0();
LABEL_8:

  return sub_193456418(v3, v1);
}

uint64_t sub_193698AFC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAD0();
    if (v1)
    {

      sub_19393C640();
    }

    sub_19393CAD0();
    if ((v3 & 1) == 0)
    {
      MEMORY[0x193B18060](v2);
    }

    OUTLINED_FUNCTION_148_4();
    sub_193456418(v4, v5);
  }

  return sub_19393CB00();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1.prompt.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1.grammar.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193698DF0(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_71_0();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_193698E48()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = (v1 + *(v4(v3) + 20));

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1.promptResponse.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1.grammar.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193698F54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = a1(0);
  v9 = (a2 + *(v8 + 20));
  v10 = (a2 + *(v8 + 24));
  sub_19344E6DC(a2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();
  result = __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  return result;
}

void sub_193698FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for AIML.UUID(v28);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v30);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v34);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_76_0();
  v37 = *(v36 + 56);
  sub_193448804(v21, v23, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v20, v23 + v37, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v23);
  if (v42)
  {
    OUTLINED_FUNCTION_31(v23 + v37);
    if (v42)
    {
      sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v23, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  v38 = OUTLINED_FUNCTION_25_2();
  sub_193448804(v38, v39, v40, v41);
  OUTLINED_FUNCTION_31(v23 + v37);
  if (v42)
  {
    sub_1934F8A10(v33);
    goto LABEL_9;
  }

  sub_19355A5F8(v23 + v37, v22);
  OUTLINED_FUNCTION_0_83();
  sub_193695D2C(v43, v44, &protocol conformance descriptor for AIML.UUID);
  v45 = sub_19393C550();
  sub_1934F8A10(v22);
  sub_1934F8A10(v33);
  sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v45 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v27(0);
  OUTLINED_FUNCTION_3();
  if (v48)
  {
    if (!v46)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v47);
    v51 = v42 && v49 == v50;
    if (!v51 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v46)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v54 && v52)
  {
    OUTLINED_FUNCTION_5(v53);
    if (v42)
    {
      v57 = v55 == v56;
    }

    else
    {
      v57 = 0;
    }

    if (!v57)
    {
      sub_19393CA30();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void sub_19369929C()
{
  OUTLINED_FUNCTION_237();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_4();
  v4 = type metadata accessor for AIML.UUID(v3);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_165_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32_26();
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_19();
  if (__swift_getEnumTagSinglePayload(v17, v18, v4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v0, v8);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v19, v20, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934F8A10(v8);
  }

  v21 = v2(0);
  if (*(v0 + *(v21 + 20) + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + *(v21 + 24) + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.ended.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0);
  OUTLINED_FUNCTION_37_24();
  v2 = OUTLINED_FUNCTION_101(v1);
  return sub_1936994FC(v2, v3, v4);
}

uint64_t sub_1936994FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.ended.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0);
  OUTLINED_FUNCTION_37_24();
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_193699588(v1, v2, v3);
}

uint64_t sub_193699588(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.ended.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.failed.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v2) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *v0 = *v3;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = *(v3 + 24);
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  sub_19350CB08(v4, v5);
}

__n128 IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.failed.setter(__n128 *a1)
{
  v8 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u64[1];
  v6 = v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 24);
  sub_193456418(*v6, *(v6 + 8));

  result = v8;
  *v6 = v8;
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.failed.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193699778()
{
  v1 = OUTLINED_FUNCTION_222();
  v2(v1);
  OUTLINED_FUNCTION_148_4();
  return sub_193448804(v3, v4, v5, v0);
}

uint64_t sub_1936997E4()
{
  v0 = OUTLINED_FUNCTION_266();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_89_13(*(v2 + 28));
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v1);
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_56_17();
  v12 = v0 + v11;
  *v12 = 0;
  *(v12 + 8) = 256;
  OUTLINED_FUNCTION_2_0();
  sub_19344E6DC(v13, v14, v15);
  v16 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *v12 = 0;
  *(v12 + 8) = 256;
  v20 = v0 + *(v2 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = (v20 + *(v25 + 24));
  OUTLINED_FUNCTION_2_0();
  sub_19344E6DC(v31, v32, v33);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_2_0();
  sub_19344E6DC(v38, v39, v40);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  *v30 = 0;
  v30[1] = 0;
  OUTLINED_FUNCTION_74_15(0);
  v45 = v0 + *(v2 + 24);
  *v45 = xmmword_1939526A0;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  OUTLINED_FUNCTION_2_0();
  sub_19344E6DC(v46, v47, v48);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_116();

  return __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
}

void static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v4 = OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_150();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_94_7();
  static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.== infix(_:_:)();
  if (v13)
  {
    v14 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
    static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.== infix(_:_:)();
    if (v15)
    {
      v38 = v1;
      v39 = v0;
      v37 = v8;
      v40 = v4;
      v16 = v3 + *(v14 + 24);
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 32);
      v21 = *(v16 + 40);
      LOBYTE(v16) = *(v16 + 24);
      v48[0] = v17;
      v48[1] = v18;
      v42 = v18;
      v43 = v17;
      v48[2] = v19;
      v49 = v16;
      v50 = v20;
      v51 = v21;
      v22 = v2 + *(v14 + 24);
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v22 + 32);
      v26 = *(v22 + 40);
      v27 = *(v22 + 24);
      v44[0] = *v22;
      v44[1] = v23;
      v44[2] = v24;
      v45 = v27;
      v46 = v25;
      v47 = v26;
      sub_19350CB08(v17, v18);

      v28 = OUTLINED_FUNCTION_65_17();
      sub_19350CB08(v28, v29);

      v41 = static IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.== infix(_:_:)(v48, v44);
      v30 = OUTLINED_FUNCTION_65_17();
      sub_193456418(v30, v31);

      sub_193456418(v43, v42);

      if (v41)
      {
        v32 = *(v14 + 28);
        v33 = *(v11 + 48);
        sub_193448804(v3 + v32, v39, &qword_1EAE3BCA0, &unk_19395C320);
        sub_193448804(v2 + v32, v39 + v33, &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
        {
          OUTLINED_FUNCTION_31(v39 + v33);
          if (!v34)
          {
            goto LABEL_11;
          }

          sub_19344E6DC(v39, &qword_1EAE3BCA0, &unk_19395C320);
        }

        else
        {
          sub_193448804(v39, v38, &qword_1EAE3BCA0, &unk_19395C320);
          OUTLINED_FUNCTION_31(v39 + v33);
          if (v34)
          {
            sub_1934F8A10(v38);
LABEL_11:
            sub_19344E6DC(v39, &qword_1EAE3BD08, &qword_1939595A0);
            goto LABEL_12;
          }

          sub_19355A5F8(v39 + v33, v37);
          OUTLINED_FUNCTION_0_83();
          sub_193695D2C(v35, v36, &protocol conformance descriptor for AIML.UUID);
          sub_19393C550();
          sub_1934F8A10(v37);
          sub_1934F8A10(v38);
          sub_19344E6DC(v39, &qword_1EAE3BCA0, &unk_19395C320);
        }
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v5 = OUTLINED_FUNCTION_47(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v33 = v6 - v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.hash(into:)();
  v14 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
  v15 = v14[5];
  v34 = v0;
  v16 = v0 + v15;
  sub_193448804(v0 + v15, v13, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v13);
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v13, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    v20 = sub_193695D2C(v18, v19, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v20);
    sub_1934F8A10(v1);
  }

  v21 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  sub_193448804(v16 + *(v21 + 20), v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v11);
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v11, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    v24 = sub_193695D2C(v22, v23, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v24);
    sub_1934F8A10(v1);
  }

  if (*(v16 + *(v21 + 24) + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v25 = v34;
  v26 = (v34 + v14[6]);
  v27 = *(v26 + 2);
  v28 = *(v26 + 24);
  v35 = *v26;
  v36 = v27;
  v37 = v28;
  v38 = v26[2];
  IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.hash(into:)();
  v29 = v33;
  sub_193448804(v25 + v14[7], v33, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v29);
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v29, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    v32 = sub_193695D2C(v30, v31, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v32);
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_19369A0B4(uint64_t (*a1)(void *))
{
  v4[9] = *v1;
  sub_19393CAB0();
  a1(v4);
  return sub_19393CB00();
}

uint64_t sub_19369A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

unint64_t sub_19369A1E8()
{
  result = qword_1EAE401B8;
  if (!qword_1EAE401B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401B8);
  }

  return result;
}

unint64_t sub_19369A270()
{
  result = qword_1EAE401D0;
  if (!qword_1EAE401D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401D0);
  }

  return result;
}

unint64_t sub_19369A2C8()
{
  result = qword_1EAE401D8;
  if (!qword_1EAE401D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401D8);
  }

  return result;
}

unint64_t sub_19369A418()
{
  result = qword_1EAE401F0;
  if (!qword_1EAE401F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401F0);
  }

  return result;
}

unint64_t sub_19369A500()
{
  result = qword_1EAE401F8;
  if (!qword_1EAE401F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE401F8);
  }

  return result;
}

unint64_t sub_19369A55C()
{
  result = qword_1EAE40200;
  if (!qword_1EAE40200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40200);
  }

  return result;
}

unint64_t sub_19369A5FC()
{
  result = qword_1EAE40210;
  if (!qword_1EAE40210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40210);
  }

  return result;
}

unint64_t sub_19369A654()
{
  result = qword_1EAE40218;
  if (!qword_1EAE40218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40218);
  }

  return result;
}

unint64_t sub_19369A714()
{
  result = qword_1EAE40228;
  if (!qword_1EAE40228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40228);
  }

  return result;
}

unint64_t sub_19369A76C()
{
  result = qword_1EAE40230;
  if (!qword_1EAE40230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40230);
  }

  return result;
}

unint64_t sub_19369A7C4()
{
  result = qword_1EAE40238;
  if (!qword_1EAE40238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40238);
  }

  return result;
}

unint64_t sub_19369A81C()
{
  result = qword_1EAE40240;
  if (!qword_1EAE40240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40240);
  }

  return result;
}

void sub_19369A9CC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_16(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_58_16(v2, &qword_1ED5069C8);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_58_16(v4, &qword_1ED507A78);
        if (v6 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED5069D0, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGRequestContext);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_58_16(v7, &qword_1ED5069D8);
            if (v10 <= 0x3F)
            {
              OUTLINED_FUNCTION_58_16(v9, &qword_1ED5069C0);
              if (v12 <= 0x3F)
              {
                OUTLINED_FUNCTION_58_16(v11, qword_1ED503108);
                if (v13 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED5069B8, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext);
                  if (v14 <= 0x3F)
                  {
                    sub_19349D1FC(319, &qword_1ED5069E0, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext);
                    if (v15 <= 0x3F)
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
    }
  }
}

void sub_19369ABC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_19369AC3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19369AC8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_19369AD1C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_19369AE10()
{
  sub_19349D1FC(319, &qword_1EAE40250, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGFailureReason);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_1_62(v0, qword_1ED507908);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A27FlowPlanGenerationTelemetryV7IFErrorVSg(uint64_t a1)
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

void sub_19369AEFC(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED5030C8, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGModelInterface);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19369AFB4(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_70Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_12_0(*(a1 + *(a3 + 24) + 8));
  }

  v7 = OUTLINED_FUNCTION_21_1();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void __swift_store_extra_inhabitant_index_71Tm()
{
  OUTLINED_FUNCTION_19_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_172();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_66_20();
    *(v6 + 8) = v7;
  }
}

void sub_19369B1D8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1EAE40258, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesMatchMetadata);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19369B294(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 40);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19369B2E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
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

  return result;
}

void sub_19369B394(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *sub_19369B420(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19369B500(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 25))
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

void sub_19369B5AC(uint64_t a1)
{
  OUTLINED_FUNCTION_1_62(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19369B68C()
{
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(319);
  if (v0 <= 0x3F)
  {
    v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(319);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_1_62(v1, qword_1ED507908);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void OUTLINED_FUNCTION_58_16(uint64_t a1, unint64_t *a2)
{

  sub_19369ABC8(319, a2, v2);
}

__n128 OUTLINED_FUNCTION_62_17@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v4 - 64) = a2;
  *(v4 - 48) = a1;
  *(v4 - 40) = v2;
  result = v3[2];
  *(v4 - 32) = result;
  return result;
}

_BYTE *_s9DeletionsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19369B9D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511778);
  v4 = __swift_project_value_buffer(v3, qword_1ED511778);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Deletions.Document.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_49 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511778);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40260, &qword_19397B3C0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Deletions.Document.attribute(_:)(void (*a1)(void))
{
  result = sub_19369BDF8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19369BE34(void (*a1)(void))
{
  result = sub_19369BDF8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19369BE9C(uint64_t a1)
{
  result = sub_19369BEC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19369BEC4()
{
  result = qword_1ED5043F8;
  if (!qword_1ED5043F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043F8);
  }

  return result;
}

_BYTE *_s8DocumentOwst_0(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingDocumentDeletion.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40268, &qword_19397B438);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19369C1A0(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE40268, &qword_19397B438, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE40268, &qword_19397B438);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19369C1A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingDocumentDeletion.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40268, &qword_19397B438);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE40268, &qword_19397B438, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_19369C344(v8, a3);
  }

  return result;
}

uint64_t sub_19369C344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingDocumentDeletion.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40268, &qword_19397B438);
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
  if (*sub_19369E8E0() == a3)
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
      sub_19369C344(v11, v36);
      v29 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
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

uint64_t TextUnderstandingDocumentDeletion.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40268, &qword_19397B438);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_19369C1A0(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE40268, &qword_19397B438, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE40268, &qword_19397B438);
  return v11;
}

id static TextUnderstandingDocumentDeletion.columns.getter()
{
  v122 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6449656C646E7562, 0xE800000000000000, 2, 0, v0, 13, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v33 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v33);
  v34 = OUTLINED_FUNCTION_32_5();
  result = OUTLINED_FUNCTION_35_2(v34, 0xEC00000065746144);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  v35 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  v45 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v55 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v55);
  OUTLINED_FUNCTION_14_43();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v56, v57, v58, v59, v0, 12, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v60 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v70 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  v80 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v80);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v81, v82, v83, v84, v0, 4, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v85 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  v95 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  v105 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v105);
  result = OUTLINED_FUNCTION_35_2(0xD000000000000016, 0x8000000193A2CC60);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v106 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  v116 = OUTLINED_FUNCTION_6_4();
  *(v116 + 16) = xmmword_193950B10;
  *(v116 + 32) = sub_19393C850();
  v117 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v118, v119, v120, v121, v116, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v122;
  }

LABEL_13:
  __break(1u);
  return result;
}

int *sub_19369CB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v17 || (OUTLINED_FUNCTION_59_0(0x6449656C646E7562, 0xE800000000000000) & 1) != 0)
  {
    v18 = (v3 + *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 28));
    v20 = *v18;
    v19 = v18[1];
    v47 = v20;
    v48 = v19;
    return sub_1934948FC();
  }

  v21 = a1 == 0x64496E69616D6F64 && a2 == 0xE900000000000073;
  if (v21 || (OUTLINED_FUNCTION_59_0(0x64496E69616D6F64, 0xE900000000000073) & 1) != 0)
  {
    v22 = *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 32);
LABEL_13:
    v47 = *(v3 + v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    return sub_1934948FC();
  }

  v24 = a1 == 0x6449657571696E75 && a2 == 0xE900000000000073;
  if (v24 || (OUTLINED_FUNCTION_59_0(0x6449657571696E75, 0xE900000000000073) & 1) != 0)
  {
    v22 = *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 36);
    goto LABEL_13;
  }

  v25 = OUTLINED_FUNCTION_32_5();
  v27 = a1 == v25 && a2 == v26;
  if (v27 || (OUTLINED_FUNCTION_59_0(v25, v26) & 1) != 0)
  {
    type metadata accessor for TextUnderstandingDocumentDeletion(0);
    return sub_1934948FC();
  }

  v28 = OUTLINED_FUNCTION_14_43();
  v29 = a1 == v28 && a2 == 0xE800000000000000;
  if (v29 || (OUTLINED_FUNCTION_59_0(v28, 0xE800000000000000) & 1) != 0)
  {
    LOBYTE(v47) = *(v3 + *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 44));
    return sub_1934948FC();
  }

  v30 = OUTLINED_FUNCTION_31_2();
  v31 = a1 == v30 && a2 == 0xE800000000000000;
  if (v31 || (OUTLINED_FUNCTION_59_0(v30, 0xE800000000000000) & 1) != 0)
  {
    v32 = v3 + *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 48);
    v33 = *v32;
    v34 = *(v32 + 8);
    v47 = v33;
LABEL_39:
    LOBYTE(v48) = v34;
    return sub_1934948FC();
  }

  v35 = a1 == 0x654D746E65696C63 && a2 == 0xEE00617461646174;
  if (!v35 && (OUTLINED_FUNCTION_59_0(0x654D746E65696C63, 0xEE00617461646174) & 1) == 0)
  {
    v38 = a1 == 0xD000000000000016 && 0x8000000193A2CC60 == a2;
    if (v38 || (OUTLINED_FUNCTION_59_0(0xD000000000000016, 0x8000000193A2CC60) & 1) != 0)
    {
      v39 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
      sub_1934DE90C(v3 + *(v39 + 56), v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        (*(v12 + 32))(v16, v9, v10);
        sub_1934948FC();
        return (*(v12 + 8))(v16, v10);
      }

      result = sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      v40 = a1 == 0xD000000000000010 && 0x8000000193A2CC80 == a2;
      if (!v40 && (OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193A2CC80) & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_11();
        swift_allocError();
        v44 = v43;
        *v43 = a1;
        v43[1] = a2;
        v43[5] = type metadata accessor for TextUnderstandingDocumentDeletion(0);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v44 + 2);
        sub_19369C1A0(v3, boxed_opaque_existential_1Tm);
        *(v44 + 48) = 1;
        swift_willThrow();
      }

      result = type metadata accessor for TextUnderstandingDocumentDeletion(0);
      v41 = v3 + result[15];
      if ((*(v41 + 9) & 1) == 0)
      {
        v42 = *(v41 + 8);
        v47 = *v41;
        v34 = v42 & 1;
        goto LABEL_39;
      }
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  v36 = v3 + result[13];
  v37 = *(v36 + 8);
  if (v37)
  {
    v47 = *v36;
    v48 = v37;
    v49 = *(v36 + 16);
    return sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers.ClientMetadata, &off_1F07DB1D0, a3);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t TextUnderstandingDocumentDeletion.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19343E508(v4);
  v5 = a1 + v2[13];
  j__OUTLINED_FUNCTION_92_3(v5);
  v6 = v2[14];
  sub_1934E0648();
  v7 = a1 + v2[15];
  OUTLINED_FUNCTION_131(v7);
  *a1 = *sub_19369E8E0();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v9 = (a1 + v2[7]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[8]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[9]) = v10;
  sub_19393BDC0();
  *(a1 + v2[11]) = 0;
  v11 = a1 + v2[12];
  *v11 = 0;
  v11[8] = 0;
  sub_193442C40(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3));
  *v5 = 0u;
  *(v5 + 1) = 0u;
  sub_193442B60(a1 + v6, &qword_1EAE3A9E8, &qword_19394F800);
  result = __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v8);
  *v7 = 0;
  *(v7 + 4) = 256;
  return result;
}

BOOL static TextUnderstandingDocumentDeletion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_19393BE00();
  OUTLINED_FUNCTION_9_17();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  v17 = v16[7];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v18 == *v20 && v19 == v20[1];
  if (!v21 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if ((sub_19344FC94(*(a1 + v16[8]), *(a2 + v16[8])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_19344FC94(*(a1 + v16[9]), *(a2 + v16[9])) & 1) == 0)
  {
    return 0;
  }

  v68 = sub_1934DF3E8(&qword_1EAE3A848, MEMORY[0x1E6969550]);
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v16[11]) != *(a2 + v16[11]))
  {
    return 0;
  }

  v22 = v16[12];
  v23 = *(a1 + v22 + 8);
  v73 = *(a1 + v22);
  LOBYTE(v74) = v23;
  v24 = a2 + v22;
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  v69 = v25;
  LOBYTE(v70) = v24;
  sub_19365F1B8();
  OUTLINED_FUNCTION_1_63();
  v66 = v26;
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  v27 = v16[13];
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v31 = *(a1 + v27 + 16);
  v30 = *(a1 + v27 + 24);
  v32 = (a2 + v27);
  v34 = *v32;
  v33 = v32[1];
  v36 = v32[2];
  v35 = v32[3];
  v67 = v36;
  v65 = v35;
  if (!v29)
  {
    v60 = v33;
    v61 = 0;
    v63 = v28;
    v64 = v31;
    v62 = v30;
    sub_19365F3E0(v28, 0);
    if (!v60)
    {
      sub_19365F3E0(v34, 0);
      sub_193442C40(v63, 0, v64, v62);
      goto LABEL_20;
    }

    v37 = v60;
    v38 = v65;
    sub_19365F3E0(v34, v60);
LABEL_18:
    v41 = OUTLINED_FUNCTION_3_60();
    sub_193442C40(v41, v42, v43, v44);
    sub_193442C40(v34, v37, v67, v38);
    return 0;
  }

  v73 = v28;
  v74 = v29;
  v75 = v31;
  v76 = v30;
  if (!v33)
  {
    v37 = 0;
    sub_19365F3E0(v28, v29);
    v38 = v65;
    sub_19365F3E0(v34, 0);
    v39 = OUTLINED_FUNCTION_3_60();
    sub_19365F3E0(v39, v40);

    goto LABEL_18;
  }

  v59 = v34;
  v60 = v33;
  v69 = v34;
  v70 = v33;
  v71 = v67;
  v72 = v65;
  v63 = v28;
  v64 = v31;
  v61 = v29;
  v62 = v30;
  sub_19365F3E0(v28, v29);
  sub_19365F3E0(v59, v60);
  sub_19365F3E0(v63, v61);
  sub_19365FF68();
  OUTLINED_FUNCTION_1_63();
  LODWORD(v67) = sub_19393C550();

  sub_193442C40(v63, v61, v64, v62);
  if ((v67 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v45 = v16[14];
  v46 = *(v13 + 48);
  sub_1934DE90C(a1 + v45, v15);
  sub_1934DE90C(a2 + v45, &v15[v46]);
  OUTLINED_FUNCTION_5_3(v15);
  if (!v21)
  {
    sub_1934DE90C(v15, v12);
    OUTLINED_FUNCTION_5_3(&v15[v46]);
    if (!v47)
    {
      (*(v6 + 32))(v9, &v15[v46], v2);
      v49 = sub_19393C550();
      v50 = *(v6 + 8);
      v50(v9, v2);
      v50(v12, v2);
      sub_193442B60(v15, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v49 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_32;
    }

    (*(v6 + 8))(v12, v2);
LABEL_28:
    sub_193442B60(v15, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  OUTLINED_FUNCTION_5_3(&v15[v46]);
  if (!v21)
  {
    goto LABEL_28;
  }

  sub_193442B60(v15, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_32:
  v51 = v16[15];
  v52 = a1 + v51;
  v53 = *(a1 + v51 + 9);
  v54 = a2 + v51;
  v55 = *(a2 + v51 + 9);
  if ((v53 & 1) == 0)
  {
    v56 = *v54;
    v57 = *(v54 + 8);
    v58 = *(v52 + 8);
    v73 = *v52;
    LOWORD(v74) = v58;
    if (v55)
    {
      return 0;
    }

    v69 = v56;
    LOBYTE(v70) = v57 & 1;
    OUTLINED_FUNCTION_1_63();
    return (sub_19393C550() & 1) != 0;
  }

  return (v55 & 1) != 0;
}

uint64_t TextUnderstandingDocumentDeletion.hash(into:)(uint64_t a1)
{
  sub_19393BE00();
  OUTLINED_FUNCTION_9_17();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  sub_19393C640();
  sub_1934D11C8(a1, *(v1 + v12[8]));
  sub_1934D11C8(a1, *(v1 + v12[9]));
  v13 = sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
  sub_19393C540();
  sub_19393CAD0();
  v14 = (v1 + v12[12]);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  v29 = v15;
  LOBYTE(v30) = v14;
  v28 = sub_19369DA9C();
  sub_19393C540();
  v16 = (v1 + v12[13]);
  v17 = v16[1];
  if (v17)
  {
    v27 = v11;
    v18 = v2;
    v19 = v8;
    v20 = v16[2];
    v21 = v16[3];
    v29 = *v16;
    v30 = v17;
    v31 = v20;
    v32 = v21;
    sub_19393CAD0();
    sub_19369DAF0();
    v26[1] = v13;

    v8 = v19;
    v2 = v18;
    v11 = v27;

    sub_19393C540();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_1934DE90C(v1 + v12[14], v11);
  OUTLINED_FUNCTION_5_3(v11);
  if (v22)
  {
    sub_19393CAD0();
  }

  else
  {
    (*(v5 + 32))(v8, v11, v2);
    sub_19393CAD0();
    sub_19393C540();
    (*(v5 + 8))(v8, v2);
  }

  v23 = (v1 + v12[15]);
  if (*(v23 + 9) == 1)
  {
    return sub_19393CAD0();
  }

  v25 = *(v23 + 8);
  v29 = *v23;
  LOBYTE(v30) = v25 & 1;
  sub_19393CAD0();
  return sub_19393C540();
}

unint64_t sub_19369DA9C()
{
  result = qword_1EAE40270;
  if (!qword_1EAE40270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40270);
  }

  return result;
}

unint64_t sub_19369DAF0()
{
  result = qword_1EAE40278;
  if (!qword_1EAE40278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40278);
  }

  return result;
}

uint64_t sub_19369DB44()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABE70);
  __swift_project_value_buffer(v0, qword_1EAEABE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_193951270;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "bundleId";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_3_1(v32 + v3 + v2);
  *v9 = 2;
  *v8 = "domainIds";
  v8[1] = 9;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v32 + v3 + 2 * v2);
  *v12 = 3;
  *v11 = "uniqueIds";
  v11[1] = 9;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v32 + v3 + 3 * v2);
  *v15 = 4;
  *v14 = "receivedDate";
  v14[1] = 12;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v32 + v3 + 4 * v2);
  *v18 = 5;
  *v17 = "isPurged";
  v17[1] = 8;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v32 + v3 + 5 * v2);
  *v21 = 6;
  *v20 = "category";
  v20[1] = 8;
  v22 = OUTLINED_FUNCTION_1_3(v20);
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v32 + v3 + 6 * v2);
  *v24 = 8;
  *v23 = "clientMetadata";
  v23[1] = 14;
  v25 = OUTLINED_FUNCTION_1_3(v23);
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v32 + v3 + 7 * v2);
  *v27 = 7;
  *v26 = "documentsReceivedAfter";
  v26[1] = 22;
  v28 = OUTLINED_FUNCTION_1_3(v26);
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v32 + v3 + 8 * v2);
  *v30 = 9;
  *v29 = "documentCategory";
  *(v29 + 8) = 16;
  *(v29 + 16) = 2;
  (v7)();
  return sub_19393C410();
}

void sub_19369DE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v34 = (v8 + 32);
  v35 = (v8 + 40);
  v18 = v17;
  v36 = v12;
  v37 = v17;
  v40 = &v34 - v15;
  while (1)
  {
    v19 = sub_19393C0E0();
    if (v5 || (v20 & 1) != 0)
    {
      break;
    }

    switch(v19)
    {
      case 1:
        v38 = 0;
        v39 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        v5 = 0;
        if (v39)
        {
          v21 = v38;
        }

        else
        {
          v21 = 0;
        }

        v22 = v6;
        if (v39)
        {
          v23 = v39;
        }

        else
        {
          v23 = 0xE000000000000000;
        }

        v24 = (v3 + *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 28));

        *v24 = v21;
        v24[1] = v23;
        v16 = v40;
        v6 = v22;
        v12 = v36;
        v18 = v37;
        continue;
      case 2:
      case 3:
        type metadata accessor for TextUnderstandingDocumentDeletion(0);
        OUTLINED_FUNCTION_113();
        sub_19393C1B0();
        goto LABEL_24;
      case 4:
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v6);
        OUTLINED_FUNCTION_9_58(v16);
        v5 = 0;
        sub_1934DE90C(v16, v18);
        if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
        {
          sub_19393BDC0();
          sub_1934DFCD4(v16);
          if (__swift_getEnumTagSinglePayload(v18, 1, v6) != 1)
          {
            sub_1934DFCD4(v18);
          }
        }

        else
        {
          sub_1934DFCD4(v16);
          (*v34)(v12, v18, v6);
        }

        v33 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
        (*v35)(v3 + *(v33 + 40), v12, v6);
        continue;
      case 5:
        LOBYTE(v38) = 2;
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
        v5 = 0;
        v25 = v38;
        v26 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
        v27 = v25 & 1;
        v16 = v40;
        *(v3 + *(v26 + 44)) = v27;
        continue;
      case 6:
        v38 = 0;
        LOWORD(v39) = 256;
        sub_1934982A8();
        if (BYTE1(v39))
        {
          v28 = 0;
        }

        else
        {
          v28 = v38;
        }

        v29 = v39 & ~BYTE1(v39);
        v30 = v3 + *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 48);
        *v30 = v28;
        v16 = v40;
        v31 = v29 & 1;
        v18 = v37;
        *(v30 + 8) = v31;
        continue;
      case 7:
        v32 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
        OUTLINED_FUNCTION_9_58(v3 + *(v32 + 56));
        goto LABEL_24;
      case 8:
        type metadata accessor for TextUnderstandingDocumentDeletion(0);
        sub_193498018();
        goto LABEL_24;
      case 9:
        type metadata accessor for TextUnderstandingDocumentDeletion(0);
        sub_1934982A8();
LABEL_24:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19369E2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  v6 = (v3 + v5[7]);
  if (*v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[1] == 0xE000000000000000;
  }

  if (!v7 && (sub_19393CA30() & 1) == 0)
  {
    sub_19393C3C0();
  }

  if (!v4)
  {
    if (*(*(v3 + v5[8]) + 16))
    {
      OUTLINED_FUNCTION_4_56();
      sub_19393C380();
    }

    if (*(*(v3 + v5[9]) + 16))
    {
      OUTLINED_FUNCTION_4_56();
      sub_19393C380();
    }

    v8 = OUTLINED_FUNCTION_35_1();
    sub_19369E504(v8, v9, v10, v11);
    if (*(v3 + v5[11]) == 1)
    {
      OUTLINED_FUNCTION_4_56();
      sub_19393C2E0();
    }

    sub_19365F1B8();
    if ((sub_19393C550() & 1) == 0)
    {
      OUTLINED_FUNCTION_87_3();
      sub_193447324(v12, v13, v14, v15, v16, v17);
    }

    if (*(v3 + v5[13] + 8))
    {
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
    }

    v18 = OUTLINED_FUNCTION_35_1();
    sub_19369E638(v18, v19, v20, v21);
    if ((*(v3 + v5[15] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_87_3();
      sub_193447324(v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_19369E504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 40);
  sub_19393BDC0();
  sub_19365C760();
  v14 = sub_19393C550();
  result = (*(v8 + 8))(v12, v6);
  if ((v14 & 1) == 0)
  {
    return sub_193451F04(a1 + v13, 4, 26211, 0xE200000000000000, a3, a4);
  }

  return result;
}

uint64_t sub_19369E638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  sub_1934DE90C(a1 + *(v17 + 56), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1934DFCD4(v9);
  }

  (*(v12 + 32))(v16, v9, v10);
  sub_193451F04(v16, 7, 26211, 0xE200000000000000, a3, a4);
  return (*(v12 + 8))(v16, v10);
}

uint64_t sub_19369E7DC(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE40280;

  return v1;
}

uint64_t sub_19369E820@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE7AC80 != -1)
  {
    OUTLINED_FUNCTION_0_84(&qword_1EAE7AC80);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABE70);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingDocumentDeletion.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingDocumentDeletion(v2);
  return sub_1934488AC(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingDocumentDeletion(uint64_t a1)
{
  result = qword_1ED50D550;
  if (!qword_1ED50D550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingDocumentDeletion.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingDocumentDeletion(v2);
  return sub_1934488AC(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingDocumentDeletion.bundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 28));

  return v1;
}

uint64_t TextUnderstandingDocumentDeletion.bundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextUnderstandingDocumentDeletion(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.domainIds.getter()
{
  type metadata accessor for TextUnderstandingDocumentDeletion(0);
}

uint64_t TextUnderstandingDocumentDeletion.domainIds.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_57() + 32);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.uniqueIds.getter()
{
  type metadata accessor for TextUnderstandingDocumentDeletion(0);
}

uint64_t TextUnderstandingDocumentDeletion.uniqueIds.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_57() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.receivedDate.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingDocumentDeletion(v2) + 40);
  v4 = sub_19393BE00();
  v5 = *(*(v4 - 8) + 16);

  return v5(v0, v1 + v3, v4);
}

uint64_t TextUnderstandingDocumentDeletion.receivedDate.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_57() + 40);
  sub_19393BE00();
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t TextUnderstandingDocumentDeletion.isPurged.setter(char a1)
{
  result = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.category.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for TextUnderstandingDocumentDeletion(v2);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.category.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  v5 = v1 + *(result + 48);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.clientMetadata.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for TextUnderstandingDocumentDeletion(v2) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;

  return sub_19365F3E0(v4, v5);
}

__n128 TextUnderstandingDocumentDeletion.clientMetadata.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_4_57() + 52));
  sub_193442C40(*v2, v2[1], v2[2], v2[3]);
  result = *v0;
  v4 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 1) = v4;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.documentsReceivedAfter.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingDocumentDeletion(v2);
  return sub_1934488AC(v1 + *(v3 + 56), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t TextUnderstandingDocumentDeletion.documentCategory.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for TextUnderstandingDocumentDeletion(v2);
  v4 = (v1 + *(result + 60));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.documentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for TextUnderstandingDocumentDeletion(0);
  v6 = v1 + *(result + 60);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t TextUnderstandingDocumentDeletion.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingDocumentDeletion.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19369F1D0(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingDocumentDeletion.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_19369F210()
{
  result = qword_1EAE40290;
  if (!qword_1EAE40290)
  {
    type metadata accessor for TextUnderstandingDocumentDeletion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40290);
  }

  return result;
}

uint64_t sub_19369F294(uint64_t a1)
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

    sub_19369F3F4(319, qword_1ED507ED8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    v4 = sub_19393BE00();
    if (v7 > 0x3F)
    {
      return v4;
    }

    OUTLINED_FUNCTION_2_62(v4, &qword_1ED5030E8, &type metadata for TextUnderstandingDocumentIdentifiers.ClientMetadata);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_2_62(v4, &qword_1ED5030E0, &type metadata for TextUnderstandingDocumentIdentifiers.Category);
      v2 = v9;
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_19369F3F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *_s5HandsOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s14OasisAnalyticsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19369F5B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5117D8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5117D8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.OasisAnalytics.Hands.HandTracking.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:10485760 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_50 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5117D8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40298, &qword_19397B5C0);
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

unint64_t static Library.Streams.OasisAnalytics.Hands.HandTracking.attribute(_:)(void (*a1)(void))
{
  result = sub_19369F9C8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19369FA10(void (*a1)(void))
{
  result = sub_19369F9C8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19369FA40(uint64_t a1)
{
  result = sub_19369FA68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19369FA68()
{
  result = qword_1EAE402A0;
  if (!qword_1EAE402A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402A0);
  }

  return result;
}

_BYTE *_s12HandTrackingOwst(_BYTE *result, int a2, int a3)
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

void sub_19369FB94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_1();
  v10 = type metadata accessor for OasisAnalyticsMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v12 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (!v12 && (OUTLINED_FUNCTION_59_0(0x617461646174656DLL, 0xE800000000000000) & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_12_36();
    v14 = a1 == v13 && a2 == 0xE700000000000000;
    if (v14 || (OUTLINED_FUNCTION_59_0(v13, 0xE700000000000000) & 1) != 0)
    {
      if (*(v3 + *(type metadata accessor for OasisAnalyticsHandsSpeedEvent(0) + 20) + 13))
      {
        goto LABEL_8;
      }

      v15 = &type metadata for OasisAnalyticsHandsSpeedSample;
      v16 = &off_1F07DE528;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_15_44();
      v19 = a1 == v17 && a2 == v18;
      if (!v19 && (OUTLINED_FUNCTION_59_0(v17, v18) & 1) == 0)
      {
        v21 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
        v23 = v22;
        *v22 = a1;
        v22[1] = a2;
        v22[5] = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
        __swift_allocate_boxed_opaque_existential_1Tm(v23 + 2);
        OUTLINED_FUNCTION_8_44();
        sub_1936A09FC(v3, v24, v25);
        *(v23 + 48) = 1;
        swift_willThrow();

        return;
      }

      v20 = v3 + *(type metadata accessor for OasisAnalyticsHandsSpeedEvent(0) + 24);
      if (*(v20 + 17))
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_9_59(v20);
      v15 = &type metadata for OasisAnalyticsQualityTrace;
      v16 = &off_1F07DEED0;
    }

    sub_193494798(v15, v16, a3);
    return;
  }

  sub_19369FE34(v3, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {
    sub_19344E6DC(v4, &qword_1EAE402A8, &qword_19397B638);
LABEL_8:
    OUTLINED_FUNCTION_104();
    return;
  }

  sub_1936A0BDC(v4, v5, type metadata accessor for OasisAnalyticsMetadata);
  sub_193494798(v10, &off_1F07DEEF0, a3);
  OUTLINED_FUNCTION_10_50();
}

uint64_t sub_19369FE34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19369FEBC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 4);
  v7 = a1 == 0x646E61487466656CLL && a2 == 0xED00006465657053;
  if (v7 || (v8 = v2[2], v9 = *(v2 + 12), (OUTLINED_FUNCTION_91_2(0x646E61487466656CLL, 0xED00006465657053) & 1) != 0))
  {
    if (v6)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v10 = a1 == 0x6E61487468676972 && a2 == 0xEE00646565705364;
  if (v10 || (OUTLINED_FUNCTION_91_2(0x6E61487468676972, 0xEE00646565705364) & 1) != 0)
  {
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v11 = sub_19349AB64();
  v12 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 40) = &type metadata for OasisAnalyticsHandsSpeedSample;
  *(v13 + 16) = v5;
  *(v13 + 20) = v6;
  *(v13 + 24) = v8;
  *(v13 + 28) = v9;
  OUTLINED_FUNCTION_23_2(v12, v13);
}

void sub_1936A0088(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, ValueMetadata *a4@<X3>, _UNKNOWN **a5@<X4>, void (*a6)(void)@<X5>, uint64_t *a7@<X8>)
{
  v37 = a6;
  v38 = a5;
  v39 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for OasisAnalyticsMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v18 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (!v18 && (OUTLINED_FUNCTION_67(0x617461646174656DLL, 0xE800000000000000) & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_12_36();
    v20 = a1 == v19 && a2 == 0xE700000000000000;
    if (v20 || (OUTLINED_FUNCTION_67(v19, 0xE700000000000000) & 1) != 0)
    {
      v21 = (v7 + *(v39(0) + 20));
      v22 = *v21;
      if (v22 == 3)
      {
        goto LABEL_8;
      }

      v23 = *(v21 + 8);
      v24 = *(v21 + 1);
      v40 = v22;
      v41 = v24;
      v42 = v23 & 0x1FF;
      v25 = a7;
      v26 = a4;
      v27 = v38;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_15_44();
      v30 = a1 == v28 && a2 == v29;
      if (!v30 && (OUTLINED_FUNCTION_67(v28, v29) & 1) == 0)
      {
        v32 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v32);
        v34 = v33;
        *v33 = a1;
        v33[1] = a2;
        v33[5] = v39(0);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v34 + 2);
        sub_1936A09FC(v7, boxed_opaque_existential_1Tm, v37);
        *(v34 + 48) = 1;
        swift_willThrow();

        return;
      }

      v31 = v7 + *(v39(0) + 24);
      if (*(v31 + 17))
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_9_59(v31);
      v26 = &type metadata for OasisAnalyticsQualityTrace;
      v27 = &off_1F07DEED0;
      v25 = a7;
    }

    sub_193494798(v26, v27, v25);
    return;
  }

  sub_19369FE34(v7, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_19344E6DC(v15, &qword_1EAE402A8, &qword_19397B638);
LABEL_8:
    OUTLINED_FUNCTION_104();
    return;
  }

  sub_1936A0BDC(v15, v8, type metadata accessor for OasisAnalyticsMetadata);
  sub_193494798(v16, &off_1F07DEEF0, a7);
  OUTLINED_FUNCTION_10_50();
}

void sub_1936A038C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_25_32();
  v6 = *v1;
  v7 = a1 == v3 && v4 == 0xE600000000000000;
  if (v7 || (v8 = v5, v9 = v4, v10 = *(v1 + 1), v16 = v1[16], v11 = v1[17], (sub_19393CA30() & 1) != 0))
  {
    if (v6 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v12 = a1 == 0x6574617473 && v9 == 0xE500000000000000;
  if (v12 || (sub_19393CA30() & 1) != 0)
  {
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v13 = sub_19349AB64();
  v14 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
  *v15 = a1;
  *(v15 + 8) = v9;
  *(v15 + 40) = v8;
  *(v15 + 16) = v6;
  *(v15 + 24) = v10;
  *(v15 + 32) = v16;
  *(v15 + 33) = v11;
  OUTLINED_FUNCTION_23_2(v14, v15);
}

void sub_1936A0558(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_25_32();
  v8 = *v1;
  v9 = a1 == v6 && v7 == 0xE600000000000000;
  if (v9 || (OUTLINED_FUNCTION_22_33(), (OUTLINED_FUNCTION_91_2(v10, 0xE600000000000000) & 1) != 0))
  {
    if (v8 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v11 = a1 == 1701080941 && v2 == 0xE400000000000000;
  if (v11 || (OUTLINED_FUNCTION_91_2(1701080941, 0xE400000000000000) & 1) != 0)
  {
    if (v1)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v12 = sub_19349AB64();
  v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
  *v14 = a1;
  *(v14 + 8) = v2;
  *(v14 + 40) = &type metadata for OasisAnalyticsHandsPipelineFramerateSample;
  *(v14 + 16) = v8;
  *(v14 + 24) = v4;
  *(v14 + 32) = v3;
  *(v14 + 33) = v1;
  OUTLINED_FUNCTION_23_2(v13, v14);
}

void sub_1936A06E0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v8 = a1 == 0x65696C7070417369 && a2 == 0xE900000000000064;
  if (v8 || (OUTLINED_FUNCTION_22_33(), (OUTLINED_FUNCTION_91_2(v9, 0xE900000000000064) & 1) != 0))
  {
    if (v7 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v10 = a1 == 1701080941 && v3 == 0xE400000000000000;
  if (v10 || (OUTLINED_FUNCTION_91_2(1701080941, 0xE400000000000000) & 1) != 0)
  {
    if (v2)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v11 = sub_19349AB64();
  v12 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
  *v13 = a1;
  *(v13 + 8) = v3;
  *(v13 + 40) = &type metadata for OasisAnalyticsHandsSystemFramerateSample;
  *(v13 + 16) = v7;
  *(v13 + 24) = v5;
  *(v13 + 32) = v4;
  *(v13 + 33) = v2;
  OUTLINED_FUNCTION_23_2(v12, v13);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OasisAnalyticsHandTracking.json()()
{
  v0 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = type metadata accessor for OasisAnalyticsHandTracking(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402B0, &qword_19397B640);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = OUTLINED_FUNCTION_1_64();
  sub_1936A09FC(v15, v11, v16);
  sub_1934470C8(v11, v7, v14);
  sub_19393C080();
  sub_1936A0A5C();
  v17 = sub_19393C250();
  v19 = v18;
  (*(v2 + 8))(v6, v0);
  sub_19344E6DC(v14, &qword_1EAE402B0, &qword_19397B640);
  v20 = v17;
  v21 = v19;
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

uint64_t sub_1936A09FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1936A0A5C()
{
  result = qword_1EAE402B8;
  if (!qword_1EAE402B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE402B0, &qword_19397B640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402B8);
  }

  return result;
}

uint64_t static OasisAnalyticsHandTracking.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402B0, &qword_19397B640);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;

  sub_19393C060();
  sub_1936A0A5C();
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_6_50();
    return sub_1936A0BDC(v8, a3, v10);
  }

  return result;
}

uint64_t sub_1936A0BDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t static OasisAnalyticsHandTracking.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v34 = a5;
  v32 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402B0, &qword_19397B640);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_1();
  v11 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  if (*sub_1936A7B64() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    (*(v13 + 16))(v17, v19, v11);
    sub_193450688(a1, a2);
    sub_1936A0A5C();
    v20 = v38;
    sub_19393C280();
    if (v20)
    {
      return (*(v13 + 8))(v19, v11);
    }

    else
    {
      (*(v13 + 8))(v19, v11);
      OUTLINED_FUNCTION_6_50();
      v24 = v33;
      sub_1936A0BDC(v6, v33, v25);
      v26 = type metadata accessor for OasisAnalyticsHandTracking(0);
      v27 = *(v26 + 20);
      sub_19344E6DC(v24 + v27, &qword_1EAE3A9E8, &qword_19394F800);
      v28 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v29 + 16))(v24 + v27, v32, v28);
      __swift_storeEnumTagSinglePayload(v24 + v27, 0, 1, v28);
      v30 = *(v26 + 24);
      sub_19344E6DC(v24 + v30, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v34, v24 + v30);
    }
  }

  else
  {
    v22 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
    *v23 = a3;
    *(v23 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t OasisAnalyticsHandTracking.serialize()()
{
  v1 = type metadata accessor for OasisAnalyticsHandTracking(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402B0, &qword_19397B640);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_3();
  v7 = OUTLINED_FUNCTION_1_64();
  sub_1936A09FC(v7, v5, v8);
  sub_1934470C8(v5, v1, v0);
  sub_1936A0A5C();
  v9 = sub_19393C290();
  sub_19344E6DC(v0, &qword_1EAE402B0, &qword_19397B640);
  return v9;
}

int *sub_1936A10B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1 == OUTLINED_FUNCTION_12_36() && v5 == 0xE700000000000000;
  if (v6 || (v7 = v5, (sub_19393CA30() & 1) != 0))
  {
    result = type metadata accessor for OasisAnalyticsHandTracking(0);
    if ((~*(v2 + result[7]) & 0xF000000000000007) != 0)
    {
      return sub_193494798(&type metadata for OasisAnalyticsHandTracking.Payload, &off_1F07DE640, a2);
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    v9 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
    v11 = v10;
    *v10 = a1;
    v10[1] = v7;
    v10[5] = type metadata accessor for OasisAnalyticsHandTracking(0);
    __swift_allocate_boxed_opaque_existential_1Tm(v11 + 2);
    v12 = OUTLINED_FUNCTION_1_64();
    sub_1936A09FC(v12, v13, v14);
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1936A11D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v40 = v9 - v8;
  v43 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v42 = v12 - v11;
  v44 = type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for OasisAnalyticsPinchEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v19 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  MEMORY[0x1EEE9AC00](0x65705373646E6168);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v21 = *v3;
  v22 = a1 == v20 && a2 == 0xEA00000000006465;
  if (v22 || (OUTLINED_FUNCTION_5_5(v20, 0xEA00000000006465) & 1) != 0)
  {
    if (!(v21 >> 61))
    {
      swift_projectBox();
      OUTLINED_FUNCTION_8_44();
      sub_1936A09FC(v23, 0x65705373646E6168, v24);
      sub_193494798(v19, &off_1F07DE518, a3);
      v25 = type metadata accessor for OasisAnalyticsHandsSpeedEvent;
      v26 = 0x65705373646E6168;
      return sub_1936A1680(v26, v25);
    }
  }

  else
  {
    v28 = a1 == 0x68636E6970 && a2 == 0xE500000000000000;
    if (!v28 && (OUTLINED_FUNCTION_5_5(0x68636E6970, 0xE500000000000000) & 1) == 0)
    {
      v30 = a1 == 0x72657355646E6168 && a2 == 0xEC00000077656956;
      if (v30 || (OUTLINED_FUNCTION_5_5(0x72657355646E6168, 0xEC00000077656956) & 1) != 0)
      {
        if (v21 >> 61 != 2)
        {
          goto LABEL_39;
        }

        v31 = swift_projectBox();
        sub_1936A09FC(v31, v16, type metadata accessor for OasisAnalyticsHandUserViewEvent);
        sub_193494798(v44, &off_1F07DE558, a3);
        v32 = type metadata accessor for OasisAnalyticsHandUserViewEvent;
      }

      else
      {
        v33 = a1 == 0xD000000000000011 && 0x8000000193A2CD40 == a2;
        if (v33 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, 0x8000000193A2CD40) & 1) != 0)
        {
          if (v21 >> 61 != 3)
          {
            goto LABEL_39;
          }

          v34 = swift_projectBox();
          v16 = v42;
          sub_1936A09FC(v34, v42, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);
          sub_193494798(v43, &off_1F07DE578, a3);
          v32 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent;
        }

        else
        {
          if (a1 == 0x72466D6574737973 && a2 == 0xEF65746172656D61)
          {
            if (v21 >> 61 != 4)
            {
              goto LABEL_39;
            }
          }

          else if ((OUTLINED_FUNCTION_5_5(0x72466D6574737973, 0xEF65746172656D61) & 1) == 0 || (v21 & 0xE000000000000000) != 0x8000000000000000)
          {
            goto LABEL_39;
          }

          v36 = swift_projectBox();
          v16 = v40;
          sub_1936A09FC(v36, v40, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);
          sub_193494798(v41, &off_1F07DE598, a3);
          v32 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent;
        }
      }

      v25 = v32;
      v26 = v16;
      return sub_1936A1680(v26, v25);
    }

    if (v21 >> 61 == 1)
    {
      v29 = swift_projectBox();
      sub_1936A09FC(v29, v4, type metadata accessor for OasisAnalyticsPinchEvent);
      sub_193494798(v17, &off_1F07DE538, a3);
      v25 = type metadata accessor for OasisAnalyticsPinchEvent;
      v26 = v4;
      return sub_1936A1680(v26, v25);
    }
  }

LABEL_39:
  v37 = sub_19349AB64();
  v38 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v37);
  *v39 = a1;
  v39[1] = a2;
  v39[5] = &type metadata for OasisAnalyticsHandTracking.Payload;
  v39[2] = v21;
  OUTLINED_FUNCTION_23_2(v38, v39);
}

uint64_t sub_1936A1680(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void OasisAnalyticsPinchSample.HandPinchState.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t OasisAnalyticsPinchSample.HandPinchState.rawValue.getter()
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

uint64_t OasisAnalyticsPinchSample.HandPinchState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x6B61657242;
  }

  return 1701536077;
}

void OasisAnalyticsPinchSample.HandPinchState.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 1701536077 ? (v5 = v0 == 0xE400000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(1701536077, 0xE400000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x6B61657242 && v0 == 0xE500000000000000)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x6B61657242, 0xE500000000000000);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_19_5(v6);
}

uint64_t OasisAnalyticsHandUserViewSample.UserViewState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    return 0x646574697845;
  }

  return 0x64657265746E45;
}

void OasisAnalyticsHandUserViewSample.UserViewState.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x64657265746E45 ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x64657265746E45, 0xE700000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else if (v1 == 0x646574697845 && v0 == 0xE600000000000000)
  {

    v6 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x646574697845, 0xE600000000000000);

    v6 = v8 & 1;
  }

  OUTLINED_FUNCTION_19_5(v6);
}

uint64_t OasisAnalyticsHandTracking.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for OasisAnalyticsHandTracking(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19343E51C((a1 + v5));
  *a1 = *sub_1936A7B64();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v6 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v6);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  result = sub_193444060(*(a1 + v5));
  *(a1 + v5) = 0xF000000000000007;
  return result;
}

BOOL static OasisAnalyticsHandTracking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OasisAnalyticsHandTracking(0) + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((~v6 & 0xF000000000000007) != 0)
    {
      sub_193437C90(v5);
      sub_193437C90(v6);
      sub_193437C90(v5);
      sub_1936A2820();
      v8 = sub_19393C550();

      sub_193444060(v5);
      return (v8 & 1) != 0;
    }

    sub_193437C90(v5);
    sub_193437C90(v6);
    sub_193437C90(v5);

LABEL_6:
    sub_193444060(v5);
    sub_193444060(v6);
    return 0;
  }

  sub_193437C90(v5);
  sub_193437C90(v6);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    goto LABEL_6;
  }

  sub_193444060(v5);
  return 1;
}

uint64_t OasisAnalyticsHandTracking.hash(into:)(uint64_t a1)
{
  if ((~*(v1 + *(type metadata accessor for OasisAnalyticsHandTracking(0) + 28)) & 0xF000000000000007) == 0)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_1936A2874();

  sub_19393C540();
}

uint64_t static OasisAnalyticsHandTracking.Payload.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v59 = a2;
  v3 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  v4 = OUTLINED_FUNCTION_47(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v58 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v56 - v8;
  v9 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  v18 = OUTLINED_FUNCTION_47(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = type metadata accessor for OasisAnalyticsPinchEvent(0);
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v56 - v31;
  v33 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v34 = OUTLINED_FUNCTION_47(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v56 - v39;
  v41 = *a1;
  v42 = *v59;
  switch(v41 >> 61)
  {
    case 1uLL:
      if (v42 >> 61 != 1)
      {
        goto LABEL_14;
      }

      swift_projectBox();
      v54 = OUTLINED_FUNCTION_15_45();
      sub_1936A28C8(v40, v32, type metadata accessor for OasisAnalyticsPinchEvent);
      sub_1936A28C8(v54, v29, type metadata accessor for OasisAnalyticsPinchEvent);

      v45 = static OasisAnalyticsPinchEvent.== infix(_:_:)(v32, v29);
      sub_1936A2928(v29, type metadata accessor for OasisAnalyticsPinchEvent);
      v46 = v32;
      v47 = type metadata accessor for OasisAnalyticsPinchEvent;
      goto LABEL_13;
    case 2uLL:
      if (v42 >> 61 != 2)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_51();
      v52 = OUTLINED_FUNCTION_15_45();
      v49 = type metadata accessor for OasisAnalyticsHandUserViewEvent;
      sub_1936A28C8(v40, v24, type metadata accessor for OasisAnalyticsHandUserViewEvent);
      sub_1936A28C8(v52, v21, type metadata accessor for OasisAnalyticsHandUserViewEvent);

      v45 = static OasisAnalyticsHandUserViewEvent.== infix(_:_:)(v24, v21);
      sub_1936A2928(v21, type metadata accessor for OasisAnalyticsHandUserViewEvent);
      v46 = v24;
      goto LABEL_10;
    case 3uLL:
      if (v42 >> 61 != 3)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_51();
      v53 = OUTLINED_FUNCTION_15_45();
      v49 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent;
      sub_1936A28C8(v40, v16, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);
      sub_1936A28C8(v53, v13, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);

      v45 = static OasisAnalyticsHandsPipelineFramerateEvent.== infix(_:_:)(v16, v13);
      sub_1936A2928(v13, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);
      v46 = v16;
      goto LABEL_10;
    case 4uLL:
      if (v42 >> 61 != 4)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_10_51();
      v48 = OUTLINED_FUNCTION_15_45();
      v49 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent;
      v50 = v57;
      sub_1936A28C8(v40, v57, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);
      v51 = v58;
      sub_1936A28C8(v48, v58, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);

      v45 = static OasisAnalyticsHandsSystemFramerateEvent.== infix(_:_:)(v50, v51);
      sub_1936A2928(v51, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);
      v46 = v50;
LABEL_10:
      v47 = v49;
      goto LABEL_13;
    default:
      if (v42 >> 61)
      {
LABEL_14:
        v45 = 0;
      }

      else
      {
        v43 = swift_projectBox();
        v44 = swift_projectBox();
        sub_1936A28C8(v43, v40, type metadata accessor for OasisAnalyticsHandsSpeedEvent);
        sub_1936A28C8(v44, v37, type metadata accessor for OasisAnalyticsHandsSpeedEvent);

        v45 = static OasisAnalyticsHandsSpeedEvent.== infix(_:_:)(v40, v37);
        sub_1936A2928(v37, type metadata accessor for OasisAnalyticsHandsSpeedEvent);
        v46 = v40;
        v47 = type metadata accessor for OasisAnalyticsHandsSpeedEvent;
LABEL_13:
        sub_1936A2928(v46, v47);
      }

      return v45 & 1;
  }
}

uint64_t OasisAnalyticsHandTracking.Payload.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  type metadata accessor for OasisAnalyticsPinchEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  switch(*v2 >> 61)
  {
    case 1:
      v30 = swift_projectBox();
      v27 = type metadata accessor for OasisAnalyticsPinchEvent;
      sub_1936A28C8(v30, v18, type metadata accessor for OasisAnalyticsPinchEvent);
      OUTLINED_FUNCTION_14_44(&qword_1EAE402E8);
      OUTLINED_FUNCTION_12_37();
      sub_19393C540();
      v24 = v18;
      goto LABEL_7;
    case 2:
      v28 = swift_projectBox();
      v27 = type metadata accessor for OasisAnalyticsHandUserViewEvent;
      sub_1936A28C8(v28, v14, type metadata accessor for OasisAnalyticsHandUserViewEvent);
      OUTLINED_FUNCTION_14_44(&qword_1EAE402E0);
      OUTLINED_FUNCTION_12_37();
      sub_19393C540();
      v24 = v14;
      goto LABEL_7;
    case 3:
      v29 = swift_projectBox();
      v27 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent;
      sub_1936A28C8(v29, v10, type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent);
      OUTLINED_FUNCTION_14_44(&qword_1EAE402D8);
      OUTLINED_FUNCTION_12_37();
      sub_19393C540();
      v24 = v10;
      goto LABEL_7;
    case 4:
      v26 = swift_projectBox();
      v27 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent;
      sub_1936A28C8(v26, v6, type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent);
      OUTLINED_FUNCTION_14_44(&qword_1EAE402D0);
      sub_19393C540();
      v24 = v6;
LABEL_7:
      v25 = v27;
      break;
    default:
      v23 = swift_projectBox();
      sub_1936A28C8(v23, v22, type metadata accessor for OasisAnalyticsHandsSpeedEvent);
      sub_1936A2980(&qword_1EAE402F0, type metadata accessor for OasisAnalyticsHandsSpeedEvent, &protocol conformance descriptor for OasisAnalyticsHandsSpeedEvent);
      OUTLINED_FUNCTION_12_37();
      sub_19393C540();
      v24 = v22;
      v25 = type metadata accessor for OasisAnalyticsHandsSpeedEvent;
      break;
  }

  return sub_1936A2928(v24, v25);
}

void OasisAnalyticsHandsFramerateMode.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

char *static OasisAnalyticsHandsFramerateMode.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE40310, &qword_19397B850);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    sub_1934B0FCC(v13, v2 + 1, 1, v14, &qword_1EAE40310, &qword_19397B850);
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
    sub_1934B0FCC(v15, v2 + 2, 1, v16, &qword_1EAE40310, &qword_19397B850);
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
    v0 = sub_1934B0FCC(v17, v2 + 3, 1, v18, &qword_1EAE40310, &qword_19397B850);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934B0FCC(v19, v2 + 4, 1, v20, &qword_1EAE40310, &qword_19397B850);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t OasisAnalyticsHandsFramerateMode.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  v1 = 0x6D756964654DLL;
  if (*v0 != 1)
  {
    v1 = 7827276;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1751607624;
  }
}

void OasisAnalyticsHandsFramerateMode.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 1751607624 ? (v5 = v0 == 0xE400000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(1751607624, 0xE400000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x6D756964654DLL && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x6D756964654DLL, 0xE600000000000000) & 1) != 0)
    {

      v6 = 1;
    }

    else if (v1 == 7827276 && v0 == 0xE300000000000000)
    {

      v6 = 2;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_0_9(7827276, 0xE300000000000000);

      v6 = 2;
      if ((v9 & 1) == 0)
      {
        v6 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v6);
}

unint64_t sub_1936A2820()
{
  result = qword_1EAE402C0;
  if (!qword_1EAE402C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402C0);
  }

  return result;
}

unint64_t sub_1936A2874()
{
  result = qword_1EAE402C8;
  if (!qword_1EAE402C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402C8);
  }

  return result;
}

uint64_t sub_1936A28C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1936A2928(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1936A2980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1936A29CC()
{
  result = qword_1EAE402F8;
  if (!qword_1EAE402F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE402F8);
  }

  return result;
}

unint64_t sub_1936A2A24()
{
  result = qword_1EAE40300;
  if (!qword_1EAE40300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40300);
  }

  return result;
}

unint64_t sub_1936A2A7C()
{
  result = qword_1EAE40308;
  if (!qword_1EAE40308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40308);
  }

  return result;
}

void sub_1936A2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_24(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, vars0, vars8);
  if (!v8)
  {
    v10 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
    if ((*(v9 + *(v10 + 20) + 13) & 1) == 0)
    {
      OUTLINED_FUNCTION_179();
    }

    if ((*(v9 + *(v10 + 24) + 17) & 1) == 0)
    {
      OUTLINED_FUNCTION_28_24();
      OUTLINED_FUNCTION_179();
    }
  }
}

void sub_1936A2C38()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABEA0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("leftHandSpeed");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "rightHandSpeed");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936A2D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_19393C160();
    }
  }

  return result;
}

uint64_t sub_1936A2DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 12);
  if ((*(v3 + 4) & 1) == 0)
  {
    result = sub_19393C340();
  }

  if (!v4 && (v5 & 1) == 0)
  {
    return sub_19393C340();
  }

  return result;
}

void sub_1936A2EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  a10 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE402A8, &qword_19397B638);
  v24 = OUTLINED_FUNCTION_47(v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &a9 - v25;
  v27 = type metadata accessor for OasisAnalyticsMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_1();
  v31 = v30 - v29;
  sub_19344F184();
  OUTLINED_FUNCTION_6_3(v26, 1, v27);
  if (v32)
  {
    sub_19344E6DC(v26, &qword_1EAE402A8, &qword_19397B638);
  }

  else
  {
    sub_1936A56A4();
    sub_193447600();
    sub_1936A56FC(v31, type metadata accessor for OasisAnalyticsMetadata);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936A30D8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABED0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("isLeft");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "state");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3290()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABEE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("HandPinchStateUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  (v7)(v8);
  OUTLINED_FUNCTION_3_1(v0 + v4);
  OUTLINED_FUNCTION_69_6(v9);
  OUTLINED_FUNCTION_36_5(v10, "HandPinchStateMake");
  OUTLINED_FUNCTION_10_0();
  v7();
  v11 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_48(v11, "HandPinchStateBreak");
  (v7)(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A34BC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABF18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("isLeft");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "state");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3674()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABF30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "UserViewStateUnknown";
  *(v0 + 8) = 20;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_65();
  (v7)(v8);
  OUTLINED_FUNCTION_3_1(v1 + v4);
  OUTLINED_FUNCTION_69_6(v9);
  *v10 = "UserViewStateEntered";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  *v11 = "UserViewStateExited";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A38B4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABF60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("isLeft");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "mode");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3A28()
{
  OUTLINED_FUNCTION_115();
  v2 = v1;
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, v2);
  __swift_project_value_buffer(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_47_4();
  v6 = OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("metadata");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  (v8)(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_36_5(v10, "payload");
  OUTLINED_FUNCTION_10_0();
  v8();
  v11 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v12 = 3;
  v13 = OUTLINED_FUNCTION_48(v11, "qualityTrace");
  (v8)(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3B98()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 3 || v3 == 2)
    {
      v2(0);
LABEL_9:
      sub_193498018();
    }

    else if (v3 == 1)
    {
      type metadata accessor for OasisAnalyticsMetadata(0);
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936A3CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_24(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  if (!v8)
  {
    v11 = a4(0);
    if (*(v9 + *(v11 + 20)) != 3)
    {
      sub_193447600();
    }

    if ((*(v9 + *(v11 + 24) + 17) & 1) == 0)
    {
      OUTLINED_FUNCTION_28_24();
      OUTLINED_FUNCTION_179();
    }
  }
}

void sub_1936A3E24()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABF90);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("isApplied");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "mode");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A3F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      sub_1934982A8();
    }

    else if (v4 == 1)
    {
      sub_19393C0F0();
    }
  }
}

uint64_t sub_1936A3FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 17);
  if (*v5 != 2)
  {
    result = sub_19393C2E0();
  }

  if (!v6 && (v13 & 1) == 0)
  {
    v15 = v11;
    v16 = v12 & 1;
    return sub_193447324(&v15, 2, a2, a4, a3, a5);
  }

  return result;
}

uint64_t sub_1936A4134()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABFA8);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FAC0;
  v6 = v5 + v4 + v3[14];
  OUTLINED_FUNCTION_69_6((v5 + v4));
  *v6 = "payload";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v8 + 104))(v6, v7);
  return sub_19393C410();
}

void sub_1936A4290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 1)
    {
      type metadata accessor for OasisAnalyticsHandTracking(0);
      sub_193498018();
    }
  }
}

void sub_1936A4340()
{
  if ((~*(v0 + *(type metadata accessor for OasisAnalyticsHandTracking(0) + 28)) & 0xF000000000000007) != 0)
  {
    sub_193447600();
  }
}

uint64_t sub_1936A4434@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v2 = swift_allocBox();
  result = OasisAnalyticsHandsSpeedEvent.init()();
  *a1 = v2;
  return result;
}

void sub_1936A4470()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABFC0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBD0;
  v6 = v5 + v4 + dword_1EAEABFF8;
  *(v5 + v4) = 1;
  *v6 = "handsSpeed";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_29_1();
  *v9 = "pinch";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v10 = OUTLINED_FUNCTION_3_1(v5 + v4 + 2 * v2);
  *v11 = 3;
  OUTLINED_FUNCTION_36_5(v10, "handUserView");
  OUTLINED_FUNCTION_2_0();
  v8();
  v12 = OUTLINED_FUNCTION_3_1(v5 + v4 + 3 * v2);
  *v13 = 4;
  OUTLINED_FUNCTION_36_5(v12, "pipelineFramerate");
  OUTLINED_FUNCTION_2_0();
  v8();
  v14 = OUTLINED_FUNCTION_3_1(v5 + v4 + 4 * v2);
  *v15 = 5;
  *v14 = "systemFramerate";
  *(v14 + 8) = 15;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936A467C()
{
  OUTLINED_FUNCTION_26();
  v105 = v0;
  v106 = v2;
  v107 = v3;
  v4 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v90 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE403E8, &qword_19397B868);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v100 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v85 - v13;
  v97 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v89 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE403F0, &qword_19397B870);
  v18 = OUTLINED_FUNCTION_47(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v86 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v85 - v22;
  v95 = type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_1();
  v25 = v24 - v23;
  v26 = &qword_1EAE403F8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE403F8, &qword_19397B878);
  v28 = OUTLINED_FUNCTION_47(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v85 - v33;
  v94 = type metadata accessor for OasisAnalyticsPinchEvent(0);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_1();
  v87 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40400, &qword_19397B880);
  v38 = OUTLINED_FUNCTION_47(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6();
  v99 = v39 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v85 - v42;
  v92 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_1();
  v85 = v45 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40408, &qword_19397B888);
  v47 = OUTLINED_FUNCTION_47(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_6();
  v50 = v48 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v91 = &v85 - v52;
  v103 = v34;
  v104 = v4;
  v93 = v43;
  v101 = v31;
  v102 = v50;
  v88 = v25;
  while (1)
  {
    v53 = sub_19393C0E0();
    if (v1 || (v54 & 1) != 0)
    {
      break;
    }

    switch(v53)
    {
      case 1:
        v56 = v91;
        v55 = v92;
        v57 = OUTLINED_FUNCTION_16();
        __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);
        OUTLINED_FUNCTION_67_12();
        sub_193498018();
        OUTLINED_FUNCTION_39_24();
        sub_19344F184();
        OUTLINED_FUNCTION_5_3(v50);
        if (v60)
        {
          OasisAnalyticsHandsSpeedEvent.init()();
          v50 = v102;
          sub_19344E6DC(v56, &qword_1EAE40408, &qword_19397B888);
          OUTLINED_FUNCTION_5_3(v50);
          if (!v60)
          {
            sub_19344E6DC(v50, &qword_1EAE40408, &qword_19397B888);
          }
        }

        else
        {
          sub_19344E6DC(v56, &qword_1EAE40408, &qword_19397B888);
          OUTLINED_FUNCTION_24_35();
          sub_1936A56A4();
        }

        v81 = swift_allocBox();
        OUTLINED_FUNCTION_24_35();
        sub_1936A56A4();
        v31 = v101;
        goto LABEL_31;
      case 2:
        v77 = v93;
        v76 = v94;
        __swift_storeEnumTagSinglePayload(v93, 1, 1, v94);
        sub_193498018();
        v78 = v25;
        OUTLINED_FUNCTION_39_24();
        v79 = v99;
        sub_19344F184();
        OUTLINED_FUNCTION_6_3(v79, 1, v76);
        if (v60)
        {
          OasisAnalyticsPinchEvent.init()(v87);
          sub_19344E6DC(v77, &qword_1EAE40400, &qword_19397B880);
          OUTLINED_FUNCTION_6_3(v79, 1, v76);
          if (!v60)
          {
            sub_19344E6DC(v99, &qword_1EAE40400, &qword_19397B880);
          }
        }

        else
        {
          sub_19344E6DC(v77, &qword_1EAE40400, &qword_19397B880);
          OUTLINED_FUNCTION_23_36();
          sub_1936A56A4();
        }

        v84 = swift_allocBox();
        OUTLINED_FUNCTION_23_36();
        sub_1936A56A4();
        v81 = v84 | 0x2000000000000000;
        v25 = v78;
        v26 = &qword_1EAE403F8;
        v31 = v101;
        v50 = v102;
        goto LABEL_31;
      case 3:
        v67 = v26;
        v68 = OUTLINED_FUNCTION_16();
        v69 = v95;
        __swift_storeEnumTagSinglePayload(v68, v70, v71, v95);
        sub_193498018();
        OUTLINED_FUNCTION_39_24();
        sub_19344F184();
        OUTLINED_FUNCTION_6_3(v31, 1, v69);
        if (v60)
        {
          OasisAnalyticsHandUserViewEvent.init()(v25);
          sub_19344E6DC(v34, v67, &qword_19397B878);
          OUTLINED_FUNCTION_6_3(v31, 1, v69);
          if (!v60)
          {
            sub_19344E6DC(v31, v67, &qword_19397B878);
          }
        }

        else
        {
          sub_19344E6DC(v34, v67, &qword_19397B878);
          OUTLINED_FUNCTION_26_25();
          sub_1936A56A4();
        }

        v82 = swift_allocBox();
        OUTLINED_FUNCTION_26_25();
        sub_1936A56A4();
        v81 = v82 | 0x4000000000000000;
        v26 = v67;
        goto LABEL_31;
      case 4:
        v72 = v31;
        v73 = v96;
        v74 = v97;
        __swift_storeEnumTagSinglePayload(v96, 1, 1, v97);
        sub_193498018();
        v75 = v86;
        OUTLINED_FUNCTION_39_24();
        sub_19344F184();
        OUTLINED_FUNCTION_6_3(v75, 1, v74);
        if (v60)
        {
          OasisAnalyticsHandsPipelineFramerateEvent.init()(v89);
          sub_19344E6DC(v73, &qword_1EAE403F0, &qword_19397B870);
          OUTLINED_FUNCTION_6_3(v75, 1, v74);
          if (!v60)
          {
            sub_19344E6DC(v75, &qword_1EAE403F0, &qword_19397B870);
          }
        }

        else
        {
          sub_19344E6DC(v73, &qword_1EAE403F0, &qword_19397B870);
          OUTLINED_FUNCTION_25_33();
          sub_1936A56A4();
        }

        v83 = swift_allocBox();
        OUTLINED_FUNCTION_25_33();
        sub_1936A56A4();
        v81 = v83 | 0x6000000000000000;
        v25 = v88;
        v26 = &qword_1EAE403F8;
        v31 = v72;
        goto LABEL_28;
      case 5:
        v61 = v98;
        v62 = OUTLINED_FUNCTION_16();
        __swift_storeEnumTagSinglePayload(v62, v63, v64, v4);
        OUTLINED_FUNCTION_67_12();
        sub_193498018();
        OUTLINED_FUNCTION_39_24();
        v65 = v100;
        sub_19344F184();
        OUTLINED_FUNCTION_5_3(v65);
        if (v60)
        {
          OasisAnalyticsHandsSystemFramerateEvent.init()(v90);
          v66 = v100;
          sub_19344E6DC(v61, &qword_1EAE403E8, &qword_19397B868);
          OUTLINED_FUNCTION_5_3(v66);
          if (!v60)
          {
            sub_19344E6DC(v66, &qword_1EAE403E8, &qword_19397B868);
          }
        }

        else
        {
          sub_19344E6DC(v61, &qword_1EAE403E8, &qword_19397B868);
          OUTLINED_FUNCTION_27_27();
          sub_1936A56A4();
        }

        v80 = swift_allocBox();
        OUTLINED_FUNCTION_27_27();
        sub_1936A56A4();
        v81 = v80 | 0x8000000000000000;
LABEL_28:
        v50 = v102;
LABEL_31:
        v4 = v104;
        *v105 = v81;
        v34 = v103;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1936A5064()
{
  OUTLINED_FUNCTION_26();
  type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v4 = v3 - v2;
  type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  type metadata accessor for OasisAnalyticsHandUserViewEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  type metadata accessor for OasisAnalyticsPinchEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v20 = v19 - v18;
  switch(*v0 >> 61)
  {
    case 1:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v21 = type metadata accessor for OasisAnalyticsPinchEvent;
      v22 = v16;
      break;
    case 2:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v21 = type metadata accessor for OasisAnalyticsHandUserViewEvent;
      v22 = v12;
      break;
    case 3:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v21 = type metadata accessor for OasisAnalyticsHandsPipelineFramerateEvent;
      v22 = v8;
      break;
    case 4:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v21 = type metadata accessor for OasisAnalyticsHandsSystemFramerateEvent;
      v22 = v4;
      break;
    default:
      swift_projectBox();
      sub_1936A53DC();
      OUTLINED_FUNCTION_63_13();
      v21 = type metadata accessor for OasisAnalyticsHandsSpeedEvent;
      v22 = v20;
      break;
  }

  sub_1936A56FC(v22, v21);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936A53DC()
{
  OUTLINED_FUNCTION_91_0();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_13_0();
  v3(v2);
  return v0;
}

void sub_1936A5498()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABFD8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBC0;
  v6 = v5 + v4 + dword_1EAEAC010;
  *(v5 + v4) = 0;
  *v6 = "OasisAnalyticsHandsFramerateModeUnknown";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  OUTLINED_FUNCTION_3_1(v5 + v4 + v2);
  OUTLINED_FUNCTION_69_6(v9);
  *v10 = "OasisAnalyticsHandsFramerateModeHigh";
  *(v10 + 8) = 36;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v11 = OUTLINED_FUNCTION_3_1(v5 + v4 + 2 * v2);
  *v12 = 2;
  *v11 = "OasisAnalyticsHandsFramerateModeMedium";
  *(v11 + 8) = 38;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v13 = OUTLINED_FUNCTION_3_1(v5 + v4 + 3 * v2);
  *v14 = 3;
  *v13 = "OasisAnalyticsHandsFramerateModeLow";
  *(v13 + 8) = 35;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936A56A4()
{
  OUTLINED_FUNCTION_91_0();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_13_0();
  v3(v2);
  return v0;
}

uint64_t sub_1936A56FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_36_23()
{

  sub_1936A3B98();
}

uint64_t OUTLINED_FUNCTION_39_24()
{
}

uint64_t OUTLINED_FUNCTION_41_21()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_63_13()
{

  sub_193447600();
}

void OasisAnalyticsHandsSpeedEvent.payload.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for OasisAnalyticsHandsSpeedEvent(v1);
  OUTLINED_FUNCTION_71_0();
  v3 = *v2;
  v4 = *(v2 + 2);
  v5 = *(v2 + 12);
  LOBYTE(v2) = *(v2 + 13);
  *v0 = v3;
  *(v0 + 12) = v5;
  *(v0 + 8) = v4;
  *(v0 + 13) = v2;
}

void OasisAnalyticsHandsSpeedEvent.payload.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  v4 = *(a1 + 13);
  type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  OUTLINED_FUNCTION_71_0();
  *v5 = v1;
  *(v5 + 12) = v3;
  *(v5 + 8) = v2;
  *(v5 + 13) = v4;
}

uint64_t OasisAnalyticsHandsSpeedEvent.payload.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandsSpeedEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsSpeedEvent.qualityTrace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for OasisAnalyticsHandsSpeedEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t OasisAnalyticsHandsSpeedEvent.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for OasisAnalyticsMetadata(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = type metadata accessor for OasisAnalyticsHandsSpeedEvent(0);
  v7 = *(v6 + 20);
  *(v0 + v7) = 0;
  *(v0 + v7 + 8) = 0;
  *(v0 + v7 + 12) = 256;
  v8 = v0 + *(v6 + 24);
  *(v8 + 16) = 256;
  *v8 = 0;
  *(v8 + 8) = 0;
  sub_19344E6DC(v0, &qword_1EAE402A8, &qword_19397B638);
  v9 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
  *(v0 + v7) = 0;
  *(v0 + v7 + 12) = 256;
  *(v0 + v7 + 8) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 256;
  return result;
}