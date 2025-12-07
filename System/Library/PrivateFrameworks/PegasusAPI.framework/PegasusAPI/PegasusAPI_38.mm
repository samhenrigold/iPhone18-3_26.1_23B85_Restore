uint64_t Apple_Parsec_Search_Error.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  sub_1B8CD2648(&qword_1EBAC3B78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9096624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2648(&qword_1EBAC3B98, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90966A4(uint64_t a1)
{
  v2 = sub_1B8CD2648(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9096714(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2648(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);

  return sub_1B964C5D0();
}

unint64_t sub_1B9096794()
{
  result = qword_1ED9CC380;
  if (!qword_1ED9CC380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_StatusCode, &type metadata for Apple_Parsec_Search_StatusCode, v0, v1);
    atomic_store(result, &qword_1ED9CC380);
  }

  return result;
}

unint64_t sub_1B90967EC()
{
  result = qword_1ED9CC370;
  if (!qword_1ED9CC370)
  {
    result = swift_getWitnessTable("I", &type metadata for Apple_Parsec_Search_StatusCode, v0, v1);
    atomic_store(result, &qword_1ED9CC370);
  }

  return result;
}

unint64_t sub_1B9096844()
{
  result = qword_1ED9CC378;
  if (!qword_1ED9CC378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_StatusCode, &type metadata for Apple_Parsec_Search_StatusCode, v0, v1);
    atomic_store(result, &qword_1ED9CC378);
  }

  return result;
}

unint64_t sub_1B909689C()
{
  result = qword_1EBAC3B80;
  if (!qword_1EBAC3B80)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3B88, &qword_1B9688F98);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC3B80);
  }

  return result;
}

void sub_1B9096A5C(uint64_t a1)
{
  sub_1B9096AE0();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9096AE0()
{
  if (!qword_1ED9EDEA0)
  {
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9EDEA0);
    }
  }
}

unint64_t Apple_Parsec_Search_TreatmentAllocationStatus.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9096B90@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_TreatmentAllocationStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9096BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9097940();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Search_TreatmentAllocationStatus.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC3BA0 = a1;
}

uint64_t sub_1B9096D0C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_TreatmentAllocationStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.experimentID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.experimentID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.treatmentID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.treatmentID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.namespaceID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.namespaceID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void Apple_Parsec_Search_TrialIdentifiers.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_TrialIdentifiers(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Parsec_Search_TrialIdentifiers(uint64_t a1)
{
  result = qword_1EBAC3C28;
  if (!qword_1EBAC3C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_TrialIdentifiers(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  type metadata accessor for Apple_Parsec_Search_TrialIdentifiers(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9097158()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3BA8);
  __swift_project_value_buffer(v0, qword_1EBAC3BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TREATMENT_ALLOCATION_STATUS_UNKNOWN";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TREATMENT_ALLOCATION_STATUS_ALLOCATED";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TREATMENT_ALLOCATION_STATUS_ACTIVATED";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TREATMENT_ALLOCATION_STATUS_DEACTIVATED";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90973D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3BC0);
  __swift_project_value_buffer(v0, qword_1EBAC3BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "experiment_id";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "treatment_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "deployment_id";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "namespace_id";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "version";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "status";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        sub_1B964C530();
        break;
      case 3:
      case 5:
        sub_1B964C4A0();
        break;
      case 6:
        sub_1B9097798(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_1();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), (v5 = v4) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 2), (v5 = v4) == 0))
    {
      v13 = *(v3 + 32);
      if (!v13 || (result = OUTLINED_FUNCTION_16_9(v13, 3), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_1();
        if (!v16 || (result = OUTLINED_FUNCTION_3(v14, v15, 4), (v5 = v4) == 0))
        {
          v17 = *(v3 + 56);
          if (!v17 || (result = OUTLINED_FUNCTION_16_9(v17, 5), (v5 = v4) == 0))
          {
            if (!*(v3 + 64) || (sub_1B9097940(), result = sub_1B964C680(), !v5))
            {
              type metadata accessor for Apple_Parsec_Search_TrialIdentifiers(0);
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B9097940()
{
  result = qword_1EBAC3BD8;
  if (!qword_1EBAC3BD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_TreatmentAllocationStatus, &type metadata for Apple_Parsec_Search_TreatmentAllocationStatus, v0, v1);
    atomic_store(result, &qword_1EBAC3BD8);
  }

  return result;
}

uint64_t static Apple_Parsec_Search_TrialIdentifiers.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48);
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(a1 + 14) != *(a2 + 56) || !sub_1B8D92198(a1[8], *(a1 + 72), *(a2 + 64)))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Search_TrialIdentifiers(0);
  sub_1B964C2B0();
  sub_1B8CD2690(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Search_TrialIdentifiers(0);
  sub_1B8CD2690(&qword_1EBAC3BE0, type metadata accessor for Apple_Parsec_Search_TrialIdentifiers, protocol conformance descriptor for Apple_Parsec_Search_TrialIdentifiers);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9097BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2690(&qword_1EBAC3C38, type metadata accessor for Apple_Parsec_Search_TrialIdentifiers, protocol conformance descriptor for Apple_Parsec_Search_TrialIdentifiers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9097C30(uint64_t a1)
{
  v2 = sub_1B8CD2690(&qword_1EBAC3C18, type metadata accessor for Apple_Parsec_Search_TrialIdentifiers, protocol conformance descriptor for Apple_Parsec_Search_TrialIdentifiers);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9097CA0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2690(&qword_1EBAC3C18, type metadata accessor for Apple_Parsec_Search_TrialIdentifiers, protocol conformance descriptor for Apple_Parsec_Search_TrialIdentifiers);

  return sub_1B964C5D0();
}

unint64_t sub_1B9097D20()
{
  result = qword_1EBAC3BE8;
  if (!qword_1EBAC3BE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_TreatmentAllocationStatus, &type metadata for Apple_Parsec_Search_TreatmentAllocationStatus, v0, v1);
    atomic_store(result, &qword_1EBAC3BE8);
  }

  return result;
}

unint64_t sub_1B9097D78()
{
  result = qword_1EBAC3BF0;
  if (!qword_1EBAC3BF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_TreatmentAllocationStatus, &type metadata for Apple_Parsec_Search_TreatmentAllocationStatus, v0, v1);
    atomic_store(result, &qword_1EBAC3BF0);
  }

  return result;
}

unint64_t sub_1B9097DD0()
{
  result = qword_1EBAC3BF8;
  if (!qword_1EBAC3BF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_TreatmentAllocationStatus, &type metadata for Apple_Parsec_Search_TreatmentAllocationStatus, v0, v1);
    atomic_store(result, &qword_1EBAC3BF8);
  }

  return result;
}

unint64_t sub_1B9097E28()
{
  result = qword_1EBAC3C00;
  if (!qword_1EBAC3C00)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3C08, &qword_1B96893C8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC3C00);
  }

  return result;
}

uint64_t sub_1B9097FE8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_TemplateType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B90980BC@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_V1alpha_TemplateType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90980F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90B8688();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Search_V1alpha_TemplateType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B90981DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_V1alpha_TemplateType.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Apple_Parsec_Search_V1alpha_SearchResult.domain.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 16, v6);
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.domain.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9098364()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.domain.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

void Apple_Parsec_Search_V1alpha_SearchResult.templateType.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 32));
}

void Apple_Parsec_Search_V1alpha_SearchResult.templateType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_46_7();
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 32, v6);
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.templateType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  OUTLINED_FUNCTION_71_2(*(v0 + 32));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9098500()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_138_2();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90A6AA8(v6);
    OUTLINED_FUNCTION_73_2(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  OUTLINED_FUNCTION_242();

  free(v8);
}

void Apple_Parsec_Search_V1alpha_SearchResult.identifier.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = v2;
  *(v7 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.identifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90986A8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.identifier.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

void Apple_Parsec_Search_V1alpha_SearchResult.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 64, v6);
  *(v7 + 64) = v2;
  *(v7 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 64);
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9098854()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.canonicalID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

double Apple_Parsec_Search_V1alpha_SearchResult.score.getter()
{
  OUTLINED_FUNCTION_22_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 80, v3);
  return *(v2 + 80);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.score.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90A6AA8(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 80, v6);
  *(v7 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.score.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_22_16();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 80);
  *(v1 + 72) = *(v5 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90989FC()
{
  OUTLINED_FUNCTION_86_1();
  v2 = *(v1 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_15(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 80) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.feedbackResult.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 88, v1);
  v2 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v2, v3);
  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.feedbackResult.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 88, v6);
  v10 = *(v7 + 88);
  v11 = *(v7 + 96);
  *(v7 + 88) = v2;
  *(v7 + 96) = v0;
  sub_1B8D538A0(v10, v11);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.feedbackResult.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 88);
  v6 = *(v5 + 88);
  v7 = *(v5 + 96);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9098BE0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v6, v7);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.feedbackResult.setter();
    v8 = v0[6];
    v9 = v0[7];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_163_1();
    v11 = *(v4 + v1);
    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B90A6AA8(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3(v11 + 88);
    v8 = *(v11 + 88);
    v9 = *(v11 + 96);
    *(v11 + 88) = v3;
    *(v11 + 96) = v2;
  }

  sub_1B8D538A0(v8, v9);

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.sectionKey.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 104, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.sectionKey.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 104, v6);
  *(v7 + 104) = v2;
  *(v7 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.sectionKey.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 104);
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9098DBC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.sectionKey.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 104);
    *(v7 + 104) = v3;
    *(v7 + 112) = v2;
  }

  free(v0);
}

void Apple_Parsec_Search_V1alpha_SearchResult.topHit.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 120, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 120));
}

void Apple_Parsec_Search_V1alpha_SearchResult.topHit.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_46_7();
  v7 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 120, v6);
  *(v7 + 120) = v3;
  *(v7 + 128) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.topHit.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0(v0 + 120);
  OUTLINED_FUNCTION_71_2(*(v0 + 120));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9098F58()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_138_2();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90A6AA8(v6);
    OUTLINED_FUNCTION_73_2(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 120) = v1;
  *(v5 + 128) = v2;
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.preferTopPlatter.getter()
{
  OUTLINED_FUNCTION_22_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 129, v3);
  return *(v2 + 129);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.preferTopPlatter.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_144_5(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 129, v5);
  *(v6 + 129) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.preferTopPlatter.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_22(v3);
  OUTLINED_FUNCTION_62_0(v0 + 129);
  *(v1 + 84) = *(v0 + 129);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90990D0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 129) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.placement.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 136, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.placement.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 136, v6);
  *(v7 + 136) = v2;
  *(v7 + 144) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.placement.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 136);
  v6 = *(v5 + 144);
  *(v1 + 48) = *(v5 + 136);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9099298()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.placement.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 136);
    *(v7 + 136) = v3;
    *(v7 + 144) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.hideRank.getter()
{
  OUTLINED_FUNCTION_22_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 152, v3);
  return *(v2 + 152);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.hideRank.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_144_5(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 152, v5);
  *(v6 + 152) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.hideRank.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_11_28(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 152);
  *(v1 + 80) = *(v0 + 152);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9099414(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 152) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.sectionBundleID.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 160, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.sectionBundleID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 160, v6);
  *(v7 + 160) = v2;
  *(v7 + 168) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.sectionBundleID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 160);
  v6 = *(v5 + 168);
  *(v1 + 48) = *(v5 + 160);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90995DC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.sectionBundleID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 160);
    *(v7 + 160) = v3;
    *(v7 + 168) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.entityType.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 176, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.entityType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 176, v6);
  *(v7 + 176) = v2;
  *(v7 + 184) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.entityType.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 176);
  v6 = *(v5 + 184);
  *(v1 + 48) = *(v5 + 176);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90997B0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.entityType.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 176);
    *(v7 + 176) = v3;
    *(v7 + 184) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.serverFeatures.getter()
{
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 192, v2);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.serverFeatures.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_89_8();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 192, v5);
  *(v6 + 192) = a1;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.serverFeatures.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_22_16();
  *(v1 + 64) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 192);
  *(v1 + 48) = *(v5 + 192);

  return OUTLINED_FUNCTION_514();
}

void sub_1B909997C()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {

    Apple_Parsec_Search_V1alpha_SearchResult.serverFeatures.setter(v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_41_2();
    v7 = *(v3 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_5();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 192);
    *(v7 + 192) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.filtered.getter()
{
  OUTLINED_FUNCTION_22_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 200, v3);
  return *(v2 + 200);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.filtered.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_144_5(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 200, v5);
  *(v6 + 200) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.filtered.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_22(v3);
  OUTLINED_FUNCTION_62_0(v0 + 200);
  *(v1 + 84) = *(v0 + 200);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9099B04(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 200) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.query.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 208, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.query.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 208, v6);
  *(v7 + 208) = v2;
  *(v7 + 216) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.query.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 208);
  v6 = *(v5 + 216);
  *(v1 + 48) = *(v5 + 208);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9099CCC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.query.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 208);
    *(v7 + 208) = v3;
    *(v7 + 216) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.blockID.getter()
{
  OUTLINED_FUNCTION_22_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 224, v3);
  return *(v2 + 224);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.blockID.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_144_5(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 224, v5);
  *(v6 + 224) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.blockID.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_11_28(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 224);
  *(v1 + 80) = *(v0 + 224);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9099E48(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 224) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.doNotFold.getter()
{
  OUTLINED_FUNCTION_22_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 228, v3);
  return *(v2 + 228);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.doNotFold.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_144_5(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 228, v5);
  *(v6 + 228) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.doNotFold.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_22(v3);
  OUTLINED_FUNCTION_62_0(v0 + 228);
  *(v1 + 84) = *(v0 + 228);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9099FB8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 228) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.entityIdentifier.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 232, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.entityIdentifier.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 232, v6);
  *(v7 + 232) = v2;
  *(v7 + 240) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.entityIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 232);
  v6 = *(v5 + 240);
  *(v1 + 48) = *(v5 + 232);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909A180()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.entityIdentifier.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 232);
    *(v7 + 232) = v3;
    *(v7 + 240) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.sectionHeader.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 248, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.sectionHeader.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 248, v6);
  *(v7 + 248) = v2;
  *(v7 + 256) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.sectionHeader.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 248);
  v6 = *(v5 + 256);
  *(v1 + 48) = *(v5 + 248);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909A354()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.sectionHeader.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 248);
    *(v7 + 248) = v3;
    *(v7 + 256) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.completion.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 264, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.completion.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 264, v6);
  *(v7 + 264) = v2;
  *(v7 + 272) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.completion.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 264);
  v6 = *(v5 + 272);
  *(v1 + 48) = *(v5 + 264);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909A528()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.completion.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 264);
    *(v7 + 264) = v3;
    *(v7 + 272) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.url.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 280, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.url.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 280, v6);
  *(v7 + 280) = v2;
  *(v7 + 288) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.url.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 280);
  v6 = *(v5 + 288);
  *(v1 + 48) = *(v5 + 280);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909A6FC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.url.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 280);
    *(v7 + 280) = v3;
    *(v7 + 288) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.moreResultsLabel.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 296, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.moreResultsLabel.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 296, v6);
  *(v7 + 296) = v2;
  *(v7 + 304) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.moreResultsLabel.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 296);
  v6 = *(v5 + 304);
  *(v1 + 48) = *(v5 + 296);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909A8D0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.moreResultsLabel.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 296);
    *(v7 + 296) = v3;
    *(v7 + 304) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.moreResultsURL.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 312, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.moreResultsURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 312, v6);
  *(v7 + 312) = v2;
  *(v7 + 320) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.moreResultsURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 312);
  v6 = *(v5 + 320);
  *(v1 + 48) = *(v5 + 312);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909AAA4()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.moreResultsURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 312);
    *(v7 + 312) = v3;
    *(v7 + 320) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.moreResultsPunchout.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 328, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.moreResultsPunchout.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 328, v6);
  *(v7 + 328) = v2;
  *(v7 + 336) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.moreResultsPunchout.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 328);
  v6 = *(v5 + 336);
  *(v1 + 48) = *(v5 + 328);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909AC78()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.moreResultsPunchout.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 328);
    *(v7 + 328) = v3;
    *(v7 + 336) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.bundleID.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 344, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.bundleID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 344, v6);
  *(v7 + 344) = v2;
  *(v7 + 352) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.bundleID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 344);
  v6 = *(v5 + 352);
  *(v1 + 48) = *(v5 + 344);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909AE4C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.bundleID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 344);
    *(v7 + 344) = v3;
    *(v7 + 352) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.renderHorizontally.getter()
{
  OUTLINED_FUNCTION_22_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 360, v3);
  return *(v2 + 360);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.renderHorizontally.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_144_5(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 360, v5);
  *(v6 + 360) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.renderHorizontally.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_22(v3);
  OUTLINED_FUNCTION_62_0(v0 + 360);
  *(v1 + 84) = *(v0 + 360);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B909AFC8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 360) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.alternativeUrls.getter()
{
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 368, v2);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.alternativeUrls.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_89_8();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 368, v5);
  *(v6 + 368) = a1;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.alternativeUrls.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_22_16();
  *(v1 + 64) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 368);
  *(v1 + 48) = *(v5 + 368);

  return OUTLINED_FUNCTION_514();
}

