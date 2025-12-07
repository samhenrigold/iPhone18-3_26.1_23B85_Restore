uint64_t sub_193628D34(uint64_t a1)
{
  sub_19393CAB0();
  AdAttributionKitPurchase.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193628D74()
{
  result = qword_1EAE3F440;
  if (!qword_1EAE3F440)
  {
    type metadata accessor for AdAttributionKitPurchase(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F440);
  }

  return result;
}

uint64_t sub_193628DD8@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitInAppPurchaseType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193628E30@<X0>(uint64_t *a1@<X8>)
{
  result = static AdAttributionKitInAppPurchaseType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193628E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193628F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936290A4@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitInAppPurchaseSubscriptionDuration.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936290FC@<X0>(char **a1@<X8>)
{
  result = static AdAttributionKitInAppPurchaseSubscriptionDuration.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193629220(uint64_t a1)
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

    sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_19349D1FC(319, &qword_1ED506678, MEMORY[0x1E69E7360]);
    if (v10 > 0x3F)
    {
      return v9;
    }

    sub_19349D1FC(319, &qword_1ED506758, &type metadata for AdAttributionKitInAppPurchaseType);
    if (v11 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, qword_1ED504950, &type metadata for AdAttributionKitInAppPurchaseSubscriptionDuration);
    if (v12 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_193629400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511058);
  v4 = __swift_project_value_buffer(v3, qword_1ED511058);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.PlanResolutionTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_19362962C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193629670(void (*a1)(void))
{
  result = sub_19362962C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936296A0(uint64_t a1)
{
  result = sub_1936296C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936296C8()
{
  result = qword_1ED5068A0;
  if (!qword_1ED5068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068A0);
  }

  return result;
}

_BYTE *_s23PlanResolutionTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowPlanResolutionTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  sub_19393C090();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v3 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_5_42();
  sub_19362B864(v0, v7, v9);
  sub_1934470C8(v7, v3, v1);
  sub_19393C080();
  sub_193629994();
  sub_19393C250();
  v10 = OUTLINED_FUNCTION_245();
  v11(v10);
  sub_19344E6DC(v1, &qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_27();
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

unint64_t sub_193629994()
{
  result = qword_1EAE3F478;
  if (!qword_1EAE3F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3F470, &qword_193974808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F478);
  }

  return result;
}

uint64_t static IntelligenceFlowPlanResolutionTelemetry.event(from:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_19393C070();
  v4 = OUTLINED_FUNCTION_47(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_220();

  sub_19393C060();
  sub_193629994();
  result = sub_19393C260();
  if (!v2)
  {
    OUTLINED_FUNCTION_9_51();
    v7 = OUTLINED_FUNCTION_245();
    return sub_19362B504(v7, v8, v9);
  }

  return result;
}

void static IntelligenceFlowPlanResolutionTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v32 = v2;
  v33 = v1;
  v31 = v3;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  if (*sub_193630BD4() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    (*(v11 + 16))(v15, v18, v9);
    v19 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v19, v20);
    sub_193629994();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v11 + 8))(v18, v9);
    if (!v0)
    {
      OUTLINED_FUNCTION_9_51();
      v23 = v32;
      sub_19362B504(v8, v32, v24);
      v25 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
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
    *v22 = v5;
    *(v22 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.serialize()()
{
  v3 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_5_42();
  sub_19362B864(v0, v1, v6);
  sub_1934470C8(v1, v3, v2);
  sub_193629994();
  sub_19393C290();
  sub_19344E6DC(v2, &qword_1EAE3F470, &qword_193974808);
  return OUTLINED_FUNCTION_13_0();
}

void sub_193629F60()
{
  OUTLINED_FUNCTION_26();
  v83 = v2;
  v84 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v77 - v9;
  v78 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v77 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v77 - v15;
  v81 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v80 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_47(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  v23 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_47(v28);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_3();
  v30 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v33 = v6 == v32 && v4 == v31;
  if (v33 || (sub_19393CA30() & 1) != 0)
  {
    v34 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
    v35 = OUTLINED_FUNCTION_35_3(*(v34 + 28));
    sub_193448758(v35, v1, v36, v37);
    OUTLINED_FUNCTION_6_3(v1, 1, v30);
    if (!v33)
    {
      sub_19362B504(v1, 0x74654D746E657665, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
      OUTLINED_FUNCTION_245();
      sub_193494798(v42, v43, v44);
      v45 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata;
      v46 = 0x74654D746E657665;
LABEL_10:
      sub_19344A6E0(v46, v45);
      goto LABEL_11;
    }

    v38 = &qword_1EAE3F480;
    v39 = &qword_193974810;
    v40 = v1;
    goto LABEL_9;
  }

  v47 = v6 == 0x4374736575716572 && v4 == 0xEE00747865746E6FLL;
  if (!v47 && (OUTLINED_FUNCTION_10_17(0x4374736575716572, 0xEE00747865746E6FLL) & 1) == 0)
  {
    v52 = v6 == 0x6F436C6C6143726ALL && v4 == 0xED0000747865746ELL;
    if (v52 || (OUTLINED_FUNCTION_10_17(0x6F436C6C6143726ALL, 0xED0000747865746ELL) & 1) != 0)
    {
      v53 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
      v54 = OUTLINED_FUNCTION_35_3(*(v53 + 36));
      v55 = v82;
      sub_193448758(v54, v82, v56, v57);
      v58 = v81;
      OUTLINED_FUNCTION_6_3(v55, 1, v81);
      if (!v33)
      {
        v62 = v55;
        v63 = v80;
        sub_19362B504(v62, v80, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
        sub_193494798(v58, &off_1F07D9580, v83);
        v64 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext;
LABEL_29:
        sub_19344A6E0(v63, v64);
        goto LABEL_11;
      }

      v59 = &qword_1EAE3F490;
      v60 = &qword_193974818;
    }

    else
    {
      v65 = v6 == 0xD000000000000012 && 0x8000000193A17A30 == v4;
      if (!v65 && (OUTLINED_FUNCTION_10_17(0xD000000000000012, 0x8000000193A17A30) & 1) == 0)
      {
        v72 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v72);
        v74 = v73;
        *v73 = v6;
        v73[1] = v4;
        v73[5] = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
        __swift_allocate_boxed_opaque_existential_1Tm(v74 + 2);
        OUTLINED_FUNCTION_5_42();
        sub_19362B864(v84, v75, v76);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }

      v66 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
      v67 = OUTLINED_FUNCTION_35_3(*(v66 + 40));
      v55 = v79;
      sub_193448758(v67, v79, v68, v69);
      v70 = v78;
      OUTLINED_FUNCTION_6_3(v55, 1, v78);
      if (!v33)
      {
        v71 = v55;
        v63 = v77;
        sub_19362B504(v71, v77, type metadata accessor for MonotonicTimestamp);
        sub_193494798(v70, &off_1F07BD958, v83);
        v64 = type metadata accessor for MonotonicTimestamp;
        goto LABEL_29;
      }

      v59 = &qword_1EAE3B498;
      v60 = &unk_193959120;
    }

    sub_19344E6DC(v55, v59, v60);
    v61 = v83;
    *v83 = 0u;
    *(v61 + 1) = 0u;
    goto LABEL_11;
  }

  v48 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  v49 = OUTLINED_FUNCTION_35_3(*(v48 + 32));
  sub_193448758(v49, v22, v50, v51);
  OUTLINED_FUNCTION_6_3(v22, 1, v23);
  if (!v33)
  {
    sub_19362B504(v22, v27, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
    sub_193494798(v23, &off_1F07D9570, v83);
    OUTLINED_FUNCTION_3_45();
    v46 = v27;
    goto LABEL_10;
  }

  v38 = &qword_1EAE3F488;
  v39 = &qword_193974B60;
  v40 = v22;
LABEL_9:
  sub_19344E6DC(v40, v38, v39);
  v41 = v83;
  *v83 = 0u;
  *(v41 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_19362A5DC()
{
  OUTLINED_FUNCTION_26();
  v42 = v1;
  v43 = v0;
  v3 = v2;
  v5 = v4;
  v41 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v23 = v5 == 0x7365757165526669 && v3 == 0xEB00000000644974;
  if (v23 || (OUTLINED_FUNCTION_0_18(0x7365757165526669, 0xEB00000000644974) & 1) != 0)
  {
    sub_193448758(v43, v14, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v14, 1, v15);
    if (!v23)
    {
      OUTLINED_FUNCTION_2_48();
      sub_19362B504(v14, v22, v26);
      sub_193494798(v15, &off_1F07C3F90, v41);
      OUTLINED_FUNCTION_1_51();
      v28 = v22;
LABEL_11:
      sub_19344A6E0(v28, v27);
      goto LABEL_12;
    }

    v24 = v14;
  }

  else
  {
    v29 = v5 == 0x64496E617073 && v3 == 0xE600000000000000;
    if (v29 || (OUTLINED_FUNCTION_0_18(0x64496E617073, 0xE600000000000000) & 1) != 0)
    {
      if ((*(v43 + *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0) + 20) + 8) & 1) == 0)
      {
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v30 = v5 == 1682535024 && v3 == 0xE400000000000000;
    if (!v30 && (OUTLINED_FUNCTION_0_18(1682535024, 0xE400000000000000) & 1) == 0)
    {
      v36 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v36);
      v38 = v37;
      *v37 = v5;
      v37[1] = v3;
      v37[5] = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38 + 2);
      sub_19362B864(v43, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_12;
    }

    v31 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
    v32 = OUTLINED_FUNCTION_35_3(*(v31 + 24));
    sub_193448758(v32, v11, v33, v34);
    OUTLINED_FUNCTION_6_3(v11, 1, v15);
    if (!v23)
    {
      OUTLINED_FUNCTION_2_48();
      sub_19362B504(v11, v19, v35);
      sub_193494798(v15, &off_1F07C3F90, v41);
      OUTLINED_FUNCTION_1_51();
      v28 = v19;
      goto LABEL_11;
    }

    v24 = v11;
  }

  sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  v25 = v41;
  *v41 = 0u;
  *(v25 + 1) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_19362A948()
{
  OUTLINED_FUNCTION_87_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_76_0();
  v8 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38();
  v11 = v4 == 0xD000000000000015 && v10 == v2;
  if (v11 || (OUTLINED_FUNCTION_0_18(0xD000000000000015, v10) & 1) != 0)
  {
    if (v0[4])
    {
LABEL_7:
      *v1 = 0u;
      *(v1 + 16) = 0u;
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v13 = v4 == 0xD000000000000011 && v12 == v2;
  if (v13 || (OUTLINED_FUNCTION_0_18(0xD000000000000011, v12) & 1) != 0)
  {
    if (v0[12])
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v14 = v4 == 0x6E656D6574617473 && v2 == 0xEB00000000644974;
  if (v14 || (OUTLINED_FUNCTION_0_18(0x6E656D6574617473, 0xEB00000000644974) & 1) != 0)
  {
    if (v0[20])
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v15 = v4 == 0x6C6379436E616C70 && v2 == 0xEB00000000644965;
  if (v15 || (OUTLINED_FUNCTION_0_18(0x6C6379436E616C70, 0xEB00000000644965) & 1) != 0)
  {
    v16 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
    sub_193448758(&v0[*(v16 + 28)], v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v8);
    if (v11)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_2_48();
    sub_19362B504(v3, v5, v17);
    OUTLINED_FUNCTION_19_3();
    sub_193494798(v18, v19, v20);
    OUTLINED_FUNCTION_1_51();
    sub_19344A6E0(v5, v21);
  }

  else
  {
    v22 = sub_19349AB64();
    v23 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
    v25 = OUTLINED_FUNCTION_75_2(v23, v24);
    *(v1 + 40) = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(v25);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
    sub_19362B864(v0, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
    *(v1 + 48) = 1;
    swift_willThrow();
  }
}

void sub_19362AC4C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  OUTLINED_FUNCTION_40_14();
  v6 = v6 && v5 == 0xE600000000000000;
  if (v6 || (v7 = v5, (sub_19393CA30() & 1) != 0))
  {
    if (v2)
    {
      *a2 = 0u;
      a2[1] = 0u;
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    v8 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v8);
    *v9 = a1;
    v9[1] = v7;
    OUTLINED_FUNCTION_16_8(v9, &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRRequestFailed);
  }
}

void sub_19362AD50(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  OUTLINED_FUNCTION_40_14();
  v6 = v6 && v5 == 0xE800000000000000;
  if (v6 || (v7 = v5, (sub_19393CA30() & 1) != 0))
  {
    if (v2)
    {
      *a2 = 0u;
      a2[1] = 0u;
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    v8 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v8);
    *v9 = a1;
    v9[1] = v7;
    OUTLINED_FUNCTION_16_8(v9, &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallStarted);
  }
}

uint64_t sub_19362AE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = 0x737473697865;
  v8 = *v4;
  v9 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v9 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v8 == 2)
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    v12 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 40) = a3;
    *(v13 + 16) = v8;
    *(v13 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

void sub_19362AF90()
{
  OUTLINED_FUNCTION_26();
  v74 = v1;
  v75 = v0;
  v3 = v2;
  v5 = v4;
  v73 = v6;
  v72 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v72 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v72 - v28;
  OUTLINED_FUNCTION_38();
  v31 = v5 == 0xD000000000000010 && v30 == v3;
  if (!v31 && (sub_19393CA30() & 1) == 0)
  {
    v47 = v5 == 0x6465646E65 && v3 == 0xE500000000000000;
    if (v47 || (sub_19393CA30() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_55();
      v48 = v75;
      sub_19362B864(v75, v27, v49);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v51 = sub_19349AB64();
        v52 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v51);
        OUTLINED_FUNCTION_11_27(v52, v53);
        OUTLINED_FUNCTION_0_55();
        sub_19362B864(v48, v54, v55);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        OUTLINED_FUNCTION_3_45();
        v39 = v27;
        goto LABEL_8;
      }

      if (*v27 == 3)
      {
LABEL_19:
        v50 = v73;
        *v73 = 0u;
        *(v50 + 1) = 0u;
        goto LABEL_31;
      }

      v60 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRRequestEnded;
      v61 = &off_1F07D9520;
    }

    else
    {
      v56 = v5 == 0x64656C696166 && v3 == 0xE600000000000000;
      if (!v56 && (sub_19393CA30() & 1) == 0)
      {
        v67 = sub_19349AB64();
        v68 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v67);
        OUTLINED_FUNCTION_11_27(v68, v69);
        OUTLINED_FUNCTION_0_55();
        sub_19362B864(v75, v70, v71);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_31;
      }

      OUTLINED_FUNCTION_0_55();
      v57 = v75;
      sub_19362B864(v75, v23, v58);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v62 = sub_19349AB64();
        v63 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v62);
        OUTLINED_FUNCTION_11_27(v63, v64);
        OUTLINED_FUNCTION_0_55();
        sub_19362B864(v57, v65, v66);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        OUTLINED_FUNCTION_3_45();
        v39 = v23;
        goto LABEL_8;
      }

      if (*(v23 + 10))
      {
        goto LABEL_19;
      }

      v59 = *(v23 + 8);
      v76 = *v23;
      v77 = v59 & 0x1FF;
      v60 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRRequestFailed;
      v61 = &off_1F07D9530;
    }

    sub_193494798(v60, v61, v73);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_55();
  v32 = v75;
  sub_19362B864(v75, v29, v33);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_19362B494(v29, v18);
    v40 = OUTLINED_FUNCTION_245();
    sub_193448758(v40, v41, v42, v43);
    v44 = v72;
    OUTLINED_FUNCTION_6_3(v15, 1, v72);
    if (!v31)
    {
      sub_19362B504(v15, v10, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      sub_193494798(v44, &off_1F07D9510, v73);
      sub_19344A6E0(v10, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      sub_19344E6DC(v18, &qword_1EAE3F498, &qword_193974820);
      goto LABEL_31;
    }

    sub_19344E6DC(v18, &qword_1EAE3F498, &qword_193974820);
    v45 = OUTLINED_FUNCTION_13_0();
    sub_19344E6DC(v45, v46, &qword_193974820);
    goto LABEL_19;
  }

  v34 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
  *v35 = v5;
  v35[1] = v3;
  v35[5] = v19;
  __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
  OUTLINED_FUNCTION_0_55();
  sub_19362B864(v32, v36, v37);
  OUTLINED_FUNCTION_15_24();
  swift_willThrow();

  OUTLINED_FUNCTION_3_45();
  v39 = v29;
LABEL_8:
  sub_19344A6E0(v39, v38);
LABEL_31:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19362B494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19362B504(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void sub_19362B578()
{
  OUTLINED_FUNCTION_87_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_76_0();
  v8 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38();
  v11 = v4 == 0xD000000000000010 && v10 == v2;
  if (v11 || (OUTLINED_FUNCTION_0_18(0xD000000000000010, v10) & 1) != 0)
  {
    if (v0[10])
    {
LABEL_7:
      *v1 = 0u;
      *(v1 + 16) = 0u;
      return;
    }

    v12 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallStarted;
    v13 = &off_1F07D9540;
    goto LABEL_9;
  }

  v14 = v4 == 0x6465646E65 && v2 == 0xE500000000000000;
  if (v14 || (OUTLINED_FUNCTION_0_18(0x6465646E65, 0xE500000000000000) & 1) != 0)
  {
    if (v0[11] == 3)
    {
      goto LABEL_7;
    }

    v12 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallEnded;
    v13 = &off_1F07D9550;
    goto LABEL_9;
  }

  v15 = v4 == 0x64656C696166 && v2 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_0_18(0x64656C696166, 0xE600000000000000) & 1) != 0)
  {
    if (v0[12] == 3)
    {
      goto LABEL_7;
    }

    v12 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallFailed;
    v13 = &off_1F07D9560;
LABEL_9:
    sub_193494798(v12, v13, v1);
    return;
  }

  v16 = v4 == 0x64496563617274 && v2 == 0xE700000000000000;
  if (v16 || (OUTLINED_FUNCTION_0_18(0x64496563617274, 0xE700000000000000) & 1) != 0)
  {
    v17 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
    sub_193448758(&v0[*(v17 + 28)], v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v8);
    if (v11)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_2_48();
    sub_19362B504(v3, v5, v18);
    OUTLINED_FUNCTION_19_3();
    sub_193494798(v19, v20, v21);
    OUTLINED_FUNCTION_1_51();
    sub_19344A6E0(v5, v22);
  }

  else
  {
    v23 = sub_19349AB64();
    v24 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v23);
    v26 = OUTLINED_FUNCTION_75_2(v24, v25);
    *(v1 + 40) = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(v26);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
    sub_19362B864(v0, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
    *(v1 + 48) = 1;
    swift_willThrow();
  }
}

uint64_t sub_19362B864(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193630D78();
  v6 = v2[8];
  sub_193630E60();
  v7 = v2[9];
  sub_193630F74();
  v8 = v2[10];
  sub_19344BA58();
  *a1 = *sub_193630BD4();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3F480, &qword_193974810);
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_19344E6DC(a1 + v6, &qword_1EAE3F488, &qword_193974B60);
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_19344E6DC(a1 + v7, &qword_1EAE3F490, &qword_193974818);
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_19344E6DC(a1 + v8, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v84 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v79 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  v80 = v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  v83 = v10;
  v89 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_289();
  v81 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_53_1();
  v85 = v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4A0, &qword_193974900);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  v88 = v17;
  v92 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_289();
  v86 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  v90 = v22;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4A8, &qword_193974908);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_105_8();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_47(v28);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v78 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4B0, &qword_193974910) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v78 - v34;
  v93 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  v94 = a1;
  v36 = *(v93 + 28);
  v37 = *(v32 + 56);
  sub_1934486F8(a1 + v36, v35, &qword_1EAE3F480, &qword_193974810);
  v38 = v95 + v36;
  v39 = v95;
  sub_1934486F8(v38, &v35[v37], &qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_31(v35);
  if (v40)
  {
    OUTLINED_FUNCTION_31(&v35[v37]);
    if (v40)
    {
      sub_19344E6DC(v35, &qword_1EAE3F480, &qword_193974810);
      goto LABEL_11;
    }

LABEL_9:
    v41 = &qword_1EAE3F4B0;
    v42 = &qword_193974910;
    v43 = v35;
LABEL_40:
    sub_19344E6DC(v43, v41, v42);
    return 0;
  }

  sub_1934486F8(v35, v31, &qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_31(&v35[v37]);
  if (v40)
  {
    sub_19344A738(v31, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
    goto LABEL_9;
  }

  sub_19362E170(&v35[v37], v27, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  OUTLINED_FUNCTION_13_26();
  sub_19344A924(v44, v45, &protocol conformance descriptor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  v46 = sub_19393C550();
  sub_19344A738(v27, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  sub_19344A738(v31, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  sub_19344E6DC(v35, &qword_1EAE3F480, &qword_193974810);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v48 = v93;
  v47 = v94;
  v49 = *(v93 + 32);
  v50 = *(v91 + 48);
  OUTLINED_FUNCTION_25_6(v94 + v49, v2);
  OUTLINED_FUNCTION_25_6(v39 + v49, v2 + v50);
  v51 = v92;
  OUTLINED_FUNCTION_6_3(v2, 1, v92);
  if (v40)
  {
    OUTLINED_FUNCTION_31(v2 + v50);
    if (v40)
    {
      sub_19344E6DC(v2, &qword_1EAE3F488, &qword_193974B60);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v52 = v90;
  sub_1934486F8(v2, v90, &qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_31(v2 + v50);
  if (v53)
  {
    OUTLINED_FUNCTION_11_28();
    sub_19344A738(v52, v54);
LABEL_19:
    v41 = &qword_1EAE3F4A8;
    v42 = &qword_193974908;
    v43 = v2;
    goto LABEL_40;
  }

  sub_19362E170(v2 + v50, v86, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
  OUTLINED_FUNCTION_10_38();
  sub_19344A924(v55, v56, &protocol conformance descriptor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
  OUTLINED_FUNCTION_175_0();
  sub_19393C550();
  OUTLINED_FUNCTION_33_17();
  sub_19344A738(v52, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
  sub_19344E6DC(v2, &qword_1EAE3F488, &qword_193974B60);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v57 = *(v48 + 36);
  v58 = v88;
  v59 = *(v87 + 48);
  OUTLINED_FUNCTION_25_6(v47 + v57, v88);
  OUTLINED_FUNCTION_25_6(v39 + v57, v58 + v59);
  v60 = v89;
  OUTLINED_FUNCTION_6_3(v58, 1, v89);
  if (v40)
  {
    OUTLINED_FUNCTION_31(v58 + v59);
    if (v40)
    {
      sub_19344E6DC(v58, &qword_1EAE3F490, &qword_193974818);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v61 = v85;
  sub_1934486F8(v58, v85, &qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_31(v58 + v59);
  if (v62)
  {
    sub_19344A738(v61, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
LABEL_29:
    v41 = &qword_1EAE3F4A0;
    v42 = &qword_193974900;
    v43 = v58;
    goto LABEL_40;
  }

  sub_19362E170(v58 + v59, v81, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
  OUTLINED_FUNCTION_15_34();
  sub_19344A924(v63, v64, &protocol conformance descriptor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
  OUTLINED_FUNCTION_175_0();
  sub_19393C550();
  OUTLINED_FUNCTION_33_17();
  sub_19344A738(v61, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
  sub_19344E6DC(v58, &qword_1EAE3F490, &qword_193974818);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v65 = *(v48 + 40);
  v66 = *(v82 + 48);
  v67 = v47 + v65;
  v68 = v83;
  OUTLINED_FUNCTION_25_6(v67, v83);
  v69 = v39 + v65;
  v70 = v68;
  OUTLINED_FUNCTION_25_6(v69, v68 + v66);
  v71 = v84;
  OUTLINED_FUNCTION_6_3(v68, 1, v84);
  if (v40)
  {
    OUTLINED_FUNCTION_31(v68 + v66);
    if (v40)
    {
      sub_19344E6DC(v68, &qword_1EAE3B498, &unk_193959120);
      return 1;
    }

    goto LABEL_39;
  }

  v72 = v68;
  v73 = v80;
  sub_1934486F8(v72, v80, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(v70 + v66);
  if (v74)
  {
    sub_19344A738(v73, type metadata accessor for MonotonicTimestamp);
LABEL_39:
    v41 = &qword_1EAE3B958;
    v42 = &qword_193957B50;
    v43 = v70;
    goto LABEL_40;
  }

  sub_19362E170(v70 + v66, v79, type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_14_29();
  sub_19344A924(v76, v77, &protocol conformance descriptor for MonotonicTimestamp);
  sub_19393C550();
  OUTLINED_FUNCTION_33_17();
  sub_19344A738(v73, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v70, &qword_1EAE3B498, &unk_193959120);
  return (v71 & 1) != 0;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.hash(into:)(uint64_t a1)
{
  v52 = a1;
  v55 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  v50 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_53_1();
  v54 = v7;
  v53 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_289();
  v49 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v51 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_289();
  v48 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_47(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_105_8();
  v18 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_47(v23);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  v27 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_2_0();
  sub_1934486F8(v28, v29, v30, &qword_193974810);
  OUTLINED_FUNCTION_6_3(v26, 1, v18);
  if (v31)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19362E170(v26, v22, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
    sub_19393CAD0();
    OUTLINED_FUNCTION_13_26();
    sub_19344A924(v32, v33, &protocol conformance descriptor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
    sub_19393C540();
    sub_19344A738(v22, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  }

  sub_1934486F8(v1 + v27[8], v2, &qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_6_3(v2, 1, v51);
  v34 = v53;
  if (v31)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19362E170(v2, v48, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
    sub_19393CAD0();
    OUTLINED_FUNCTION_10_38();
    sub_19344A924(v35, v36, &protocol conformance descriptor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
    sub_19393C540();
    v37 = OUTLINED_FUNCTION_175_0();
    sub_19344A738(v37, v38);
  }

  v39 = v55;
  sub_1934486F8(v1 + v27[9], v13, &qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_6_3(v13, 1, v34);
  if (v31)
  {
    sub_19393CAD0();
  }

  else
  {
    v40 = v49;
    sub_19362E170(v13, v49, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
    sub_19393CAD0();
    OUTLINED_FUNCTION_15_34();
    sub_19344A924(v41, v42, &protocol conformance descriptor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
    sub_19393C540();
    sub_19344A738(v40, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
  }

  v43 = v54;
  sub_1934486F8(v1 + v27[10], v54, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_6_3(v43, 1, v39);
  if (v31)
  {
    return sub_19393CAD0();
  }

  v44 = v50;
  sub_19362E170(v43, v50, type metadata accessor for MonotonicTimestamp);
  sub_19393CAD0();
  OUTLINED_FUNCTION_14_29();
  sub_19344A924(v45, v46, &protocol conformance descriptor for MonotonicTimestamp);
  sub_19393C540();
  return sub_19344A738(v44, type metadata accessor for MonotonicTimestamp);
}

void IntelligenceFlowPlanResolutionTelemetry.PRFatalError.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 0;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 1;
      break;
    case 8:
      v2 = 2;
      break;
    case 9:
      v2 = 3;
      break;
    case 10:
      v2 = 4;
      break;
    case 11:
      v2 = 5;
      break;
    case 12:
      v2 = 6;
      break;
    case 14:
      v2 = 7;
      break;
    case 15:
      v2 = 8;
      break;
    case 16:
      v2 = 9;
      break;
    case 17:
      v2 = 10;
      break;
    case 18:
      v2 = 11;
      break;
    case 19:
      v2 = 12;
      break;
    case 20:
      v2 = 13;
      break;
    case 21:
      v2 = 14;
      break;
    case 22:
      v2 = 15;
      break;
    case 23:
      v2 = 16;
      break;
    case 24:
      v2 = 17;
      break;
    case 25:
      v2 = 18;
      break;
    default:
      v2 = a2;
      break;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRFatalError.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1939749F0[result];
  }

  return result;
}

uint64_t static IntelligenceFlowPlanResolutionTelemetry.PRFatalError.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F540, &qword_1939749E8);
  v3 = v0;
  v5 = *(v0 + 2);
  v4 = *(v0 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v109 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_84_2(v109, v110, v111, v112, &qword_1EAE3F540, &qword_1939749E8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v113 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_85(v113, v114, v115, v116, &qword_1EAE3F540, &qword_1939749E8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v117 = OUTLINED_FUNCTION_39(v4);
    v0 = sub_1934B0FCC(v117, v5 + 3, 1, v118, &qword_1EAE3F540, &qword_1939749E8);
    v3 = v0;
  }

  *(v3 + 16) = v11;
  v12 = v3 + 16 * v9;
  *(v12 + 32) = 1;
  *(v12 + 40) = 1;
  v13 = *(v3 + 24);
  if ((v5 + 4) > (v13 >> 1))
  {
    v119 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_84_2(v119, v120, v121, v122, &qword_1EAE3F540, &qword_1939749E8);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 4;
  v14 = v3 + 16 * v11;
  *(v14 + 32) = 2;
  *(v14 + 40) = 1;
  v15 = *(v3 + 24);
  if ((v5 + 5) > (v15 >> 1))
  {
    v123 = OUTLINED_FUNCTION_39(v15);
    v0 = OUTLINED_FUNCTION_85(v123, v124, v125, v126, &qword_1EAE3F540, &qword_1939749E8);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_4(v16);
  if ((v5 + 6) > (v21 >> 1))
  {
    v127 = OUTLINED_FUNCTION_39(v21);
    v17 = OUTLINED_FUNCTION_84_2(v127, v128, v129, v130, &qword_1EAE3F540, &qword_1939749E8);
    v20 = v17;
  }

  OUTLINED_FUNCTION_50(v17, v18, v19, v20);
  OUTLINED_FUNCTION_4(v22);
  if ((v5 + 7) > (v27 >> 1))
  {
    v131 = OUTLINED_FUNCTION_39(v27);
    v23 = OUTLINED_FUNCTION_85(v131, v132, v133, v134, &qword_1EAE3F540, &qword_1939749E8);
    v26 = v23;
  }

  OUTLINED_FUNCTION_47_5(v23, v24, v25, v26);
  OUTLINED_FUNCTION_4(v28);
  if ((v5 + 8) > (v33 >> 1))
  {
    v135 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_84_2(v135, v136, v137, v138, &qword_1EAE3F540, &qword_1939749E8);
    v32 = v29;
  }

  OUTLINED_FUNCTION_50(v29, v30, v31, v32);
  OUTLINED_FUNCTION_4(v34);
  if ((v5 + 9) > (v39 >> 1))
  {
    v139 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_85(v139, v140, v141, v142, &qword_1EAE3F540, &qword_1939749E8);
    v38 = v35;
  }

  OUTLINED_FUNCTION_47_5(v35, v36, v37, v38);
  OUTLINED_FUNCTION_4(v40);
  if ((v5 + 10) > (v45 >> 1))
  {
    v143 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_84_2(v143, v144, v145, v146, &qword_1EAE3F540, &qword_1939749E8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_50(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if ((v5 + 11) > (v51 >> 1))
  {
    v147 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_85(v147, v148, v149, v150, &qword_1EAE3F540, &qword_1939749E8);
    v50 = v47;
  }

  OUTLINED_FUNCTION_47_5(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if ((v5 + 12) > (v57 >> 1))
  {
    v151 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_84_2(v151, v152, v153, v154, &qword_1EAE3F540, &qword_1939749E8);
    v56 = v53;
  }

  OUTLINED_FUNCTION_50(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  if ((v5 + 13) > (v63 >> 1))
  {
    v155 = OUTLINED_FUNCTION_39(v63);
    v59 = OUTLINED_FUNCTION_85(v155, v156, v157, v158, &qword_1EAE3F540, &qword_1939749E8);
    v62 = v59;
  }

  OUTLINED_FUNCTION_47_5(v59, v60, v61, v62);
  OUTLINED_FUNCTION_4(v64);
  if ((v5 + 14) > (v69 >> 1))
  {
    v159 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v159, v160, v161, v162, &qword_1EAE3F540, &qword_1939749E8);
    v68 = v65;
  }

  OUTLINED_FUNCTION_50(v65, v66, v67, v68);
  OUTLINED_FUNCTION_4(v70);
  if ((v5 + 15) > (v75 >> 1))
  {
    v163 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v163, v164, v165, v166, &qword_1EAE3F540, &qword_1939749E8);
    v74 = v71;
  }

  OUTLINED_FUNCTION_47_5(v71, v72, v73, v74);
  OUTLINED_FUNCTION_4(v76);
  if ((v5 + 16) > (v81 >> 1))
  {
    v167 = OUTLINED_FUNCTION_39(v81);
    v77 = OUTLINED_FUNCTION_84_2(v167, v168, v169, v170, &qword_1EAE3F540, &qword_1939749E8);
    v80 = v77;
  }

  OUTLINED_FUNCTION_50(v77, v78, v79, v80);
  OUTLINED_FUNCTION_4(v82);
  if ((v5 + 17) > (v87 >> 1))
  {
    v171 = OUTLINED_FUNCTION_39(v87);
    v83 = OUTLINED_FUNCTION_85(v171, v172, v173, v174, &qword_1EAE3F540, &qword_1939749E8);
    v86 = v83;
  }

  OUTLINED_FUNCTION_47_5(v83, v84, v85, v86);
  OUTLINED_FUNCTION_4(v88);
  if ((v5 + 18) > (v93 >> 1))
  {
    v175 = OUTLINED_FUNCTION_39(v93);
    v89 = OUTLINED_FUNCTION_84_2(v175, v176, v177, v178, &qword_1EAE3F540, &qword_1939749E8);
    v92 = v89;
  }

  OUTLINED_FUNCTION_50(v89, v90, v91, v92);
  OUTLINED_FUNCTION_4(v94);
  if ((v5 + 19) > (v99 >> 1))
  {
    v179 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_85(v179, v180, v181, v182, &qword_1EAE3F540, &qword_1939749E8);
    v98 = v95;
  }

  OUTLINED_FUNCTION_47_5(v95, v96, v97, v98);
  OUTLINED_FUNCTION_4(v100);
  if ((v5 + 20) > (v105 >> 1))
  {
    v183 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_84_2(v183, v184, v185, v186, &qword_1EAE3F540, &qword_1939749E8);
    v104 = v101;
  }

  OUTLINED_FUNCTION_50(v101, v102, v103, v104);
  *(v106 + 32) = 18;
  *(v106 + 40) = 1;
  return v107;
}

unint64_t IntelligenceFlowPlanResolutionTelemetry.PRFatalError.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x46746F4E6C6F6F54;
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_187_1();
      result = v4 | 6;
      break;
    case 2:
      return result;
    case 3:
    case 0x10:
    case 0x11:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = OUTLINED_FUNCTION_35_22();
      break;
    case 6:
      result = OUTLINED_FUNCTION_30_17();
      break;
    case 7:
    case 0xCLL:
    case 0x12:
      OUTLINED_FUNCTION_187_1();
      result = v6 | 3;
      break;
    case 8:
      result = OUTLINED_FUNCTION_29_19();
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xALL:
      OUTLINED_FUNCTION_187_1();
      result = v7 | 0xC;
      break;
    case 0xBLL:
      OUTLINED_FUNCTION_187_1();
      result = v3 | 4;
      break;
    case 0xDLL:
      OUTLINED_FUNCTION_187_1();
      result = v5 | 2;
      break;
    case 0xELL:
      OUTLINED_FUNCTION_187_1();
      result = v2 | 1;
      break;
    case 0xFLL:
      result = OUTLINED_FUNCTION_31_26();
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRFatalError.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_60();
  v10 = v5 && v9 == v1;
  if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v9) & 1) != 0)
  {

    v7 = 0;
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v11 = v2 == 0xD000000000000016 && 0x8000000193A2A2F0 == v1;
  if (v11 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, 0x8000000193A2A2F0) & 1) != 0)
  {

    v7 = 1;
    goto LABEL_13;
  }

  v12 = v2 == 0x46746F4E6C6F6F54 && v1 == 0xEC000000646E756FLL;
  if (v12 || (OUTLINED_FUNCTION_0_9(0x46746F4E6C6F6F54, 0xEC000000646E756FLL) & 1) != 0)
  {

    v8 = 1;
    v7 = 2;
  }

  else
  {
    v13 = v2 == 0xD000000000000015 && 0x8000000193A2A2D0 == v1;
    if (v13 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A2A2D0) & 1) != 0)
    {

      v8 = 1;
      v7 = 3;
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v15 = v5 && v14 == v1;
      if (v15 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v14) & 1) != 0)
      {

        v8 = 1;
        v7 = 4;
      }

      else
      {
        v16 = OUTLINED_FUNCTION_35_22();
        v18 = v2 == v16 && v1 == v17;
        if (v18 || (OUTLINED_FUNCTION_0_9(v16, v17) & 1) != 0)
        {

          v8 = 1;
          v7 = 5;
        }

        else
        {
          v19 = OUTLINED_FUNCTION_30_17();
          v21 = v2 == v19 && v1 == v20;
          if (v21 || (OUTLINED_FUNCTION_0_9(v19, v20) & 1) != 0)
          {

            v8 = 1;
            v7 = 6;
          }

          else
          {
            OUTLINED_FUNCTION_187_1();
            v24 = v2 == v23 + 3 && v22 == v1;
            if (v24 || (OUTLINED_FUNCTION_0_9(v23 + 3, v22) & 1) != 0)
            {

              v8 = 1;
              v7 = 7;
            }

            else
            {
              v25 = OUTLINED_FUNCTION_29_19();
              v27 = v2 == v25 && v1 == v26;
              if (v27 || (OUTLINED_FUNCTION_0_9(v25, v26) & 1) != 0)
              {

                v8 = 1;
                v7 = 8;
              }

              else
              {
                OUTLINED_FUNCTION_187_1();
                v30 = v2 == v29 && v28 == v1;
                if (v30 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v28) & 1) != 0)
                {

                  v8 = 1;
                  v7 = 9;
                }

                else
                {
                  OUTLINED_FUNCTION_187_1();
                  v33 = v2 == v32 + 12 && v31 == v1;
                  if (v33 || (OUTLINED_FUNCTION_0_9(v32 + 12, v31) & 1) != 0)
                  {

                    v8 = 1;
                    v7 = 10;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_187_1();
                    v36 = v2 == v35 + 4 && v34 == v1;
                    if (v36 || (OUTLINED_FUNCTION_0_9(v35 + 4, v34) & 1) != 0)
                    {

                      v8 = 1;
                      v7 = 11;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_60();
                      v38 = v5 && v37 == v1;
                      if (v38 || (OUTLINED_FUNCTION_39_6(), (OUTLINED_FUNCTION_0_9(v39 + 3, v40) & 1) != 0))
                      {

                        v8 = 1;
                        v7 = 12;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_187_1();
                        v43 = v2 == v42 + 2 && v41 == v1;
                        if (v43 || (OUTLINED_FUNCTION_0_9(v42 + 2, v41) & 1) != 0)
                        {

                          v8 = 1;
                          v7 = 13;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_187_1();
                          v46 = v2 == v45 + 1 && v44 == v1;
                          if (v46 || (OUTLINED_FUNCTION_0_9(v45 + 1, v44) & 1) != 0)
                          {

                            v8 = 1;
                            v7 = 14;
                          }

                          else
                          {
                            v47 = OUTLINED_FUNCTION_31_26();
                            v49 = v2 == v47 && v1 == v48;
                            if (v49 || (OUTLINED_FUNCTION_0_9(v47, v48) & 1) != 0)
                            {

                              v8 = 1;
                              v7 = 15;
                            }

                            else
                            {
                              v50 = v2 == 0xD000000000000015 && 0x8000000193A2A1B0 == v1;
                              if (v50 || (OUTLINED_FUNCTION_39_6(), (OUTLINED_FUNCTION_0_9(v51 + 5, v52) & 1) != 0))
                              {

                                v8 = 1;
                                v7 = 16;
                              }

                              else
                              {
                                v53 = v2 == 0xD000000000000015 && 0x8000000193A2A190 == v1;
                                if (v53 || (OUTLINED_FUNCTION_39_6(), (OUTLINED_FUNCTION_0_9(v54 + 5, v55) & 1) != 0))
                                {

                                  v8 = 1;
                                  v7 = 17;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_60();
                                  if (v5 && v56 == v1)
                                  {

                                    v8 = 1;
                                    v7 = 18;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_39_6();
                                    v8 = OUTLINED_FUNCTION_0_9(v58 + 3, v59);

                                    v7 = 18;
                                    if ((v8 & 1) == 0)
                                    {
                                      v7 = 0;
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

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

void IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.rawValue.getter()
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

uint64_t static IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F538, &qword_1939749E0);
  v3 = v0;
  v5 = *(v0 + 2);
  v4 = *(v0 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v13 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_84_2(v13, v14, v15, v16, &qword_1EAE3F538, &qword_1939749E0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  if (v6 < (v5 + 2))
  {
    v17 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_85(v17, v18, v19, v20, &qword_1EAE3F538, &qword_1939749E0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v5 + 2;
  v9 = v3 + 16 * v7;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  if (v6 < (v5 + 3))
  {
    v21 = OUTLINED_FUNCTION_39(v4);
    v0 = OUTLINED_FUNCTION_84_2(v21, v22, v23, v24, &qword_1EAE3F538, &qword_1939749E0);
    v3 = v0;
  }

  OUTLINED_FUNCTION_50(v0, v1, v2, v3);
  *(v10 + 32) = 1;
  *(v10 + 40) = 1;
  return v11;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0xD000000000000010;
  }

  return 0x6F7365526C6F6F54;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.init(_:)()
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
    v9 = v2 == 0x6F7365526C6F6F54 && v1 == 0xEE006E6F6974756CLL;
    if (v9 || (OUTLINED_FUNCTION_0_9(0x6F7365526C6F6F54, 0xEE006E6F6974756CLL) & 1) != 0)
    {

      v7 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_39_6();
      if (v2 != v10 || 0x8000000193A2A270 != v1)
      {
        v8 = OUTLINED_FUNCTION_0_9(0xD000000000000010, 0x8000000193A2A270);

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

uint64_t static IntelligenceFlowPlanResolutionTelemetry.PRRequestContext.== infix(_:_:)(char *a1, char *a2)
{
  v65 = a1;
  v66 = a2;
  v64 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v62 = v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4E8, &qword_193974918);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_105_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - v15;
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4F0, &qword_193974920);
  OUTLINED_FUNCTION_47(v24);
  OUTLINED_FUNCTION_3_0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v61 - v27;
  v29 = &v61 + *(v26 + 56) - v27;
  sub_19362E064(v65, &v61 - v27);
  sub_19362E064(v66, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_19362E064(v28, v21);
      v31 = *v21;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = *v29;
        if (v31 == 3)
        {
          v33 = v32 == 3;
LABEL_26:
          OUTLINED_FUNCTION_11_28();
          sub_19344A738(v28, v46);
          return v33 & 1;
        }

        LOBYTE(v69) = v31;
        if (v32 != 3)
        {
          LOBYTE(v67) = v32;
          sub_19362E11C();
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_19362E064(v28, v2);
      v36 = *v2;
      v37 = *(v2 + 8);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v38 = *(v2 + 10);
        v33 = v29[10];
        if (v38)
        {
          goto LABEL_26;
        }

        v39 = *v29;
        v40 = *(v29 + 4);
        v69 = v36;
        v70 = v37;
        v71 = 0;
        if ((v33 & 1) == 0)
        {
          v67 = v39;
          v68 = v40 & 0x1FF;
          sub_19362E0C8();
LABEL_20:
          v33 = sub_19393C550();
          goto LABEL_26;
        }

LABEL_25:
        v33 = 0;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v65 = v14;
    v66 = v16;
    v34 = v63;
    v35 = v64;
    sub_19362E064(v28, v23);
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = v66;
      sub_19362B494(v23, v66);
      v42 = v29;
      v43 = v65;
      sub_19362B494(v42, v65);
      v44 = *(v34 + 48);
      sub_1934486F8(v41, v3, &qword_1EAE3F498, &qword_193974820);
      sub_1934486F8(v43, v3 + v44, &qword_1EAE3F498, &qword_193974820);
      OUTLINED_FUNCTION_6_3(v3, 1, v35);
      if (v45)
      {
        OUTLINED_FUNCTION_47_7(v43);
        OUTLINED_FUNCTION_47_7(v41);
        OUTLINED_FUNCTION_6_3(v3 + v44, 1, v35);
        if (v45)
        {
          sub_19344E6DC(v3, &qword_1EAE3F498, &qword_193974820);
          v33 = 1;
          goto LABEL_26;
        }
      }

      else
      {
        sub_1934486F8(v3, v11, &qword_1EAE3F498, &qword_193974820);
        OUTLINED_FUNCTION_6_3(v3 + v44, 1, v35);
        if (!v45)
        {
          sub_19362E170(v3 + v44, v62, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
          OUTLINED_FUNCTION_9_52();
          sub_19344A924(v48, v49, &protocol conformance descriptor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
          v33 = sub_19393C550();
          v50 = OUTLINED_FUNCTION_175_0();
          sub_19344A738(v50, v51);
          OUTLINED_FUNCTION_2_0();
          sub_19344E6DC(v52, v53, v54);
          OUTLINED_FUNCTION_2_0();
          sub_19344E6DC(v55, v56, v57);
          sub_19344A738(v11, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
          OUTLINED_FUNCTION_2_0();
          sub_19344E6DC(v58, v59, v60);
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_47_7(v65);
        OUTLINED_FUNCTION_47_7(v66);
        sub_19344A738(v11, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      }

      sub_19344E6DC(v3, &qword_1EAE3F4E8, &qword_193974918);
      goto LABEL_25;
    }

    sub_19344E6DC(v23, &qword_1EAE3F498, &qword_193974820);
  }

  sub_19344E6DC(v28, &qword_1EAE3F4F0, &qword_193974920);
  v33 = 0;
  return v33 & 1;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestContext.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-v10];
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  sub_19362E064(v1, v14 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (*v15 != 3)
      {
        v22[15] = *v15;
        sub_19393CAD0();
        sub_19362E224();
        return sub_19393C540();
      }
    }

    else if (*(v15 + 10) != 1)
    {
      v21 = *(v15 + 8);
      v23 = *v15;
      v24 = v21 & 0x1FF;
      sub_19393CAD0();
      sub_19362E1D0();
      return sub_19393C540();
    }

    return sub_19393CAD0();
  }

  sub_19362B494(v15, v11);
  sub_1934486F8(v11, v1, &qword_1EAE3F498, &qword_193974820);
  OUTLINED_FUNCTION_6_3(v1, 1, v2);
  if (v17)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19362E170(v1, v6, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
    sub_19393CAD0();
    OUTLINED_FUNCTION_9_52();
    sub_19344A924(v19, v20, &protocol conformance descriptor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
    sub_19393C540();
    sub_19344A738(v6, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
  }

  return sub_19344E6DC(v11, &qword_1EAE3F498, &qword_193974820);
}

uint64_t sub_19362E064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19362E0C8()
{
  result = qword_1EAE3F4F8;
  if (!qword_1EAE3F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F4F8);
  }

  return result;
}

unint64_t sub_19362E11C()
{
  result = qword_1EAE3F500;
  if (!qword_1EAE3F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F500);
  }

  return result;
}

uint64_t sub_19362E170(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_19362E1D0()
{
  result = qword_1EAE3F510;
  if (!qword_1EAE3F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F510);
  }

  return result;
}

unint64_t sub_19362E224()
{
  result = qword_1EAE3F518;
  if (!qword_1EAE3F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F518);
  }

  return result;
}

unint64_t sub_19362E27C()
{
  result = qword_1EAE3F528;
  if (!qword_1EAE3F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F528);
  }

  return result;
}

unint64_t sub_19362E2D4()
{
  result = qword_1EAE3F530;
  if (!qword_1EAE3F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F530);
  }

  return result;
}

void sub_19362E328()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB678);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  *v0 = "eventMetadata";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_52();
  *v8 = 10;
  v9 = OUTLINED_FUNCTION_0_0(v7, "requestContext");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_46_10();
  *v11 = 12;
  *v10 = "jrCallContext";
  v10[1] = 13;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_45_2(3 * v3);
  *v14 = 1001;
  v15 = OUTLINED_FUNCTION_0_0(v13, "monotonicTimestamp");
  (v6)(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19362E4C8()
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
      case 1001:
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
        type metadata accessor for MonotonicTimestamp(0);
        OUTLINED_FUNCTION_42_4();
LABEL_12:
        sub_193498018();
        break;
      case 10:
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_12;
      case 12:
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_12;
      case 1:
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19362E5D4()
{
  OUTLINED_FUNCTION_46_5();
  sub_19362E634();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_19362E754();
    OUTLINED_FUNCTION_46_5();
    sub_19362E864();
    OUTLINED_FUNCTION_46_5();
    sub_19362E984();
  }
}

void sub_19362E634()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_18();
  v10 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v10 + 28));
  OUTLINED_FUNCTION_20_10();
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3F480, &qword_193974810);
  }

  else
  {
    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_17(v1, 1);
    sub_193630B4C(v1, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362E754()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_18();
  v10 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v10 + 32));
  OUTLINED_FUNCTION_20_10();
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3F488, &qword_193974B60);
  }

  else
  {
    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_17(v1, 10);
    OUTLINED_FUNCTION_4_44();
    sub_193630B4C(v1, v12);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362E864()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_18();
  v10 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v10 + 36));
  OUTLINED_FUNCTION_20_10();
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3F490, &qword_193974818);
  }

  else
  {
    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_17(v1, 12);
    sub_193630B4C(v1, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362E984()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  type metadata accessor for MonotonicTimestamp(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_18();
  v10 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v10 + 40));
  OUTLINED_FUNCTION_20_10();
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_17(v1, 1001);
    sub_193630B4C(v1, type metadata accessor for MonotonicTimestamp);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362EB08()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEAB690);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_193961690;
  v6 = v65 + v5;
  *(v65 + v5) = 0;
  OUTLINED_FUNCTION_63("PRFatalErrorUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_52();
  *v10 = 1;
  *v9 = "PRFatalErrorMissingStatement";
  v9[1] = 28;
  v11 = OUTLINED_FUNCTION_1_3(v9);
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_46_10();
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_0_0(v12, "PRFatalErrorMissingTranscriptEvent");
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_45_2(3 * v3);
  *v16 = 8;
  v17 = OUTLINED_FUNCTION_0_0(v15, "PRFatalErrorToolNotFound");
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v6 + 4 * v3);
  *v19 = 9;
  v20 = OUTLINED_FUNCTION_0_0(v18, "PRFatalErrorToolParameterNotFound");
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v22 = 10;
  *v21 = "PRFatalErrorEnumCaseNotFound";
  v21[1] = 28;
  v23 = OUTLINED_FUNCTION_1_3(v21);
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v6 + 6 * v3);
  *v25 = 11;
  v26 = OUTLINED_FUNCTION_0_0(v24, "PRFatalErrorNotIterable");
  (v8)(v26);
  v27 = OUTLINED_FUNCTION_45_2(7 * v3);
  *v28 = 12;
  v29 = OUTLINED_FUNCTION_0_0(v27, "PRFatalErrorEvaluatorFailed");
  (v8)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v6 + 8 * v3);
  *v31 = 14;
  v32 = OUTLINED_FUNCTION_0_0(v30, "PRFatalErrorInvalidParameterSet");
  (v8)(v32);
  v33 = OUTLINED_FUNCTION_45_2(9 * v3);
  *v34 = 15;
  v35 = OUTLINED_FUNCTION_0_0(v33, "PRFatalErrorValueNotFound");
  (v8)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v6 + 10 * v3);
  *v37 = 16;
  *v36 = "PRFatalErrorActionResolution";
  v36[1] = 28;
  v38 = OUTLINED_FUNCTION_1_3(v36);
  (v8)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v6 + 11 * v3);
  *v40 = 17;
  v41 = OUTLINED_FUNCTION_0_0(v39, "PRFatalErrorSystemPromptResolutionFailed");
  (v8)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v6 + 12 * v3);
  *v43 = 18;
  v44 = OUTLINED_FUNCTION_0_0(v42, "PRFatalErrorInvalidToolParameter");
  (v8)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v6 + 13 * v3);
  *v46 = 19;
  *v45 = "PRFatalErrorUnableToConvertType";
  v45[1] = 31;
  v47 = OUTLINED_FUNCTION_1_3(v45);
  (v8)(v47);
  v48 = OUTLINED_FUNCTION_3_1(v6 + 14 * v3);
  *v49 = 20;
  v50 = OUTLINED_FUNCTION_0_0(v48, "PRFatalErrorSearchNotSupported");
  (v8)(v50);
  v51 = OUTLINED_FUNCTION_45_2(15 * v3);
  *v52 = 21;
  v53 = OUTLINED_FUNCTION_0_0(v51, "PRFatalErrorInvalidExpression");
  (v8)(v53);
  v54 = OUTLINED_FUNCTION_3_1(v6 + 16 * v3);
  *v55 = 22;
  v56 = OUTLINED_FUNCTION_0_0(v54, "PRFatalErrorMissingContext");
  (v8)(v56);
  v57 = OUTLINED_FUNCTION_45_2(17 * v3);
  *v58 = 23;
  *v57 = "PRFatalErrorInvalidParameterValue";
  v57[1] = 33;
  v59 = OUTLINED_FUNCTION_1_3(v57);
  (v8)(v59);
  v60 = OUTLINED_FUNCTION_3_1(v6 + 18 * v3);
  *v61 = 24;
  *v60 = "PRFatalErrorParameterTypeMismatch";
  v60[1] = 33;
  v62 = OUTLINED_FUNCTION_1_3(v60);
  (v8)(v62);
  v63 = OUTLINED_FUNCTION_3_1(v6 + 19 * v3);
  *v64 = 25;
  *v63 = "PRFatalErrorNoQueryForParameter";
  *(v63 + 8) = 31;
  *(v63 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v8();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19362EFEC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB6A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v3, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "PRJointResolverCallTypeUnknown";
  *(v0 + 8) = 30;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_10_0();
  v5();
  v6 = OUTLINED_FUNCTION_52();
  *v7 = 1;
  *v6 = "PRJointResolverCallTypeToolResolution";
  v6[1] = 37;
  v8 = OUTLINED_FUNCTION_70(v6);
  (v5)(v8);
  v9 = OUTLINED_FUNCTION_46_10();
  *v10 = 2;
  *v9 = "PRJointResolverCallTypeActionResolution";
  *(v9 + 8) = 39;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v5();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19362F194()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB6C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v3, xmmword_19394FBB0);
  *v1 = 1;
  *v0 = "ifRequestId";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_10_0();
  v5();
  v6 = OUTLINED_FUNCTION_52();
  *v7 = 4;
  *v6 = "spanId";
  v6[1] = 6;
  v8 = OUTLINED_FUNCTION_70(v6);
  (v5)(v8);
  v9 = OUTLINED_FUNCTION_46_10();
  *v10 = 5;
  *v9 = "prId";
  v9[1] = 4;
  v11 = OUTLINED_FUNCTION_70(v9);
  (v5)(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19362F310()
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
      case 5:
        v7 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0) + 24);
        v5 = type metadata accessor for AIML.UUID(0);
        v6 = v1 + v7;
LABEL_10:
        OUTLINED_FUNCTION_37_8(v6, v4, v5);
        break;
      case 4:
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
        sub_19393C230();
        break;
      case 1:
        v5 = type metadata accessor for AIML.UUID(0);
        v6 = v1;
        goto LABEL_10;
    }
  }
}

void sub_19362F3DC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_19362F46C();
  if (!v1)
  {
    if ((*(v0 + *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0) + 20) + 8) & 1) == 0)
    {
      sub_19393C3E0();
    }

    OUTLINED_FUNCTION_11_1();
    sub_19362F56C();
  }
}

void sub_19362F46C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v3, v4);
  v5 = OUTLINED_FUNCTION_247();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_18();
  sub_1934486F8(v2, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_20_10();
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_17(v1, 1);
    OUTLINED_FUNCTION_11_29();
    sub_193630B4C(v1, v12);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362F56C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_18();
  v10 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  OUTLINED_FUNCTION_39_1(*(v10 + 24));
  OUTLINED_FUNCTION_20_10();
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_17(v1, 5);
    OUTLINED_FUNCTION_11_29();
    sub_193630B4C(v1, v12);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362F6CC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB6D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("originTaskStatementId");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_52();
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_0_0(v7, "actionStatementId");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_46_10();
  *v11 = 3;
  *v10 = "statementId";
  v10[1] = 11;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_45_2(3 * v3);
  *v14 = 4;
  *v13 = "planCycleId";
  *(v13 + 8) = 11;
  *(v13 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19362F864()
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
      case 1:
      case 2:
      case 3:
        sub_19393C220();
        break;
      case 4:
        v4 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0) + 28);
        v5 = type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_37_8(v1 + v4, v6, v5);
        break;
      default:
        continue;
    }
  }
}

void sub_19362F934()
{
  OUTLINED_FUNCTION_50_13();
  if ((v1[4] & 1) == 0)
  {
    sub_19393C3D0();
  }

  if (!v0)
  {
    if ((v1[12] & 1) == 0)
    {
      sub_19393C3D0();
    }

    if ((v1[20] & 1) == 0)
    {
      sub_19393C3D0();
    }

    OUTLINED_FUNCTION_47_21();
    sub_19363090C();
  }
}

uint64_t sub_19362FA54()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 101)
    {
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_19362FAB0()
{
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_61_16();
    sub_19393C2E0();
  }
}

uint64_t sub_19362FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(v5 + 9) & 1) == 0)
  {
    v6 = *(v5 + 8);
    v8 = *v5;
    v9 = v6 & 1;
    return sub_193447324(&v8, 1, a2, a4, a3, a5);
  }

  return result;
}

void sub_19362FD00()
{
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_61_16();
    sub_19393C2E0();
  }
}

uint64_t sub_19362FDB4()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_19393C0F0();
    }
  }

  return result;
}

uint64_t sub_19362FE44@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_19362FEA4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB768);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v3, xmmword_19394FBB0);
  *v1 = 1;
  *v0 = "startedOrChanged";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_10_0();
  v5();
  v6 = OUTLINED_FUNCTION_52();
  *v7 = 2;
  *v6 = "ended";
  v6[1] = 5;
  v8 = OUTLINED_FUNCTION_70(v6);
  (v5)(v8);
  v9 = OUTLINED_FUNCTION_46_10();
  *v10 = 3;
  *v9 = "failed";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v5();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193630024()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  while (1)
  {
    v6 = OUTLINED_FUNCTION_124();
    if (v0 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 3:
        v14 = 0;
        v15 = 0;
        v16 = 1;
        sub_193498018();
        OUTLINED_FUNCTION_4_44();
        sub_193630B4C(v1, v11);
        v12 = v15;
        v13 = v16;
        *v1 = v14;
        *(v1 + 8) = v12;
        *(v1 + 10) = v13;
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        sub_193498018();
        OUTLINED_FUNCTION_4_44();
        sub_193630B4C(v1, v10);
        *v1 = 3;
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        v8 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
        sub_193498018();
        OUTLINED_FUNCTION_4_44();
        sub_193630B4C(v1, v9);
        sub_19362B494(v5, v1);
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193630244()
{
  OUTLINED_FUNCTION_26();
  v23[0] = v1;
  v23[1] = v0;
  v2 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - v12;
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = OUTLINED_FUNCTION_247();
  sub_19362E064(v18, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (*v17 != 3)
      {
        goto LABEL_9;
      }
    }

    else if ((*(v17 + 10) & 1) == 0)
    {
      v22 = *(v17 + 8);
      v23[2] = *v17;
      v24 = v22 & 0x1FF;
LABEL_9:
      sub_193447600();
    }
  }

  else
  {
    sub_19362B494(v17, v13);
    sub_1934486F8(v13, v11, &qword_1EAE3F498, &qword_193974820);
    if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
    {
      sub_19344E6DC(v13, &qword_1EAE3F498, &qword_193974820);
      v21 = v11;
    }

    else
    {
      sub_193630AEC(v11, v6, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      sub_193447600();
      sub_193630B4C(v6, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      v21 = v13;
    }

    sub_19344E6DC(v21, &qword_1EAE3F498, &qword_193974820);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193630558()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB780);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_11_3(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_52();
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_0_0(v7, "ended");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_46_10();
  *v11 = 3;
  *v10 = "failed";
  v10[1] = 6;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_45_2(3 * v3);
  *v14 = 6;
  *v13 = "traceId";
  *(v13 + 8) = 7;
  *(v13 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936306F0()
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
      case 3:
        goto LABEL_6;
      case 6:
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
        type metadata accessor for AIML.UUID(0);
LABEL_6:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193630808()
{
  OUTLINED_FUNCTION_50_13();
  if ((v1[10] & 1) == 0)
  {
    sub_193447600();
  }

  if (!v0)
  {
    if (v1[11] != 3)
    {
      sub_193447600();
    }

    if (v1[12] != 3)
    {
      sub_193447600();
    }

    OUTLINED_FUNCTION_47_21();
    sub_19363090C();
  }
}

void sub_19363090C()
{
  OUTLINED_FUNCTION_26();
  v17[0] = v1;
  v17[1] = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = v3(0);
  sub_1934486F8(v5 + *(v15 + 28), v9, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_19344E6DC(v9, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_193630AEC(v9, v14, type metadata accessor for AIML.UUID);
    sub_193447600();
    OUTLINED_FUNCTION_11_29();
    sub_193630B4C(v14, v16);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193630AEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193630B4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193630D78()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193630E60()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.requestContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3F488, &qword_193974B60, *(v1 + 32));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.requestContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.requestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193630F74()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.jrCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3F490, &qword_193974818, *(v1 + 36));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.jrCallContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.jrCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3B498, &unk_193959120, *(v1 + 40));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.monotonicTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19363114C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowPlanResolutionTelemetry.PRFatalError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193631174@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowPlanResolutionTelemetry.PRFatalError.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936311D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1936312E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936313F4@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19363141C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.spanId.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.spanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.prId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3BCA0, &unk_19395C320, *(v1 + 24));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.prId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.prId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v7 = *(v6 + 24);
  v8 = v0 + *(v6 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v8 = 0;
  *(v8 + 8) = 1;
  sub_19344E6DC(v0 + v7, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v46 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v45 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  v21 = *(v18 + 48);
  sub_1934487B4(v1, &v45 - v19, &qword_1EAE3BCA0, &unk_19395C320);
  sub_1934487B4(v0, &v20[v21], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v20);
  if (v22)
  {
    OUTLINED_FUNCTION_31(&v20[v21]);
    if (v22)
    {
      sub_19344E6DC(v20, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_13;
    }

LABEL_9:
    v23 = v20;
LABEL_10:
    sub_19344E6DC(v23, &qword_1EAE3BD08, &qword_1939595A0);
    return 0;
  }

  sub_1934487B4(v20, v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v20[v21]);
  if (v22)
  {
    sub_1934F8A10(v11);
    goto LABEL_9;
  }

  v25 = &v20[v21];
  v26 = v46;
  sub_19355A5F8(v25, v46);
  OUTLINED_FUNCTION_0_56();
  sub_193631D9C(v27, v28, &protocol conformance descriptor for AIML.UUID);
  v29 = sub_19393C550();
  sub_1934F8A10(v26);
  sub_1934F8A10(v11);
  sub_19344E6DC(v20, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v30 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v31 = *(v30 + 20);
  v32 = (v1 + v31);
  v33 = *(v1 + v31 + 8);
  v34 = (v0 + v31);
  v35 = *(v0 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  v36 = *(v30 + 24);
  v37 = *(v12 + 48);
  sub_1934487B4(v1 + v36, v16, &qword_1EAE3BCA0, &unk_19395C320);
  sub_1934487B4(v0 + v36, v16 + v37, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v16);
  if (!v22)
  {
    v38 = v45;
    sub_1934487B4(v16, v45, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v16 + v37);
    if (!v39)
    {
      v40 = v46;
      sub_19355A5F8(v16 + v37, v46);
      OUTLINED_FUNCTION_0_56();
      v43 = sub_193631D9C(v41, v42, &protocol conformance descriptor for AIML.UUID);
      v44 = OUTLINED_FUNCTION_139(v43);
      sub_1934F8A10(v40);
      sub_1934F8A10(v38);
      sub_19344E6DC(v16, &qword_1EAE3BCA0, &unk_19395C320);
      return (v44 & 1) != 0;
    }

    sub_1934F8A10(v38);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_31(v16 + v37);
  if (!v22)
  {
LABEL_27:
    v23 = v16;
    goto LABEL_10;
  }

  sub_19344E6DC(v16, &qword_1EAE3BCA0, &unk_19395C320);
  return 1;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.hash(into:)()
{
  v2 = v0;
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
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  OUTLINED_FUNCTION_52_1(v2, &v24 - v11);
  OUTLINED_FUNCTION_5_9(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v12, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_56();
    v16 = sub_193631D9C(v14, v15, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v16);
    sub_1934F8A10(v1);
  }

  v17 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v18 = v2 + *(v17 + 20);
  if (*(v18 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v19 = *v18;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v19);
  }

  sub_1934487B4(v2 + *(v17 + 24), v9, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v9);
  if (v13)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19355A5F8(v9, v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_56();
  v22 = sub_193631D9C(v20, v21, &protocol conformance descriptor for AIML.UUID);
  OUTLINED_FUNCTION_33(v22);
  return sub_1934F8A10(v1);
}

uint64_t sub_193631D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.originTaskStatementId.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.actionStatementId.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.statementId.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.planCycleId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(v1) + 28);
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v0 = 0;
  *(v0 + 4) = 1;
  *(v0 + 8) = 0;
  *(v0 + 12) = 1;
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  sub_19344E6DC(v0 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.== infix(_:_:)()
{
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_150();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = *(v1 + 4);
  if (*(v2 + 4))
  {
    if (!*(v1 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v2 != *v1)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = *(v1 + 12);
  if (*(v2 + 12))
  {
    if (!*(v1 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 8) != *(v1 + 8))
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = *(v1 + 20);
  if (*(v2 + 20))
  {
    if (!*(v1 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 16) != *(v1 + 16))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0) + 28);
  v17 = *(v9 + 48);
  OUTLINED_FUNCTION_52_1(v2 + v16, v12);
  OUTLINED_FUNCTION_52_1(v1 + v16, &v12[v17]);
  OUTLINED_FUNCTION_31(v12);
  if (v18)
  {
    OUTLINED_FUNCTION_31(&v12[v17]);
    if (v18)
    {
      sub_19344E6DC(v12, &qword_1EAE3BCA0, &unk_19395C320);
      return 1;
    }

LABEL_27:
    sub_19344E6DC(v12, &qword_1EAE3BD08, &qword_1939595A0);
    return 0;
  }

  sub_1934487B4(v12, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v12[v17]);
  if (v18)
  {
    sub_1934F8A10(v0);
    goto LABEL_27;
  }

  sub_19355A5F8(&v12[v17], v6);
  OUTLINED_FUNCTION_0_56();
  v22 = sub_193631D9C(v20, v21, &protocol conformance descriptor for AIML.UUID);
  v23 = OUTLINED_FUNCTION_139(v22);
  sub_1934F8A10(v6);
  sub_1934F8A10(v0);
  sub_19344E6DC(v12, &qword_1EAE3BCA0, &unk_19395C320);
  return (v23 & 1) != 0;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  if (v1[4] == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
  }

  if (v1[12] == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
  }

  if (v1[20] == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
  }

  v11 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  sub_1934487B4(&v1[*(v11 + 28)], v10, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    return sub_19393CAD0();
  }

  sub_19355A5F8(v10, v6);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_56();
  sub_193631D9C(v13, v14, &protocol conformance descriptor for AIML.UUID);
  sub_19393C540();
  return sub_1934F8A10(v6);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.PRRequestEnded.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

void IntelligenceFlowPlanResolutionTelemetry.PRRequestFailed.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestFailed.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

BOOL sub_19363270C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(void), uint64_t), uint64_t a4)
{
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v5 = a3(a1, a2, a3, a4);
    return v5 == (a3)();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t sub_1936327C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (*(v2 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v5 = OUTLINED_FUNCTION_103_0();
  v6 = a2(v5);
  return MEMORY[0x193B18030](v6);
}

uint64_t sub_19363285C(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_190();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v3 = a1();
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_193632900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_190();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v4 != 1)
  {
    OUTLINED_FUNCTION_180();
    v6 = a4();
    MEMORY[0x193B18030](v6);
  }

  return sub_19393CB00();
}

void IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.startedOrChanged.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.startedOrChanged.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 10) = v3;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
  *(a1 + 11) = 771;
  v2 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0) + 28);
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
  *(a1 + 11) = 771;
  sub_19344E6DC(a1 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_150();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = *(v1 + 10);
  if (*(v2 + 10))
  {
    if ((*(v1 + 10) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = *v1;
    v17 = *(v1 + 4);
    v18 = *(v2 + 4);
    v33 = *v2;
    v34 = v18;
    v35 = 0;
    if (v15)
    {
      return 0;
    }

    v31 = v16;
    v32 = v17 & 0x1FF;
    if (!static IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallStarted.== infix(_:_:)(&v33, &v31, v11, v12))
    {
      return 0;
    }
  }

  v19 = *(v2 + 11);
  v20 = *(v1 + 11);
  if (v19 == 3)
  {
    if (v20 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == 3)
    {
      return 0;
    }

    if (v19 == 2)
    {
      if (v20 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v20 == 2 || ((v20 ^ v19) & 1) != 0)
      {
        return result;
      }
    }
  }

  v21 = *(v2 + 12);
  v22 = *(v1 + 12);
  if (v21 == 3)
  {
    if (v22 != 3)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (v22 == 3)
  {
    return 0;
  }

  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }

    goto LABEL_10;
  }

  result = 0;
  if (v22 != 2 && ((v22 ^ v21) & 1) == 0)
  {
LABEL_10:
    v23 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0) + 28);
    v24 = *(v9 + 48);
    OUTLINED_FUNCTION_52_1(v2 + v23, v14);
    OUTLINED_FUNCTION_52_1(v1 + v23, &v14[v24]);
    OUTLINED_FUNCTION_31(v14);
    if (v26)
    {
      OUTLINED_FUNCTION_31(&v14[v24]);
      if (v26)
      {
        sub_19344E6DC(v14, &qword_1EAE3BCA0, &unk_19395C320);
        return 1;
      }
    }

    else
    {
      sub_1934487B4(v14, v0, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_31(&v14[v24]);
      if (!v26)
      {
        sub_19355A5F8(&v14[v24], v6);
        OUTLINED_FUNCTION_0_56();
        v29 = sub_193631D9C(v27, v28, &protocol conformance descriptor for AIML.UUID);
        v30 = OUTLINED_FUNCTION_139(v29);
        sub_1934F8A10(v6);
        sub_1934F8A10(v0);
        sub_19344E6DC(v14, &qword_1EAE3BCA0, &unk_19395C320);
        return (v30 & 1) != 0;
      }

      sub_1934F8A10(v0);
    }

    sub_19344E6DC(v14, &qword_1EAE3BD08, &qword_1939595A0);
    return 0;
  }

  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  if (*(v0 + 10) == 1 || (v8 = *v0, v9 = *(v0 + 4), OUTLINED_FUNCTION_103_0(), (v9 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v19 = v8;
    v20 = v9 & 1;
    v10 = IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.rawValue.getter();
    MEMORY[0x193B18030](v10);
  }

  v11 = *(v0 + 11);
  if (v11 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v11 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  v12 = *(v0 + 12);
  if (v12 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v12 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  v13 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  sub_1934487B4(v0 + *(v13 + 28), v7, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v7);
  if (v14)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19355A5F8(v7, v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_56();
  v17 = sub_193631D9C(v15, v16, &protocol conformance descriptor for AIML.UUID);
  OUTLINED_FUNCTION_33(v17);
  return sub_1934F8A10(v1);
}

uint64_t sub_193633140(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1936331A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

unint64_t sub_193633220()
{
  result = qword_1EAE3F5F8;
  if (!qword_1EAE3F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F5F8);
  }

  return result;
}

unint64_t sub_1936332A8()
{
  result = qword_1EAE3F610;
  if (!qword_1EAE3F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F610);
  }

  return result;
}

unint64_t sub_193633398()
{
  result = qword_1EAE3F618;
  if (!qword_1EAE3F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F618);
  }

  return result;
}

unint64_t sub_1936333F0()
{
  result = qword_1EAE3F620;
  if (!qword_1EAE3F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F620);
  }

  return result;
}

unint64_t sub_193633448()
{
  result = qword_1EAE3F628;
  if (!qword_1EAE3F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F628);
  }

  return result;
}

void sub_1936335A0(uint64_t a1)
{
  OUTLINED_FUNCTION_24_24(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_24_24(v2, qword_1ED505150);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_24_24(v4, qword_1ED505288);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_24_24(v6, qword_1ED5050B8);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_24_24(v8, &qword_1ED507A78);
            if (v10 <= 0x3F)
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

void sub_1936336EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_193633788(uint64_t a1)
{
  OUTLINED_FUNCTION_4_45(a1, qword_1ED507908);
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

void sub_193633854()
{
  sub_19349D1FC(319, qword_1ED506E98, MEMORY[0x1E69E7668]);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_4_45(v0, qword_1ED507908);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

uint64_t _s27IntelligencePlatformLibrary39IntelligenceFlowPlanResolutionTelemetryV14PRRequestEndedVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s27IntelligencePlatformLibrary39IntelligenceFlowPlanResolutionTelemetryV14PRRequestEndedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_193633AB0(uint64_t a1)
{
  OUTLINED_FUNCTION_24_24(a1, qword_1ED5051E0);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED5069B0, &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRRequestEnded);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED5069A8, &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRRequestFailed);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        OUTLINED_FUNCTION_10_1();
      }
    }
  }
}

void sub_193633B90()
{
  sub_19349D1FC(319, &qword_1ED506998, &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallStarted);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED5050F0, &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallEnded);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED5069A0, &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallFailed);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_4_45(v2, qword_1ED507908);
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

uint64_t sub_193633CE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5110B8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5110B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.PromptAnalytics.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_31 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5110B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F638, &qword_193975450);
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

unint64_t static Library.Streams.GenerativeExperiences.PromptAnalytics.attribute(_:)(void (*a1)(void))
{
  result = sub_1936340F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19363413C(void (*a1)(void))
{
  result = sub_1936340F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19363416C(uint64_t a1)
{
  result = sub_193634194();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193634194()
{
  result = qword_1ED506E50;
  if (!qword_1ED506E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506E50);
  }

  return result;
}

_BYTE *_s15PromptAnalyticsOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesPromptAnalytics.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F640, &qword_1939754C8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19363449C(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3F640, &qword_1939754C8, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3F640, &qword_1939754C8);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19363449C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesPromptAnalytics.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F640, &qword_1939754C8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3F640, &qword_1939754C8, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_193634640(v8, a3);
  }

  return result;
}

uint64_t sub_193634640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesPromptAnalytics.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F640, &qword_1939754C8);
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
  if (*sub_193636E40() == a3)
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
      sub_193634640(v11, v36);
      v29 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
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

uint64_t GenerativeExperiencesPromptAnalytics.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F640, &qword_1939754C8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_19363449C(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3F640, &qword_1939754C8, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3F640, &qword_1939754C8);
  return v11;
}

id static GenerativeExperiencesPromptAnalytics.columns.getter()
{
  v179 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6D617473656D6974, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  v32 = OUTLINED_FUNCTION_105();
  result = OUTLINED_FUNCTION_3_5(v32, 0xEA00000000007265);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v33 = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_2_4(v33, v34, v35, v36, v37, v38, v39, v40, v172);
  OUTLINED_FUNCTION_5_10(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v51 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v51);
  result = OUTLINED_FUNCTION_3_5(0x74706D6F7270, 0xE600000000000000);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v52 = swift_initStackObject();
  v60 = OUTLINED_FUNCTION_2_4(v52, v53, v54, v55, v56, v57, v58, v59, v173);
  OUTLINED_FUNCTION_5_10(v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v70 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v70);
  v71 = OUTLINED_FUNCTION_14_19();
  result = OUTLINED_FUNCTION_3_5(v71, 0xE800000000000000);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v72 = swift_initStackObject();
  v80 = OUTLINED_FUNCTION_2_4(v72, v73, v74, v75, v76, v77, v78, v79, v174);
  OUTLINED_FUNCTION_5_10(v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  v90 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v90);
  v91 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v91 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000, 0xE500000000000000);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v92 = swift_initStackObject();
  v100 = OUTLINED_FUNCTION_2_4(v92, v93, v94, v95, v96, v97, v98, v99, v175);
  OUTLINED_FUNCTION_5_10(v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  v110 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v110);
  v111 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v111 | 0x7265566C00000000, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v112 = swift_initStackObject();
  v120 = OUTLINED_FUNCTION_2_4(v112, v113, v114, v115, v116, v117, v118, v119, v176);
  OUTLINED_FUNCTION_5_10(v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  v130 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v130);
  v131 = OUTLINED_FUNCTION_17_10();
  result = OUTLINED_FUNCTION_3_5(v131, 0xE700000000000000);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v132 = swift_initStackObject();
  v140 = OUTLINED_FUNCTION_2_4(v132, v133, v134, v135, v136, v137, v138, v139, v177);
  OUTLINED_FUNCTION_5_10(v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  v150 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v150);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v151, v152, v153, v154, v0, 2, 0);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v178;
  v155 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
  v165 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v165);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000010, 0x8000000193A17C10);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v178;
  v166 = OUTLINED_FUNCTION_6_4();
  *(v166 + 16) = v178;
  *(v166 + 32) = sub_19393C850();
  v167 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v168, v169, v170, v171, v166, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v179;
  }

LABEL_21:
  __break(1u);
  return result;
}

int *sub_193634F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v46 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (!v16 && (OUTLINED_FUNCTION_59_0(0x6D617473656D6974, 0xE900000000000070) & 1) == 0)
  {
    v20 = OUTLINED_FUNCTION_105();
    v22 = a1 == v20 && a2 == v21;
    if (v22 || (OUTLINED_FUNCTION_59_0(v20, 0xEA00000000007265) & 1) != 0)
    {
      result = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
      v23 = result[8];
    }

    else
    {
      v26 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
      if (v26 || (OUTLINED_FUNCTION_59_0(0x74706D6F7270, 0xE600000000000000) & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
        v23 = result[9];
      }

      else
      {
        v27 = OUTLINED_FUNCTION_14_19();
        v28 = a1 == v27 && a2 == 0xE800000000000000;
        if (v28 || (OUTLINED_FUNCTION_59_0(v27, 0xE800000000000000) & 1) != 0)
        {
          result = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
          v23 = result[10];
        }

        else
        {
          v29 = OUTLINED_FUNCTION_12_3() & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
          v30 = a1 == v29 && a2 == 0xE500000000000000;
          if (v30 || (OUTLINED_FUNCTION_59_0(v29, 0xE500000000000000) & 1) != 0)
          {
            result = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
            v23 = result[11];
          }

          else
          {
            v31 = OUTLINED_FUNCTION_12_3() | 0x7265566C00000000;
            v33 = a1 == v31 && a2 == v32;
            if (v33 || (OUTLINED_FUNCTION_59_0(v31, v32) & 1) != 0)
            {
              result = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
              v23 = result[12];
            }

            else
            {
              v34 = OUTLINED_FUNCTION_17_10();
              v35 = a1 == v34 && a2 == 0xE700000000000000;
              if (!v35 && (OUTLINED_FUNCTION_59_0(v34, 0xE700000000000000) & 1) == 0)
              {
                v36 = OUTLINED_FUNCTION_16_10();
                v37 = a1 == v36 && a2 == 0xE900000000000065;
                if (v37 || (OUTLINED_FUNCTION_59_0(v36, 0xE900000000000065) & 1) != 0)
                {
                  result = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
                  v38 = v3 + result[14];
                  if (*(v38 + 4))
                  {
                    goto LABEL_8;
                  }

                  LODWORD(v47) = *v38;
                }

                else
                {
                  v39 = a1 == 0xD000000000000010 && 0x8000000193A17C10 == a2;
                  if (v39 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193A17C10) & 1) != 0)
                  {
                    result = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
                    v23 = result[15];
                    goto LABEL_16;
                  }

                  v40 = a1 == 0xD000000000000014 && 0x8000000193A17C30 == a2;
                  if (!v40 && (OUTLINED_FUNCTION_59_0(0xD000000000000014, 0x8000000193A17C30) & 1) == 0)
                  {
                    sub_19349AB64();
                    OUTLINED_FUNCTION_11();
                    swift_allocError();
                    v44 = v43;
                    *v43 = a1;
                    v43[1] = a2;
                    v43[5] = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
                    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v44 + 2);
                    sub_19363449C(v3, boxed_opaque_existential_1Tm);
                    *(v44 + 48) = 1;
                    swift_willThrow();
                  }

                  v41 = v3 + *(type metadata accessor for GenerativeExperiencesPromptAnalytics(0) + 64);
                  v42 = *v41;
                  LOBYTE(v41) = *(v41 + 8);
                  v47 = v42;
                  LOBYTE(v48) = v41;
                }

                return sub_1934948FC();
              }

              result = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
              v23 = result[13];
            }
          }
        }
      }
    }

LABEL_16:
    v24 = (v3 + v23);
    v25 = *(v3 + v23 + 8);
    if (!v25)
    {
      goto LABEL_8;
    }

    v47 = *v24;
    v48 = v25;
    return sub_1934948FC();
  }

  v17 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  sub_1934DE90C(v3 + *(v17 + 28), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_19344E6DC(v8, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_8:
    v19 = v46;
    *v46 = 0u;
    v19[1] = 0u;
    return result;
  }

  (*(v11 + 32))(v15, v8, v9);
  sub_1934948FC();
  return (*(v11 + 8))(v15, v9);
}

uint64_t GenerativeExperiencesPromptAnalytics.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_1934E0648();
  v16 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v12 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[14];
  sub_1934E3F94();
  v7 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193636E40();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);

  *v16 = 0;
  v16[1] = 0;

  *v15 = 0;
  v15[1] = 0;

  *v14 = 0;
  v14[1] = 0;
  *v13 = 0;
  v13[1] = 0;
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *v6 = 0;
  v6[4] = 1;
  *v7 = 0;
  v7[1] = 0;
  v10 = a1 + v2[16];
  *v10 = 0;
  v10[8] = 0;
  return result;
}

uint64_t static GenerativeExperiencesPromptAnalytics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - v15;
  v17 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  v18 = v17[7];
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
    if (!v37)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v38);
    v42 = v20 && v40 == v41;
    if (!v42 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v37)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v45)
  {
    if (!v43)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v44);
    v48 = v20 && v46 == v47;
    if (!v48 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v43)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v51)
  {
    if (!v49)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v50);
    v54 = v20 && v52 == v53;
    if (!v54 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v49)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v57)
  {
    if (!v55)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v56);
    v60 = v20 && v58 == v59;
    if (!v60 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v55)
  {
    goto LABEL_10;
  }

  v61 = v17[14];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 4);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 4);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v68)
  {
    if (v66)
    {
      OUTLINED_FUNCTION_5(v67);
      v71 = v20 && v69 == v70;
      if (v71 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (!v66)
  {
LABEL_82:
    v72 = v17[16];
    v73 = *(a1 + v72 + 8);
    v78 = *(a1 + v72);
    v79 = v73;
    v74 = (a2 + v72);
    v75 = *v74;
    LOBYTE(v74) = *(v74 + 8);
    v76 = v75;
    v77 = v74;
    sub_193635A54();
    v21 = sub_19393C550();
    return v21 & 1;
  }

LABEL_10:
  v21 = 0;
  return v21 & 1;
}

unint64_t sub_193635A54()
{
  result = qword_1EAE3F650;
  if (!qword_1EAE3F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F650);
  }

  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  sub_1934DE90C(v2 + v12[7], v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v5 + 32))(v8, v11, v3);
    sub_19393CAD0();
    sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v5 + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v13 = (v2 + v12[14]);
  if (*(v13 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v3 = *v13;
    sub_19393CAD0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v14 = (v2 + v12[16]);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  v17 = v15;
  v18 = v14;
  sub_193635D84();
  return sub_19393C540();
}

unint64_t sub_193635D84()
{
  result = qword_1EAE3F658;
  if (!qword_1EAE3F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F658);
  }

  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 4)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 3;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193975580[result];
  }

  return result;
}

char *static GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.allCases.getter()
{
  v0 = sub_193636154(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_193636154(v13, v2 + 1, 1, v14);
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
    v15 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_193636154(v15, v2 + 2, 1, v16);
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
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_193636154(v17, v2 + 3, 1, v18);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_193636154(v19, v2 + 4, 1, v20);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

unint64_t GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 2019650113;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6563697665446E4FLL;
  }
}

uint64_t GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x6563697665446E4FLL && a2 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x6563697665446E4FLL, 0xE800000000000000) & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0xD000000000000013 && 0x8000000193A17C50 == a2;
  if (v11 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A17C50) & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (a1 == 2019650113 && a2 == 0xE400000000000000)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(2019650113, 0xE400000000000000);

    v8 = 2;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_193636154(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F668, &qword_193975578);
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

unint64_t sub_193636254()
{
  result = qword_1EAE3F660;
  if (!qword_1EAE3F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F660);
  }

  return result;
}

uint64_t sub_1936362A8()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB798);
  __swift_project_value_buffer(v0, qword_1EAEAB798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_193952660;
  v6 = v5 + v4;
  v7 = v5 + v4 + dword_1EAEAB7D0;
  *(v5 + v4) = 1;
  *v7 = "timestamp";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v11 = 2;
  *v10 = "identifier";
  v10[1] = 10;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v14 = 3;
  *v13 = "prompt";
  v13[1] = 6;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v6 + 3 * v2);
  *v17 = 4;
  v18 = OUTLINED_FUNCTION_5_4(v16, "response");
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v6 + 4 * v2);
  *v20 = 5;
  v21 = OUTLINED_FUNCTION_5_4(v19, "model");
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v6 + 5 * v2);
  *v23 = 6;
  v24 = OUTLINED_FUNCTION_5_4(v22, "modelVersion");
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v6 + 6 * v2);
  *v26 = 7;
  v27 = OUTLINED_FUNCTION_5_4(v25, "useCase");
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v6 + 7 * v2);
  *v29 = 8;
  *v28 = "errorCode";
  v28[1] = 9;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v9)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v6 + 8 * v2);
  *v32 = 9;
  v33 = OUTLINED_FUNCTION_5_4(v31, "clientIdentifier");
  (v9)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v6 + 9 * v2);
  *v35 = 10;
  *v34 = "executionEnvironment";
  *(v34 + 8) = 20;
  *(v34 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

void sub_1936365C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v10 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
        sub_1934976E4(v3 + *(v10 + 28), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_16;
      case 2:
        v11 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics(0) + 32);
        goto LABEL_15;
      case 3:
        v11 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics(0) + 36);
        goto LABEL_15;
      case 4:
        v11 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics(0) + 40);
        goto LABEL_15;
      case 5:
        v11 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics(0) + 44);
        goto LABEL_15;
      case 6:
        v11 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics(0) + 48);
        goto LABEL_15;
      case 7:
        v11 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics(0) + 52);
        goto LABEL_15;
      case 8:
        v13 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
        OUTLINED_FUNCTION_8_2(*(v13 + 56));
        sub_19393C170();
        goto LABEL_16;
      case 9:
        v11 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics(0) + 60);
LABEL_15:
        OUTLINED_FUNCTION_8_2(v11);
        sub_19393C200();
LABEL_16:
        v5 = 0;
        break;
      case 10:
        sub_1934982A8();
        v12 = v3 + *(type metadata accessor for GenerativeExperiencesPromptAnalytics(0) + 64);
        *v12 = 0;
        *(v12 + 8) = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936367A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1936369B0(v3, a1, a2, a3);
  if (!v4)
  {
    v8 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
    OUTLINED_FUNCTION_5_20();
    if (v9)
    {
      OUTLINED_FUNCTION_2_10(*v10, v9, 2);
    }

    OUTLINED_FUNCTION_5_20();
    if (v11)
    {
      OUTLINED_FUNCTION_2_10(*v12, v11, 3);
    }

    OUTLINED_FUNCTION_5_20();
    if (v13)
    {
      OUTLINED_FUNCTION_2_10(*v14, v13, 4);
    }

    OUTLINED_FUNCTION_5_20();
    if (v15)
    {
      OUTLINED_FUNCTION_2_10(*v16, v15, 5);
    }

    OUTLINED_FUNCTION_5_20();
    if (v17)
    {
      OUTLINED_FUNCTION_2_10(*v18, v17, 6);
    }

    OUTLINED_FUNCTION_5_20();
    if (v19)
    {
      OUTLINED_FUNCTION_2_10(*v20, v19, 7);
    }

    if ((*(v3 + *(v8 + 56) + 4) & 1) == 0)
    {
      sub_19393C350();
    }

    OUTLINED_FUNCTION_5_20();
    if (v21)
    {
      OUTLINED_FUNCTION_2_10(*v22, v21, 9);
    }

    v23 = v3 + *(v8 + 64);
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *v23;
    v27 = v25;
    sub_193635A54();
    result = sub_19393C550();
    if ((result & 1) == 0)
    {
      v26 = v24;
      v27 = v25;
      return sub_193447324(&v26, 10, a2, &type metadata for GenerativeExperiencesPromptAnalytics.ExecutionEnvironment, a3, &off_1F07D9D80);
    }
  }

  return result;
}