void sub_1B909B188()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {

    Apple_Parsec_Search_V1alpha_SearchResult.alternativeUrls.setter(v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_41_2();
    v7 = *(v3 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_5();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 368);
    *(v7 + 368) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.domainQuery.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 376, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.domainQuery.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 376, v6);
  *(v7 + 376) = v2;
  *(v7 + 384) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.domainQuery.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 376);
  v6 = *(v5 + 384);
  *(v1 + 48) = *(v5 + 376);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909B368()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.domainQuery.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 376);
    *(v7 + 376) = v3;
    *(v7 + 384) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.cardTitle.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 392, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.cardTitle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 392, v6);
  *(v7 + 392) = v2;
  *(v7 + 400) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.cardTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 392);
  v6 = *(v5 + 400);
  *(v1 + 48) = *(v5 + 392);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909B53C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.cardTitle.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 392);
    *(v7 + 392) = v3;
    *(v7 + 400) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.title.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 408, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.title.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 408, v6);
  *(v7 + 408) = v2;
  *(v7 + 416) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 408);
  v6 = *(v5 + 416);
  *(v1 + 48) = *(v5 + 408);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909B710()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.title.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 408);
    *(v7 + 408) = v3;
    *(v7 + 416) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.subTitle.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4(v0 + 424, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.subTitle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 424, v6);
  *(v7 + 424) = v2;
  *(v7 + 432) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.subTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 424);
  v6 = *(v5 + 432);
  *(v1 + 48) = *(v5 + 424);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B909B8E4()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.subTitle.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 424);
    *(v7 + 424) = v3;
    *(v7 + 432) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.entities.getter()
{
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 440, v2);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.entities.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_89_8();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 440, v5);
  *(v6 + 440) = a1;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.entities.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_22_16();
  *(v1 + 64) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 440);
  *(v1 + 48) = *(v5 + 440);

  return OUTLINED_FUNCTION_514();
}

void sub_1B909BAB0()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {

    Apple_Parsec_Search_V1alpha_SearchResult.entities.setter(v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_41_2();
    v7 = *(v3 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_5();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90A6AA8(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 440);
    *(v7 + 440) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.appPunchout.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(0);
  OUTLINED_FUNCTION_29_14(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_170_1();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v0);
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC3D28, &qword_1B9689650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_6();
    OUTLINED_FUNCTION_182();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.appPunchout.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D28, &qword_1B9689650);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Search_V1alpha_AppPunchout.init()(uint64_t a1)
{
  OUTLINED_FUNCTION_170_1();
  type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Search_V1alpha_SearchResult.appPunchout.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_27(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    v10[8] = 0;
    v10[9] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3D28, &qword_1B9689650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_6();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.isInstantAnswer.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_22(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.adamID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.resultType.getter()
{
  OUTLINED_FUNCTION_22_16();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType, v4);
  return *(v2 + v3);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.resultType.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_144_5(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType;
  result = OUTLINED_FUNCTION_9_3(v6 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType, v5);
  *(v6 + v9) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.resultType.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_11_28(v3);
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B909C154(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType;
  OUTLINED_FUNCTION_11_4();
  *(v6 + v9) = v3;

  free(v1);
}

uint64_t sub_1B909C1E8(void *a1)
{
  v1 = OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_6_2(v1);

  return OUTLINED_FUNCTION_288();
}

void sub_1B909C280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  v28 = OUTLINED_FUNCTION_112();
  v29 = *(type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(v28) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v21 + v29);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v32 = OUTLINED_FUNCTION_40_0();
    v31 = sub_1B90A6AA8(v32);
    *(v27 + v29) = v31;
  }

  v33 = (v31 + *v26);
  OUTLINED_FUNCTION_18(v33, &a10);
  *v33 = v22;
  v33[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.cardURL.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.titleImage.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v7 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v7);
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_182();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.titleImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_53_8();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.titleImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_Image(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_27(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B909C6D4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B90B7284();
    v2(v3);
    sub_1B90B72DC();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B909C7A8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_119_0(v5 + *a3);
  sub_1B8D92024();
  v15 = (a4)(0);
  OUTLINED_FUNCTION_178(v14, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_1B8D9207C(v14, v6, v4);
  return v17;
}

void sub_1B909C8A4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B90A6AA8(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B909C9A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_17();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4(v1 + v3, v4);
  return *(v1 + v3);
}

void sub_1B909C9EC()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_46_7();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.shouldUseCompactDisplay.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_22(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B909CAB8()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90A6AA8(v8);
    OUTLINED_FUNCTION_73_2(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v7 + v1) = v5;
  OUTLINED_FUNCTION_242();

  free(v10);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.shouldEnableLocation.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_22(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.resultEntity.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v7 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  OUTLINED_FUNCTION_29_14(v7);
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CA4A8 != -1)
    {
      OUTLINED_FUNCTION_149_2(&qword_1ED9CA4A8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8FC0, &unk_1B964D7B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_7();
    OUTLINED_FUNCTION_182();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.resultEntity.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FC0, &unk_1B964D7B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.resultEntity.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_27(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CA4A8 != -1)
    {
      OUTLINED_FUNCTION_149_2(&qword_1ED9CA4A8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8FC0, &unk_1B964D7B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_7();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.zkwTopic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 12) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    result = OUTLINED_FUNCTION_57(v7);
    if (!v8)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC3D30, &qword_1B9689658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_10();
    OUTLINED_FUNCTION_472();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.zkwTopic.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D30, &qword_1B9689658);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.zkwTopic.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_27(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
    *(v10 + 12) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
    OUTLINED_FUNCTION_6_19(v15);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3D30, &qword_1B9689658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_10();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.suppressedSuggestion.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.suggestionHintID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.isInappropriateDetected.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_22(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.initiallyHidden.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_22(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.appleReferrer.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.subDomain.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.subType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.suggestion.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.entityExpTriggeredForRelatedSearch.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_22(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.sectionHeaderMore.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.sectionHeaderMoreURL.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.mediaKind.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.thumbnailAlign.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.description_p.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.thumbnail.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v7 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  OUTLINED_FUNCTION_29_14(v7);
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7190 != -1)
    {
      OUTLINED_FUNCTION_14_16(&qword_1EBAB7190);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3D38, &qword_1B9689660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_182();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.thumbnail.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D38, &qword_1B9689660);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_2_31();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.thumbnail.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_27(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7190 != -1)
    {
      OUTLINED_FUNCTION_14_16(&qword_1EBAB7190);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3D38, &qword_1B9689660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.completionIcon.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v7 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  OUTLINED_FUNCTION_29_14(v7);
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7190 != -1)
    {
      OUTLINED_FUNCTION_14_16(&qword_1EBAB7190);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3D38, &qword_1B9689660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_182();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.completionIcon.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D38, &qword_1B9689660);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_2_31();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.completionIcon.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_27(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7190 != -1)
    {
      OUTLINED_FUNCTION_14_16(&qword_1EBAB7190);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3D38, &qword_1B9689660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.auxiliaryInfoAlign.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void Apple_Parsec_Search_V1alpha_SearchResult.deprecatedIcon.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_194_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_71(v9);
  v2[5] = sub_1B964C200();
  OUTLINED_FUNCTION_30_1();
  v2[6] = v10;
  v12 = *(v11 + 64);
  v2[7] = __swift_coroFrameAllocStub(v12);
  v2[8] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedIcon, v2);
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    sub_1B964C1F0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3D40, &qword_1B9689668);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_236();
    v15(v14);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B909E8B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D40, &qword_1B9689668);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0(v3);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  v4 = sub_1B964C200();
  OUTLINED_FUNCTION_29_14(v4);
  if (v5)
  {
    sub_1B964C1F0();
    result = OUTLINED_FUNCTION_57(v0);
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC3D40, &qword_1B9689668);
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_472();
    return v7(v6);
  }

  return result;
}

uint64_t sub_1B909E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1B964C200();
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v8 = OUTLINED_FUNCTION_461();
  v9(v8);
  return a5(v5);
}

uint64_t sub_1B909EA80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D40, &qword_1B9689668);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *(type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v4 = OUTLINED_FUNCTION_40_0();
    *(v0 + v3) = sub_1B90A6AA8(v4);
  }

  v5 = sub_1B964C200();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_466();
  v6();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.deprecatedSecondaryImage.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_194_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_71(v9);
  v2[5] = sub_1B964C200();
  OUTLINED_FUNCTION_30_1();
  v2[6] = v10;
  v12 = *(v11 + 64);
  v2[7] = __swift_coroFrameAllocStub(v12);
  v2[8] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedSecondaryImage, v2);
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    sub_1B964C1F0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3D40, &qword_1B9689668);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_236();
    v15(v14);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B909ED30()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 64);
  if (v6)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[4];
    (*(v8 + 16))(*(*v0 + 56), v5, v7);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v9 = v3[4];
    v1(*(*v0 + 64));
  }

  free(v5);
  free(v4);
  free(v9);
  OUTLINED_FUNCTION_242();

  free(v10);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.moreResultsButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  type metadata accessor for Searchfoundation_CommandButtonItem(0);
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_Image(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    type metadata accessor for Searchfoundation_Command(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_57(v7);
    if (!v8)
    {
      return sub_1B8D9207C(v7, &unk_1EBAC3D48, &qword_1B9689670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_472();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.moreResultsButton.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_50_9();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.moreResultsButton.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_CommandButtonItem(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_27(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = MEMORY[0x1E69E7CC0];
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_Image(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = type metadata accessor for Searchfoundation_Command(0);
    OUTLINED_FUNCTION_6_19(v19);
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBAC3D48, &qword_1B9689670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.viewName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.contentText.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.icon.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v7 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  OUTLINED_FUNCTION_29_14(v7);
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7190 != -1)
    {
      OUTLINED_FUNCTION_14_16(&qword_1EBAB7190);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3D38, &qword_1B9689660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_182();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.icon.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D38, &qword_1B9689660);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_2_31();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.icon.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_27(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7190 != -1)
    {
      OUTLINED_FUNCTION_14_16(&qword_1EBAB7190);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3D38, &qword_1B9689660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.secondaryImage.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v7 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  OUTLINED_FUNCTION_29_14(v7);
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7190 != -1)
    {
      OUTLINED_FUNCTION_14_16(&qword_1EBAB7190);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3D38, &qword_1B9689660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_182();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.secondaryImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D38, &qword_1B9689660);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_2_31();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.secondaryImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_27(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7190 != -1)
    {
      OUTLINED_FUNCTION_14_16(&qword_1EBAB7190);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3D38, &qword_1B9689660);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.autoNavigate.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_22(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.noGoTakeover.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_22(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.mapsData.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_176_5();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.mapsDataType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.mapsResultType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.nearbyBusinesses.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.passageID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B90A00BC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_191();
    v9 = OUTLINED_FUNCTION_461();
    v8(v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_200_2();
    v11 = *(v5 + v1);
    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_5();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B90A6AA8(v12);
      OUTLINED_FUNCTION_73_2(v13);
    }

    v14 = (v11 + *v4);
    OUTLINED_FUNCTION_18(v14, v0 + 24);
    *v14 = v3;
    v14[1] = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t sub_1B90A0170()
{
  v0 = OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_6_2(v0);
  v1 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v1, v2);
  return OUTLINED_FUNCTION_288();
}

void sub_1B90A020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  v28 = OUTLINED_FUNCTION_112();
  v29 = *(type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(v28) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v21 + v29);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v32 = OUTLINED_FUNCTION_40_0();
    v31 = sub_1B90A6AA8(v32);
    *(v27 + v29) = v31;
  }

  v33 = (v31 + *v26);
  OUTLINED_FUNCTION_18(v33, &a10);
  v34 = *v33;
  v35 = v33[1];
  *v33 = v22;
  v33[1] = v20;
  sub_1B8D538A0(v34, v35);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pb.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_176_5();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbDecoded.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_55();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Search_V1alpha_UIComponentDetail.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Search_V1alpha_SearchResult.pbDecoded.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_27(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_181_3();
    OUTLINED_FUNCTION_6_19(v14);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3D50, &qword_1B9689678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbRow.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_176_5();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbRowDecoded.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_55();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.pbRowDecoded.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_27(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_181_3();
    OUTLINED_FUNCTION_6_19(v14);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3D50, &qword_1B9689678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbCompact.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_176_5();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbCompactDecoded.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_55();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.pbCompactDecoded.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_27(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_181_3();
    OUTLINED_FUNCTION_6_19(v14);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3D50, &qword_1B9689678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbCompactTophit.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_176_5();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbCompactTophitDecoded.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_55();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.pbCompactTophitDecoded.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_27(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_181_3();
    OUTLINED_FUNCTION_6_19(v14);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3D50, &qword_1B9689678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbDescriptive.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_176_5();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbDescriptiveDecoded.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_55();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.pbDescriptiveDecoded.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_27(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_181_3();
    OUTLINED_FUNCTION_6_19(v14);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3D50, &qword_1B9689678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbDetailed.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_176_5();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbDetailedDecoded.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_55();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.pbDetailedDecoded.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_27(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_181_3();
    OUTLINED_FUNCTION_6_19(v14);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3D50, &qword_1B9689678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbTophit.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_176_5();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A178C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v7)
  {
    v8 = v6;
    v9 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v9, v10);
    v11 = OUTLINED_FUNCTION_461();
    v8(v11);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_200_2();
    v15 = *(v5 + v1);
    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_5();
      v16 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B90A6AA8(v16);
      OUTLINED_FUNCTION_73_2(v17);
    }

    v18 = (v15 + *v4);
    OUTLINED_FUNCTION_18(v18, v0 + 24);
    v12 = *v18;
    v13 = v18[1];
    *v18 = v3;
    v18[1] = v2;
  }

  sub_1B8D538A0(v12, v13);
  OUTLINED_FUNCTION_242();

  free(v19);
}

uint64_t sub_1B90A1848()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - v2;
  OUTLINED_FUNCTION_13_17();
  v4 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0(v4);
  OUTLINED_FUNCTION_209();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  OUTLINED_FUNCTION_57(v3);
  if (v5)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_Card(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    result = OUTLINED_FUNCTION_57(v3);
    if (!v5)
    {
      return sub_1B8D9207C(v3, &qword_1EBAC3D50, &qword_1B9689678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_472();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.pbTophitDecoded.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_46_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B90A6AA8(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_55();
  OUTLINED_FUNCTION_294();
  sub_1B90B722C();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Search_V1alpha_SearchResult.pbTophitDecoded.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_27(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_181_3();
    OUTLINED_FUNCTION_6_19(v14);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3D50, &qword_1B9689678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90A1C40@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Apple_Parsec_Search_V1alpha_AppPunchout.bundleID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_AppPunchout.installURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_AppPunchout.punchoutUri.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_AppPunchout.label.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_AppPunchout.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_AppPunchout.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

void (*Apple_Parsec_Search_V1alpha_AppPunchout.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.name.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void Apple_Parsec_Search_V1alpha_Entity.category.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.category.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.topics.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Entity(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Entity(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

void (*Apple_Parsec_Search_V1alpha_Entity.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Entity(v0);
  return nullsub_1;
}

uint64_t sub_1B90A2290@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_V1alpha_Entity.Category.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90A22C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90B73D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.Topic.identifier.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.Topic.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Entity.Topic(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.Topic.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Entity.Topic(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

void (*Apple_Parsec_Search_V1alpha_Entity.Topic.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Entity.Topic(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.Topic.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for Apple_Parsec_Search_V1alpha_Entity.Topic(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_V1alpha_Entity.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Search_V1alpha_Entity(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t (*static Apple_Parsec_Search_V1alpha_Entity.Category.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B90A2608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Search_V1alpha_Entity.Category.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_UIComponentDetail.sfCard.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D30A0 != -1)
    {
      OUTLINED_FUNCTION_153_3(&qword_1ED9D30A0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3D58, &unk_1B9689680);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_182();
    return sub_1B90B722C();
  }

  return result;
}

uint64_t sub_1B90A2738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B90B7284();
  return a7(v11);
}

uint64_t Apple_Parsec_Search_V1alpha_UIComponentDetail.sfCard.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC3D58, &unk_1B9689680);
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_122_0();
  sub_1B90B722C();
  type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Search_V1alpha_UIComponentDetail.sfCard.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D58, &unk_1B9689680);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Card(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  *(v3 + 10) = *(type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0) + 20);
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D30A0 != -1)
    {
      OUTLINED_FUNCTION_153_3(&qword_1ED9D30A0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAC3D58, &unk_1B9689680);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_246();
    sub_1B90B722C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B90A29C4()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    sub_1B90B7284();
    sub_1B8D9207C(v6 + v1, &qword_1EBAC3D58, &unk_1B9689680);
    sub_1B90B722C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    sub_1B90B72DC();
  }

  else
  {
    sub_1B8D9207C(v6 + v1, &qword_1EBAC3D58, &unk_1B9689680);
    OUTLINED_FUNCTION_16_18();
    sub_1B90B722C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Search_V1alpha_UIComponentDetail.hasSfCard.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(v5);
  sub_1B8D92024();
  v6 = type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_178(v0, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &unk_1B9689680);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Search_V1alpha_UIComponentDetail.clearSfCard()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC3D58, &unk_1B9689680);
  type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B90A2C24(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_10_4(*(v1 + *(v2 + 20)) + 16, v3);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_Image.keyColor.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 16, v6);
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.keyColor.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90A2D90()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_Image.keyColor.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
      OUTLINED_FUNCTION_92_5();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90B54F0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.url.getter()
{
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_Image.url.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 32, v6);
  *(v7 + 32) = v2;
  *(v7 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.url.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90A2F84()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_Image.url.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
      OUTLINED_FUNCTION_92_5();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90B54F0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t sub_1B90A3034(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_10_4(*(v1 + *(v2 + 20)) + 48, v3);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_Image.darkURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = v2;
  *(v7 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.darkURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  v6 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90A31A0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_Image.darkURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
      OUTLINED_FUNCTION_92_5();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90B54F0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

uint64_t sub_1B90A3250(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_10_4(*(v1 + *(v2 + 20)) + 64, v3);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_Image.contentType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 64, v6);
  *(v7 + 64) = v2;
  *(v7 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.contentType.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  v6 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90A33BC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_Image.contentType.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
      OUTLINED_FUNCTION_92_5();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90B54F0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.bundleID.getter()
{
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 80, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_Image.bundleID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 80, v6);
  *(v7 + 80) = v2;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.bundleID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v6 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90A35B0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_Image.bundleID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
      OUTLINED_FUNCTION_92_5();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90B54F0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 80);
    *(v7 + 80) = v3;
    *(v7 + 88) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.errorReason.getter()
{
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 96, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_Image.errorReason.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 96, v6);
  *(v7 + 96) = v2;
  *(v7 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.errorReason.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  v6 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90A37A4()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_Image.errorReason.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
      OUTLINED_FUNCTION_92_5();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90B54F0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 96);
    *(v7 + 96) = v3;
    *(v7 + 104) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.monogram.getter()
{
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 112, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_Image.monogram.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 112, v6);
  *(v7 + 112) = v2;
  *(v7 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.monogram.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  v6 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90A3998()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_Image.monogram.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
      OUTLINED_FUNCTION_92_5();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90B54F0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 112);
    *(v7 + 112) = v3;
    *(v7 + 120) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.id.getter()
{
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 128, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_Image.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 128, v6);
  *(v7 + 128) = v2;
  *(v7 + 136) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  v6 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90A3B8C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_Image.id.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
      OUTLINED_FUNCTION_92_5();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B90B54F0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 128);
    *(v7 + 128) = v3;
    *(v7 + 136) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.data.getter()
{
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 144, v2);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_Image.data.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 144, v6);
  v10 = *(v7 + 144);
  v11 = *(v7 + 152);
  *(v7 + 144) = v2;
  *(v7 + 152) = v0;
  sub_1B8D538A0(v10, v11);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.data.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A3D80()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v6, v7);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_Image.data.setter();
    v8 = v0[6];
    v9 = v0[7];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_163_1();
    v11 = *(v4 + v1);
    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
      OUTLINED_FUNCTION_92_5();
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B90B54F0(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3(v11 + 144);
    v8 = *(v11 + 144);
    v9 = *(v11 + 152);
    *(v11 + 144) = v3;
    *(v11 + 152) = v2;
  }

  sub_1B8D538A0(v8, v9);

  free(v0);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.height.getter()
{
  OUTLINED_FUNCTION_37_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 160, v3);
  return *(v2 + 160);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.height.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 160, v6);
  *(v7 + 160) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_Image.height.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  *(v1 + 80) = *(v0 + 160);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A3F24(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90B54F0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.width.getter()
{
  OUTLINED_FUNCTION_37_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 164, v3);
  return *(v2 + 164);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.width.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 164, v6);
  *(v7 + 164) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_Image.width.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 164);
  *(v1 + 80) = *(v0 + 164);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A40AC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90B54F0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 164) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.roundCorner.getter()
{
  OUTLINED_FUNCTION_37_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 168, v3);
  return *(v2 + 168);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.roundCorner.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 168, v6);
  *(v7 + 168) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_Image.roundCorner.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  *(v1 + 80) = *(v0 + 168);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A4234(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90B54F0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 168) = v3;

  free(v1);
}

void Apple_Parsec_Search_V1alpha_Image.cornerRoundingStyle.getter()
{
  OUTLINED_FUNCTION_37_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 176, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 176));
}

void Apple_Parsec_Search_V1alpha_Image.cornerRoundingStyle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 176, v6);
  *(v7 + 176) = v1;
  *(v7 + 184) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.cornerRoundingStyle.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0(v0 + 176);
  OUTLINED_FUNCTION_71_2(*(v0 + 176));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A43D0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_138_2();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90B54F0(v6);
    OUTLINED_FUNCTION_73_2(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 176) = v1;
  *(v5 + 184) = v2;
  OUTLINED_FUNCTION_242();

  free(v8);
}

void Apple_Parsec_Search_V1alpha_Image.appIconType.getter()
{
  OUTLINED_FUNCTION_37_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 192, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 192));
}

uint64_t sub_1B90A44EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void Apple_Parsec_Search_V1alpha_Image.appIconType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_141_6(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 192, v6);
  *(v7 + 192) = v1;
  *(v7 + 200) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_Image.appIconType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  OUTLINED_FUNCTION_71_2(*(v0 + 192));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A4604()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_138_2();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90B54F0(v6);
    OUTLINED_FUNCTION_73_2(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 192) = v1;
  *(v5 + 200) = v2;
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.baselineOffset.getter()
{
  OUTLINED_FUNCTION_37_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 204, v3);
  return *(v2 + 204);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.baselineOffset.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 204, v6);
  *(v7 + 204) = v0;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_Image.baselineOffset.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0(v0 + 204);
  *(v1 + 80) = *(v0 + 204);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A479C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90B54F0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 204) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.isTemplate.getter()
{
  OUTLINED_FUNCTION_37_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 208, v3);
  return *(v2 + 208);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.isTemplate.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 208, v6);
  *(v7 + 208) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_Image.isTemplate.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4) + 20);
  *(v1 + 80) = v5;
  v6 = *(v0 + v5);
  OUTLINED_FUNCTION_62_0(v6 + 208);
  *(v1 + 84) = *(v6 + 208);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A4930(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90B54F0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 208) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.cropCircle.getter()
{
  OUTLINED_FUNCTION_37_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 209, v3);
  return *(v2 + 209);
}

uint64_t Apple_Parsec_Search_V1alpha_Image.cropCircle.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90B54F0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 209, v6);
  *(v7 + 209) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_Image.cropCircle.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Search_V1alpha_Image(v4) + 20);
  *(v1 + 80) = v5;
  v6 = *(v0 + v5);
  OUTLINED_FUNCTION_62_0(v6 + 209);
  *(v1 + 84) = *(v6 + 209);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90A4ACC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Image._StorageClass();
    OUTLINED_FUNCTION_92_5();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90B54F0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 209) = v3;

  free(v1);
}