uint64_t sub_1936369B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_19393BE00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  sub_1934DE90C(a1 + *(v14 + 28), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1934DFCD4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_193451F04(v13, 1, 2020175477, 0xE400000000000000, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_193636B6C(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3F670;

  return v1;
}

uint64_t sub_193636C08()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB7B0);
  __swift_project_value_buffer(v0, qword_1EAEAB7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBC0;
  v6 = v5 + v4;
  v7 = v5 + v4 + dword_1EAEAB7E8;
  *(v5 + v4) = 0;
  *v7 = "Unknown";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v11 = 1;
  *v10 = "OnDevice";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v13 = 3;
  *v12 = "PrivateCloudCompute";
  *(v12 + 8) = 19;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_3_1(v6 + 3 * v2);
  *v15 = 4;
  *v14 = "Ajax";
  *(v14 + 8) = 4;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

uint64_t GenerativeExperiencesPromptAnalytics.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for GenerativeExperiencesPromptAnalytics(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for GenerativeExperiencesPromptAnalytics(uint64_t a1)
{
  result = qword_1ED50DF10;
  if (!qword_1ED50DF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for GenerativeExperiencesPromptAnalytics(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t GenerativeExperiencesPromptAnalytics.timestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for GenerativeExperiencesPromptAnalytics(v2);
  return sub_19344865C(v1 + *(v3 + 28), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t GenerativeExperiencesPromptAnalytics.identifier.getter()
{
  type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.identifier.setter()
{
  OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.prompt.getter()
{
  type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.prompt.setter()
{
  OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.response.getter()
{
  type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.response.setter()
{
  OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.model.getter()
{
  type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.model.setter()
{
  OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.modelVersion.getter()
{
  type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.modelVersion.setter()
{
  OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.useCase.getter()
{
  type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.useCase.setter()
{
  OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.errorCode.setter()
{
  result = OUTLINED_FUNCTION_5_43();
  v3 = v1 + *(result + 56);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.clientIdentifier.getter()
{
  type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptAnalytics.clientIdentifier.setter()
{
  OUTLINED_FUNCTION_2_49();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.executionEnvironment.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for GenerativeExperiencesPromptAnalytics(v2);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.executionEnvironment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for GenerativeExperiencesPromptAnalytics(0);
  v5 = v1 + *(result + 64);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_1936376AC@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936376D4@<X0>(char **a1@<X8>)
{
  result = static GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193637708()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1936377C0(uint64_t a1)
{
  sub_19393CAB0();
  v1 = GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t GenerativeExperiencesPromptAnalytics.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesPromptAnalytics.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936378D4(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeExperiencesPromptAnalytics.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193637914()
{
  result = qword_1EAE3F680;
  if (!qword_1EAE3F680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3F688, &qword_193975600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F680);
  }

  return result;
}

unint64_t sub_193637980()
{
  result = qword_1EAE3F690;
  if (!qword_1EAE3F690)
  {
    type metadata accessor for GenerativeExperiencesPromptAnalytics(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F690);
  }

  return result;
}

uint64_t sub_193637A04(uint64_t a1)
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

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    v2 = v6;
    if (v7 > 0x3F)
    {
      return v2;
    }

    sub_19349D1FC(319, &qword_1ED508058, MEMORY[0x1E69E72F0]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_193637B48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511118);
  v4 = __swift_project_value_buffer(v3, qword_1ED511118);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.IFRequestTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_193637D74(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193637DB8(void (*a1)(void))
{
  result = sub_193637D74(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193637DE8(uint64_t a1)
{
  result = sub_193637E10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193637E10()
{
  result = qword_1ED5068D0;
  if (!qword_1ED5068D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068D0);
  }

  return result;
}

_BYTE *_s18IFRequestTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowIFRequestTelemetry.json()()
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
  v10 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6A0, &qword_193975878);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  OUTLINED_FUNCTION_3_46();
  sub_1936399F4(v0, v14, v18);
  sub_1934470C8(v14, v10, v17);
  sub_19393C080();
  sub_1936380EC();
  sub_19393C250();
  (*(v5 + 8))(v9, v3);
  sub_19344E6DC(v17, &qword_1EAE3F6A0, &qword_193975878);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_1936380EC()
{
  result = qword_1EAE3F6A8;
  if (!qword_1EAE3F6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3F6A0, &qword_193975878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F6A8);
  }

  return result;
}

uint64_t static IntelligenceFlowIFRequestTelemetry.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6A0, &qword_193975878);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;

  sub_19393C060();
  sub_1936380EC();
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_6_40();
    return sub_193639008(v9, a3, v11);
  }

  return result;
}

void static IntelligenceFlowIFRequestTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v31 = v3;
  v32 = v2;
  v30 = v4;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6A0, &qword_193975878);
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
  if (*sub_193453F34() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    (*(v10 + 16))(v14, v17, v8);
    v18 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v18, v19);
    sub_1936380EC();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v10 + 8))(v17, v8);
    if (!v0)
    {
      OUTLINED_FUNCTION_6_40();
      v22 = v31;
      sub_193639008(v1, v31, v23);
      v24 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
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

uint64_t IntelligenceFlowIFRequestTelemetry.serialize()()
{
  v2 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6A0, &qword_193975878);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_3_46();
  sub_1936399F4(v0, v6, v8);
  sub_1934470C8(v6, v2, v1);
  sub_1936380EC();
  sub_19393C290();
  sub_19344E6DC(v1, &qword_1EAE3F6A0, &qword_193975878);
  return OUTLINED_FUNCTION_13_0();
}

void sub_1936386B8()
{
  OUTLINED_FUNCTION_26();
  v108 = v3;
  v109 = v1;
  v110 = v0;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C8, &qword_193975890);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v98 - v10;
  v100 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v99 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C0, &unk_193975A20);
  OUTLINED_FUNCTION_47(v14);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v98 - v16;
  v103 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v102 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B8, &qword_193975888);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v98 - v22;
  v106 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v105 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_3();
  v28 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_1();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B0, &qword_193975880);
  OUTLINED_FUNCTION_47(v33);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v98 - v35;
  v37 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(0);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  v41 = v40 - v39;
  v43 = v7 == v42 && v5 == v38;
  if (v43 || (sub_19393CA30() & 1) != 0)
  {
    v44 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
    v45 = OUTLINED_FUNCTION_27_4(*(v44 + 28));
    sub_193448758(v45, v36, v46, v47);
    OUTLINED_FUNCTION_6_3(v36, 1, v37);
    if (!v43)
    {
      sub_193639008(v36, v41, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
      sub_193494798(v37, &off_1F07D9F68, v108);
      v52 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata;
      v53 = v41;
LABEL_10:
      sub_193639064(v53, v52);
      goto LABEL_11;
    }

    v48 = &qword_1EAE3F6B0;
    v49 = &qword_193975880;
    v50 = v36;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v55 = v7 == 0xD000000000000012 && v54 == v5;
  if (!v55 && (OUTLINED_FUNCTION_14_30(0xD000000000000012, v54) & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v61 = v7 == 0xD000000000000018 && v60 == v5;
    if (v61 || (OUTLINED_FUNCTION_14_30(0xD000000000000018, v60) & 1) != 0)
    {
      v62 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
      v63 = OUTLINED_FUNCTION_27_4(*(v62 + 36));
      v64 = v107;
      sub_193448758(v63, v107, v65, v66);
      OUTLINED_FUNCTION_6_3(v64, 1, v106);
      if (!v43)
      {
        v67 = v64;
        v68 = v105;
        sub_193639008(v67, v105, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
        OUTLINED_FUNCTION_13_0();
        sub_193494798(v69, v70, v71);
        v72 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked;
LABEL_29:
        v52 = v72;
        v53 = v68;
        goto LABEL_10;
      }

      v48 = &qword_1EAE3F6B8;
      v49 = &qword_193975888;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v74 = v7 == 0xD000000000000014 && v73 == v5;
      if (v74 || (OUTLINED_FUNCTION_14_30(0xD000000000000014, v73) & 1) != 0)
      {
        v75 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
        v76 = OUTLINED_FUNCTION_27_4(*(v75 + 40));
        v64 = v104;
        sub_193448758(v76, v104, v77, v78);
        OUTLINED_FUNCTION_6_3(v64, 1, v103);
        if (!v43)
        {
          v79 = v64;
          v68 = v102;
          sub_193639008(v79, v102, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
          OUTLINED_FUNCTION_13_0();
          sub_193494798(v80, v81, v82);
          v72 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated;
          goto LABEL_29;
        }

        v48 = &qword_1EAE3F6C0;
        v49 = &unk_193975A20;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v84 = v7 == 0xD000000000000016 && v83 == v5;
        if (!v84 && (OUTLINED_FUNCTION_14_30(0xD000000000000016, v83) & 1) == 0)
        {
          v93 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v93);
          *v94 = v7;
          v94[1] = v5;
          v95 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
          OUTLINED_FUNCTION_126(v95);
          OUTLINED_FUNCTION_3_46();
          sub_1936399F4(v110, v96, v97);
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          goto LABEL_11;
        }

        v85 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
        v86 = OUTLINED_FUNCTION_27_4(*(v85 + 44));
        v64 = v101;
        sub_193448758(v86, v101, v87, v88);
        OUTLINED_FUNCTION_6_3(v64, 1, v100);
        if (!v43)
        {
          v89 = v64;
          v68 = v99;
          sub_193639008(v89, v99, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
          OUTLINED_FUNCTION_13_0();
          sub_193494798(v90, v91, v92);
          v72 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop;
          goto LABEL_29;
        }

        v48 = &qword_1EAE3F6C8;
        v49 = &qword_193975890;
      }
    }

    v50 = v64;
    goto LABEL_9;
  }

  v56 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  v57 = OUTLINED_FUNCTION_27_4(*(v56 + 32));
  sub_193448758(v57, v2, v58, v59);
  OUTLINED_FUNCTION_6_3(v2, 1, v28);
  if (!v43)
  {
    sub_193639008(v2, v32, type metadata accessor for MonotonicTimestamp);
    sub_193494798(v28, &off_1F07BD958, v108);
    v52 = type metadata accessor for MonotonicTimestamp;
    v53 = v32;
    goto LABEL_10;
  }

  v48 = &qword_1EAE3B498;
  v49 = &unk_193959120;
  v50 = v2;
LABEL_9:
  sub_19344E6DC(v50, v48, v49);
  v51 = v108;
  *v108 = 0u;
  *(v51 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_193638E50()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v11 = v3 == 0x7365757165526669 && v0 == 0xEB00000000644974;
  if (v11 || (OUTLINED_FUNCTION_75_13() & 1) != 0)
  {
    sub_193448758(v2, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v4, 1, v9);
    if (v11)
    {
      sub_19344E6DC(v4, &qword_1EAE3BCA0, &unk_19395C320);
      *v1 = 0u;
      v1[1] = 0u;
    }

    else
    {
      OUTLINED_FUNCTION_1_52();
      sub_193639008(v4, v5, v12);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v13, v14, v15);
      OUTLINED_FUNCTION_0_57();
      sub_193639064(v5, v16);
    }
  }

  else
  {
    v17 = sub_19349AB64();
    v18 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
    v20 = OUTLINED_FUNCTION_81_8(v18, v19);
    v21 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(v20);
    v22 = OUTLINED_FUNCTION_126(v21);
    sub_1936399F4(v2, v22, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193639008(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_193639064(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1936390D4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v51 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v50 = OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = v5 == 0x53676E6974736F70 && v3 == 0xED000064496E6170;
  if (!v20 && (OUTLINED_FUNCTION_24_5(0x53676E6974736F70, 0xED000064496E6170) & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v24 = v5 == 0xD000000000000012 && v23 == v3;
    if (v24 || (OUTLINED_FUNCTION_24_5(0xD000000000000012, v23) & 1) != 0)
    {
      if (*(v0 + 25))
      {
        goto LABEL_7;
      }

      v25 = *(v0 + 24);
      v52 = *(v0 + 16);
      v26 = v25 & 1;
      goto LABEL_19;
    }

    v27 = v5 == 0x49676E6974736F70 && v3 == 0xE900000000000064;
    if (v27 || (OUTLINED_FUNCTION_24_5(0x49676E6974736F70, 0xE900000000000064) & 1) != 0)
    {
      v28 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
      sub_193448758(v0 + *(v28 + 24), v1, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v1, 1, v50);
      if (!v20)
      {
        OUTLINED_FUNCTION_1_52();
        sub_193639008(v1, v19, v30);
        OUTLINED_FUNCTION_13_0();
        sub_193494798(v31, v32, v33);
        OUTLINED_FUNCTION_0_57();
        v35 = v19;
LABEL_29:
        sub_193639064(v35, v34);
        goto LABEL_11;
      }

      v29 = v1;
    }

    else
    {
      v36 = v5 == 0x6574616974696E69 && v3 == 0xEF64496E61705364;
      if (v36 || (OUTLINED_FUNCTION_24_5(0x6574616974696E69, 0xEF64496E61705364) & 1) != 0)
      {
        v37 = v0 + *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0) + 28);
        if (*(v37 + 8))
        {
          goto LABEL_7;
        }

        v22 = *v37;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v39 = v5 == 0xD000000000000014 && v38 == v3;
      if (v39 || (OUTLINED_FUNCTION_24_5(0xD000000000000014, v38) & 1) != 0)
      {
        v40 = v0 + *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0) + 32);
        if (*(v40 + 9))
        {
          goto LABEL_7;
        }

        v41 = *(v40 + 8);
        v52 = *v40;
        v26 = v41 & 1;
LABEL_19:
        v53 = v26;
        goto LABEL_10;
      }

      v42 = v5 == 0x6574616974696E69 && v3 == 0xEB00000000644964;
      if (!v42 && (OUTLINED_FUNCTION_24_5(0x6574616974696E69, 0xEB00000000644964) & 1) == 0)
      {
        v46 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v46);
        *v47 = v5;
        v47[1] = v3;
        v48 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
        v49 = OUTLINED_FUNCTION_126(v48);
        sub_1936399F4(v0, v49, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }

      v43 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
      sub_193448758(v0 + *(v43 + 36), v11, &qword_1EAE3BCA0, &unk_19395C320);
      v44 = v50;
      OUTLINED_FUNCTION_6_3(v11, 1, v50);
      if (!v20)
      {
        OUTLINED_FUNCTION_1_52();
        sub_193639008(v11, v16, v45);
        sub_193494798(v44, &off_1F07C3F90, v51);
        OUTLINED_FUNCTION_0_57();
        v35 = v16;
        goto LABEL_29;
      }

      v29 = v11;
    }

    sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_7;
  }

  if ((*(v0 + 8) & 1) == 0)
  {
    v22 = *v0;
LABEL_9:
    v52 = v22;
LABEL_10:
    sub_1934948FC();
    goto LABEL_11;
  }

LABEL_7:
  v21 = v51;
  *v51 = 0u;
  *(v21 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_193639530()
{
  OUTLINED_FUNCTION_26();
  v38 = v3;
  v39 = v1;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = v7 == 0x6F69737365536669 && v5 == 0xEB0000000064496ELL;
  if (v22 || (OUTLINED_FUNCTION_13_0(), (sub_19393CA30() & 1) != 0))
  {
    sub_193448758(v0, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v2, 1, v14);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_52();
      sub_193639008(v2, v21, v25);
      sub_193494798(v14, &off_1F07C3F90, v38);
      OUTLINED_FUNCTION_0_57();
      v27 = v21;
LABEL_10:
      sub_193639064(v27, v26);
      goto LABEL_11;
    }

    v23 = v2;
  }

  else
  {
    v28 = v7 == 0x7254746E65696C63 && v5 == 0xED00006449656361;
    if (!v28 && (sub_19393CA30() & 1) == 0)
    {
      v34 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
      *v35 = v7;
      v35[1] = v5;
      v36 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
      v37 = OUTLINED_FUNCTION_126(v36);
      sub_1936399F4(v0, v37, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_11;
    }

    v29 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
    v30 = OUTLINED_FUNCTION_27_4(*(v29 + 20));
    sub_193448758(v30, v12, v31, v32);
    OUTLINED_FUNCTION_6_3(v12, 1, v14);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_52();
      sub_193639008(v12, v18, v33);
      sub_193494798(v14, &off_1F07C3F90, v38);
      OUTLINED_FUNCTION_0_57();
      v27 = v18;
      goto LABEL_10;
    }

    v23 = v12;
  }

  sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
  v24 = v38;
  *v38 = 0u;
  *(v24 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_19363983C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v11 = v3 == 0x6C6379436E616C70 && v0 == 0xEB00000000644965;
  if (v11 || (OUTLINED_FUNCTION_75_13() & 1) != 0)
  {
    sub_193448758(v2, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v4, 1, v9);
    if (v11)
    {
      sub_19344E6DC(v4, &qword_1EAE3BCA0, &unk_19395C320);
      *v1 = 0u;
      v1[1] = 0u;
    }

    else
    {
      OUTLINED_FUNCTION_1_52();
      sub_193639008(v4, v5, v12);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v13, v14, v15);
      OUTLINED_FUNCTION_0_57();
      sub_193639064(v5, v16);
    }
  }

  else
  {
    v17 = sub_19349AB64();
    v18 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
    v20 = OUTLINED_FUNCTION_81_8(v18, v19);
    v21 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(v20);
    v22 = OUTLINED_FUNCTION_126(v21);
    sub_1936399F4(v2, v22, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936399F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

BOOL static IntelligenceFlowIFRequestTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v134 = a1;
  v119 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  v114 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C8, &qword_193975890);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v115 = v6;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6D0, &qword_193975920);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  v118 = v8;
  v9 = OUTLINED_FUNCTION_22_2();
  v124 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_289();
  v116 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C0, &unk_193975A20);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v120 = v14;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6D8, &qword_193975928);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v123 = v16;
  v17 = OUTLINED_FUNCTION_22_2();
  v129 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v17);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_289();
  v121 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B8, &qword_193975888);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  v125 = v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6E0, &qword_193975930);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53_1();
  v128 = v24;
  v25 = OUTLINED_FUNCTION_22_2();
  v131 = type metadata accessor for MonotonicTimestamp(v25);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_289();
  v126 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v28);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_53_1();
  v130 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v114 - v33;
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B0, &qword_193975880);
  OUTLINED_FUNCTION_47(v38);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v114 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6E8, &qword_193975938) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v114 - v44;
  v132 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  v46 = *(v132 + 28);
  v47 = *(v42 + 56);
  sub_1934486F8(v134 + v46, v45, &qword_1EAE3F6B0, &qword_193975880);
  v48 = v133 + v46;
  v49 = v133;
  sub_1934486F8(v48, &v45[v47], &qword_1EAE3F6B0, &qword_193975880);
  OUTLINED_FUNCTION_31(v45);
  if (v50)
  {
    OUTLINED_FUNCTION_31(&v45[v47]);
    if (v50)
    {
      sub_19344E6DC(v45, &qword_1EAE3F6B0, &qword_193975880);
      goto LABEL_11;
    }

LABEL_9:
    v51 = &qword_1EAE3F6E8;
    v52 = &qword_193975938;
    v53 = v45;
LABEL_31:
    sub_19344E6DC(v53, v51, v52);
    return 0;
  }

  sub_1934486F8(v45, v41, &qword_1EAE3F6B0, &qword_193975880);
  OUTLINED_FUNCTION_31(&v45[v47]);
  if (v50)
  {
    sub_19363A4C4(v41, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
    goto LABEL_9;
  }

  sub_19363A51C(&v45[v47], v37, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
  OUTLINED_FUNCTION_7_31();
  sub_19363ABA0(v54, v55, &protocol conformance descriptor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
  v56 = sub_19393C550();
  sub_19363A4C4(v37, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
  sub_19363A4C4(v41, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
  sub_19344E6DC(v45, &qword_1EAE3F6B0, &qword_193975880);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v57 = v132;
  v58 = *(v132 + 32);
  v59 = *(v31 + 48);
  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_17_28(v49 + v58);
  v60 = OUTLINED_FUNCTION_132();
  v61 = v131;
  OUTLINED_FUNCTION_38_0(v60, v62);
  if (v50)
  {
    OUTLINED_FUNCTION_31(&v34[v59]);
    if (v50)
    {
      sub_19344E6DC(v34, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_21;
    }

LABEL_19:
    v51 = &qword_1EAE3B958;
    v52 = &qword_193957B50;
LABEL_30:
    v53 = v34;
    goto LABEL_31;
  }

  v63 = v130;
  sub_1934486F8(v34, v130, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(&v34[v59]);
  if (v64)
  {
    sub_19363A4C4(v63, type metadata accessor for MonotonicTimestamp);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_11_30();
  sub_19363A51C(&v34[v59], v126, v65);
  OUTLINED_FUNCTION_10_39();
  v68 = sub_19363ABA0(v66, v67, &protocol conformance descriptor for MonotonicTimestamp);
  OUTLINED_FUNCTION_73_0(v68);
  OUTLINED_FUNCTION_19_33();
  sub_19363A4C4(v63, &qword_1EAE3B498);
  sub_19344E6DC(v34, &qword_1EAE3B498, &unk_193959120);
  if ((v61 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v69 = v57[9];
  v34 = v128;
  v70 = *(v127 + 48);
  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_17_28(v49 + v69);
  v71 = OUTLINED_FUNCTION_132();
  v72 = v129;
  OUTLINED_FUNCTION_38_0(v71, v73);
  if (v50)
  {
    OUTLINED_FUNCTION_31(&v34[v70]);
    if (v50)
    {
      sub_19344E6DC(v34, &qword_1EAE3F6B8, &qword_193975888);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v74 = v125;
  sub_1934486F8(v34, v125, &qword_1EAE3F6B8, &qword_193975888);
  OUTLINED_FUNCTION_31(&v34[v70]);
  if (v75)
  {
    sub_19363A4C4(v74, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
LABEL_29:
    v51 = &qword_1EAE3F6E0;
    v52 = &qword_193975930;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_6_41();
  sub_19363A51C(&v34[v70], v121, v77);
  OUTLINED_FUNCTION_5_44();
  v80 = sub_19363ABA0(v78, v79, &protocol conformance descriptor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
  OUTLINED_FUNCTION_73_0(v80);
  OUTLINED_FUNCTION_19_33();
  sub_19363A4C4(v74, &qword_1EAE3F6B8);
  sub_19344E6DC(v34, &qword_1EAE3F6B8, &qword_193975888);
  if ((v72 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v81 = v57[10];
  v82 = v123;
  v83 = *(v122 + 48);
  OUTLINED_FUNCTION_14_31();
  v84 = v49 + v81;
  v85 = v82;
  OUTLINED_FUNCTION_17_28(v84);
  v86 = OUTLINED_FUNCTION_132();
  v87 = v124;
  OUTLINED_FUNCTION_38_0(v86, v88);
  if (v50)
  {
    OUTLINED_FUNCTION_31(v82 + v83);
    if (v50)
    {
      sub_19344E6DC(v82, &qword_1EAE3F6C0, &unk_193975A20);
      goto LABEL_45;
    }

LABEL_43:
    v51 = &qword_1EAE3F6D8;
    v52 = &qword_193975928;
LABEL_54:
    v53 = v85;
    goto LABEL_31;
  }

  v89 = v82;
  v90 = v120;
  sub_1934486F8(v89, v120, &qword_1EAE3F6C0, &unk_193975A20);
  OUTLINED_FUNCTION_31(v85 + v83);
  if (v91)
  {
    sub_19363A4C4(v90, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_13_27();
  sub_19363A51C(v85 + v83, v116, v92);
  OUTLINED_FUNCTION_12_26();
  v95 = sub_19363ABA0(v93, v94, &protocol conformance descriptor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
  OUTLINED_FUNCTION_26_19(v95);
  OUTLINED_FUNCTION_19_33();
  v96 = OUTLINED_FUNCTION_245();
  sub_19363A4C4(v96, v97);
  sub_19344E6DC(v85, &qword_1EAE3F6C0, &unk_193975A20);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v98 = v57[11];
  v99 = v118;
  v100 = *(v117 + 48);
  OUTLINED_FUNCTION_14_31();
  v101 = v49 + v98;
  v85 = v99;
  OUTLINED_FUNCTION_17_28(v101);
  v102 = OUTLINED_FUNCTION_132();
  v103 = v119;
  OUTLINED_FUNCTION_38_0(v102, v104);
  if (v50)
  {
    OUTLINED_FUNCTION_31(v99 + v100);
    if (v50)
    {
      sub_19344E6DC(v99, &qword_1EAE3F6C8, &qword_193975890);
      return 1;
    }

    goto LABEL_53;
  }

  v105 = v99;
  v106 = v115;
  sub_1934486F8(v105, v115, &qword_1EAE3F6C8, &qword_193975890);
  OUTLINED_FUNCTION_31(v85 + v100);
  if (v107)
  {
    sub_19363A4C4(v106, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
LABEL_53:
    v51 = &qword_1EAE3F6D0;
    v52 = &qword_193975920;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_9_53();
  sub_19363A51C(v85 + v100, v114, v108);
  OUTLINED_FUNCTION_8_40();
  v111 = sub_19363ABA0(v109, v110, &protocol conformance descriptor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
  OUTLINED_FUNCTION_26_19(v111);
  OUTLINED_FUNCTION_19_33();
  v112 = OUTLINED_FUNCTION_245();
  sub_19363A4C4(v112, v113);
  sub_19344E6DC(v85, &qword_1EAE3F6C8, &qword_193975890);
  return (v103 & 1) != 0;
}

uint64_t sub_19363A4C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_19363A51C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t IntelligenceFlowIFRequestTelemetry.hash(into:)(uint64_t a1)
{
  v70 = a1;
  v75 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  v68 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C8, &qword_193975890);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v74 = v6;
  v7 = OUTLINED_FUNCTION_22_2();
  v73 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_289();
  v67 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6C0, &unk_193975A20);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_1();
  v72 = v12;
  v13 = OUTLINED_FUNCTION_22_2();
  v71 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v13);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_289();
  v66 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F6B8, &qword_193975888);
  OUTLINED_FUNCTION_47(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  v69 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_289();
  v65 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v22);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &qword_193975880;
  v31 = OUTLINED_FUNCTION_245();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_47(v33);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v64 - v35;
  v37 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
  sub_1934486F8(v1 + v37[7], v36, &qword_1EAE3F6B0, &qword_193975880);
  if (__swift_getEnumTagSinglePayload(v36, 1, v26) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v30 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata;
    sub_19363A51C(v36, v29, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
    sub_19393CAD0();
    OUTLINED_FUNCTION_7_31();
    sub_19363ABA0(v38, v39, &protocol conformance descriptor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
    sub_19393C540();
    sub_19363A4C4(v29, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
  }

  v40 = v1;
  sub_1934486F8(v1 + v37[8], v25, &qword_1EAE3B498, &unk_193959120);
  if (__swift_getEnumTagSinglePayload(v25, 1, v69) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_11_30();
    v41 = v65;
    sub_19363A51C(v25, v65, v42);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_10_39();
    sub_19363ABA0(v43, v44, &protocol conformance descriptor for MonotonicTimestamp);
    OUTLINED_FUNCTION_24_25();
    sub_19393C540();
    sub_19363A4C4(v41, v30);
  }

  v45 = v73;
  v46 = v71;
  sub_1934486F8(v1 + v37[9], v19, &qword_1EAE3F6B8, &qword_193975888);
  if (__swift_getEnumTagSinglePayload(v19, 1, v46) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_6_41();
    v47 = v19;
    v48 = v66;
    sub_19363A51C(v47, v66, v49);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_5_44();
    sub_19363ABA0(v50, v51, &protocol conformance descriptor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
    OUTLINED_FUNCTION_24_25();
    sub_19393C540();
    sub_19363A4C4(v48, v30);
  }

  v52 = v72;
  sub_1934486F8(v40 + v37[10], v72, &qword_1EAE3F6C0, &unk_193975A20);
  if (__swift_getEnumTagSinglePayload(v52, 1, v45) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_13_27();
    v53 = v67;
    sub_19363A51C(v52, v67, v54);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_12_26();
    sub_19363ABA0(v55, v56, &protocol conformance descriptor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
    OUTLINED_FUNCTION_24_25();
    sub_19393C540();
    sub_19363A4C4(v53, v30);
  }

  v57 = v74;
  sub_1934486F8(v40 + v37[11], v74, &qword_1EAE3F6C8, &qword_193975890);
  if (__swift_getEnumTagSinglePayload(v57, 1, v75) == 1)
  {
    return OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_9_53();
  sub_19363A51C(v57, v68, v59);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_8_40();
  sub_19363ABA0(v60, v61, &protocol conformance descriptor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
  OUTLINED_FUNCTION_24_25();
  sub_19393C540();
  v62 = OUTLINED_FUNCTION_245();
  return sub_19363A4C4(v62, v63);
}

uint64_t sub_19363ABA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 3)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

char *static IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.allCases.getter()
{
  v0 = sub_19363AF70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19363AF70(v13, v2 + 1, 1, v14);
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
    v15 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19363AF70(v15, v2 + 2, 1, v16);
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
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19363AF70(v17, v2 + 3, 1, v18);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_19363AF70(v19, v2 + 4, 1, v20);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

unint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x726F747563657845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F7365526E616C50;
  }
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x6F7365526E616C50 && a2 == 0xEE006E6F6974756CLL;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x6F7365526E616C50, 0xEE006E6F6974756CLL) & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0xD000000000000012 && 0x8000000193A19520 == a2;
  if (v11 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A19520) & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (a1 == 0x726F747563657845 && a2 == 0xE800000000000000)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(0x726F747563657845, 0xE800000000000000);

    v8 = 2;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_19363AF70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F738, &qword_1939759A0);
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

unint64_t sub_19363B070()
{
  result = qword_1EAE3F730;
  if (!qword_1EAE3F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F730);
  }

  return result;
}

void sub_19363B0C4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAB7C8);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  *(v5 + 16) = xmmword_19394FBD0;
  v6 = v5 + v0 + dword_1EAEAB800;
  *(v5 + v0) = 1;
  *v6 = "eventMetadata";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v5 + v0 + v4);
  *v10 = 2;
  *v9 = "monotonicTimestamp";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v11 = OUTLINED_FUNCTION_3_1(v5 + v0 + 2 * v4);
  *v12 = 102;
  *v11 = "ifPlatformRequestInvoked";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v13 = OUTLINED_FUNCTION_3_1(v5 + v0 + 3 * v4);
  *v14 = 103;
  *v13 = "ifPlanCycleGenerated";
  *(v13 + 8) = 20;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  v15 = OUTLINED_FUNCTION_3_1(v5 + v0 + 4 * v4);
  *v16 = 104;
  *v15 = "sessionCoordinatorLoop";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19363B2DC()
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
      case 104:
        type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
        OUTLINED_FUNCTION_10_2();
LABEL_14:
        sub_193498018();
        break;
      case 2:
        type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
        type metadata accessor for MonotonicTimestamp(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_14;
      case 102:
        type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_14;
      case 103:
        type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_14;
      case 1:
        type metadata accessor for IntelligenceFlowIFRequestTelemetry(0);
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19363B414()
{
  OUTLINED_FUNCTION_46_5();
  sub_19363B480();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_19363B588();
    OUTLINED_FUNCTION_46_5();
    sub_19363B690();
    OUTLINED_FUNCTION_46_5();
    sub_19363B798();
    OUTLINED_FUNCTION_46_5();
    sub_19363B8A0();
  }
}

void sub_19363B480()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata(v6);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 28));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3F6B0, &qword_193975880);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFRequestEventMetadata);
    OUTLINED_FUNCTION_12_12(v1, 1);
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363B588()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for MonotonicTimestamp(v6);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 32));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_12_12(v1, 2);
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363B690()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v6);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 36));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3F6B8, &qword_193975888);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked);
    OUTLINED_FUNCTION_12_12(v1, 102);
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363B798()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated(v6);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 40));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3F6C0, &unk_193975A20);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlanCycleGenerated);
    OUTLINED_FUNCTION_12_12(v1, 103);
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363B8A0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v6);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 44));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3F6C8, &qword_193975890);
  }

  else
  {
    sub_19363CAB8(v0, v1, type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop);
    OUTLINED_FUNCTION_12_12(v1, 104);
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363BAA8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB7F8);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v7, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "postingSpanId";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 2;
  v12 = OUTLINED_FUNCTION_5_4(v10, "postingParticipant");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v14 = 3;
  v15 = OUTLINED_FUNCTION_5_4(v13, "postingId");
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v17 = 4;
  v18 = OUTLINED_FUNCTION_5_4(v16, "initiatedSpanId");
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v6);
  *v20 = 5;
  v21 = OUTLINED_FUNCTION_5_4(v19, "initiatedParticipant");
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 5 * v6);
  *v23 = 6;
  *v22 = "initiatedId";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19363BCCC()
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
        goto LABEL_7;
      case 2:
        goto LABEL_8;
      case 3:
      case 6:
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
        type metadata accessor for AIML.UUID(0);
        sub_193498018();
        continue;
      case 4:
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
LABEL_7:
        sub_19393C230();
        continue;
      case 5:
        type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
LABEL_8:
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19363BDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 8) & 1) == 0)
  {
    sub_19393C3E0();
  }

  if (!v4)
  {
    if ((*(v3 + 25) & 1) == 0)
    {
      v7 = *(v3 + 24);
      v11 = *(v3 + 16);
      v12 = v7 & 1;
      sub_193447324(&v11, 2, a2, &type metadata for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant, a3, &off_1F07DA038);
    }

    OUTLINED_FUNCTION_79();
    sub_19363BF68();
    v8 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
    if ((*(v3 + *(v8 + 28) + 8) & 1) == 0)
    {
      sub_19393C3E0();
    }

    v9 = (v3 + *(v8 + 32));
    if ((*(v9 + 9) & 1) == 0)
    {
      v10 = *(v9 + 8);
      v11 = *v9;
      v12 = v10 & 1;
      sub_193447324(&v11, 5, a2, &type metadata for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant, a3, &off_1F07DA038);
    }

    OUTLINED_FUNCTION_79();
    sub_19363C060();
  }
}

void sub_19363BF68()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 24));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_11_31();
    sub_19363CAB8(v0, v1, v11);
    OUTLINED_FUNCTION_12_12(v1, 3);
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363C060()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 36));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_11_31();
    sub_19363CAB8(v0, v1, v11);
    OUTLINED_FUNCTION_12_12(v1, 6);
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363C1B8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB810);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v7, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 1;
  *v10 = "PlanResolution";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v13 = 2;
  *v12 = "ResponseGeneration";
  *(v12 + 8) = 18;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v15 = 3;
  *v14 = "Executor";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19363C3B4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB828);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = OUTLINED_FUNCTION_156();
  *(v7 + 16) = xmmword_19394FBE0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + dword_1EAEAB860;
  *v8 = 1;
  *v9 = "ifSessionId";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = OUTLINED_FUNCTION_3_1(v8 + v4);
  *v15 = 2;
  *v14 = "clientTraceId";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v13();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19363C538()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      v7 = *(type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(0) + 20);
      v5 = type metadata accessor for AIML.UUID(0);
      v6 = v1 + v7;
LABEL_8:
      OUTLINED_FUNCTION_37_8(v6, v4, v5);
    }

    else if (v2 == 1)
    {
      v5 = type metadata accessor for AIML.UUID(0);
      v6 = v1;
      goto LABEL_8;
    }
  }
}

void sub_19363C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_5_8(v24, v25);
  v26 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v28 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v28);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_193448758(v21, v20, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_25_0();
  if (v32)
  {
    sub_19344E6DC(v20, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_19363CAB8(v20, v31, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_12_12(v31, 1);
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19363C740()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFPlatformRequestInvoked(v8);
  OUTLINED_FUNCTION_19_12(*(v9 + 20));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_11_31();
    sub_19363CAB8(v0, v1, v11);
    OUTLINED_FUNCTION_12_12(v1, 2);
    OUTLINED_FUNCTION_19_34();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19363C8B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_19393C420();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19394FAC0;
  v9 = v8 + v7 + v6[14];
  *(v8 + v7) = 1;
  *v9 = a3;
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v11 + 104))(v9, v10);
  return sub_19393C410();
}

void sub_19363CA14()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 1)
    {
      v4 = type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_37_8(v1, v5, v4);
    }
  }
}

uint64_t sub_19363CAB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_19363CB14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t IntelligenceFlowIFRequestTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowIFRequestTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowIFRequestTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.eventMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3F6B0, &qword_193975880, *(v1 + 28));
}

uint64_t IntelligenceFlowIFRequestTelemetry.eventMetadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowIFRequestTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t IntelligenceFlowIFRequestTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.ifPlatformRequestInvoked.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.ifPlanCycleGenerated.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3F6C0, &unk_193975A20, *(v1 + 40));
}