uint64_t sub_1B90A4B78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3C50);
  __swift_project_value_buffer(v0, qword_1EBAC3C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TEMPLATE_TYPE_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TEMPLATE_TYPE_GENERIC";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90A4D80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3C68);
  __swift_project_value_buffer(v0, qword_1EBAC3C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_1B9689640;
  v4 = v191 + v3 + v1[14];
  *(v191 + v3) = 1;
  *v4 = "domain";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  *(v4 + 24) = "type";
  *(v4 + 32) = 4;
  *(v4 + 40) = 2;
  v5 = *MEMORY[0x1E69AADD8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v191 + v3 + v2 + v1[14];
  *(v191 + v3 + v2) = 2;
  *v8 = "template_type";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  *(v8 + 24) = "template";
  *(v8 + 32) = 8;
  *(v8 + 40) = 2;
  v7();
  v9 = v1[14];
  v10 = (v191 + v3 + 2 * v2);
  *v10 = 3;
  v11 = v10 + v9;
  *v11 = "identifier";
  *(v11 + 1) = 10;
  v11[16] = 2;
  *(v11 + 3) = "id";
  *(v11 + 4) = 2;
  v11[40] = 2;
  v7();
  v12 = v1[14];
  v13 = (v191 + v3 + 3 * v2);
  *v13 = 4;
  v14 = v13 + v12;
  *v14 = "canonical_id";
  *(v14 + 1) = 12;
  v14[16] = 2;
  *(v14 + 3) = "canon_id";
  *(v14 + 4) = 8;
  v14[40] = 2;
  v7();
  v15 = (v191 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "score";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = v1[14];
  v18 = (v191 + v3 + 5 * v2);
  *v18 = 6;
  v19 = v18 + v17;
  *v19 = "feedback_result";
  *(v19 + 1) = 15;
  v19[16] = 2;
  *(v19 + 3) = "fbr";
  *(v19 + 4) = 3;
  v19[40] = 2;
  v7();
  v20 = (v191 + v3 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "section_key";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v7();
  v22 = v1[14];
  v23 = (v191 + v3 + 7 * v2);
  *v23 = 8;
  v24 = v23 + v22;
  *v24 = "top_hit";
  *(v24 + 1) = 7;
  v24[16] = 2;
  *(v24 + 3) = "tophit";
  *(v24 + 4) = 6;
  v24[40] = 2;
  v7();
  v25 = (v191 + v3 + 8 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "prefer_top_platter";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v7();
  v27 = (v191 + v3 + 9 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "placement";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v191 + v3 + 10 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "hide_rank";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v7();
  v31 = (v191 + v3 + 11 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "section_bundle_id";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v191 + v3 + 12 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "entity_type";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v191 + v3 + 13 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "server_features";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v7();
  v37 = (v191 + v3 + 14 * v2);
  v38 = v37 + v1[14];
  *v37 = 15;
  *v38 = "filtered";
  *(v38 + 1) = 8;
  v38[16] = 2;
  v7();
  v39 = (v191 + v3 + 15 * v2);
  v40 = v39 + v1[14];
  *v39 = 16;
  *v40 = "query";
  *(v40 + 1) = 5;
  v40[16] = 2;
  v7();
  v41 = (v191 + v3 + 16 * v2);
  v42 = v41 + v1[14];
  *v41 = 17;
  *v42 = "block_id";
  *(v42 + 1) = 8;
  v42[16] = 2;
  v7();
  v43 = (v191 + v3 + 17 * v2);
  v44 = v43 + v1[14];
  *v43 = 18;
  *v44 = "do_not_fold";
  *(v44 + 1) = 11;
  v44[16] = 2;
  v7();
  v45 = (v191 + v3 + 18 * v2);
  v46 = v45 + v1[14];
  *v45 = 19;
  *v46 = "entity_identifier";
  *(v46 + 1) = 17;
  v46[16] = 2;
  v7();
  v47 = (v191 + v3 + 19 * v2);
  v48 = v47 + v1[14];
  *v47 = 20;
  *v48 = "section_header";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v191 + v3 + 20 * v2);
  v50 = v49 + v1[14];
  *v49 = 21;
  *v50 = "completion";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v7();
  v51 = (v191 + v3 + 21 * v2);
  v52 = v51 + v1[14];
  *v51 = 22;
  *v52 = "url";
  *(v52 + 1) = 3;
  v52[16] = 2;
  v7();
  v53 = (v191 + v3 + 22 * v2);
  v54 = v53 + v1[14];
  *v53 = 23;
  *v54 = "more_results_label";
  *(v54 + 1) = 18;
  v54[16] = 2;
  v7();
  v55 = (v191 + v3 + 23 * v2);
  v56 = v55 + v1[14];
  *v55 = 24;
  *v56 = "more_results_url";
  *(v56 + 1) = 16;
  v56[16] = 2;
  v7();
  v57 = (v191 + v3 + 24 * v2);
  v58 = v57 + v1[14];
  *v57 = 25;
  *v58 = "more_results_punchout";
  *(v58 + 1) = 21;
  v58[16] = 2;
  v7();
  v59 = (v191 + v3 + 25 * v2);
  v60 = v59 + v1[14];
  *v59 = 26;
  *v60 = "bundle_id";
  *(v60 + 1) = 9;
  v60[16] = 2;
  v7();
  v61 = (v191 + v3 + 26 * v2);
  v62 = v61 + v1[14];
  *v61 = 27;
  *v62 = "render_horizontally";
  *(v62 + 1) = 19;
  v62[16] = 2;
  v7();
  v63 = (v191 + v3 + 27 * v2);
  v64 = v63 + v1[14];
  *v63 = 28;
  *v64 = "alternative_urls";
  *(v64 + 1) = 16;
  v64[16] = 2;
  v7();
  v65 = (v191 + v3 + 28 * v2);
  v66 = v65 + v1[14];
  *v65 = 29;
  *v66 = "domain_query";
  *(v66 + 1) = 12;
  v66[16] = 2;
  v7();
  v67 = (v191 + v3 + 29 * v2);
  v68 = v67 + v1[14];
  *v67 = 30;
  *v68 = "card_title";
  *(v68 + 1) = 10;
  v68[16] = 2;
  v7();
  v69 = (v191 + v3 + 30 * v2);
  v70 = v69 + v1[14];
  *v69 = 31;
  *v70 = "title";
  *(v70 + 1) = 5;
  v70[16] = 2;
  v7();
  v71 = v1[14];
  v72 = (v191 + v3 + 31 * v2);
  *v72 = 32;
  v73 = v72 + v71;
  *v73 = "sub_title";
  *(v73 + 1) = 9;
  v73[16] = 2;
  *(v73 + 3) = "subtitle";
  *(v73 + 4) = 8;
  v73[40] = 2;
  v7();
  v74 = (v191 + v3 + 32 * v2);
  v75 = v74 + v1[14];
  *v74 = 33;
  *v75 = "entities";
  *(v75 + 1) = 8;
  v75[16] = 2;
  v7();
  v76 = v1[14];
  v77 = (v191 + v3 + 33 * v2);
  *v77 = 34;
  v78 = v77 + v76;
  *v78 = "app_punchout";
  *(v78 + 1) = 12;
  v78[16] = 2;
  *(v78 + 3) = "app";
  *(v78 + 4) = 3;
  v78[40] = 2;
  v7();
  v79 = (v191 + v3 + 34 * v2);
  v80 = v79 + v1[14];
  *v79 = 35;
  *v80 = "is_instant_answer";
  *(v80 + 1) = 17;
  v80[16] = 2;
  v7();
  v81 = (v191 + v3 + 35 * v2);
  v82 = v81 + v1[14];
  *v81 = 36;
  *v82 = "adam_id";
  *(v82 + 1) = 7;
  v82[16] = 2;
  v7();
  v83 = v1[14];
  v84 = (v191 + v3 + 36 * v2);
  *v84 = 37;
  v85 = v84 + v83;
  *v85 = "result_type";
  *(v85 + 1) = 11;
  v85[16] = 2;
  *(v85 + 3) = "_type";
  *(v85 + 4) = 5;
  v85[40] = 2;
  v7();
  v86 = (v191 + v3 + 37 * v2);
  v87 = v86 + v1[14];
  *v86 = 38;
  *v87 = "card_url";
  *(v87 + 1) = 8;
  v87[16] = 2;
  v7();
  v88 = (v191 + v3 + 38 * v2);
  v89 = v88 + v1[14];
  *v88 = 39;
  *v89 = "title_image";
  *(v89 + 1) = 11;
  v89[16] = 2;
  v7();
  v90 = (v191 + v3 + 39 * v2);
  v91 = v90 + v1[14];
  *v90 = 40;
  *v91 = "should_use_compact_display";
  *(v91 + 1) = 26;
  v91[16] = 2;
  v7();
  v92 = (v191 + v3 + 40 * v2);
  v93 = v92 + v1[14];
  *v92 = 41;
  *v93 = "should_enable_location";
  *(v93 + 1) = 22;
  v93[16] = 2;
  v7();
  v94 = (v191 + v3 + 41 * v2);
  v95 = v94 + v1[14];
  *v94 = 42;
  *v95 = "result_entity";
  *(v95 + 1) = 13;
  v95[16] = 2;
  v7();
  v96 = (v191 + v3 + 42 * v2);
  v97 = v96 + v1[14];
  *v96 = 43;
  *v97 = "zkw_topic";
  *(v97 + 1) = 9;
  v97[16] = 2;
  v7();
  v98 = (v191 + v3 + 43 * v2);
  v99 = v98 + v1[14];
  *v98 = 44;
  *v99 = "suppressed_suggestion";
  *(v99 + 1) = 21;
  v99[16] = 2;
  v7();
  v100 = (v191 + v3 + 44 * v2);
  v101 = v100 + v1[14];
  *v100 = 45;
  *v101 = "suggestion_hint_id";
  *(v101 + 1) = 18;
  v101[16] = 2;
  v7();
  v102 = (v191 + v3 + 45 * v2);
  v103 = v102 + v1[14];
  *v102 = 46;
  *v103 = "is_inappropriate_detected";
  *(v103 + 1) = 25;
  v103[16] = 2;
  v7();
  v104 = (v191 + v3 + 46 * v2);
  v105 = v104 + v1[14];
  *v104 = 47;
  *v105 = "initially_hidden";
  *(v105 + 1) = 16;
  v105[16] = 2;
  v7();
  v106 = (v191 + v3 + 47 * v2);
  v107 = v106 + v1[14];
  *v106 = 48;
  *v107 = "apple_referrer";
  *(v107 + 1) = 14;
  v107[16] = 2;
  v7();
  v108 = v1[14];
  v109 = (v191 + v3 + 48 * v2);
  *v109 = 49;
  v110 = v109 + v108;
  *v110 = "sub_domain";
  *(v110 + 1) = 10;
  v110[16] = 2;
  *(v110 + 3) = "subdomain";
  *(v110 + 4) = 9;
  v110[40] = 2;
  v7();
  v111 = v1[14];
  v112 = (v191 + v3 + 49 * v2);
  *v112 = 50;
  v113 = v112 + v111;
  *v113 = "sub_type";
  *(v113 + 1) = 8;
  v113[16] = 2;
  *(v113 + 3) = "subtype";
  *(v113 + 4) = 7;
  v113[40] = 2;
  v7();
  v114 = (v191 + v3 + 50 * v2);
  v115 = v114 + v1[14];
  *v114 = 51;
  *v115 = "suggestion";
  *(v115 + 1) = 10;
  v115[16] = 2;
  v7();
  v116 = (v191 + v3 + 51 * v2);
  v117 = v116 + v1[14];
  *v116 = 52;
  *v117 = "entity_exp_triggered_for_related_search";
  *(v117 + 1) = 39;
  v117[16] = 2;
  v7();
  v118 = (v191 + v3 + 52 * v2);
  v119 = v118 + v1[14];
  *v118 = 53;
  *v119 = "section_header_more";
  *(v119 + 1) = 19;
  v119[16] = 2;
  v7();
  v120 = (v191 + v3 + 53 * v2);
  v121 = v120 + v1[14];
  *v120 = 54;
  *v121 = "section_header_more_url";
  *(v121 + 1) = 23;
  v121[16] = 2;
  v7();
  v122 = (v191 + v3 + 54 * v2);
  v123 = v122 + v1[14];
  *v122 = 55;
  *v123 = "media_kind";
  *(v123 + 1) = 10;
  v123[16] = 2;
  v7();
  v124 = (v191 + v3 + 55 * v2);
  v125 = v124 + v1[14];
  *v124 = 56;
  *v125 = "thumbnail_align";
  *(v125 + 1) = 15;
  v125[16] = 2;
  v7();
  v126 = (v191 + v3 + 56 * v2);
  v127 = v126 + v1[14];
  *v126 = 57;
  *v127 = "description";
  *(v127 + 1) = 11;
  v127[16] = 2;
  v7();
  v128 = (v191 + v3 + 57 * v2);
  v129 = v128 + v1[14];
  *v128 = 58;
  *v129 = "thumbnail";
  *(v129 + 1) = 9;
  v129[16] = 2;
  v7();
  v130 = (v191 + v3 + 58 * v2);
  v131 = v130 + v1[14];
  *v130 = 59;
  *v131 = "completion_icon";
  *(v131 + 1) = 15;
  v131[16] = 2;
  v7();
  v132 = (v191 + v3 + 59 * v2);
  v133 = v132 + v1[14];
  *v132 = 60;
  *v133 = "auxiliary_info_align";
  *(v133 + 1) = 20;
  v133[16] = 2;
  v7();
  v134 = (v191 + v3 + 60 * v2);
  v135 = v134 + v1[14];
  *v134 = 61;
  *v135 = "deprecated_icon";
  *(v135 + 1) = 15;
  v135[16] = 2;
  v7();
  v136 = (v191 + v3 + 61 * v2);
  v137 = v136 + v1[14];
  *v136 = 62;
  *v137 = "deprecated_secondary_image";
  *(v137 + 1) = 26;
  v137[16] = 2;
  v7();
  v138 = (v191 + v3 + 62 * v2);
  v139 = v138 + v1[14];
  *v138 = 63;
  *v139 = "more_results_button";
  *(v139 + 1) = 19;
  v139[16] = 2;
  v7();
  v140 = (v191 + v3 + 63 * v2);
  v141 = v140 + v1[14];
  *v140 = 64;
  *v141 = "view_name";
  *(v141 + 1) = 9;
  v141[16] = 2;
  v7();
  v142 = (v191 + v3 + (v2 << 6));
  v143 = v142 + v1[14];
  *v142 = 65;
  *v143 = "content_text";
  *(v143 + 1) = 12;
  v143[16] = 2;
  v7();
  v144 = (v191 + v3 + 65 * v2);
  v145 = v144 + v1[14];
  *v144 = 66;
  *v145 = "icon";
  *(v145 + 1) = 4;
  v145[16] = 2;
  v7();
  v146 = (v191 + v3 + 66 * v2);
  v147 = v146 + v1[14];
  *v146 = 67;
  *v147 = "secondary_image";
  *(v147 + 1) = 15;
  v147[16] = 2;
  v7();
  v148 = (v191 + v3 + 67 * v2);
  v149 = v148 + v1[14];
  *v148 = 68;
  *v149 = "auto_navigate";
  *(v149 + 1) = 13;
  v149[16] = 2;
  v7();
  v150 = (v191 + v3 + 68 * v2);
  v151 = v150 + v1[14];
  *v150 = 69;
  *v151 = "no_go_takeover";
  *(v151 + 1) = 14;
  v151[16] = 2;
  v7();
  v152 = (v191 + v3 + 69 * v2);
  v153 = v152 + v1[14];
  *v152 = 81;
  *v153 = "maps_data";
  *(v153 + 1) = 9;
  v153[16] = 2;
  v7();
  v154 = (v191 + v3 + 70 * v2);
  v155 = v154 + v1[14];
  *v154 = 82;
  *v155 = "maps_data_type";
  *(v155 + 1) = 14;
  v155[16] = 2;
  v7();
  v156 = (v191 + v3 + 71 * v2);
  v157 = v156 + v1[14];
  *v156 = 83;
  *v157 = "maps_result_type";
  *(v157 + 1) = 16;
  v157[16] = 2;
  v7();
  v158 = (v191 + v3 + 72 * v2);
  v159 = v158 + v1[14];
  *v158 = 84;
  *v159 = "nearby_businesses";
  *(v159 + 1) = 17;
  v159[16] = 2;
  v7();
  v160 = (v191 + v3 + 73 * v2);
  v161 = v160 + v1[14];
  *v160 = 85;
  *v161 = "passage_id";
  *(v161 + 1) = 10;
  v161[16] = 2;
  v7();
  v162 = (v191 + v3 + 74 * v2);
  v163 = v162 + v1[14];
  *v162 = 100;
  *v163 = "pb";
  *(v163 + 1) = 2;
  v163[16] = 2;
  v7();
  v164 = (v191 + v3 + 75 * v2);
  v165 = v164 + v1[14];
  *v164 = 101;
  *v165 = "pb_decoded";
  *(v165 + 1) = 10;
  v165[16] = 2;
  v7();
  v166 = (v191 + v3 + 76 * v2);
  v167 = v166 + v1[14];
  *v166 = 102;
  *v167 = "pb_row";
  *(v167 + 1) = 6;
  v167[16] = 2;
  v7();
  v168 = (v191 + v3 + 77 * v2);
  v169 = v168 + v1[14];
  *v168 = 103;
  *v169 = "pb_row_decoded";
  *(v169 + 1) = 14;
  v169[16] = 2;
  v7();
  v170 = (v191 + v3 + 78 * v2);
  v171 = v170 + v1[14];
  *v170 = 104;
  *v171 = "pb_compact";
  *(v171 + 1) = 10;
  v171[16] = 2;
  v7();
  v172 = (v191 + v3 + 79 * v2);
  v173 = v172 + v1[14];
  *v172 = 105;
  *v173 = "pb_compact_decoded";
  *(v173 + 1) = 18;
  v173[16] = 2;
  v7();
  v174 = (v191 + v3 + 80 * v2);
  v175 = v174 + v1[14];
  *v174 = 106;
  *v175 = "pb_compact_tophit";
  *(v175 + 1) = 17;
  v175[16] = 2;
  v7();
  v176 = (v191 + v3 + 81 * v2);
  v177 = v176 + v1[14];
  *v176 = 107;
  *v177 = "pb_compact_tophit_decoded";
  *(v177 + 1) = 25;
  v177[16] = 2;
  v7();
  v178 = (v191 + v3 + 82 * v2);
  v179 = v178 + v1[14];
  *v178 = 108;
  *v179 = "pb_descriptive";
  *(v179 + 1) = 14;
  v179[16] = 2;
  v7();
  v180 = (v191 + v3 + 83 * v2);
  v181 = v180 + v1[14];
  *v180 = 109;
  *v181 = "pb_descriptive_decoded";
  *(v181 + 1) = 22;
  v181[16] = 2;
  v7();
  v182 = (v191 + v3 + 84 * v2);
  v183 = v182 + v1[14];
  *v182 = 110;
  *v183 = "pb_detailed";
  *(v183 + 1) = 11;
  v183[16] = 2;
  v7();
  v184 = (v191 + v3 + 85 * v2);
  v185 = v184 + v1[14];
  *v184 = 111;
  *v185 = "pb_detailed_decoded";
  *(v185 + 1) = 19;
  v185[16] = 2;
  v7();
  v186 = (v191 + v3 + 86 * v2);
  v187 = v186 + v1[14];
  *v186 = 112;
  *v187 = "pb_tophit";
  *(v187 + 1) = 9;
  v187[16] = 2;
  v7();
  v188 = (v191 + v3 + 87 * v2);
  v189 = v188 + v1[14];
  *v188 = 113;
  *v189 = "pb_tophit_decoded";
  *(v189 + 1) = 17;
  v189[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B90A6504()
{
  type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult._StorageClass(0);
  swift_allocObject();
  result = sub_1B90A6544();
  qword_1ED9CEEC8 = result;
  return result;
}

uint64_t sub_1B90A6544()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = xmmword_1B966F890;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 192) = sub_1B964C7B0();
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  *(v0 + 224) = 0;
  *(v0 + 228) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0xE000000000000000;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0xE000000000000000;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0xE000000000000000;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0xE000000000000000;
  *(v0 + 296) = 0;
  *(v0 + 304) = 0xE000000000000000;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0xE000000000000000;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0xE000000000000000;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0xE000000000000000;
  *(v0 + 360) = 0;
  *(v0 + 368) = v1;
  *(v0 + 376) = 0;
  *(v0 + 384) = 0xE000000000000000;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0xE000000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0xE000000000000000;
  *(v0 + 440) = v1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appPunchout;
  v3 = type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInstantAnswer) = 0;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__adamID);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__cardURL);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__titleImage;
  v7 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldUseCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldEnableLocation) = 0;
  v8 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultEntity;
  v9 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__zkwTopic;
  v11 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suppressedSuggestion);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestionHintID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInappropriateDetected) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__initiallyHidden) = 0;
  v14 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appleReferrer);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subDomain);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subType);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestion);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__entityExpTriggeredForRelatedSearch) = 0;
  v18 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMore);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMoreURL);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mediaKind);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnailAlign);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__description_p);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnail;
  v24 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v23, 1, 1, v24);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__completionIcon, 1, 1, v24);
  v25 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__auxiliaryInfoAlign);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedIcon;
  v27 = sub_1B964C200();
  __swift_storeEnumTagSinglePayload(v0 + v26, 1, 1, v27);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedSecondaryImage, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__moreResultsButton;
  v29 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v28, 1, 1, v29);
  v30 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__viewName);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__contentText);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__icon, 1, 1, v24);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__secondaryImage, 1, 1, v24);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__autoNavigate) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__noGoTakeover) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsData) = xmmword_1B9652FE0;
  v32 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsDataType);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v33 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsResultType);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__nearbyBusinesses);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = (v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__passageID);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pb) = xmmword_1B9652FE0;
  v36 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDecoded;
  v37 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  __swift_storeEnumTagSinglePayload(v0 + v36, 1, 1, v37);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRow) = xmmword_1B9652FE0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRowDecoded, 1, 1, v37);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompact) = xmmword_1B9652FE0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactDecoded, 1, 1, v37);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophit) = xmmword_1B9652FE0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophitDecoded, 1, 1, v37);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptive) = xmmword_1B9652FE0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptiveDecoded, 1, 1, v37);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailed) = xmmword_1B9652FE0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailedDecoded, 1, 1, v37);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophit) = xmmword_1B9652FE0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophitDecoded, 1, 1, v37);
  return v0;
}

uint64_t sub_1B90A6AA8(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v351 = &v274 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v341 = &v274 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D40, &qword_1B9689668);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v337 = &v274 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D38, &qword_1B9689660);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v331 = &v274 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D30, &qword_1B9689658);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v312 = &v274 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FC0, &unk_1B964D7B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v308 = &v274 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v303 = &v274 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D28, &qword_1B9689650);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v295 = &v274 - v18;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  v275 = (v1 + 48);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v276 = (v1 + 64);
  *(v1 + 88) = 0;
  *(v1 + 80) = 0;
  v277 = (v1 + 80);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 96) = xmmword_1B966F890;
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  *(v1 + 128) = 1;
  *(v1 + 136) = 0;
  v278 = (v1 + 120);
  v279 = (v1 + 136);
  *(v1 + 152) = 0;
  v280 = (v1 + 152);
  *(v1 + 160) = 0;
  v281 = (v1 + 160);
  *(v1 + 144) = 0xE000000000000000;
  *(v1 + 168) = 0xE000000000000000;
  *(v1 + 176) = 0;
  v282 = (v1 + 176);
  *(v1 + 184) = 0xE000000000000000;
  v19 = MEMORY[0x1E69E7CC0];
  *(v1 + 192) = sub_1B964C7B0();
  v283 = (v1 + 192);
  *(v1 + 200) = 0;
  v284 = (v1 + 200);
  *(v1 + 208) = 0;
  v285 = (v1 + 208);
  *(v1 + 216) = 0xE000000000000000;
  *(v1 + 224) = 0;
  v286 = (v1 + 224);
  *(v1 + 228) = 0;
  v287 = (v1 + 228);
  *(v1 + 232) = 0;
  v288 = (v1 + 232);
  *(v1 + 240) = 0xE000000000000000;
  *(v1 + 248) = 0;
  v289 = (v1 + 248);
  *(v1 + 256) = 0xE000000000000000;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0xE000000000000000;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0xE000000000000000;
  *(v1 + 296) = 0;
  *(v1 + 304) = 0xE000000000000000;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0xE000000000000000;
  *(v1 + 328) = 0;
  *(v1 + 336) = 0xE000000000000000;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0xE000000000000000;
  *(v1 + 360) = 0;
  *(v1 + 368) = v19;
  *(v1 + 376) = 0;
  *(v1 + 384) = 0xE000000000000000;
  *(v1 + 392) = 0;
  *(v1 + 400) = 0xE000000000000000;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0xE000000000000000;
  *(v1 + 424) = 0;
  *(v1 + 432) = 0xE000000000000000;
  *(v1 + 440) = v19;
  v20 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appPunchout;
  v290 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appPunchout;
  v21 = type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v291 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInstantAnswer;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInstantAnswer) = 0;
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__adamID);
  v292 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__adamID);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v293 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType) = 0;
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__cardURL);
  v294 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__cardURL);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__titleImage;
  v296 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__titleImage;
  v25 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v297 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldUseCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldUseCompactDisplay) = 0;
  v298 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldEnableLocation;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldEnableLocation) = 0;
  v26 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultEntity;
  v299 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultEntity;
  v27 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__zkwTopic;
  v300 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__zkwTopic;
  v29 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v30 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suppressedSuggestion);
  v301 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suppressedSuggestion);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestionHintID);
  v302 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestionHintID);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v304 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInappropriateDetected;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInappropriateDetected) = 0;
  v305 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__initiallyHidden;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__initiallyHidden) = 0;
  v32 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appleReferrer);
  v306 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appleReferrer);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v33 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subDomain);
  v307 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subDomain);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subType);
  v309 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subType);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestion);
  v310 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestion);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v311 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__entityExpTriggeredForRelatedSearch;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__entityExpTriggeredForRelatedSearch) = 0;
  v36 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMore);
  v313 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMore);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMoreURL);
  v314 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMoreURL);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  v38 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mediaKind);
  v315 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mediaKind);
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  v39 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnailAlign);
  v316 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnailAlign);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  v40 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__description_p);
  v317 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__description_p);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  v41 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnail;
  v318 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnail;
  v42 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v41, 1, 1, v42);
  v319 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__completionIcon;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__completionIcon, 1, 1, v42);
  v43 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__auxiliaryInfoAlign);
  v320 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__auxiliaryInfoAlign);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  v44 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedIcon;
  v321 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedIcon;
  v45 = sub_1B964C200();
  __swift_storeEnumTagSinglePayload(v1 + v44, 1, 1, v45);
  v322 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedSecondaryImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedSecondaryImage, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__moreResultsButton;
  v323 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__moreResultsButton;
  v47 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v46, 1, 1, v47);
  v48 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__viewName);
  v324 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__viewName);
  *v48 = 0;
  v48[1] = 0xE000000000000000;
  v49 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__contentText);
  v325 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__contentText);
  *v49 = 0;
  v49[1] = 0xE000000000000000;
  v326 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__icon;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__icon, 1, 1, v42);
  v327 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__secondaryImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__secondaryImage, 1, 1, v42);
  v328 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__autoNavigate;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__autoNavigate) = 0;
  v329 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__noGoTakeover;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__noGoTakeover) = 0;
  v330 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsData);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsData) = xmmword_1B9652FE0;
  v352 = xmmword_1B9652FE0;
  v50 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsDataType);
  v332 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsDataType);
  *v50 = 0;
  v50[1] = 0xE000000000000000;
  v51 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsResultType);
  v333 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsResultType);
  *v51 = 0;
  v51[1] = 0xE000000000000000;
  v52 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__nearbyBusinesses);
  v334 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__nearbyBusinesses);
  *v52 = 0;
  v52[1] = 0xE000000000000000;
  v53 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__passageID);
  v335 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__passageID);
  *v53 = 0;
  v53[1] = 0xE000000000000000;
  v336 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pb);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pb) = xmmword_1B9652FE0;
  v54 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDecoded;
  v338 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDecoded;
  v55 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  __swift_storeEnumTagSinglePayload(v1 + v54, 1, 1, v55);
  v339 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRow);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRow) = v352;
  v340 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRowDecoded;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRowDecoded, 1, 1, v55);
  v342 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompact);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompact) = v352;
  v343 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactDecoded;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactDecoded, 1, 1, v55);
  v344 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophit);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophit) = v352;
  v345 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophitDecoded;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophitDecoded, 1, 1, v55);
  v346 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptive);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptive) = v352;
  v347 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptiveDecoded;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptiveDecoded, 1, 1, v55);
  v348 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailed);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailed) = v352;
  v349 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailedDecoded;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailedDecoded, 1, 1, v55);
  v350 = (v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophit);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophit) = v352;
  *&v352 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophitDecoded;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophitDecoded, 1, 1, v55);
  swift_beginAccess();
  v57 = *(v2 + 16);
  v56 = *(v2 + 24);
  swift_beginAccess();
  *(v1 + 16) = v57;
  *(v1 + 24) = v56;

  swift_beginAccess();
  v58 = *(v2 + 32);
  LOBYTE(v56) = *(v2 + 40);
  swift_beginAccess();
  *(v1 + 32) = v58;
  *(v1 + 40) = v56;
  swift_beginAccess();
  v60 = *(v2 + 48);
  v59 = *(v2 + 56);
  v61 = v275;
  swift_beginAccess();
  *v61 = v60;
  *(v1 + 56) = v59;

  swift_beginAccess();
  v63 = *(v2 + 64);
  v62 = *(v2 + 72);
  v64 = v276;
  swift_beginAccess();
  *v64 = v63;
  *(v1 + 72) = v62;

  swift_beginAccess();
  v65 = *(v2 + 80);
  v66 = v277;
  swift_beginAccess();
  *v66 = v65;
  swift_beginAccess();
  v67 = *(v2 + 88);
  v68 = *(v2 + 96);
  swift_beginAccess();
  v69 = *(v1 + 88);
  v70 = *(v1 + 96);
  *(v1 + 88) = v67;
  *(v1 + 96) = v68;
  sub_1B8D91FCC(v67, v68);
  sub_1B8D538A0(v69, v70);
  swift_beginAccess();
  v72 = *(v2 + 104);
  v71 = *(v2 + 112);
  swift_beginAccess();
  *(v1 + 104) = v72;
  *(v1 + 112) = v71;

  swift_beginAccess();
  v73 = *(v2 + 120);
  LOBYTE(v68) = *(v2 + 128);
  v74 = v278;
  swift_beginAccess();
  *v74 = v73;
  *(v1 + 128) = v68;
  swift_beginAccess();
  LOBYTE(v73) = *(v2 + 129);
  swift_beginAccess();
  *(v1 + 129) = v73;
  swift_beginAccess();
  v76 = *(v2 + 136);
  v75 = *(v2 + 144);
  v77 = v279;
  swift_beginAccess();
  *v77 = v76;
  *(v1 + 144) = v75;

  swift_beginAccess();
  LODWORD(v75) = *(v2 + 152);
  v78 = v280;
  swift_beginAccess();
  *v78 = v75;
  swift_beginAccess();
  v80 = *(v2 + 160);
  v79 = *(v2 + 168);
  v81 = v281;
  swift_beginAccess();
  *v81 = v80;
  *(v1 + 168) = v79;

  swift_beginAccess();
  v83 = *(v2 + 176);
  v82 = *(v2 + 184);
  v84 = v282;
  swift_beginAccess();
  *v84 = v83;
  *(v1 + 184) = v82;

  swift_beginAccess();
  v85 = *(v2 + 192);
  v86 = v283;
  swift_beginAccess();
  *v86 = v85;

  swift_beginAccess();
  LOBYTE(v85) = *(v2 + 200);
  v87 = v284;
  swift_beginAccess();
  *v87 = v85;
  swift_beginAccess();
  v89 = *(v2 + 208);
  v88 = *(v2 + 216);
  v90 = v285;
  swift_beginAccess();
  *v90 = v89;
  *(v1 + 216) = v88;

  swift_beginAccess();
  LODWORD(v88) = *(v2 + 224);
  v91 = v286;
  swift_beginAccess();
  *v91 = v88;
  swift_beginAccess();
  LOBYTE(v88) = *(v2 + 228);
  v92 = v287;
  swift_beginAccess();
  *v92 = v88;
  swift_beginAccess();
  v94 = *(v2 + 232);
  v93 = *(v2 + 240);
  v95 = v288;
  swift_beginAccess();
  *v95 = v94;
  *(v1 + 240) = v93;

  swift_beginAccess();
  v97 = *(v2 + 248);
  v96 = *(v2 + 256);
  v98 = v289;
  swift_beginAccess();
  *v98 = v97;
  *(v1 + 256) = v96;

  swift_beginAccess();
  v100 = *(v2 + 264);
  v99 = *(v2 + 272);
  swift_beginAccess();
  *(v1 + 264) = v100;
  *(v1 + 272) = v99;

  swift_beginAccess();
  v102 = *(v2 + 280);
  v101 = *(v2 + 288);
  swift_beginAccess();
  *(v1 + 280) = v102;
  *(v1 + 288) = v101;

  swift_beginAccess();
  v104 = *(v2 + 296);
  v103 = *(v2 + 304);
  swift_beginAccess();
  *(v1 + 296) = v104;
  *(v1 + 304) = v103;

  swift_beginAccess();
  v106 = *(v2 + 312);
  v105 = *(v2 + 320);
  swift_beginAccess();
  *(v1 + 312) = v106;
  *(v1 + 320) = v105;

  swift_beginAccess();
  v108 = *(v2 + 328);
  v107 = *(v2 + 336);
  swift_beginAccess();
  *(v1 + 328) = v108;
  *(v1 + 336) = v107;

  swift_beginAccess();
  v110 = *(v2 + 344);
  v109 = *(v2 + 352);
  swift_beginAccess();
  *(v1 + 344) = v110;
  *(v1 + 352) = v109;

  swift_beginAccess();
  LOBYTE(v109) = *(v2 + 360);
  swift_beginAccess();
  *(v1 + 360) = v109;
  swift_beginAccess();
  v111 = *(v2 + 368);
  swift_beginAccess();
  *(v1 + 368) = v111;

  swift_beginAccess();
  v113 = *(v2 + 376);
  v112 = *(v2 + 384);
  swift_beginAccess();
  *(v1 + 376) = v113;
  *(v1 + 384) = v112;

  swift_beginAccess();
  v115 = *(v2 + 392);
  v114 = *(v2 + 400);
  swift_beginAccess();
  *(v1 + 392) = v115;
  *(v1 + 400) = v114;

  swift_beginAccess();
  v117 = *(v2 + 408);
  v116 = *(v2 + 416);
  swift_beginAccess();
  *(v1 + 408) = v117;
  *(v1 + 416) = v116;

  swift_beginAccess();
  v119 = *(v2 + 424);
  v118 = *(v2 + 432);
  swift_beginAccess();
  *(v1 + 424) = v119;
  *(v1 + 432) = v118;

  swift_beginAccess();
  v120 = *(v2 + 440);
  swift_beginAccess();
  *(v1 + 440) = v120;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v121 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInstantAnswer;
  swift_beginAccess();
  LOBYTE(v121) = *(v2 + v121);
  v122 = v291;
  swift_beginAccess();
  *(v1 + v122) = v121;
  v123 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__adamID);
  swift_beginAccess();
  v125 = *v123;
  v124 = v123[1];
  v126 = v292;
  swift_beginAccess();
  *v126 = v125;
  v126[1] = v124;

  v127 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType;
  swift_beginAccess();
  LODWORD(v127) = *(v2 + v127);
  v128 = v293;
  swift_beginAccess();
  *(v1 + v128) = v127;
  v129 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__cardURL);
  swift_beginAccess();
  v131 = *v129;
  v130 = v129[1];
  v132 = v294;
  swift_beginAccess();
  *v132 = v131;
  v132[1] = v130;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v133 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldUseCompactDisplay;
  swift_beginAccess();
  LOBYTE(v133) = *(v2 + v133);
  v134 = v297;
  swift_beginAccess();
  *(v1 + v134) = v133;
  v135 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldEnableLocation;
  swift_beginAccess();
  LOBYTE(v135) = *(v2 + v135);
  v136 = v298;
  swift_beginAccess();
  *(v1 + v136) = v135;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v137 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suppressedSuggestion);
  swift_beginAccess();
  v139 = *v137;
  v138 = v137[1];
  v140 = v301;
  swift_beginAccess();
  *v140 = v139;
  v140[1] = v138;

  v141 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestionHintID);
  swift_beginAccess();
  v143 = *v141;
  v142 = v141[1];
  v144 = v302;
  swift_beginAccess();
  *v144 = v143;
  v144[1] = v142;

  v145 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInappropriateDetected;
  swift_beginAccess();
  LOBYTE(v145) = *(v2 + v145);
  v146 = v304;
  swift_beginAccess();
  *(v1 + v146) = v145;
  v147 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__initiallyHidden;
  swift_beginAccess();
  LOBYTE(v147) = *(v2 + v147);
  v148 = v305;
  swift_beginAccess();
  *(v1 + v148) = v147;
  v149 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appleReferrer);
  swift_beginAccess();
  v151 = *v149;
  v150 = v149[1];
  v152 = v306;
  swift_beginAccess();
  *v152 = v151;
  v152[1] = v150;

  v153 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subDomain);
  swift_beginAccess();
  v155 = *v153;
  v154 = v153[1];
  v156 = v307;
  swift_beginAccess();
  *v156 = v155;
  v156[1] = v154;

  v157 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subType);
  swift_beginAccess();
  v159 = *v157;
  v158 = v157[1];
  v160 = v309;
  swift_beginAccess();
  *v160 = v159;
  v160[1] = v158;

  v161 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestion);
  swift_beginAccess();
  v163 = *v161;
  v162 = v161[1];
  v164 = v310;
  swift_beginAccess();
  *v164 = v163;
  v164[1] = v162;

  v165 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__entityExpTriggeredForRelatedSearch;
  swift_beginAccess();
  LOBYTE(v165) = *(v2 + v165);
  v166 = v311;
  swift_beginAccess();
  *(v1 + v166) = v165;
  v167 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMore);
  swift_beginAccess();
  v169 = *v167;
  v168 = v167[1];
  v170 = v313;
  swift_beginAccess();
  *v170 = v169;
  v170[1] = v168;

  v171 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMoreURL);
  swift_beginAccess();
  v173 = *v171;
  v172 = v171[1];
  v174 = v314;
  swift_beginAccess();
  *v174 = v173;
  v174[1] = v172;

  v175 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mediaKind);
  swift_beginAccess();
  v177 = *v175;
  v176 = v175[1];
  v178 = v315;
  swift_beginAccess();
  *v178 = v177;
  v178[1] = v176;

  v179 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnailAlign);
  swift_beginAccess();
  v181 = *v179;
  v180 = v179[1];
  v182 = v316;
  swift_beginAccess();
  *v182 = v181;
  v182[1] = v180;

  v183 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__description_p);
  swift_beginAccess();
  v185 = *v183;
  v184 = v183[1];
  v186 = v317;
  swift_beginAccess();
  *v186 = v185;
  v186[1] = v184;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v187 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__auxiliaryInfoAlign);
  swift_beginAccess();
  v189 = *v187;
  v188 = v187[1];
  v190 = v320;
  swift_beginAccess();
  *v190 = v189;
  v190[1] = v188;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v191 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__viewName);
  swift_beginAccess();
  v193 = *v191;
  v192 = v191[1];
  v194 = v324;
  swift_beginAccess();
  *v194 = v193;
  v194[1] = v192;

  v195 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__contentText);
  swift_beginAccess();
  v197 = *v195;
  v196 = v195[1];
  v198 = v325;
  swift_beginAccess();
  *v198 = v197;
  v198[1] = v196;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v199 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__autoNavigate;
  swift_beginAccess();
  LOBYTE(v199) = *(v2 + v199);
  v200 = v328;
  swift_beginAccess();
  *(v1 + v200) = v199;
  v201 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__noGoTakeover;
  swift_beginAccess();
  LOBYTE(v201) = *(v2 + v201);
  v202 = v329;
  swift_beginAccess();
  *(v1 + v202) = v201;
  v203 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsData);
  swift_beginAccess();
  v205 = *v203;
  v204 = v203[1];
  v206 = v330;
  swift_beginAccess();
  v207 = *v206;
  v208 = v206[1];
  *v206 = v205;
  v206[1] = v204;
  sub_1B8D91FCC(v205, v204);
  sub_1B8D538A0(v207, v208);
  v209 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsDataType);
  swift_beginAccess();
  v211 = *v209;
  v210 = v209[1];
  v212 = v332;
  swift_beginAccess();
  *v212 = v211;
  v212[1] = v210;

  v213 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsResultType);
  swift_beginAccess();
  v215 = *v213;
  v214 = v213[1];
  v216 = v333;
  swift_beginAccess();
  *v216 = v215;
  v216[1] = v214;

  v217 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__nearbyBusinesses);
  swift_beginAccess();
  v219 = *v217;
  v218 = v217[1];
  v220 = v334;
  swift_beginAccess();
  *v220 = v219;
  v220[1] = v218;

  v221 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__passageID);
  swift_beginAccess();
  v223 = *v221;
  v222 = v221[1];
  v224 = v335;
  swift_beginAccess();
  *v224 = v223;
  v224[1] = v222;

  v225 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pb);
  swift_beginAccess();
  v227 = *v225;
  v226 = v225[1];
  v228 = v336;
  swift_beginAccess();
  v229 = *v228;
  v230 = v228[1];
  *v228 = v227;
  v228[1] = v226;
  sub_1B8D91FCC(v227, v226);
  sub_1B8D538A0(v229, v230);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v231 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRow);
  swift_beginAccess();
  v233 = *v231;
  v232 = v231[1];
  v234 = v339;
  swift_beginAccess();
  v235 = v234;
  v236 = *v234;
  v237 = v235[1];
  *v235 = v233;
  v235[1] = v232;
  sub_1B8D91FCC(v233, v232);
  sub_1B8D538A0(v236, v237);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v238 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompact);
  swift_beginAccess();
  v240 = *v238;
  v239 = v238[1];
  v241 = v342;
  swift_beginAccess();
  v242 = v241;
  v243 = *v241;
  v244 = v242[1];
  *v242 = v240;
  v242[1] = v239;
  sub_1B8D91FCC(v240, v239);
  sub_1B8D538A0(v243, v244);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v245 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophit);
  swift_beginAccess();
  v247 = *v245;
  v246 = v245[1];
  v248 = v344;
  swift_beginAccess();
  v249 = v248;
  v250 = *v248;
  v251 = v249[1];
  *v249 = v247;
  v249[1] = v246;
  sub_1B8D91FCC(v247, v246);
  sub_1B8D538A0(v250, v251);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v252 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptive);
  swift_beginAccess();
  v254 = *v252;
  v253 = v252[1];
  v255 = v346;
  swift_beginAccess();
  v256 = v255;
  v257 = *v255;
  v258 = v256[1];
  *v256 = v254;
  v256[1] = v253;
  sub_1B8D91FCC(v254, v253);
  sub_1B8D538A0(v257, v258);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v259 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailed);
  swift_beginAccess();
  v261 = *v259;
  v260 = v259[1];
  v262 = v348;
  swift_beginAccess();
  v263 = v262;
  v264 = *v262;
  v265 = v263[1];
  *v263 = v261;
  v263[1] = v260;
  sub_1B8D91FCC(v261, v260);
  sub_1B8D538A0(v264, v265);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v266 = (v2 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophit);
  swift_beginAccess();
  v268 = *v266;
  v267 = v266[1];
  v269 = v350;
  swift_beginAccess();
  v270 = v269;
  v271 = *v269;
  v272 = v270[1];
  *v270 = v268;
  v270[1] = v267;
  sub_1B8D91FCC(v268, v267);
  sub_1B8D538A0(v271, v272);
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B90A90B0()
{

  sub_1B8D538A0(*(v0 + 88), *(v0 + 96));

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appPunchout, &qword_1EBAC3D28, &qword_1B9689650);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__titleImage, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultEntity, &qword_1EBAB8FC0, &unk_1B964D7B0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__zkwTopic, &qword_1EBAC3D30, &qword_1B9689658);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnail, &qword_1EBAC3D38, &qword_1B9689660);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__completionIcon, &qword_1EBAC3D38, &qword_1B9689660);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedIcon, &qword_1EBAC3D40, &qword_1B9689668);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__deprecatedSecondaryImage, &qword_1EBAC3D40, &qword_1B9689668);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__moreResultsButton, &unk_1EBAC3D48, &qword_1B9689670);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__icon, &qword_1EBAC3D38, &qword_1B9689660);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__secondaryImage, &qword_1EBAC3D38, &qword_1B9689660);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsData), *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsData + 8));

  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pb), *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pb + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDecoded, &qword_1EBAC3D50, &qword_1B9689678);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRow), *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRow + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRowDecoded, &qword_1EBAC3D50, &qword_1B9689678);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompact), *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompact + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactDecoded, &qword_1EBAC3D50, &qword_1B9689678);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophit), *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophit + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophitDecoded, &qword_1EBAC3D50, &qword_1B9689678);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptive), *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptive + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptiveDecoded, &qword_1EBAC3D50, &qword_1B9689678);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailed), *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailed + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailedDecoded, &qword_1EBAC3D50, &qword_1B9689678);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophit), *(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophit + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophitDecoded, &qword_1EBAC3D50, &qword_1B9689678);
  return v0;
}