uint64_t IntelligenceFlowIFRequestTelemetry.ifPlanCycleGenerated.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowIFRequestTelemetry.ifPlanCycleGenerated.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.sessionCoordinatorLoop.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19363D00C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingSpanId.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingParticipant.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingParticipant.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3BCA0, &unk_19395C320, *(v1 + 24));
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.postingId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedSpanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedParticipant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19363D274()
{
  v0 = OUTLINED_FUNCTION_222();
  v1(v0);
  OUTLINED_FUNCTION_248();
  return sub_1934487B4(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.initiatedId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19363D300@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19363D328@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19363D35C()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19363D414(uint64_t a1)
{
  sub_19393CAB0();
  v1 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

void static IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = *(v1 + 8);
  if (*(v3 + 8))
  {
    if (!*(v1 + 8))
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v3 != *v1)
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_22;
    }
  }

  v25 = *(v1 + 25);
  if (*(v3 + 25))
  {
    v67 = v12;
    if ((v25 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(v1 + 25))
    {
      goto LABEL_22;
    }

    v26 = *(v3 + 24);
    v27 = *(v1 + 16);
    v28 = *(v1 + 24);
    v70 = *(v3 + 16);
    v71 = v26 & 1;
    v67 = v12;
    v68 = v27;
    v69 = v28 & 1;
    v29 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
    if (v29 != IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter())
    {
      goto LABEL_22;
    }
  }

  v64 = v20;
  v65 = v7;
  v66 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  v30 = v66[6];
  v31 = *(v16 + 48);
  OUTLINED_FUNCTION_36_20(v3 + v30, v23);
  OUTLINED_FUNCTION_36_20(v1 + v30, &v23[v31]);
  OUTLINED_FUNCTION_14_1(v23);
  if (!v32)
  {
    sub_1934487B4(v23, v15, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_14_1(&v23[v31]);
    if (!v32)
    {
      v34 = &v23[v31];
      v35 = v65;
      sub_19355A5F8(v34, v65);
      OUTLINED_FUNCTION_0_58();
      sub_19363D00C(v36, v37, &protocol conformance descriptor for AIML.UUID);
      v38 = sub_19393C550();
      sub_1934F8A10(v35);
      sub_1934F8A10(v15);
      sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v38 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    sub_1934F8A10(v15);
LABEL_20:
    v33 = v23;
LABEL_21:
    sub_19344E6DC(v33, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_14_1(&v23[v31]);
  if (!v32)
  {
    goto LABEL_20;
  }

  sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_24:
  v39 = v66;
  v40 = v66[7];
  v41 = (v3 + v40);
  v42 = *(v3 + v40 + 8);
  v43 = (v1 + v40);
  v44 = *(v1 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      goto LABEL_22;
    }
  }

  v45 = v66[8];
  v46 = (v3 + v45);
  v47 = *(v3 + v45 + 9);
  v48 = (v1 + v45);
  if (v47)
  {
    if ((*(v48 + 9) & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if ((*(v48 + 9) & 1) == 0)
  {
    v49 = *v46;
    v50 = *(v46 + 8);
    v51 = *v48;
    v52 = *(v48 + 8);
    v70 = v49;
    v71 = v50 & 1;
    v68 = v51;
    v69 = v52 & 1;
    v53 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
    if (v53 == IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter())
    {
LABEL_35:
      v54 = v39[9];
      v55 = *(v16 + 48);
      v56 = v3 + v54;
      v57 = v64;
      OUTLINED_FUNCTION_36_20(v56, v64);
      OUTLINED_FUNCTION_36_20(v1 + v54, v57 + v55);
      OUTLINED_FUNCTION_14_1(v57);
      if (v32)
      {
        OUTLINED_FUNCTION_14_1(v57 + v55);
        if (v32)
        {
          sub_19344E6DC(v57, &qword_1EAE3BCA0, &unk_19395C320);
          goto LABEL_22;
        }
      }

      else
      {
        v58 = v67;
        sub_1934487B4(v57, v67, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_14_1(v57 + v55);
        if (!v59)
        {
          v60 = v57 + v55;
          v61 = v65;
          sub_19355A5F8(v60, v65);
          OUTLINED_FUNCTION_0_58();
          sub_19363D00C(v62, v63, &protocol conformance descriptor for AIML.UUID);
          sub_19393C550();
          sub_1934F8A10(v61);
          sub_1934F8A10(v58);
          sub_19344E6DC(v57, &qword_1EAE3BCA0, &unk_19395C320);
          goto LABEL_22;
        }

        sub_1934F8A10(v58);
      }

      v33 = v57;
      goto LABEL_21;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.hash(into:)()
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
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v12 = *v0;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v12);
  }

  if (*(v0 + 25) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = *(v0 + 24);
    v14 = v0[2];
    OUTLINED_FUNCTION_103_0();
    v30 = v14;
    v31 = v13 & 1;
    v15 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
    MEMORY[0x193B18030](v15);
  }

  v16 = type metadata accessor for IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop(0);
  sub_1934487B4(v0 + v16[6], v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v11);
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v11, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_58();
    v20 = sub_19363D00C(v18, v19, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v20);
    sub_1934F8A10(v1);
  }

  v21 = (v0 + v16[7]);
  if (*(v21 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v22 = *v21;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  v23 = (v0 + v16[8]);
  if (*(v23 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v24 = *(v23 + 8);
    v25 = *v23;
    OUTLINED_FUNCTION_103_0();
    v30 = v25;
    v31 = v24 & 1;
    v26 = IntelligenceFlowIFRequestTelemetry.IFSessionCoordinatorLoop.IFParticipant.rawValue.getter();
    MEMORY[0x193B18030](v26);
  }

  sub_1934487B4(v0 + v16[9], v8, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v8);
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v8, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_58();
    v29 = sub_19363D00C(v27, v28, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v29);
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_116();
}