uint64_t sub_1B90A95D8()
{
  v0 = sub_1B90A90B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.decodeMessage<A>(decoder:)()
{
  v1 = OUTLINED_FUNCTION_118_1();
  v2 = *(type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult._StorageClass(0);
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_40_0();
    *(v0 + v2) = sub_1B90A6AA8(v3);
  }

  OUTLINED_FUNCTION_57_4();
  OUTLINED_FUNCTION_24_3();
  return sub_1B90A96B0(v4, v5, v6, v7);
}

uint64_t sub_1B90A96B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E4C21C();
        continue;
      case 2:
        sub_1B90A9F00(a2, a1, a3, a4);
        continue;
      case 3:
        sub_1B90B5DB4();
        continue;
      case 4:
        sub_1B90B5E14();
        continue;
      case 5:
        sub_1B90A9F94(a2, a1, a3, a4);
        continue;
      case 6:
        sub_1B90AA018(a2, a1, a3, a4);
        continue;
      case 7:
        sub_1B8EC1004(a2, a1);
        continue;
      case 8:
        sub_1B90AA09C(a2, a1, a3, a4);
        continue;
      case 9:
        sub_1B90AA130(a2, a1, a3, a4);
        continue;
      case 10:
        sub_1B8F44964(a2, a1);
        continue;
      case 11:
        sub_1B8F44754(a2, a1, a3, a4);
        continue;
      case 12:
        sub_1B8E171C8(a2, a1);
        continue;
      case 13:
        sub_1B8E71A68(a2, a1);
        continue;
      case 14:
        sub_1B90AA1B4(a2, a1, a3, a4);
        continue;
      case 15:
        sub_1B90AA264(a2, a1, a3, a4);
        continue;
      case 16:
        sub_1B8E2FE10(a2, a1);
        continue;
      case 17:
        sub_1B90AA2E8(a2, a1, a3, a4);
        continue;
      case 18:
        sub_1B90AA36C(a2, a1, a3, a4);
        continue;
      case 19:
        sub_1B8E8908C(a2, a1);
        continue;
      case 20:
        sub_1B8E89110(a2, a1);
        continue;
      case 21:
        sub_1B8E89194(a2, a1);
        continue;
      case 22:
        sub_1B8E89218(a2, a1);
        continue;
      case 23:
        sub_1B8E8929C(a2, a1);
        continue;
      case 24:
        sub_1B8E89320(a2, a1);
        continue;
      case 25:
        sub_1B8E893A4(a2, a1);
        continue;
      case 26:
        sub_1B90AA3F0(a2, a1);
        continue;
      case 27:
        sub_1B90AA474(a2, a1, a3, a4);
        continue;
      case 28:
        sub_1B8F44198(a2, a1, a3, a4);
        continue;
      case 29:
        sub_1B90AA4F8(a2, a1);
        continue;
      case 30:
        sub_1B90AA57C(a2, a1);
        continue;
      case 31:
        sub_1B8F445B8(a2, a1);
        continue;
      case 32:
        sub_1B90AA600(a2, a1);
        continue;
      case 33:
        sub_1B90AA684(a2, a1, a3, a4);
        continue;
      case 34:
        sub_1B90AA750(a2, a1, a3, a4);
        continue;
      case 35:
      case 40:
      case 41:
      case 46:
      case 47:
      case 52:
LABEL_64:
        sub_1B90AB150();
        continue;
      case 36:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__adamID;
        goto LABEL_62;
      case 37:
        sub_1B90AA82C(a2, a1, a3, a4);
        continue;
      case 38:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__cardURL;
        goto LABEL_62;
      case 39:
        sub_1B90AA8B8(a2, a1, a3, a4);
        continue;
      case 42:
        sub_1B90AA994(a2, a1, a3, a4);
        continue;
      case 43:
        sub_1B90AAA70(a2, a1, a3, a4);
        continue;
      case 44:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suppressedSuggestion;
        goto LABEL_62;
      case 45:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestionHintID;
        goto LABEL_62;
      case 48:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appleReferrer;
        goto LABEL_62;
      case 49:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subDomain;
        goto LABEL_62;
      case 50:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subType;
        goto LABEL_62;
      case 51:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestion;
        goto LABEL_62;
      case 53:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMore;
        goto LABEL_62;
      case 54:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMoreURL;
        goto LABEL_62;
      case 55:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mediaKind;
        goto LABEL_62;
      case 56:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnailAlign;
        goto LABEL_62;
      case 57:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__description_p;
        goto LABEL_62;
      case 58:
        sub_1B90AAB4C(a2, a1, a3, a4);
        continue;
      case 59:
        sub_1B90AAC28(a2, a1, a3, a4);
        continue;
      case 60:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__auxiliaryInfoAlign;
        goto LABEL_62;
      case 61:
        sub_1B90AAD04(a2, a1, a3, a4);
        continue;
      case 62:
        sub_1B90AADE0(a2, a1, a3, a4);
        continue;
      case 63:
        sub_1B90AAEBC(a2, a1, a3, a4);
        continue;
      case 64:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__viewName;
LABEL_62:
        v12 = MEMORY[0x1E69AACE0];
LABEL_63:
        sub_1B90AB6DC(a2, a1, a3, a4, v11, v12);
        break;
      default:
        switch(result)
        {
          case 'A':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__contentText;
            goto LABEL_62;
          case 'B':
            sub_1B90AAF98(a2, a1, a3, a4);
            continue;
          case 'C':
            sub_1B90AB074(a2, a1, a3, a4);
            continue;
          case 'D':
          case 'E':
            goto LABEL_64;
          case 'Q':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsData;
            goto LABEL_86;
          case 'R':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsDataType;
            goto LABEL_62;
          case 'S':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsResultType;
            goto LABEL_62;
          case 'T':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__nearbyBusinesses;
            goto LABEL_62;
          case 'U':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__passageID;
            goto LABEL_62;
          case 'd':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pb;
            goto LABEL_86;
          case 'e':
            sub_1B90AB1B4(a2, a1, a3, a4);
            continue;
          case 'f':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRow;
            goto LABEL_86;
          case 'g':
            sub_1B90AB290(a2, a1, a3, a4);
            continue;
          case 'h':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompact;
            goto LABEL_86;
          case 'i':
            sub_1B90AB36C(a2, a1, a3, a4);
            continue;
          case 'j':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophit;
            goto LABEL_86;
          case 'k':
            sub_1B90AB448(a2, a1, a3, a4);
            continue;
          case 'l':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptive;
            goto LABEL_86;
          case 'm':
            sub_1B90AB524(a2, a1, a3, a4);
            continue;
          case 'n':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailed;
            goto LABEL_86;
          case 'o':
            sub_1B90AB600(a2, a1, a3, a4);
            continue;
          case 'p':
            v11 = &OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophit;
LABEL_86:
            v12 = MEMORY[0x1E69AAC78];
            goto LABEL_63;
          case 'q':
            sub_1B90AB768(a2, a1, a3, a4);
            continue;
          default:
            continue;
        }
    }
  }
}

uint64_t sub_1B90A9F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B90B8688();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B90A9F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C510();
  return swift_endAccess();
}

uint64_t sub_1B90AA018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C470();
  return swift_endAccess();
}

uint64_t sub_1B90AA09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B90B8784();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B90AA130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B90AA1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  sub_1B964C270();
  sub_1B964C3B0();
  return swift_endAccess();
}

uint64_t sub_1B90AA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B90AA2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B90AA36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B90AA3F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B90AA474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B90AA4F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B90AA57C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B90AA600(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B90AA684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Entity(0);
  sub_1B8CD26D8(qword_1ED9CAA60, type metadata accessor for Apple_Parsec_Search_V1alpha_Entity, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Entity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B90AA750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(0);
  sub_1B8CD26D8(&qword_1ED9CA3E8, type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_AppPunchout);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AA82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B90AA8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD26D8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AA994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  sub_1B8CD26D8(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AAA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  sub_1B8CD26D8(&qword_1EBAC3EA0, type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AAB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  sub_1B8CD26D8(&qword_1EBAC3E10, type metadata accessor for Apple_Parsec_Search_V1alpha_Image, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AAC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  sub_1B8CD26D8(&qword_1EBAC3E10, type metadata accessor for Apple_Parsec_Search_V1alpha_Image, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AAD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C200();
  sub_1B8CD26D8(&qword_1EBAC3E98, MEMORY[0x1E69AAB58], MEMORY[0x1E69AAB50]);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C200();
  sub_1B8CD26D8(&qword_1EBAC3E98, MEMORY[0x1E69AAB58], MEMORY[0x1E69AAB50]);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AAEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CommandButtonItem(0);
  sub_1B8CD26D8(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AAF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  sub_1B8CD26D8(&qword_1EBAC3E10, type metadata accessor for Apple_Parsec_Search_V1alpha_Image, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AB074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  sub_1B8CD26D8(&qword_1EBAC3E10, type metadata accessor for Apple_Parsec_Search_V1alpha_Image, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AB150()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v0 = sub_1B964C400();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B90AB1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AB290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AB36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AB448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AB524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AB600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AB6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v11 = a6(a2 + v10, a3, a4);
  return OUTLINED_FUNCTION_199_1(v11);
}

uint64_t sub_1B90AB768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B90AB884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D50, &qword_1B9689678);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v239 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v279 = v239 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v277 = v239 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v275 = v239 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v273 = v239 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v271 = v239 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v269 = v239 - v22;
  v280 = type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail(0);
  v23 = MEMORY[0x1EEE9AC00](v280);
  v281 = v239 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v278 = v239 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v276 = v239 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v274 = v239 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v272 = v239 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v270 = v239 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v268 = v239 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v260 = v239 - v37;
  v261 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  MEMORY[0x1EEE9AC00](v261);
  v262 = v239 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D40, &qword_1B9689668);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v256 = v239 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v254 = v239 - v42;
  v43 = sub_1B964C200();
  v258 = *(v43 - 8);
  v259 = v43;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v257 = v239 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v255 = v239 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D38, &qword_1B9689660);
  v48 = MEMORY[0x1EEE9AC00](v47 - 8);
  v266 = v239 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v263 = v239 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v252 = v239 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v250 = v239 - v54;
  v265 = type metadata accessor for Apple_Parsec_Search_V1alpha_Image(0);
  v55 = MEMORY[0x1EEE9AC00](v265);
  v267 = v239 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v264 = v239 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v253 = v239 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v251 = v239 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D30, &qword_1B9689658);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v247 = v239 - v63;
  v248 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  MEMORY[0x1EEE9AC00](v248);
  v249 = v239 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FC0, &unk_1B964D7B0);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v244 = v239 - v66;
  v245 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  MEMORY[0x1EEE9AC00](v245);
  v246 = v239 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v241 = v239 - v69;
  v242 = type metadata accessor for Searchfoundation_Image(0);
  MEMORY[0x1EEE9AC00](v242);
  v243 = v239 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3D28, &qword_1B9689650);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v73 = v239 - v72;
  v287 = type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout(0);
  MEMORY[0x1EEE9AC00](v287);
  v282 = v239 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v75 = *(a1 + 24);
  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v76)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!sub_1B8D921A0(*(a1 + 32), *(a1 + 40), 0, 1))
  {
    v77 = *(a1 + 40);
    v285 = *(a1 + 32);
    v286 = v77;
    sub_1B90B8688();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v79 = *(a1 + 56);
  v80 = HIBYTE(v79) & 0xF;
  if ((v79 & 0x2000000000000000) == 0)
  {
    v80 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v80)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v81 = *(a1 + 72);
  v82 = HIBYTE(v81) & 0xF;
  if ((v81 & 0x2000000000000000) == 0)
  {
    v82 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v82)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 80) != 0.0)
  {
    result = sub_1B964C6F0();
    if (v4)
    {
      return result;
    }
  }

  v240 = v11;
  v83 = a4;
  swift_beginAccess();
  if (!sub_1B8D99EA8(*(a1 + 88), *(a1 + 96)))
  {
    v84 = *(a1 + 88);
    v85 = *(a1 + 96);
    sub_1B8D91FCC(v84, v85);
    sub_1B964C6A0();
    if (v4)
    {
      return sub_1B8D538A0(v84, v85);
    }

    sub_1B8D538A0(v84, v85);
  }

  v86 = v83;
  swift_beginAccess();
  v87 = *(a1 + 112);
  v88 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v88 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
  }

  v89 = v4;
  if (v88)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!sub_1B8D92198(*(a1 + 120), *(a1 + 128), 0))
  {
    v90 = *(a1 + 128);
    v283 = *(a1 + 120);
    v284 = v90;
    sub_1B90B8784();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 129) == 1)
  {
    result = sub_1B964C670();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v91 = *(a1 + 144);
  v92 = HIBYTE(v91) & 0xF;
  if ((v91 & 0x2000000000000000) == 0)
  {
    v92 = *(a1 + 136) & 0xFFFFFFFFFFFFLL;
  }

  if (v92)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 152))
  {
    result = sub_1B964C6C0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v93 = *(a1 + 168);
  v94 = HIBYTE(v93) & 0xF;
  if ((v93 & 0x2000000000000000) == 0)
  {
    v94 = *(a1 + 160) & 0xFFFFFFFFFFFFLL;
  }

  if (v94)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v95 = *(a1 + 184);
  v96 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v96 = *(a1 + 176) & 0xFFFFFFFFFFFFLL;
  }

  if (v96)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!sub_1B8CD6BC8(*(a1 + 192)))
  {
    sub_1B964C280();
    sub_1B964C270();

    sub_1B964C5F0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 200) == 1)
  {
    result = sub_1B964C670();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v97 = *(a1 + 216);
  v98 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v98 = *(a1 + 208) & 0xFFFFFFFFFFFFLL;
  }

  if (v98)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 224))
  {
    result = sub_1B964C6C0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 228) == 1)
  {
    result = sub_1B964C670();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v99 = *(a1 + 240);
  v100 = HIBYTE(v99) & 0xF;
  if ((v99 & 0x2000000000000000) == 0)
  {
    v100 = *(a1 + 232) & 0xFFFFFFFFFFFFLL;
  }

  if (v100)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v101 = *(a1 + 256);
  v102 = HIBYTE(v101) & 0xF;
  if ((v101 & 0x2000000000000000) == 0)
  {
    v102 = *(a1 + 248) & 0xFFFFFFFFFFFFLL;
  }

  if (v102)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v103 = *(a1 + 272);
  v104 = HIBYTE(v103) & 0xF;
  if ((v103 & 0x2000000000000000) == 0)
  {
    v104 = *(a1 + 264) & 0xFFFFFFFFFFFFLL;
  }

  v239[0] = a3;
  v239[1] = v86;
  if (v104)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v105 = *(a1 + 288);
  v106 = HIBYTE(v105) & 0xF;
  if ((v105 & 0x2000000000000000) == 0)
  {
    v106 = *(a1 + 280) & 0xFFFFFFFFFFFFLL;
  }

  if (v106)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v107 = *(a1 + 304);
  v108 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v108 = *(a1 + 296) & 0xFFFFFFFFFFFFLL;
  }

  if (v108)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v109 = *(a1 + 320);
  v110 = HIBYTE(v109) & 0xF;
  if ((v109 & 0x2000000000000000) == 0)
  {
    v110 = *(a1 + 312) & 0xFFFFFFFFFFFFLL;
  }

  if (v110)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v111 = *(a1 + 336);
  v112 = HIBYTE(v111) & 0xF;
  if ((v111 & 0x2000000000000000) == 0)
  {
    v112 = *(a1 + 328) & 0xFFFFFFFFFFFFLL;
  }

  if (v112)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v113 = *(a1 + 352);
  v114 = HIBYTE(v113) & 0xF;
  if ((v113 & 0x2000000000000000) == 0)
  {
    v114 = *(a1 + 344) & 0xFFFFFFFFFFFFLL;
  }

  if (v114)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 360) == 1)
  {
    result = sub_1B964C670();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (!sub_1B8DB6A44(*(a1 + 368)))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v115 = *(a1 + 384);
  v116 = HIBYTE(v115) & 0xF;
  if ((v115 & 0x2000000000000000) == 0)
  {
    v116 = *(a1 + 376) & 0xFFFFFFFFFFFFLL;
  }

  if (v116)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v117 = *(a1 + 400);
  v118 = HIBYTE(v117) & 0xF;
  if ((v117 & 0x2000000000000000) == 0)
  {
    v118 = *(a1 + 392) & 0xFFFFFFFFFFFFLL;
  }

  if (v118)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v119 = *(a1 + 416);
  v120 = HIBYTE(v119) & 0xF;
  if ((v119 & 0x2000000000000000) == 0)
  {
    v120 = *(a1 + 408) & 0xFFFFFFFFFFFFLL;
  }

  if (!v120)
  {
    goto LABEL_125;
  }

  sub_1B964C700();
  if (v4)
  {
  }

LABEL_125:
  swift_beginAccess();
  v121 = *(a1 + 432);
  v122 = HIBYTE(v121) & 0xF;
  if ((v121 & 0x2000000000000000) == 0)
  {
    v122 = *(a1 + 424) & 0xFFFFFFFFFFFFLL;
  }

  if (v122)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!sub_1B8DB6A44(*(a1 + 440)))
  {
    type metadata accessor for Apple_Parsec_Search_V1alpha_Entity(0);
    sub_1B8CD26D8(qword_1ED9CAA60, type metadata accessor for Apple_Parsec_Search_V1alpha_Entity, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Entity);

    sub_1B964C730();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v73, 1, v287) == 1)
  {
    sub_1B8D9207C(v73, &qword_1EBAC3D28, &qword_1B9689650);
  }

  else
  {
    sub_1B90B722C();
    sub_1B8CD26D8(&qword_1ED9CA3E8, type metadata accessor for Apple_Parsec_Search_V1alpha_AppPunchout, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_AppPunchout);
    sub_1B964C740();
    if (v4)
    {
      return sub_1B90B72DC();
    }

    sub_1B90B72DC();
  }

  v123 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInstantAnswer;
  swift_beginAccess();
  if (*(a1 + v123) != 1 || (result = sub_1B964C670(), !v4))
  {
    v124 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__adamID);
    swift_beginAccess();
    v125 = *v124;
    v126 = v124[1];
    v127 = HIBYTE(v126) & 0xF;
    if ((v126 & 0x2000000000000000) == 0)
    {
      v127 = v125 & 0xFFFFFFFFFFFFLL;
    }

    if (v127)
    {

      sub_1B964C700();
      if (v89)
      {
      }
    }

    v128 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__resultType;
    swift_beginAccess();
    if (!*(a1 + v128) || (result = sub_1B964C6C0(), !v89))
    {
      v129 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__cardURL);
      swift_beginAccess();
      v130 = *v129;
      v131 = v129[1];
      v132 = HIBYTE(v131) & 0xF;
      if ((v131 & 0x2000000000000000) == 0)
      {
        v132 = v130 & 0xFFFFFFFFFFFFLL;
      }

      if (v132)
      {

        sub_1B964C700();
        if (v89)
        {
        }
      }

      swift_beginAccess();
      v133 = v241;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v133, 1, v242) == 1)
      {
        sub_1B8D9207C(v241, &qword_1EBAB8EA8, &unk_1B96B77D0);
      }

      else
      {
        sub_1B90B722C();
        sub_1B8CD26D8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
        sub_1B964C740();
        if (v89)
        {
          return sub_1B90B72DC();
        }

        sub_1B90B72DC();
      }

      v134 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldUseCompactDisplay;
      swift_beginAccess();
      if (*(a1 + v134) != 1 || (result = sub_1B964C670(), !v89))
      {
        v135 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__shouldEnableLocation;
        swift_beginAccess();
        if (*(a1 + v135) != 1 || (result = sub_1B964C670(), !v89))
        {
          swift_beginAccess();
          v136 = v244;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v136, 1, v245) == 1)
          {
            sub_1B8D9207C(v244, &qword_1EBAB8FC0, &unk_1B964D7B0);
          }

          else
          {
            sub_1B90B722C();
            sub_1B8CD26D8(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity);
            sub_1B964C740();
            if (v89)
            {
              return sub_1B90B72DC();
            }

            sub_1B90B72DC();
          }

          swift_beginAccess();
          v137 = v247;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v137, 1, v248) == 1)
          {
            sub_1B8D9207C(v247, &qword_1EBAC3D30, &qword_1B9689658);
          }

          else
          {
            sub_1B90B722C();
            sub_1B8CD26D8(&qword_1EBAC3EA0, type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicInfo);
            sub_1B964C740();
            if (v89)
            {
              return sub_1B90B72DC();
            }

            sub_1B90B72DC();
          }

          v138 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suppressedSuggestion);
          swift_beginAccess();
          v139 = *v138;
          v140 = v138[1];
          v141 = HIBYTE(v140) & 0xF;
          if ((v140 & 0x2000000000000000) == 0)
          {
            v141 = v139 & 0xFFFFFFFFFFFFLL;
          }

          if (v141)
          {

            sub_1B964C700();
            if (v89)
            {
            }
          }

          v142 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestionHintID);
          swift_beginAccess();
          v143 = *v142;
          v144 = v142[1];
          v145 = HIBYTE(v144) & 0xF;
          if ((v144 & 0x2000000000000000) == 0)
          {
            v145 = v143 & 0xFFFFFFFFFFFFLL;
          }

          if (v145)
          {

            sub_1B964C700();
            if (v89)
            {
            }
          }

          v146 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__isInappropriateDetected;
          swift_beginAccess();
          if (*(a1 + v146) != 1 || (result = sub_1B964C670(), !v89))
          {
            v147 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__initiallyHidden;
            swift_beginAccess();
            if (*(a1 + v147) != 1 || (result = sub_1B964C670(), !v89))
            {
              v148 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__appleReferrer);
              swift_beginAccess();
              v149 = *v148;
              v150 = v148[1];
              v151 = HIBYTE(v150) & 0xF;
              if ((v150 & 0x2000000000000000) == 0)
              {
                v151 = v149 & 0xFFFFFFFFFFFFLL;
              }

              if (v151)
              {

                sub_1B964C700();
                if (v89)
                {
                }
              }

              v152 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subDomain);
              swift_beginAccess();
              v153 = *v152;
              v154 = v152[1];
              v155 = HIBYTE(v154) & 0xF;
              if ((v154 & 0x2000000000000000) == 0)
              {
                v155 = v153 & 0xFFFFFFFFFFFFLL;
              }

              if (v155)
              {

                sub_1B964C700();
                if (v89)
                {
                }
              }

              v156 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__subType);
              swift_beginAccess();
              v157 = *v156;
              v158 = v156[1];
              v159 = HIBYTE(v158) & 0xF;
              if ((v158 & 0x2000000000000000) == 0)
              {
                v159 = v157 & 0xFFFFFFFFFFFFLL;
              }

              if (v159)
              {

                sub_1B964C700();
                if (v89)
                {
                }
              }

              v160 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__suggestion);
              swift_beginAccess();
              v161 = *v160;
              v162 = v160[1];
              v163 = HIBYTE(v162) & 0xF;
              if ((v162 & 0x2000000000000000) == 0)
              {
                v163 = v161 & 0xFFFFFFFFFFFFLL;
              }

              if (v163)
              {

                sub_1B964C700();
                if (v89)
                {
                }
              }

              v164 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__entityExpTriggeredForRelatedSearch;
              swift_beginAccess();
              if (*(a1 + v164) != 1 || (result = sub_1B964C670(), !v89))
              {
                v165 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMore);
                swift_beginAccess();
                v166 = *v165;
                v167 = v165[1];
                v168 = HIBYTE(v167) & 0xF;
                if ((v167 & 0x2000000000000000) == 0)
                {
                  v168 = v166 & 0xFFFFFFFFFFFFLL;
                }

                if (v168)
                {

                  sub_1B964C700();
                  if (v89)
                  {
                  }
                }

                v169 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__sectionHeaderMoreURL);
                swift_beginAccess();
                v170 = *v169;
                v171 = v169[1];
                v172 = HIBYTE(v171) & 0xF;
                if ((v171 & 0x2000000000000000) == 0)
                {
                  v172 = v170 & 0xFFFFFFFFFFFFLL;
                }

                if (v172)
                {

                  sub_1B964C700();
                  if (v89)
                  {
                  }
                }

                v173 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mediaKind);
                swift_beginAccess();
                v174 = *v173;
                v175 = v173[1];
                v176 = HIBYTE(v175) & 0xF;
                if ((v175 & 0x2000000000000000) == 0)
                {
                  v176 = v174 & 0xFFFFFFFFFFFFLL;
                }

                if (v176)
                {

                  sub_1B964C700();
                  if (v89)
                  {
                  }
                }

                v177 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__thumbnailAlign);
                swift_beginAccess();
                v178 = *v177;
                v179 = v177[1];
                v180 = HIBYTE(v179) & 0xF;
                if ((v179 & 0x2000000000000000) == 0)
                {
                  v180 = v178 & 0xFFFFFFFFFFFFLL;
                }

                if (v180)
                {

                  sub_1B964C700();
                  if (v89)
                  {
                  }
                }

                v181 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__description_p);
                swift_beginAccess();
                v182 = *v181;
                v183 = v181[1];
                v184 = HIBYTE(v183) & 0xF;
                if ((v183 & 0x2000000000000000) == 0)
                {
                  v184 = v182 & 0xFFFFFFFFFFFFLL;
                }

                if (v184)
                {

                  sub_1B964C700();
                  if (v89)
                  {
                  }
                }

                swift_beginAccess();
                v185 = v250;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v185, 1, v265) == 1)
                {
                  sub_1B8D9207C(v250, &qword_1EBAC3D38, &qword_1B9689660);
                }

                else
                {
                  sub_1B90B722C();
                  sub_1B8CD26D8(&qword_1EBAC3E10, type metadata accessor for Apple_Parsec_Search_V1alpha_Image, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Image);
                  sub_1B964C740();
                  if (v89)
                  {
                    return sub_1B90B72DC();
                  }

                  sub_1B90B72DC();
                }

                swift_beginAccess();
                v186 = v252;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v186, 1, v265) == 1)
                {
                  sub_1B8D9207C(v252, &qword_1EBAC3D38, &qword_1B9689660);
                }

                else
                {
                  sub_1B90B722C();
                  sub_1B8CD26D8(&qword_1EBAC3E10, type metadata accessor for Apple_Parsec_Search_V1alpha_Image, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Image);
                  sub_1B964C740();
                  if (v89)
                  {
                    return sub_1B90B72DC();
                  }

                  sub_1B90B72DC();
                }

                v187 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__auxiliaryInfoAlign);
                swift_beginAccess();
                v188 = *v187;
                v189 = v187[1];
                v190 = HIBYTE(v189) & 0xF;
                if ((v189 & 0x2000000000000000) == 0)
                {
                  v190 = v188 & 0xFFFFFFFFFFFFLL;
                }

                if (v190)
                {

                  sub_1B964C700();
                  if (v89)
                  {
                  }
                }

                swift_beginAccess();
                v191 = v254;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v191, 1, v259) == 1)
                {
                  sub_1B8D9207C(v254, &qword_1EBAC3D40, &qword_1B9689668);
                }

                else
                {
                  (*(v258 + 32))(v255, v254, v259);
                  sub_1B8CD26D8(&qword_1EBAC3E98, MEMORY[0x1E69AAB58], MEMORY[0x1E69AAB50]);
                  sub_1B964C740();
                  if (v89)
                  {
                    return (*(v258 + 8))(v255, v259);
                  }

                  (*(v258 + 8))(v255, v259);
                }

                swift_beginAccess();
                v192 = v256;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v192, 1, v259) == 1)
                {
                  sub_1B8D9207C(v256, &qword_1EBAC3D40, &qword_1B9689668);
                }

                else
                {
                  (*(v258 + 32))(v257, v256, v259);
                  sub_1B8CD26D8(&qword_1EBAC3E98, MEMORY[0x1E69AAB58], MEMORY[0x1E69AAB50]);
                  sub_1B964C740();
                  if (v89)
                  {
                    return (*(v258 + 8))(v257, v259);
                  }

                  (*(v258 + 8))(v257, v259);
                }

                swift_beginAccess();
                v193 = v260;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v193, 1, v261) == 1)
                {
                  sub_1B8D9207C(v260, &unk_1EBAC3D48, &qword_1B9689670);
                }

                else
                {
                  sub_1B90B722C();
                  sub_1B8CD26D8(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);
                  sub_1B964C740();
                  if (v89)
                  {
                    return sub_1B90B72DC();
                  }

                  sub_1B90B72DC();
                }

                v194 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__viewName);
                swift_beginAccess();
                v195 = *v194;
                v196 = v194[1];
                v197 = HIBYTE(v196) & 0xF;
                if ((v196 & 0x2000000000000000) == 0)
                {
                  v197 = v195 & 0xFFFFFFFFFFFFLL;
                }

                if (v197)
                {

                  sub_1B964C700();
                  if (v89)
                  {
                  }
                }

                v198 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__contentText);
                swift_beginAccess();
                v199 = *v198;
                v200 = v198[1];
                v201 = HIBYTE(v200) & 0xF;
                if ((v200 & 0x2000000000000000) == 0)
                {
                  v201 = v199 & 0xFFFFFFFFFFFFLL;
                }

                if (v201)
                {

                  sub_1B964C700();
                  if (v89)
                  {
                  }
                }

                swift_beginAccess();
                v202 = v263;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v202, 1, v265) == 1)
                {
                  sub_1B8D9207C(v263, &qword_1EBAC3D38, &qword_1B9689660);
                }

                else
                {
                  sub_1B90B722C();
                  sub_1B8CD26D8(&qword_1EBAC3E10, type metadata accessor for Apple_Parsec_Search_V1alpha_Image, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Image);
                  sub_1B964C740();
                  if (v89)
                  {
                    return sub_1B90B72DC();
                  }

                  sub_1B90B72DC();
                }

                swift_beginAccess();
                v203 = v266;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v203, 1, v265) == 1)
                {
                  sub_1B8D9207C(v266, &qword_1EBAC3D38, &qword_1B9689660);
                }

                else
                {
                  sub_1B90B722C();
                  sub_1B8CD26D8(&qword_1EBAC3E10, type metadata accessor for Apple_Parsec_Search_V1alpha_Image, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_Image);
                  sub_1B964C740();
                  if (v89)
                  {
                    return sub_1B90B72DC();
                  }

                  sub_1B90B72DC();
                }

                v204 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__autoNavigate;
                swift_beginAccess();
                if (*(a1 + v204) != 1 || (result = sub_1B964C670(), !v89))
                {
                  v205 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__noGoTakeover;
                  swift_beginAccess();
                  if (*(a1 + v205) != 1 || (result = sub_1B964C670(), !v89))
                  {
                    v206 = a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsData;
                    swift_beginAccess();
                    if (!sub_1B8D99EA8(*v206, *(v206 + 8)))
                    {
                      v207 = *v206;
                      v208 = *(v206 + 8);
                      sub_1B8D91FCC(v207, v208);
                      sub_1B964C6A0();
                      if (v89)
                      {
                        return sub_1B8D538A0(v207, v208);
                      }

                      sub_1B8D538A0(v207, v208);
                    }

                    v209 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsDataType);
                    swift_beginAccess();
                    v210 = *v209;
                    v211 = v209[1];
                    v212 = HIBYTE(v211) & 0xF;
                    if ((v211 & 0x2000000000000000) == 0)
                    {
                      v212 = v210 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v212)
                    {

                      sub_1B964C700();
                      if (v89)
                      {
                      }
                    }

                    v213 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__mapsResultType);
                    swift_beginAccess();
                    v214 = *v213;
                    v215 = v213[1];
                    v216 = HIBYTE(v215) & 0xF;
                    if ((v215 & 0x2000000000000000) == 0)
                    {
                      v216 = v214 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v216)
                    {

                      sub_1B964C700();
                      if (v89)
                      {
                      }
                    }

                    v217 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__nearbyBusinesses);
                    swift_beginAccess();
                    v218 = *v217;
                    v219 = v217[1];
                    v220 = HIBYTE(v219) & 0xF;
                    if ((v219 & 0x2000000000000000) == 0)
                    {
                      v220 = v218 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v220)
                    {

                      sub_1B964C700();
                      if (v89)
                      {
                      }
                    }

                    v221 = (a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__passageID);
                    swift_beginAccess();
                    v222 = *v221;
                    v223 = v221[1];
                    v224 = HIBYTE(v223) & 0xF;
                    if ((v223 & 0x2000000000000000) == 0)
                    {
                      v224 = v222 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v224)
                    {

                      sub_1B964C700();
                      if (v89)
                      {
                      }
                    }

                    v225 = a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pb;
                    swift_beginAccess();
                    if (!sub_1B8D99EA8(*v225, *(v225 + 8)))
                    {
                      v207 = *v225;
                      v208 = *(v225 + 8);
                      sub_1B8D91FCC(v207, v208);
                      sub_1B964C6A0();
                      if (v89)
                      {
                        return sub_1B8D538A0(v207, v208);
                      }

                      sub_1B8D538A0(v207, v208);
                    }

                    swift_beginAccess();
                    v226 = v269;
                    sub_1B8D92024();
                    if (__swift_getEnumTagSinglePayload(v226, 1, v280) == 1)
                    {
                      sub_1B8D9207C(v269, &qword_1EBAC3D50, &qword_1B9689678);
                    }

                    else
                    {
                      sub_1B90B722C();
                      sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
                      sub_1B964C740();
                      if (v89)
                      {
                        return sub_1B90B72DC();
                      }

                      sub_1B90B72DC();
                    }

                    v227 = a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbRow;
                    swift_beginAccess();
                    if (!sub_1B8D99EA8(*v227, *(v227 + 8)))
                    {
                      v207 = *v227;
                      v208 = *(v227 + 8);
                      sub_1B8D91FCC(v207, v208);
                      sub_1B964C6A0();
                      if (v89)
                      {
                        return sub_1B8D538A0(v207, v208);
                      }

                      sub_1B8D538A0(v207, v208);
                    }

                    swift_beginAccess();
                    v228 = v271;
                    sub_1B8D92024();
                    if (__swift_getEnumTagSinglePayload(v228, 1, v280) == 1)
                    {
                      sub_1B8D9207C(v271, &qword_1EBAC3D50, &qword_1B9689678);
                    }

                    else
                    {
                      sub_1B90B722C();
                      sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
                      sub_1B964C740();
                      if (v89)
                      {
                        return sub_1B90B72DC();
                      }

                      sub_1B90B72DC();
                    }

                    v229 = a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompact;
                    swift_beginAccess();
                    if (!sub_1B8D99EA8(*v229, *(v229 + 8)))
                    {
                      v207 = *v229;
                      v208 = *(v229 + 8);
                      sub_1B8D91FCC(v207, v208);
                      sub_1B964C6A0();
                      if (v89)
                      {
                        return sub_1B8D538A0(v207, v208);
                      }

                      sub_1B8D538A0(v207, v208);
                    }

                    swift_beginAccess();
                    v230 = v273;
                    sub_1B8D92024();
                    if (__swift_getEnumTagSinglePayload(v230, 1, v280) == 1)
                    {
                      sub_1B8D9207C(v273, &qword_1EBAC3D50, &qword_1B9689678);
                    }

                    else
                    {
                      sub_1B90B722C();
                      sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
                      sub_1B964C740();
                      if (v89)
                      {
                        return sub_1B90B72DC();
                      }

                      sub_1B90B72DC();
                    }

                    v231 = a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbCompactTophit;
                    swift_beginAccess();
                    if (!sub_1B8D99EA8(*v231, *(v231 + 8)))
                    {
                      v207 = *v231;
                      v208 = *(v231 + 8);
                      sub_1B8D91FCC(v207, v208);
                      sub_1B964C6A0();
                      if (v89)
                      {
                        return sub_1B8D538A0(v207, v208);
                      }

                      sub_1B8D538A0(v207, v208);
                    }

                    swift_beginAccess();
                    v232 = v275;
                    sub_1B8D92024();
                    if (__swift_getEnumTagSinglePayload(v232, 1, v280) == 1)
                    {
                      sub_1B8D9207C(v275, &qword_1EBAC3D50, &qword_1B9689678);
                    }

                    else
                    {
                      sub_1B90B722C();
                      sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
                      sub_1B964C740();
                      if (v89)
                      {
                        return sub_1B90B72DC();
                      }

                      sub_1B90B72DC();
                    }

                    v233 = a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDescriptive;
                    swift_beginAccess();
                    if (!sub_1B8D99EA8(*v233, *(v233 + 8)))
                    {
                      v207 = *v233;
                      v208 = *(v233 + 8);
                      sub_1B8D91FCC(v207, v208);
                      sub_1B964C6A0();
                      if (v89)
                      {
                        return sub_1B8D538A0(v207, v208);
                      }

                      sub_1B8D538A0(v207, v208);
                    }

                    swift_beginAccess();
                    v234 = v277;
                    sub_1B8D92024();
                    if (__swift_getEnumTagSinglePayload(v234, 1, v280) == 1)
                    {
                      sub_1B8D9207C(v277, &qword_1EBAC3D50, &qword_1B9689678);
                    }

                    else
                    {
                      sub_1B90B722C();
                      sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
                      sub_1B964C740();
                      if (v89)
                      {
                        return sub_1B90B72DC();
                      }

                      sub_1B90B72DC();
                    }

                    v235 = a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbDetailed;
                    swift_beginAccess();
                    if (!sub_1B8D99EA8(*v235, *(v235 + 8)))
                    {
                      v207 = *v235;
                      v208 = *(v235 + 8);
                      sub_1B8D91FCC(v207, v208);
                      sub_1B964C6A0();
                      if (v89)
                      {
                        return sub_1B8D538A0(v207, v208);
                      }

                      sub_1B8D538A0(v207, v208);
                    }

                    swift_beginAccess();
                    v236 = v279;
                    sub_1B8D92024();
                    if (__swift_getEnumTagSinglePayload(v236, 1, v280) == 1)
                    {
                      sub_1B8D9207C(v279, &qword_1EBAC3D50, &qword_1B9689678);
                    }

                    else
                    {
                      sub_1B90B722C();
                      sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
                      sub_1B964C740();
                      if (v89)
                      {
                        return sub_1B90B72DC();
                      }

                      sub_1B90B72DC();
                    }

                    v237 = a1 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Search_V1alpha_SearchResultP33_AF0CC12901A0F22E7F2A58A8C96C91A213_StorageClass__pbTophit;
                    swift_beginAccess();
                    if (!sub_1B8D99EA8(*v237, *(v237 + 8)))
                    {
                      v207 = *v237;
                      v208 = *(v237 + 8);
                      sub_1B8D91FCC(v207, v208);
                      sub_1B964C6A0();
                      if (v89)
                      {
                        return sub_1B8D538A0(v207, v208);
                      }

                      sub_1B8D538A0(v207, v208);
                    }

                    swift_beginAccess();
                    v238 = v240;
                    sub_1B8D92024();
                    if (__swift_getEnumTagSinglePayload(v238, 1, v280) == 1)
                    {
                      return sub_1B8D9207C(v238, &qword_1EBAC3D50, &qword_1B9689678);
                    }

                    sub_1B90B722C();
                    sub_1B8CD26D8(&qword_1EBAC3DF8, type metadata accessor for Apple_Parsec_Search_V1alpha_UIComponentDetail, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_UIComponentDetail);
                    sub_1B964C740();
                    return sub_1B90B72DC();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}