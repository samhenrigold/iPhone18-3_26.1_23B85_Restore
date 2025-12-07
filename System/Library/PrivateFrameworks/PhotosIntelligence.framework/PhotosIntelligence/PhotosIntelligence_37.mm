uint64_t sub_1C722228C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x656D656761676E65;
      break;
    case 3:
      v3 = 1097887604;
      goto LABEL_17;
    case 4:
      result = 0x756F437465737361;
      break;
    case 5:
      v3 = 1098474859;
LABEL_17:
      result = v3 | 0x7465737300000000;
      break;
    case 6:
      result = 0x64696C61567369;
      break;
    case 7:
      result = 0x737469617274;
      break;
    case 8:
      result = 0x6E6F69746361;
      break;
    case 9:
      result = 0x746E65746E6F63;
      break;
    case 10:
      result = 0x6B6F547972657571;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x655474706D6F7270;
      break;
    case 13:
      result = 0x655474706D6F7270;
      break;
    case 14:
      result = 0x6D6F7250676E6F6CLL;
      break;
    case 15:
      result = 0x654D74706D6F7270;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x656C61636F6CLL;
      break;
    case 19:
      result = 0x6E69646465626D65;
      break;
    case 20:
      result = 0x6574616C706D6574;
      break;
    case 21:
      result = 0x627553636973756DLL;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0x69746172656E6567;
      break;
    case 24:
      result = 0x6F7250636973756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7222590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7221AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72225B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C7222284();
  *a1 = result;
  return result;
}

uint64_t sub_1C72225E0(uint64_t a1)
{
  v2 = sub_1C72249FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C722261C(uint64_t a1)
{
  v2 = sub_1C72249FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestion.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194F8, &unk_1C7578068);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28[-1] - v6;
  v8 = OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_70(v8, v9);
  sub_1C72249FC();
  sub_1C755200C();
  LOBYTE(v35[0]) = 0;
  OUTLINED_FUNCTION_14_41();
  sub_1C7551CCC();
  if (!v1)
  {
    LOBYTE(v35[0]) = *(v0 + 16);
    LOBYTE(v31) = 1;
    sub_1C710EB44();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    LOBYTE(v35[0]) = *(v0 + 17);
    LOBYTE(v31) = 2;
    sub_1C7224A50();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    *&v35[0] = *(v0 + 24);
    LOBYTE(v31) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_30_1();
    sub_1C7224904(v10);
    OUTLINED_FUNCTION_9_53();
    sub_1C7551D2C();
    LOBYTE(v35[0]) = 4;
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D0C();
    LOBYTE(v35[0]) = 5;
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    LOBYTE(v35[0]) = 6;
    OUTLINED_FUNCTION_16_35();
    sub_1C7551CDC();
    *&v35[0] = *(v0 + 64);
    LOBYTE(v31) = 7;
    OUTLINED_FUNCTION_9_53();
    sub_1C7551D2C();
    LOBYTE(v35[0]) = *(v0 + 72);
    LOBYTE(v31) = 8;
    sub_1C7224AA4();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    *&v35[0] = *(v0 + 80);
    LOBYTE(v31) = 9;
    sub_1C7224AF8();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    *&v35[0] = *(v0 + 88);
    LOBYTE(v31) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219068, &qword_1C7576920);
    sub_1C7224DFC(&qword_1EDD0D068);
    OUTLINED_FUNCTION_9_53();
    sub_1C7551D2C();
    *&v35[0] = *(v0 + 96);
    LOBYTE(v31) = 11;
    OUTLINED_FUNCTION_9_53();
    sub_1C7551CBC();
    LOBYTE(v35[0]) = 12;
    OUTLINED_FUNCTION_14_41();
    sub_1C7551CCC();
    LOBYTE(v35[0]) = 13;
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    v36 = 14;
    OUTLINED_FUNCTION_14_41();
    sub_1C7551CCC();
    v11 = *(v0 + 168);
    v35[0] = *(v0 + 152);
    v35[1] = v11;
    v12 = *(v0 + 200);
    v35[2] = *(v0 + 184);
    v35[3] = v12;
    v13 = *(v0 + 168);
    v31 = *(v0 + 152);
    v32 = v13;
    v14 = *(v0 + 200);
    v33 = *(v0 + 184);
    v34 = v14;
    v30[79] = 15;
    sub_1C712A774(v35, v30, &qword_1EC2194E8, &unk_1C7578058);
    sub_1C7224BA0();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_39_24();
    sub_1C6FD7FC8(v30, &qword_1EC2194E8, &unk_1C7578058);
    OUTLINED_FUNCTION_55_18(16);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_55_18(17);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_55_18(18);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    v28[0] = *(v0 + 264);
    v29 = 19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219500, &qword_1C7578078);
    OUTLINED_FUNCTION_30_1();
    v16 = sub_1C7224BF4(v15);
    OUTLINED_FUNCTION_95_9(v28, &v29, v17, v18, v16);
    OUTLINED_FUNCTION_55_18(20);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_55_18(21);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    v28[0] = *(v0 + 304);
    v29 = 22;
    sub_1C7224C58();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    v19 = type metadata accessor for PromptSuggestion(0);
    v20 = *(v19 + 108);
    OUTLINED_FUNCTION_55_18(23);
    sub_1C754DF6C();
    OUTLINED_FUNCTION_4_57();
    v22 = sub_1C7224414(v21);
    OUTLINED_FUNCTION_95_9(v0 + v20, v28, v23, v24, v22);
    v25 = (v0 + *(v19 + 112));
    v26 = v25[1];
    v28[0] = *v25;
    v28[1] = v26;
    v29 = 24;
    sub_1C7224968(v28[0]);
    sub_1C7224CAC();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551CBC();
    sub_1C716A74C(v28[0]);
  }

  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t PromptSuggestion.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

void PromptSuggestion.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v6);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_389();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219510, &qword_1C7578080);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_158();
  v45 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  *(v11 - v10 + 17) = 0;
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C72249FC();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v47) = 0;
    OUTLINED_FUNCTION_25_24();
    *v12 = sub_1C7551BBC();
    *(v12 + 8) = v13;
    v14 = sub_1C710EDA8();
    OUTLINED_FUNCTION_21_36(&type metadata for PromptSuggestion.Source, v15, v16, v17, v14);
    *(v12 + 16) = v47;
    v18 = sub_1C7224D00();
    OUTLINED_FUNCTION_21_36(&type metadata for PromptSuggestion.EngagementState, v19, v20, v21, v18);
    *(v12 + 17) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_12_0();
    sub_1C7224904(v22);
    OUTLINED_FUNCTION_41_22();
    OUTLINED_FUNCTION_84_8();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551C1C();
    *(v12 + 24) = v47;
    OUTLINED_FUNCTION_54_20(4);
    OUTLINED_FUNCTION_25_24();
    *(v12 + 32) = sub_1C7551BFC();
    OUTLINED_FUNCTION_54_20(5);
    OUTLINED_FUNCTION_25_24();
    *(v12 + 40) = sub_1C7551B6C();
    *(v12 + 48) = v23;
    OUTLINED_FUNCTION_54_20(6);
    OUTLINED_FUNCTION_25_24();
    *(v12 + 56) = sub_1C7551BCC() & 1;
    OUTLINED_FUNCTION_41_22();
    OUTLINED_FUNCTION_84_8();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551C1C();
    *(v12 + 64) = v47;
    v24 = sub_1C7224D54();
    OUTLINED_FUNCTION_21_36(&type metadata for PromptSuggestion.ActionType, v25, v26, v27, v24);
    *(v12 + 72) = v47;
    v28 = sub_1C7224DA8();
    OUTLINED_FUNCTION_21_36(&type metadata for PromptSuggestion.ContentType, v29, v30, v31, v28);
    *(v12 + 80) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219068, &qword_1C7576920);
    sub_1C7224DFC(&unk_1EDD0D060);
    OUTLINED_FUNCTION_41_22();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551C1C();
    *(v12 + 88) = v47;
    OUTLINED_FUNCTION_41_22();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551BAC();
    *(v12 + 96) = v47;
    OUTLINED_FUNCTION_54_20(12);
    OUTLINED_FUNCTION_18_28();
    *(v12 + 104) = sub_1C7551BBC();
    *(v12 + 112) = v32;
    OUTLINED_FUNCTION_54_20(13);
    OUTLINED_FUNCTION_18_28();
    *(v12 + 120) = sub_1C7551B6C();
    *(v12 + 128) = v33;
    OUTLINED_FUNCTION_54_20(14);
    OUTLINED_FUNCTION_18_28();
    *(v12 + 136) = sub_1C7551BBC();
    *(v12 + 144) = v34;
    sub_1C7224EC0();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_68_16();
    *(v12 + 200) = v35;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 216) = sub_1C7551B6C();
    *(v12 + 224) = v36;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 232) = sub_1C7551B6C();
    *(v12 + 240) = v37;
    LOBYTE(v46) = 18;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 248) = sub_1C7551B6C();
    *(v12 + 256) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219500, &qword_1C7578078);
    OUTLINED_FUNCTION_12_0();
    sub_1C7224BF4(v39);
    OUTLINED_FUNCTION_25_24();
    sub_1C7551BAC();
    *(v12 + 264) = v46;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 272) = sub_1C7551B6C();
    *(v12 + 280) = v40;
    LOBYTE(v46) = 21;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 288) = sub_1C7551B6C();
    *(v12 + 296) = v41;
    sub_1C7224F14();
    OUTLINED_FUNCTION_28_22();
    sub_1C7551C1C();
    *(v12 + 304) = v46;
    sub_1C754DF6C();
    LOBYTE(v46) = 23;
    OUTLINED_FUNCTION_4_57();
    sub_1C7224414(v42);
    sub_1C7551BAC();
    sub_1C6FF51C8(v1, v12 + *(v45 + 108));
    sub_1C7224F68();
    OUTLINED_FUNCTION_28_22();
    sub_1C7551BAC();
    v43 = OUTLINED_FUNCTION_8_48();
    v44(v43);
    *(v12 + *(v45 + 112)) = v46;
    sub_1C71592A8(v12, v5);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C715930C(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7223924@<X0>(uint64_t *a1@<X8>)
{
  result = PromptSuggestion.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1C7223964@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6F91E60(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C7223998@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C6F91EA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1C72239C4@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6F91E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72239F0(uint64_t a1)
{
  v2 = sub_1C7226AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7223A2C(uint64_t a1)
{
  v2 = sub_1C7226AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7223A68()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EC2193A8 = result;
  return result;
}

uint64_t sub_1C7223AE0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2193B0);
  __swift_project_value_buffer(v0, qword_1EC2193B0);
  if (qword_1EC213EE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2193A8;
  return sub_1C754FF2C();
}

uint64_t sub_1C7223B6C(void *a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2195F8, &unk_1C7579BA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7226AEC();
  sub_1C755200C();
  v9 = objc_opt_self();
  v25[0] = 0;
  v10 = [v9 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v25];
  v11 = v25[0];
  if (v10)
  {
    v12 = sub_1C754DDEC();
    v14 = v13;

    v25[0] = v12;
    v25[1] = v14;
    sub_1C7226B40();
    sub_1C7551D2C();
    if (!v2)
    {
      (*(v6 + 8))(v8, v5);
      return sub_1C6FC1640(v12, v14);
    }

    sub_1C6FC1640(v12, v14);
  }

  else
  {
    v15 = v11;
    sub_1C754DBEC();

    swift_willThrow();
  }

  if (qword_1EC213EF0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C754FF1C();
  __swift_project_value_buffer(v16, qword_1EC2193B0);
  v17 = a2;
  v18 = sub_1C754FEEC();
  v19 = sub_1C755119C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_1C6F5C000, v18, v19, "Unable to archive and encode attributed string = %@", v20, 0xCu);
    sub_1C6FD7FC8(v21, &qword_1EC215190, &qword_1C755C730);
    MEMORY[0x1CCA5F8E0](v21, -1, -1);
    MEMORY[0x1CCA5F8E0](v20, -1, -1);
  }

  swift_willThrow();
  return (*(v6 + 8))(v8, v5);
}

void *sub_1C7223EA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219600, &qword_1C7579BB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7226AEC();
  sub_1C7551FFC();
  if (!v1)
  {
    sub_1C7226B94();
    sub_1C7551C1C();
    v8 = v14[0];
    v7 = v14[1];
    v13 = sub_1C6F65BE8(0, &qword_1EDD0CE48, 0x1E696ACD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219608, &unk_1C7579BC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C755BAA0;
    v12 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    *(v9 + 32) = v12;
    *(v9 + 40) = sub_1C6F65BE8(0, &qword_1EDD0CDB0, 0x1E6978A50);
    *(v9 + 48) = sub_1C6F65BE8(0, &qword_1EDD0CE10, 0x1E6978A78);
    sub_1C755120C();
    v13 = v8;

    if (v14[3])
    {
      if (swift_dynamicCast())
      {
        (*(v4 + 8))(v6, v3);
        sub_1C6FC1640(v13, v7);
        v7 = v14[5];
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v7;
      }
    }

    else
    {
      sub_1C6FD7FC8(v14, &qword_1EC219770, &unk_1C755C740);
    }

    v11 = v13;
    sub_1C7226BE8();
    swift_allocError();
    swift_willThrow();
    sub_1C6FC1640(v11, v7);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1C7224254()
{
  sub_1C7551F3C();
  sub_1C75513FC();
  return sub_1C7551FAC();
}

void *sub_1C7224298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C7223EA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C72242F0(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C75513FC();
  return sub_1C7551FAC();
}

unint64_t sub_1C722433C()
{
  result = qword_1EC2193D0;
  if (!qword_1EC2193D0)
  {
    result = swift_getWitnessTable(aA_3, &type metadata for PromptSuggestionContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2193D0);
  }

  return result;
}

unint64_t sub_1C7224390(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217988, &unk_1C756CAE0);
    OUTLINED_FUNCTION_11_42();
    sub_1C7224414(v4);
    v6 = OUTLINED_FUNCTION_82_11();
    result = swift_getWitnessTable(v6, v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7224414(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7224458()
{
  result = qword_1EC2193E8;
  if (!qword_1EC2193E8)
  {
    result = swift_getWitnessTable(byte_1C7579B08, &type metadata for TemplatedPromptMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2193E8);
  }

  return result;
}

unint64_t sub_1C7224514()
{
  result = qword_1EDD0F1A8;
  if (!qword_1EDD0F1A8)
  {
    result = swift_getWitnessTable(byte_1C7579AB8, &type metadata for PromptSuggestion.EngagementState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F1A8);
  }

  return result;
}

unint64_t sub_1C7224568()
{
  result = qword_1EC219420;
  if (!qword_1EC219420)
  {
    result = swift_getWitnessTable(aQ_9, &type metadata for PromptSuggestion.EngagementState.MemoryCreatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219420);
  }

  return result;
}

unint64_t sub_1C72245BC()
{
  result = qword_1EC219428;
  if (!qword_1EC219428)
  {
    result = swift_getWitnessTable(byte_1C7579A18, &type metadata for PromptSuggestion.EngagementState.UserSelectedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219428);
  }

  return result;
}

unint64_t sub_1C7224610()
{
  result = qword_1EC219430;
  if (!qword_1EC219430)
  {
    result = swift_getWitnessTable(byte_1C75799C8, &type metadata for PromptSuggestion.EngagementState.PresentedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219430);
  }

  return result;
}

unint64_t sub_1C7224664()
{
  result = qword_1EDD0F190;
  if (!qword_1EDD0F190)
  {
    result = swift_getWitnessTable(aA_4, &type metadata for PromptSuggestion.EngagementState.InitialCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F190);
  }

  return result;
}

unint64_t sub_1C72246B8()
{
  result = qword_1EDD0F140;
  if (!qword_1EDD0F140)
  {
    result = swift_getWitnessTable(byte_1C7579928, &type metadata for PromptSuggestion.Source.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F140);
  }

  return result;
}

unint64_t sub_1C722470C()
{
  result = qword_1EC219490;
  if (!qword_1EC219490)
  {
    result = swift_getWitnessTable(byte_1C75798D8, &type metadata for PromptSuggestion.Source.ContextualCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219490);
  }

  return result;
}

unint64_t sub_1C7224760()
{
  result = qword_1EDD0B068;
  if (!qword_1EDD0B068)
  {
    result = swift_getWitnessTable(a1_1, &type metadata for PromptSuggestion.Source.WhimsicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0B068);
  }

  return result;
}

unint64_t sub_1C72247B4()
{
  result = qword_1EDD0F100;
  if (!qword_1EDD0F100)
  {
    result = swift_getWitnessTable(byte_1C7579838, &type metadata for PromptSuggestion.Source.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F100);
  }

  return result;
}

unint64_t sub_1C7224808()
{
  result = qword_1EDD0F118;
  if (!qword_1EDD0F118)
  {
    result = swift_getWitnessTable(byte_1C75797E8, &type metadata for PromptSuggestion.Source.MosaicCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F118);
  }

  return result;
}

unint64_t sub_1C722485C()
{
  result = qword_1EC219498;
  if (!qword_1EC219498)
  {
    result = swift_getWitnessTable(asc_1C7579798, &type metadata for PromptSuggestion.Source.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219498);
  }

  return result;
}

unint64_t sub_1C72248B0()
{
  result = qword_1EC2194D8;
  if (!qword_1EC2194D8)
  {
    result = swift_getWitnessTable(aQ_10, &type metadata for PromptSuggestion.MusicProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2194D8);
  }

  return result;
}

unint64_t sub_1C7224904(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    v3 = OUTLINED_FUNCTION_82_11();
    result = swift_getWitnessTable(v3);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C7224968(uint64_t result)
{
  if (result)
  {
    sub_1C75504FC();

    return sub_1C75504FC();
  }

  return result;
}

unint64_t sub_1C72249A8()
{
  result = qword_1EC2194F0;
  if (!qword_1EC2194F0)
  {
    result = swift_getWitnessTable(byte_1C7579708, &type metadata for PromptSuggestion.Error, v0, v1);
    atomic_store(result, &qword_1EC2194F0);
  }

  return result;
}

unint64_t sub_1C72249FC()
{
  result = qword_1EDD0F1D0;
  if (!qword_1EDD0F1D0)
  {
    result = swift_getWitnessTable(byte_1C75796B8, &type metadata for PromptSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F1D0);
  }

  return result;
}

unint64_t sub_1C7224A50()
{
  result = qword_1EDD0B078[0];
  if (!qword_1EDD0B078[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.EngagementState, &type metadata for PromptSuggestion.EngagementState, v0, v1);
    atomic_store(result, qword_1EDD0B078);
  }

  return result;
}

unint64_t sub_1C7224AA4()
{
  result = qword_1EDD0B120;
  if (!qword_1EDD0B120)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ActionType, &type metadata for PromptSuggestion.ActionType, v0, v1);
    atomic_store(result, &qword_1EDD0B120);
  }

  return result;
}

unint64_t sub_1C7224AF8()
{
  result = qword_1EDD0B118;
  if (!qword_1EDD0B118)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ContentType, &type metadata for PromptSuggestion.ContentType, v0, v1);
    atomic_store(result, &qword_1EDD0B118);
  }

  return result;
}

unint64_t sub_1C7224B4C()
{
  result = qword_1EDD0F848;
  if (!qword_1EDD0F848)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryToken, &type metadata for QueryToken, v0, v1);
    atomic_store(result, &qword_1EDD0F848);
  }

  return result;
}

unint64_t sub_1C7224BA0()
{
  result = qword_1EDD09770;
  if (!qword_1EDD09770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemplatedPromptMetadata, &type metadata for TemplatedPromptMetadata, v0, v1);
    atomic_store(result, &qword_1EDD09770);
  }

  return result;
}

unint64_t sub_1C7224BF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219500, &qword_1C7578078);
    v3 = OUTLINED_FUNCTION_82_11();
    result = swift_getWitnessTable(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7224C58()
{
  result = qword_1EDD09470;
  if (!qword_1EDD09470)
  {
    result = swift_getWitnessTable(byte_1C7579690, &type metadata for CodableNSAttributedString, v0, v1);
    atomic_store(result, &qword_1EDD09470);
  }

  return result;
}

unint64_t sub_1C7224CAC()
{
  result = qword_1EC219508;
  if (!qword_1EC219508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.MusicProperties, &type metadata for PromptSuggestion.MusicProperties, v0, v1);
    atomic_store(result, &qword_1EC219508);
  }

  return result;
}

unint64_t sub_1C7224D00()
{
  result = qword_1EDD0F148;
  if (!qword_1EDD0F148)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.EngagementState, &type metadata for PromptSuggestion.EngagementState, v0, v1);
    atomic_store(result, &qword_1EDD0F148);
  }

  return result;
}

unint64_t sub_1C7224D54()
{
  result = qword_1EDD0F1D8;
  if (!qword_1EDD0F1D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ActionType, &type metadata for PromptSuggestion.ActionType, v0, v1);
    atomic_store(result, &qword_1EDD0F1D8);
  }

  return result;
}

unint64_t sub_1C7224DA8()
{
  result = qword_1EDD0F1B0;
  if (!qword_1EDD0F1B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ContentType, &type metadata for PromptSuggestion.ContentType, v0, v1);
    atomic_store(result, &qword_1EDD0F1B0);
  }

  return result;
}

unint64_t sub_1C7224DFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219068, &qword_1C7576920);
    v4();
    v6 = OUTLINED_FUNCTION_82_11();
    result = swift_getWitnessTable(v6, v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7224E6C()
{
  result = qword_1EDD0F840;
  if (!qword_1EDD0F840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryToken, &type metadata for QueryToken, v0, v1);
    atomic_store(result, &qword_1EDD0F840);
  }

  return result;
}

unint64_t sub_1C7224EC0()
{
  result = qword_1EDD0DDD8[0];
  if (!qword_1EDD0DDD8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemplatedPromptMetadata, &type metadata for TemplatedPromptMetadata, v0, v1);
    atomic_store(result, qword_1EDD0DDD8);
  }

  return result;
}

unint64_t sub_1C7224F14()
{
  result = qword_1EDD0DAD0;
  if (!qword_1EDD0DAD0)
  {
    result = swift_getWitnessTable(asc_1C7579668, &type metadata for CodableNSAttributedString, v0, v1);
    atomic_store(result, &qword_1EDD0DAD0);
  }

  return result;
}

unint64_t sub_1C7224F68()
{
  result = qword_1EC219518;
  if (!qword_1EC219518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.MusicProperties, &type metadata for PromptSuggestion.MusicProperties, v0, v1);
    atomic_store(result, &qword_1EC219518);
  }

  return result;
}

unint64_t sub_1C7224FC0()
{
  result = qword_1EC219520;
  if (!qword_1EC219520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TemplatedPromptMetadata, &type metadata for TemplatedPromptMetadata, v0, v1);
    atomic_store(result, &qword_1EC219520);
  }

  return result;
}

unint64_t sub_1C7225018()
{
  result = qword_1EC219528;
  if (!qword_1EC219528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.EngagementState, &type metadata for PromptSuggestion.EngagementState, v0, v1);
    atomic_store(result, &qword_1EC219528);
  }

  return result;
}

unint64_t sub_1C7225070()
{
  result = qword_1EC219530;
  if (!qword_1EC219530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.Composition, &type metadata for PromptSuggestion.Composition, v0, v1);
    atomic_store(result, &qword_1EC219530);
  }

  return result;
}

unint64_t sub_1C7225154()
{
  result = qword_1EDD0F0C0;
  if (!qword_1EDD0F0C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.Source, &type metadata for PromptSuggestion.Source, v0, v1);
    atomic_store(result, &qword_1EDD0F0C0);
  }

  return result;
}

unint64_t sub_1C72251F0()
{
  result = qword_1EC219560;
  if (!qword_1EC219560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ActionType, &type metadata for PromptSuggestion.ActionType, v0, v1);
    atomic_store(result, &qword_1EC219560);
  }

  return result;
}

unint64_t sub_1C7225248()
{
  result = qword_1EDD0F1B8;
  if (!qword_1EDD0F1B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ContentType, &type metadata for PromptSuggestion.ContentType, v0, v1);
    atomic_store(result, &qword_1EDD0F1B8);
  }

  return result;
}

unint64_t sub_1C72252A0()
{
  result = qword_1EC219568;
  if (!qword_1EC219568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ContentType, &type metadata for PromptSuggestion.ContentType, v0, v1);
    atomic_store(result, &qword_1EC219568);
  }

  return result;
}

unint64_t sub_1C72252F4()
{
  result = qword_1EC219570;
  if (!qword_1EC219570)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ContentType, &type metadata for PromptSuggestion.ContentType, v0, v1);
    atomic_store(result, &qword_1EC219570);
  }

  return result;
}

unint64_t sub_1C722534C()
{
  result = qword_1EC219578;
  if (!qword_1EC219578)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ContentType, &type metadata for PromptSuggestion.ContentType, v0, v1);
    atomic_store(result, &qword_1EC219578);
  }

  return result;
}

unint64_t sub_1C72253A4()
{
  result = qword_1EC219580;
  if (!qword_1EC219580)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.MusicProperties, &type metadata for PromptSuggestion.MusicProperties, v0, v1);
    atomic_store(result, &qword_1EC219580);
  }

  return result;
}

uint64_t sub_1C7225450(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_1C72254A4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1C7225540(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C755149C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PromptSuggestion.Composition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestion.Composition(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PromptSuggestion.ActionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptSuggestion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C72259D0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_479(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_476(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_477(result, v6);
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
          result = OUTLINED_FUNCTION_478(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7225B3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_480(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_480(v8);
}

_BYTE *sub_1C7225BC0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_479(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_476(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_477(result, v6);
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
          result = OUTLINED_FUNCTION_478(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7225C8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_480(-1);
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
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_480(v8);
}

_BYTE *sub_1C7225D10(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_479(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_476(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_477(result, v6);
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
          result = OUTLINED_FUNCTION_478(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7225DE0()
{
  result = qword_1EC219588;
  if (!qword_1EC219588)
  {
    result = swift_getWitnessTable(aA_5, &type metadata for PromptSuggestionContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219588);
  }

  return result;
}

unint64_t sub_1C7225E38()
{
  result = qword_1EC219590;
  if (!qword_1EC219590)
  {
    result = swift_getWitnessTable(byte_1C7578FC0, &type metadata for TemplatedPromptMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219590);
  }

  return result;
}

unint64_t sub_1C7225E90()
{
  result = qword_1EC219598;
  if (!qword_1EC219598)
  {
    result = swift_getWitnessTable(byte_1C75791B8, &type metadata for PromptSuggestion.EngagementState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219598);
  }

  return result;
}

unint64_t sub_1C7225EE8()
{
  result = qword_1EC2195A0;
  if (!qword_1EC2195A0)
  {
    result = swift_getWitnessTable(aI_9, &type metadata for PromptSuggestion.Source.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2195A0);
  }

  return result;
}

unint64_t sub_1C7225F40()
{
  result = qword_1EC2195A8;
  if (!qword_1EC2195A8)
  {
    result = swift_getWitnessTable(byte_1C75794B8, &type metadata for PromptSuggestion.MusicProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2195A8);
  }

  return result;
}

unint64_t sub_1C7225F98()
{
  result = qword_1EC2195B0;
  if (!qword_1EC2195B0)
  {
    result = swift_getWitnessTable(asc_1C7579520, &type metadata for PromptSuggestion.Error, v0, v1);
    atomic_store(result, &qword_1EC2195B0);
  }

  return result;
}

unint64_t sub_1C7225FF0()
{
  result = qword_1EC2195B8;
  if (!qword_1EC2195B8)
  {
    result = swift_getWitnessTable(aQ_11, &type metadata for PromptSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2195B8);
  }

  return result;
}

unint64_t sub_1C7226048()
{
  result = qword_1EC2195C0;
  if (!qword_1EC2195C0)
  {
    result = swift_getWitnessTable(aI_10, &type metadata for CodableNSAttributedString, v0, v1);
    atomic_store(result, &qword_1EC2195C0);
  }

  return result;
}

unint64_t sub_1C72260A0()
{
  result = qword_1EDD0F1C0;
  if (!qword_1EDD0F1C0)
  {
    result = swift_getWitnessTable(byte_1C7579548, &type metadata for PromptSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F1C0);
  }

  return result;
}

unint64_t sub_1C72260F8()
{
  result = qword_1EDD0F1C8;
  if (!qword_1EDD0F1C8)
  {
    result = swift_getWitnessTable(byte_1C7579570, &type metadata for PromptSuggestion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F1C8);
  }

  return result;
}

unint64_t sub_1C7226150()
{
  result = qword_1EC2195C8;
  if (!qword_1EC2195C8)
  {
    result = swift_getWitnessTable(byte_1C7579428, &type metadata for PromptSuggestion.MusicProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2195C8);
  }

  return result;
}

unint64_t sub_1C72261A8()
{
  result = qword_1EC2195D0;
  if (!qword_1EC2195D0)
  {
    result = swift_getWitnessTable(byte_1C7579450, &type metadata for PromptSuggestion.MusicProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2195D0);
  }

  return result;
}

unint64_t sub_1C7226200()
{
  result = qword_1EDD0F120;
  if (!qword_1EDD0F120)
  {
    result = swift_getWitnessTable(byte_1C7579320, &type metadata for PromptSuggestion.Source.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F120);
  }

  return result;
}

unint64_t sub_1C7226258()
{
  result = qword_1EDD0F128;
  if (!qword_1EDD0F128)
  {
    result = swift_getWitnessTable(byte_1C7579348, &type metadata for PromptSuggestion.Source.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F128);
  }

  return result;
}

unint64_t sub_1C72262B0()
{
  result = qword_1EDD0F108;
  if (!qword_1EDD0F108)
  {
    result = swift_getWitnessTable(asc_1C75792D0, &type metadata for PromptSuggestion.Source.MosaicCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F108);
  }

  return result;
}

unint64_t sub_1C7226308()
{
  result = qword_1EDD0F110;
  if (!qword_1EDD0F110)
  {
    result = swift_getWitnessTable(a9_2, &type metadata for PromptSuggestion.Source.MosaicCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F110);
  }

  return result;
}

unint64_t sub_1C7226360()
{
  result = qword_1EDD0F0F0;
  if (!qword_1EDD0F0F0)
  {
    result = swift_getWitnessTable(aQ_12, &type metadata for PromptSuggestion.Source.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F0F0);
  }

  return result;
}

unint64_t sub_1C72263B8()
{
  result = qword_1EDD0F0F8;
  if (!qword_1EDD0F0F8)
  {
    result = swift_getWitnessTable(byte_1C75792A8, &type metadata for PromptSuggestion.Source.SearchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F0F8);
  }

  return result;
}

unint64_t sub_1C7226410()
{
  result = qword_1EDD0F0E0;
  if (!qword_1EDD0F0E0)
  {
    result = swift_getWitnessTable(byte_1C7579230, &type metadata for PromptSuggestion.Source.WhimsicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F0E0);
  }

  return result;
}

unint64_t sub_1C7226468()
{
  result = qword_1EDD0F0E8;
  if (!qword_1EDD0F0E8)
  {
    result = swift_getWitnessTable(byte_1C7579258, &type metadata for PromptSuggestion.Source.WhimsicalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F0E8);
  }

  return result;
}

unint64_t sub_1C72264C0()
{
  result = qword_1EDD0F0D0;
  if (!qword_1EDD0F0D0)
  {
    result = swift_getWitnessTable(byte_1C75791E0, &type metadata for PromptSuggestion.Source.ContextualCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F0D0);
  }

  return result;
}

unint64_t sub_1C7226518()
{
  result = qword_1EDD0F0D8;
  if (!qword_1EDD0F0D8)
  {
    result = swift_getWitnessTable(asc_1C7579208, &type metadata for PromptSuggestion.Source.ContextualCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F0D8);
  }

  return result;
}

unint64_t sub_1C7226570()
{
  result = qword_1EDD0F130;
  if (!qword_1EDD0F130)
  {
    result = swift_getWitnessTable(byte_1C7579370, &type metadata for PromptSuggestion.Source.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F130);
  }

  return result;
}

unint64_t sub_1C72265C8()
{
  result = qword_1EDD0F138;
  if (!qword_1EDD0F138)
  {
    result = swift_getWitnessTable(byte_1C7579398, &type metadata for PromptSuggestion.Source.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F138);
  }

  return result;
}

unint64_t sub_1C7226620()
{
  result = qword_1EDD0F180;
  if (!qword_1EDD0F180)
  {
    result = swift_getWitnessTable(byte_1C75790D8, &type metadata for PromptSuggestion.EngagementState.InitialCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F180);
  }

  return result;
}

unint64_t sub_1C7226678()
{
  result = qword_1EDD0F188;
  if (!qword_1EDD0F188)
  {
    result = swift_getWitnessTable(a1_2, &type metadata for PromptSuggestion.EngagementState.InitialCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F188);
  }

  return result;
}

unint64_t sub_1C72266D0()
{
  result = qword_1EDD0F170;
  if (!qword_1EDD0F170)
  {
    result = swift_getWitnessTable(aI_11, &type metadata for PromptSuggestion.EngagementState.PresentedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F170);
  }

  return result;
}

unint64_t sub_1C7226728()
{
  result = qword_1EDD0F178;
  if (!qword_1EDD0F178)
  {
    result = swift_getWitnessTable(byte_1C75790B0, &type metadata for PromptSuggestion.EngagementState.PresentedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F178);
  }

  return result;
}

unint64_t sub_1C7226780()
{
  result = qword_1EDD0F160;
  if (!qword_1EDD0F160)
  {
    result = swift_getWitnessTable(byte_1C7579038, &type metadata for PromptSuggestion.EngagementState.UserSelectedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F160);
  }

  return result;
}

unint64_t sub_1C72267D8()
{
  result = qword_1EDD0F168;
  if (!qword_1EDD0F168)
  {
    result = swift_getWitnessTable(byte_1C7579060, &type metadata for PromptSuggestion.EngagementState.UserSelectedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F168);
  }

  return result;
}

unint64_t sub_1C7226830()
{
  result = qword_1EDD0F150;
  if (!qword_1EDD0F150)
  {
    result = swift_getWitnessTable(asc_1C7578FE8, &type metadata for PromptSuggestion.EngagementState.MemoryCreatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F150);
  }

  return result;
}

unint64_t sub_1C7226888()
{
  result = qword_1EDD0F158;
  if (!qword_1EDD0F158)
  {
    result = swift_getWitnessTable(asc_1C7579010, &type metadata for PromptSuggestion.EngagementState.MemoryCreatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F158);
  }

  return result;
}

unint64_t sub_1C72268E0()
{
  result = qword_1EDD0F198;
  if (!qword_1EDD0F198)
  {
    result = swift_getWitnessTable(byte_1C7579128, &type metadata for PromptSuggestion.EngagementState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F198);
  }

  return result;
}

unint64_t sub_1C7226938()
{
  result = qword_1EDD0F1A0;
  if (!qword_1EDD0F1A0)
  {
    result = swift_getWitnessTable(byte_1C7579150, &type metadata for PromptSuggestion.EngagementState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F1A0);
  }

  return result;
}

unint64_t sub_1C7226990()
{
  result = qword_1EC2195D8;
  if (!qword_1EC2195D8)
  {
    result = swift_getWitnessTable(byte_1C7578F30, &type metadata for TemplatedPromptMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2195D8);
  }

  return result;
}

unint64_t sub_1C72269E8()
{
  result = qword_1EC2195E0;
  if (!qword_1EC2195E0)
  {
    result = swift_getWitnessTable(byte_1C7578F58, &type metadata for TemplatedPromptMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2195E0);
  }

  return result;
}

unint64_t sub_1C7226A40()
{
  result = qword_1EC2195E8;
  if (!qword_1EC2195E8)
  {
    result = swift_getWitnessTable(aY_7, &type metadata for PromptSuggestionContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2195E8);
  }

  return result;
}

unint64_t sub_1C7226A98()
{
  result = qword_1EC2195F0;
  if (!qword_1EC2195F0)
  {
    result = swift_getWitnessTable(byte_1C7578EA0, &type metadata for PromptSuggestionContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2195F0);
  }

  return result;
}

unint64_t sub_1C7226AEC()
{
  result = qword_1EDD0DAD8;
  if (!qword_1EDD0DAD8)
  {
    result = swift_getWitnessTable(aQ_13, &type metadata for CodableNSAttributedString.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0DAD8);
  }

  return result;
}

unint64_t sub_1C7226B40()
{
  result = qword_1EDD0CBD0;
  if (!qword_1EDD0CBD0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969090], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &qword_1EDD0CBD0);
  }

  return result;
}

unint64_t sub_1C7226B94()
{
  result = qword_1EDD0F9F0;
  if (!qword_1EDD0F9F0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69690B0], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &qword_1EDD0F9F0);
  }

  return result;
}

unint64_t sub_1C7226BE8()
{
  result = qword_1EC219610;
  if (!qword_1EC219610)
  {
    result = swift_getWitnessTable(byte_1C7579D28, &type metadata for CodableNSAttributedString.Error, v0, v1);
    atomic_store(result, &qword_1EC219610);
  }

  return result;
}

unint64_t sub_1C7226C3C()
{
  result = qword_1EDD0F1E0;
  if (!qword_1EDD0F1E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.ActionType, &type metadata for PromptSuggestion.ActionType, v0, v1);
    atomic_store(result, &qword_1EDD0F1E0);
  }

  return result;
}

unint64_t sub_1C7226C90()
{
  result = qword_1EC219618;
  if (!qword_1EC219618)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.Composition, &type metadata for PromptSuggestion.Composition, v0, v1);
    atomic_store(result, &qword_1EC219618);
  }

  return result;
}

_BYTE *sub_1C7226CF4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7226DA4()
{
  result = qword_1EC219620;
  if (!qword_1EC219620)
  {
    result = swift_getWitnessTable(byte_1C7579C98, &type metadata for CodableNSAttributedString.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219620);
  }

  return result;
}

unint64_t sub_1C7226DFC()
{
  result = qword_1EC219628;
  if (!qword_1EC219628)
  {
    result = swift_getWitnessTable(aI_12, &type metadata for CodableNSAttributedString.Error, v0, v1);
    atomic_store(result, &qword_1EC219628);
  }

  return result;
}

unint64_t sub_1C7226E54()
{
  result = qword_1EDD0DAE8[0];
  if (!qword_1EDD0DAE8[0])
  {
    result = swift_getWitnessTable(asc_1C7579BD0, &type metadata for CodableNSAttributedString.CodingKeys, v0, v1);
    atomic_store(result, qword_1EDD0DAE8);
  }

  return result;
}

unint64_t sub_1C7226EAC()
{
  result = qword_1EDD0DAE0;
  if (!qword_1EDD0DAE0)
  {
    result = swift_getWitnessTable(a9_3, &type metadata for CodableNSAttributedString.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0DAE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C7551C1C();
}

unint64_t OUTLINED_FUNCTION_40_24(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v2[11] = 10;
  v2[12] = 0xE100000000000000;
  v2[9] = 2314;
  v2[10] = 0xE200000000000000;

  return sub_1C6FB5E8C();
}

__n128 OUTLINED_FUNCTION_68_16()
{
  v2 = *(v1 - 144);
  *(v0 + 152) = *(v1 - 160);
  *(v0 + 168) = v2;
  result = *(v1 - 128);
  *(v0 + 184) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_14(uint64_t a1)
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_93_10()
{
}

void OUTLINED_FUNCTION_94_10()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_95_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C7551CBC();
}

void sub_1C72270C8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
    sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60, off_1E829F410);
    sub_1C7550FEC();
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    sub_1C75504FC();
    v5 = 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
  while (v2 < 0)
  {
    if (!sub_1C75516FC() || (sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410), swift_dynamicCast(), (v12 = v28) == 0))
    {
LABEL_24:
      sub_1C6F61E88(v2);
      return;
    }

LABEL_17:
    v13 = [v12 sourcePerson];
    if (v13)
    {
      v14 = [v13 localIdentifier];
      swift_unknownObjectRelease();
      v15 = sub_1C755068C();
      v21 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v22 = v19;
      }

      v17 = *(v22 + 16);
      if (v17 >= *(v22 + 24) >> 1)
      {
        sub_1C6FB1814();
        v22 = v20;
      }

      *(v22 + 16) = v17 + 1;
      v18 = v22 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v21;
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1C72275B8(uint64_t a1)
{
  v3 = OBJC_IVAR___PNPetPromoter_metrics;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id PetPromoter.__allocating_init(with:delegate:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_50_19());
  v1 = OUTLINED_FUNCTION_65_17();
  return PetPromoter.init(with:delegate:)(v1, v2);
}

id PetPromoter.init(with:delegate:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___PNPetPromoter_photoLibrary] = a1;
  *&v2[OBJC_IVAR___PNPetPromoter_delegate] = a2;
  *&v2[OBJC_IVAR___PNPetPromoter_metrics] = MEMORY[0x1E69E7CC8];
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PetPromoter();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1C7227714()
{
  OUTLINED_FUNCTION_72_13();
  v475 = v1;
  v476 = v2;
  v451 = v3;
  v452 = v4;
  v442 = v0;
  ObjectType = swift_getObjectType();
  v433 = sub_1C754DC0C();
  OUTLINED_FUNCTION_3_0();
  v432 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v453 = v8 - v7;
  v9 = sub_1C754FE4C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v422 - v14;
  v448 = sub_1C754FE8C();
  OUTLINED_FUNCTION_3_0();
  v447 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v20 = v19 - v18;
  v446 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v444 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_0();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_80_8();
  sub_1C754FEFC();
  OUTLINED_FUNCTION_80_8();
  sub_1C754FE7C();
  sub_1C754FE3C();
  v445 = v20;
  v26 = sub_1C754FE6C();
  v27 = sub_1C755131C();
  if (sub_1C755144C())
  {
    v28 = OUTLINED_FUNCTION_127();
    *v28 = 0;
    v29 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v26, v27, v29, "PetPromoter", "", v28, 2u);
    OUTLINED_FUNCTION_109();
  }

  v30 = OUTLINED_FUNCTION_58();
  v31(v30);
  sub_1C754FECC();
  swift_allocObject();
  v32 = sub_1C754FEBC();
  (*(v11 + 8))(v15, v9);
  v33 = swift_slowAlloc();
  LOBYTE(v33->isa) = 0;
  OUTLINED_FUNCTION_55_19();
  v34();
  if (v33->isa)
  {
    goto LABEL_82;
  }

  v435 = v33;
  v436 = v32;
  v35 = *(v442 + OBJC_IVAR___PNPetPromoter_photoLibrary);
  v36 = [v35 librarySpecificFetchOptions];
  v32 = &selRef_mergedPersonIdentifiers;
  [v36 setPersonContext_];
  type metadata accessor for PetPromoter();
  v37 = sub_1C72298C0();
  sub_1C7082AAC(v37, v36);
  v38 = objc_opt_self();
  v33 = &selRef_clsSceneClassifications;
  v441 = v36;
  v39 = [v38 fetchPersonsWithOptions_];
  v40 = sub_1C754FEEC();
  v41 = sub_1C755117C();
  v42 = OUTLINED_FUNCTION_128(v41);
  v438 = v39;
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_41_0();
    *v43 = 134217984;
    *(v43 + 4) = [v39 count];

    OUTLINED_FUNCTION_19(&dword_1C6F5C000, v44, v45, "Starting unverified pet promotion on %ld unverified pets.");
    OUTLINED_FUNCTION_37();
  }

  else
  {

    v40 = v39;
  }

  v46 = v441;
  [v441 setPersonContext_];
  v47 = [v38 fetchPersonsWithOptions_];

  v48 = v47;
  v49 = sub_1C754FEEC();
  v50 = sub_1C755117C();
  if (OUTLINED_FUNCTION_66(v50))
  {
    v46 = OUTLINED_FUNCTION_41_0();
    *v46 = 134217984;
    *(v46 + 4) = [v48 count];

    OUTLINED_FUNCTION_34_22();
    _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v49 = v48;
  }

  OUTLINED_FUNCTION_25_25();
  OUTLINED_FUNCTION_49_17();

  v431 = v48;
  v56 = [v48 fetchedObjects];
  if (!v56)
  {
    v104 = sub_1C754FEEC();
    v105 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v105))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = v56;
  v58 = sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
  sub_1C7550B5C();

  v59 = [v46 &selRef_initWithAssetCollection_photoLibrary_ + 1];
  if (!v59)
  {

    v104 = sub_1C754FEEC();
    v106 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v106))
    {
LABEL_17:
      v107 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v107);
      OUTLINED_FUNCTION_1_82();
      _os_log_impl(v108, v109, v110, v111, v112, v113);
      OUTLINED_FUNCTION_23_3();
    }

LABEL_18:

LABEL_80:
    goto LABEL_81;
  }

  v60 = v59;
  sub_1C7550B5C();

  sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  v61 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215640, &unk_1C7579DC0);
  sub_1C7080178(&qword_1EDD0CD00, &qword_1EDD108E0, 0x1E696AD98);
  v62 = sub_1C75504DC();
  v63 = objc_allocWithZone(PNPromoterPhotoLibrary);
  v64 = sub_1C7232AD8(v61, v62, 1);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_53_21();
  sub_1C7229928(v65, v66, v67, v68, v69, v70, v71, v72, v422);
  v74 = v73;
  v75 = OUTLINED_FUNCTION_216();
  sub_1C7229928(v75, v76, v77, v78, v79, v80, v81, v82, v422);
  v84 = v83;

  v469 = v84;
  v85 = *(v442 + OBJC_IVAR___PNPetPromoter_delegate);
  v86 = objc_allocWithZone(PNPersonClusterManager);
  v427 = v64;
  v87 = [v86 initWithPhotoLibrary:v64 detectionType:2 promoterDelegate:v85];
  v88 = sub_1C739CD14(v74);
  v443 = v87;
  v89 = OUTLINED_FUNCTION_58();
  v423 = v61;
  v422 = v85;
  v429 = sub_1C722F040(v89, v90, v88, v61, v91, v85, v25);

  OUTLINED_FUNCTION_30();
  swift_allocObject();
  OUTLINED_FUNCTION_55_19();
  *(v92 + 16) = v93;
  v430 = v94;
  *(v94 + 24) = v451;
  v425 = v74 & 0xC000000000000001;
  v428 = v74;
  if ((v74 & 0xC000000000000001) != 0)
  {

    sub_1C75504FC();
    sub_1C755165C();
    OUTLINED_FUNCTION_99_3();
    sub_1C6F65BE8(v95, v96, v97);
    OUTLINED_FUNCTION_99_3();
    sub_1C7080178(v98, v99, v100);
    sub_1C7550FEC();
    v74 = v470;
    v101 = v471;
    v102 = v472;
    v33 = v473;
    v103 = v474;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    v101 = v74 + 56;
    v102 = ~v114;
    OUTLINED_FUNCTION_31_26();
    v103 = v115 & v116;

    sub_1C75504FC();
    v33 = 0;
  }

  v117 = &selRef_clsSceneClassifications;
  v426 = v102;
  v32 = MEMORY[0x1E69E7CA0];
  v454 = xmmword_1C755BAB0;
  v455 = v25;
  OUTLINED_FUNCTION_239();
  v424 = v58;
  v120 = v119;
  v440 = v101;
  v439 = v74;
  v434 = v118;
  if (v74 < 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v121 = v33;
  if (!v103)
  {
    while (1)
    {
      v122 = &v121->isa + 1;
      if (__OFADD__(v121, 1))
      {
        break;
      }

      if (v122 >= v118)
      {
        goto LABEL_59;
      }

      v121 = (v121 + 1);
      if (*(v101 + 8 * v122))
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_156;
  }

LABEL_25:
  OUTLINED_FUNCTION_78_0();
  v450 = v124 & v123;
  v449 = v125;
  v127 = OUTLINED_FUNCTION_94_11(v126);
  if (v127)
  {
    while (1)
    {
      v129 = v127;
      v130 = [v102 pn_fetchCandidatePersonsForPerson_];
      if ([v130 v117[32]])
      {
        v456 = v129;
        v131 = [v130 fetchedObjects];
        v132 = sub_1C7550B5C();

        v459 = v132[2];
        if (v459)
        {
          v133 = 0;
          v458 = v132 + 4;
          v134 = v130;
          v457 = v130;
          while (1)
          {
            if (v133 >= v132[2])
            {
              __break(1u);
              goto LABEL_133;
            }

            OUTLINED_FUNCTION_50();
            sub_1C6F774EC(v135 + 32 * v133, v464);
            v136 = sub_1C6F65BE8(0, v120, off_1E829F410);
            if (!swift_dynamicCast())
            {
              break;
            }

            v33 = v462;
            if (([v462 isVerified] & 1) == 0)
            {
              v137 = v469;
              if ((v469 & 0xC000000000000001) != 0)
              {
                sub_1C75504FC();
                v138 = v33;
                v139 = sub_1C755170C();

                if (v139)
                {
                  v120 = &unk_1EDD0CE60;
                  sub_1C7235C98();
                  v141 = v140;

                  goto LABEL_50;
                }

                v141 = 0;
              }

              else
              {
                sub_1C75513DC();
                v102 = v137 + 56;
                OUTLINED_FUNCTION_9_2();
                v25 = ~v145;
                while (1)
                {
                  v146 = v144 & v25;
                  if (((*(v102 + (((v144 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v144 & v25)) & 1) == 0)
                  {
                    v141 = 0;
                    OUTLINED_FUNCTION_52_19();
                    OUTLINED_FUNCTION_239();
                    goto LABEL_49;
                  }

                  v147 = *(*(v137 + 48) + 8 * v146);
                  v148 = sub_1C75513EC();

                  if (v148)
                  {
                    break;
                  }

                  v144 = v146 + 1;
                }

                v149 = v469;
                swift_isUniquelyReferenced_nonNull_native();
                v464[0] = v149;
                OUTLINED_FUNCTION_52_19();
                OUTLINED_FUNCTION_239();
                if ((v150 & 1) == 0)
                {
                  sub_1C72F4CA0();
                  v149 = v464[0];
                }

                v141 = *(*(v149 + 48) + 8 * v146);
                sub_1C72368E4();
                v469 = v464[0];
              }

LABEL_49:
              v120 = &unk_1EDD0CE60;
LABEL_50:

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
              v151 = swift_allocObject();
              *(v151 + 16) = v454;
              *(v151 + 56) = v136;
              *(v151 + 32) = v33;
              sub_1C6F65BE8(0, &qword_1EDD06888, 0x1E695DEC8);
              v152 = v33;
              v33 = MEMORY[0x1CCA5D880](v151);
              [v102 mergePersons:v33 withPerson:v456];

              v32 = MEMORY[0x1E69E7CA0];
LABEL_51:
              v134 = v457;
            }

            ++v133;

            if (v133 == v459)
            {
              swift_unknownObjectRelease();

              v117 = &selRef_clsSceneClassifications;
              goto LABEL_56;
            }
          }

          v33 = sub_1C754FEEC();
          v142 = sub_1C755119C();
          if (os_log_type_enabled(v33, v142))
          {
            v143 = OUTLINED_FUNCTION_127();
            *v143 = 0;
            _os_log_impl(&dword_1C6F5C000, v33, v142, "Merge candidate from PNPersonClusterManager was not a PNPersonCluster!", v143, 2u);
            OUTLINED_FUNCTION_37();
          }

          goto LABEL_51;
        }

        swift_unknownObjectRelease();

LABEL_56:
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v33 = v449;
      v103 = v450;
      v101 = v440;
      v118 = v434;
      if ((v439 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_27:
      v128 = sub_1C75516FC();
      if (v128)
      {
        *&v462 = v128;
        sub_1C6F65BE8(0, v120, off_1E829F410);
        OUTLINED_FUNCTION_93_11();
        v127 = v464[0];
        v449 = v33;
        v450 = v103;
        if (v464[0])
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_59:
  sub_1C6F61E88(v439);
  v153 = sub_1C754FEEC();
  v154 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v154))
  {
    v155 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v155);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v156, v157, v158, v159, v160, v161);
    OUTLINED_FUNCTION_23_3();
  }

  v162 = v469;
  sub_1C7229A48(v469);
  OUTLINED_FUNCTION_24_2();

  sub_1C7550F7C();
  OUTLINED_FUNCTION_364();
  sub_1C7229A48(v428);
  v163 = sub_1C7550F7C();

  OUTLINED_FUNCTION_30();
  swift_allocObject();
  OUTLINED_FUNCTION_20_39();
  v165 = *(v164 - 256);
  v166[2] = v167;
  v166[3] = v165;
  v467 = sub_1C7237294;
  v468 = v166;
  OUTLINED_FUNCTION_18_29();
  OUTLINED_FUNCTION_19_40();
  v465 = v168;
  v466 = &block_descriptor_18;
  v169 = _Block_copy(v464);

  v170 = OUTLINED_FUNCTION_83_5();
  v172 = [v170 v171];
  _Block_release(v169);

  v173 = sub_1C754FEEC();
  v174 = sub_1C755117C();
  OUTLINED_FUNCTION_7_0(v174);
  OUTLINED_FUNCTION_25_25();
  v46 = &unk_1C755C000;
  if (v175)
  {
    v176 = OUTLINED_FUNCTION_41_0();
    *v176 = 134217984;
    *(v176 + 4) = [v172 count];
    OUTLINED_FUNCTION_17();
    _os_log_impl(v177, v178, v179, v180, v181, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  v182 = [v172 allObjects];
  sub_1C7550B5C();

  sub_1C71BC2CC();
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_49_17();
  if (v182)
  {
    v183 = sub_1C754FEEC();
    v184 = sub_1C755117C();
    if (OUTLINED_FUNCTION_66(v184))
    {
      v185 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_58_8(v185);
      OUTLINED_FUNCTION_34_22();
      _os_log_impl(v186, v187, v188, v189, v190, 2u);
      OUTLINED_FUNCTION_49_17();
      OUTLINED_FUNCTION_109();
    }

    sub_1C706F058(v182, v191, v192, v193, v194, v195, v196, v197, v422);
    v199 = v198;
    sub_1C7229A48(v198);
    OUTLINED_FUNCTION_24_2();

    sub_1C7550F7C();
    OUTLINED_FUNCTION_364();
    OUTLINED_FUNCTION_30();
    swift_allocObject();
    OUTLINED_FUNCTION_20_39();
    v201 = *(v200 - 256);
    v202[2] = v203;
    v202[3] = v201;
    v467 = sub_1C7237640;
    v468 = v202;
    OUTLINED_FUNCTION_18_29();
    OUTLINED_FUNCTION_19_40();
    v465 = v204;
    v466 = &block_descriptor_10_0;
    _Block_copy(v464);
    v205 = v468;

    v206 = OUTLINED_FUNCTION_83_5();
    v208 = [v206 v207];
    v209 = OUTLINED_FUNCTION_50_19();
    _Block_release(v209);

    v210 = v205;
    v172 = v210;
    v211 = sub_1C754FEEC();
    v212 = sub_1C755117C();
    if (!OUTLINED_FUNCTION_7_0(v212))
    {

      v211 = v172;
      goto LABEL_72;
    }

    v213 = OUTLINED_FUNCTION_41_0();
    *v213 = 134217984;
    v46 = [v172 count];

    *(v213 + 4) = v46;
    OUTLINED_FUNCTION_49_17();

    OUTLINED_FUNCTION_17();
    v219 = 12;
    goto LABEL_70;
  }

  v211 = sub_1C754FEEC();
  v220 = sub_1C755119C();
  if (OUTLINED_FUNCTION_7_0(v220))
  {
    v221 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v221);
    OUTLINED_FUNCTION_1_82();
LABEL_70:
    _os_log_impl(v214, v215, v216, v217, v218, v219);
    OUTLINED_FUNCTION_23_3();
  }

LABEL_72:
  v222 = v428;

  OUTLINED_FUNCTION_55_19();
  v223();
  OUTLINED_FUNCTION_78_11();
  if (v224)
  {
    goto LABEL_79;
  }

  v225 = sub_1C754FEEC();
  v226 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v226))
  {
    v227 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v227);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v228, v229, v230, v231, v232, v233);
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_53_21();
  sub_1C7229E3C(v234, v235, v236);
  v237 = sub_1C754FEEC();
  v238 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v238))
  {
    v239 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v239);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v240, v241, v242, v243, v244, v245);
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_55_19();
  v246();
  OUTLINED_FUNCTION_78_11();
  if (v224)
  {
LABEL_79:
    OUTLINED_FUNCTION_98_10();

    OUTLINED_FUNCTION_81_12();

    OUTLINED_FUNCTION_71_10();

    goto LABEL_80;
  }

  v248 = sub_1C754FEEC();
  v249 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v249))
  {
    v251 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v251);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v252, v253, v254, v255, v256, v257);
    OUTLINED_FUNCTION_23_3();
  }

  if (v425)
  {
    sub_1C755165C();
    OUTLINED_FUNCTION_99_3();
    sub_1C6F65BE8(v258, v259, v260);
    OUTLINED_FUNCTION_99_3();
    sub_1C7080178(v261, v262, v263);
    sub_1C7550FEC();
    v222 = v464[0];
    v264 = v464[1];
    v265 = v465;
    v266 = v466;
    v267 = v467;
  }

  else
  {
    v266 = 0;
    OUTLINED_FUNCTION_9_2();
    v264 = v222 + 56;
    OUTLINED_FUNCTION_31_26();
    v267 = (v268 & v269);
  }

  v458 = v265;
  v270 = (v265 + 64) >> 6;
  v459 = MEMORY[0x1E69E7CD0];
  for (i = v222; ; v222 = i)
  {
    v25 = v266;
    v272 = v267;
    if ((v222 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v278 = sub_1C75516FC();
      if (!v278)
      {
        goto LABEL_104;
      }

      *&v461 = v278;
      sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
      OUTLINED_FUNCTION_93_11();
      v277 = v462;
      v266 = v25;
      v267 = v272;
      if (!v462)
      {
        goto LABEL_104;
      }

LABEL_98:
      v279 = [v277 mergedPersonIdentifiers];
      v280 = [v279 allObjects];

      v281 = sub_1C7550B5C();
      sub_1C71BBD84(v281, v282, v283, v284, v285, v286, v287, v288, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, ObjectType, v438, v439, v440, v441);
      v290 = v289;

      if (v290)
      {
        break;
      }

      v291 = sub_1C754FEEC();
      v292 = sub_1C755119C();
      if (OUTLINED_FUNCTION_128(v292))
      {
        v293 = OUTLINED_FUNCTION_127();
        *v293 = 0;
        _os_log_impl(&dword_1C6F5C000, v291, v292, "Unable to convert petMergeCandidateLocalIdentifiers to an array of strings!", v293, 2u);
        OUTLINED_FUNCTION_109();
      }

      v25 = v266;
      v272 = v267;
      if ((i & 0x8000000000000000) == 0)
      {
        goto LABEL_90;
      }
    }

    sub_1C706D154();
    sub_1C70738FC();
    v459 = v294;
  }

LABEL_90:
  v273 = v25;
  v266 = v25;
  if (!v272)
  {
    while (1)
    {
      v266 = v273 + 1;
      if (__OFADD__(v273, 1))
      {
        break;
      }

      if (v266 >= v270)
      {
        goto LABEL_104;
      }

      ++v273;
      if (*(v264 + 8 * v266))
      {
        goto LABEL_94;
      }
    }

LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    return;
  }

LABEL_94:
  OUTLINED_FUNCTION_78_0();
  v267 = (v275 & v274);
  v277 = OUTLINED_FUNCTION_94_11(v276);
  if (v277)
  {
    goto LABEL_98;
  }

LABEL_104:
  sub_1C6F61E88(i);
  v295 = v172;
  sub_1C755114C();
  v458 = v295;

  v296 = off_1E829F410;
  v33 = "Unable to convert petMergeCandidateLocalIdentifiers to an array of strings!";
  OUTLINED_FUNCTION_52_19();
  v32 = &selRef_addingKeyAssetForObject_toAssets_options_;
  while (1)
  {
    sub_1C754DBFC();
    if (!v463)
    {
      break;
    }

    sub_1C6F9ED18(&v462, &v461);
    sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
    if (swift_dynamicCast())
    {
      v297 = v460;
      v298 = [v460 mergedPersonIdentifiers];
      v25 = [v298 allObjects];

      v299 = sub_1C7550B5C();
      sub_1C71BBD84(v299, v300, v301, v302, v303, v304, v305, v306, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, ObjectType, v438, v439, v440, v441);
      v308 = v307;

      if (!v308)
      {
        v309 = sub_1C754FEEC();
        v25 = sub_1C755119C();
        if (OUTLINED_FUNCTION_128(v25))
        {
          v310 = OUTLINED_FUNCTION_127();
          *v310 = 0;
          _os_log_impl(&dword_1C6F5C000, v309, v25, "Unable to convert petMergeCandidateLocalIdentifiers to an array of strings!", v310, 2u);
          OUTLINED_FUNCTION_109();
        }

        OUTLINED_FUNCTION_52_19();
        goto LABEL_113;
      }

      sub_1C706D154();
      sub_1C70738FC();
      v459 = v315;

      OUTLINED_FUNCTION_52_19();
    }

    else
    {
      v297 = sub_1C754FEEC();
      v311 = sub_1C755119C();
      if (os_log_type_enabled(v297, v311))
      {
        v25 = OUTLINED_FUNCTION_127();
        *v25 = 0;
        v312 = OUTLINED_FUNCTION_216();
        _os_log_impl(v312, v313, v314, "Output of petDeduper.dedupeUnverifiedPersons was not a NSSet of PNPersonClusters!", v25, 2u);
        OUTLINED_FUNCTION_52_19();
        OUTLINED_FUNCTION_109();
      }

LABEL_113:
    }
  }

  (*(v432 + 8))(v453, v433);
  v46 = v459;
  sub_1C75504FC();
  v316 = sub_1C754FEEC();
  v317 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v317))
  {
    v296 = OUTLINED_FUNCTION_41_0();
    *v296 = 134217984;
    *(v296 + 4) = v46[2];

    OUTLINED_FUNCTION_17();
    _os_log_impl(v318, v319, v320, v321, v322, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_25();
  OUTLINED_FUNCTION_49_17();
  OUTLINED_FUNCTION_239();
  v323 = v424;
  v324 = [v458 allObjects];
  sub_1C7550B5C();

  sub_1C71BC2CC();
  OUTLINED_FUNCTION_364();
  if (!v324)
  {

    v340 = sub_1C754FEEC();
    v341 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v341))
    {
      v342 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v342);
      OUTLINED_FUNCTION_1_82();
      _os_log_impl(v343, v344, v345, v346, v347, v348);
      OUTLINED_FUNCTION_239();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_71_10();
LABEL_147:

    OUTLINED_FUNCTION_81_12();

    goto LABEL_80;
  }

  if (sub_1C6FB6304() < 1)
  {

    v132 = sub_1C754FEEC();
    v350 = sub_1C755117C();
    if (OUTLINED_FUNCTION_7_0(v350))
    {
      v351 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v351);
      OUTLINED_FUNCTION_1_82();
      _os_log_impl(v352, v353, v354, v355, v356, v357);
      OUTLINED_FUNCTION_23_3();
    }

    v358 = 0;
    OUTLINED_FUNCTION_75_9();
LABEL_144:

    v387 = OUTLINED_FUNCTION_26_29();
    (*(v388 - 256))(v387);
    OUTLINED_FUNCTION_78_11();
    if (!v224)
    {
      OUTLINED_FUNCTION_53_21();
      static PetPromoter.calculateOrderOfPetsWithinPeopleAndPetsHome(in:pnPhotoLibrary:clusterManager:delegate:logger:persistOrder:updateBlock:)(v390, v391, v392, v393, v394, v395, v396, v397);

      v398 = sub_1C754FEEC();
      v399 = sub_1C755117C();
      if (OUTLINED_FUNCTION_7_0(v399))
      {
        v401 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_58_8(v401);
        _os_log_impl(&dword_1C6F5C000, v398, v25, "Finished ordering pets.", v46, 2u);
        OUTLINED_FUNCTION_109();
      }

      v402 = OUTLINED_FUNCTION_26_29();
      (*(v403 - 256))(v402);
      v404 = sub_1C755068C();
      if ((v358 & 0x8000000000000000) == 0)
      {
        sub_1C722FE48(v404, v405, v358);

        v406 = sub_1C755068C();
        v408 = v407;
        v409 = v323[2];

        sub_1C722FE48(v406, v408, v409);

        swift_beginAccess();
        v410 = objc_opt_self();
        sub_1C75504FC();
        v411 = @"com.apple.Photos.People.petPromoter";
        sub_1C70C0278();

        sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
        v412 = sub_1C755048C();

        [v410 sendEvent:v411 withPayload:v412];

        v132 = sub_1C754FEEC();
        v413 = sub_1C755117C();
        if (OUTLINED_FUNCTION_7_0(v413))
        {
          v414 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_37_0(v414);
          OUTLINED_FUNCTION_1_82();
          _os_log_impl(v415, v416, v417, v418, v419, v420);
          OUTLINED_FUNCTION_23_3();
        }

        OUTLINED_FUNCTION_50();

        OUTLINED_FUNCTION_98_10();
        OUTLINED_FUNCTION_71_10();
        goto LABEL_154;
      }

      goto LABEL_158;
    }

    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_98_10();
    OUTLINED_FUNCTION_71_10();
    goto LABEL_147;
  }

  sub_1C706F058(v324, v325, v326, v327, v328, v329, v330, v331, v422);
  OUTLINED_FUNCTION_53_21();
  v132 = sub_1C722A080(v332, v333);

  v334 = [v132 fetchedObjects];
  if (!v334)
  {

    v359 = sub_1C754FEEC();
    v360 = sub_1C755119C();
    if (OUTLINED_FUNCTION_66(v360))
    {
      v361 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_58_8(v361);
      OUTLINED_FUNCTION_34_22();
      _os_log_impl(v362, v363, v364, v365, v366, 2u);
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_98_10();
    OUTLINED_FUNCTION_71_10();

    goto LABEL_154;
  }

  v335 = v334;
  v102 = sub_1C7550B5C();

  v132 = v132;
  v134 = sub_1C754FEEC();
  v336 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v336))
  {
    v337 = OUTLINED_FUNCTION_41_0();
    *v337 = 134217984;
    v323 = &selRef_clsSceneClassifications;
    *(v337 + 4) = [v132 count];

    OUTLINED_FUNCTION_19(&dword_1C6F5C000, v338, v339, "%ld unverified pets to consider for promotion.");
    OUTLINED_FUNCTION_37();
    goto LABEL_134;
  }

LABEL_133:

  v134 = v132;
  v323 = &selRef_clsSceneClassifications;
LABEL_134:

  if (__OFSUB__(10, [v431 count]))
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_75_9();
  OUTLINED_FUNCTION_53_21();
  sub_1C722A140(v368, v369, v370, v371, v372);

  sub_1C75504FC();
  v373 = sub_1C754FEEC();
  v374 = sub_1C755117C();
  if (OUTLINED_FUNCTION_66(v374))
  {
    v375 = OUTLINED_FUNCTION_41_0();
    *v375 = 134217984;
    *(v375 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v373, v102, "Found %ld pets to promote.", v375, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  OUTLINED_FUNCTION_239();
  v376 = OUTLINED_FUNCTION_26_29();
  (*(v377 - 256))(v376);
  OUTLINED_FUNCTION_78_11();
  if (!v224)
  {
    OUTLINED_FUNCTION_53_21();
    sub_1C722AD84(v379, v380, v381);
    v358 = sub_1C6FB6304();

    v382 = sub_1C754FEEC();
    v46 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v46))
    {
      v384 = OUTLINED_FUNCTION_41_0();
      *v384 = 134217984;
      *(v384 + 4) = v358;
      OUTLINED_FUNCTION_19(&dword_1C6F5C000, v385, v386, "Finished persisting pets to promote with %ld significant");
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_49_17();
    goto LABEL_144;
  }

  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_71_10();

LABEL_154:

  OUTLINED_FUNCTION_81_12();

LABEL_81:
LABEL_82:
  v247 = v445;
  sub_1C7229660(v445, v32, v33);

  (*(v447 + 8))(v247, v448);
  (*(v444 + 8))(v25, v446);
  OUTLINED_FUNCTION_73_13();
}

uint64_t sub_1C7229660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v3 = sub_1C754FE9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C754FE4C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C754FE6C();
  sub_1C754FEAC();
  v12 = sub_1C755130C();
  if (sub_1C755144C())
  {

    sub_1C754FEDC();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v11, v12, v15, "PetPromoter", v13, v14, 2u);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  return MEMORY[0x1CCA5F8E0](v18, -1, -1);
}

uint64_t sub_1C72298C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C7564A90;
  *(v0 + 32) = sub_1C7551EFC();
  *(v0 + 40) = sub_1C7551EFC();
  return v0;
}

void sub_1C7229928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v18 = sub_1C6FB6304();
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    if (v18 < 0)
    {
      __break(1u);
      return;
    }

    v20 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1CCA5DDD0](v20, a1);
      }

      else
      {
        v21 = *(a1 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      [objc_allocWithZone(PNPersonCluster) initWithPerson:v21 inPhotoLibrary:a2];

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    while (v18 != v20);
    v19 = v23;
  }

  sub_1C706F058(v19, v11, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_1C7229A48(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1C75516BC())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2197D8, &unk_1C7579E50);
  v3 = sub_1C75517AC();
  if (v2)
  {
LABEL_4:

    sub_1C75504FC();
    sub_1C755165C();
    sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
    sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60, off_1E829F410);
    result = sub_1C7550FEC();
    v1 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  result = sub_1C75504FC();
  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
      swift_dynamicCast();
      result = sub_1C755174C();
      v18 = -1 << *(v3 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = *(v3 + 48) + 40 * v21;
      *(v26 + 32) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_1C75516FC();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v27 = v14;
      sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
      swift_dynamicCast();
    }

    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (++v20 != v23 || (v22 & 1) == 0)
    {
      v24 = v20 == v23;
      if (v20 == v23)
      {
        v20 = 0;
      }

      v22 |= v24;
      v25 = *(v12 + 8 * v20);
      if (v25 != -1)
      {
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        sub_1C6F61E88(v1);

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

double sub_1C7229DD8(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void sub_1C7229E3C(uint64_t a1, id a2, uint64_t a3)
{
  v20 = [a2 photoLibrary];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
    sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60, off_1E829F410);
    sub_1C7550FEC();
    a1 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);
    sub_1C75504FC();
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_18:
      sub_1C6F61E88(a1);
      swift_unknownObjectRelease();
      return;
    }

    while (1)
    {
      v18 = objc_autoreleasePoolPush();
      sub_1C722F1CC(v20, v17, a3, a2);
      objc_autoreleasePoolPop(v18);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C75516FC())
      {
        sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
        swift_dynamicCast();
        v17 = v21;
        v15 = v7;
        v16 = v8;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_1C722A080(uint64_t a1, void *a2)
{
  sub_1C72270C8(a1, a2);
  v3 = [a2 librarySpecificFetchOptions];
  v4 = sub_1C72298C0();
  sub_1C7082AAC(v4, v3);
  v5 = objc_opt_self();
  v6 = sub_1C7550B3C();

  v7 = [v5 fetchPersonsWithLocalIdentifiers:v6 options:v3];

  return v7;
}

void sub_1C722A140(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C754DF6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1C6FB6304())
  {
    sub_1C75504FC();
    v14 = sub_1C754FEEC();
    v47 = sub_1C755117C();
    if (os_log_type_enabled(v14, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v47, "No pets passed into findSignificantPets, returning.", v48, 2u);
      MEMORY[0x1CCA5F8E0](v48, -1, -1);
    }

    goto LABEL_40;
  }

  v118 = v13;
  v120 = a1;
  sub_1C75504FC();
  v122 = a5;
  v14 = sub_1C754FEEC();
  v15 = sub_1C755117C();
  v16 = os_log_type_enabled(v14, v15);
  if (a3 <= 0)
  {
    if (v16)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "There's no more room for pets to promote, returning.", v49, 2u);
      MEMORY[0x1CCA5F8E0](v49, -1, -1);
    }

LABEL_40:

LABEL_41:

    return;
  }

  v116 = v11;
  v117 = v10;
  v119 = a2;
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2048;
    *(v18 + 14) = sub_1C6FB6304();
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Finding up to %ld significant pets out of %ld input pets.", v18, 0x16u);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
  }

  v115 = a3;

  v130 = v17;
  v19 = v120;
  v20 = sub_1C6FB6304();
  v21 = v19 & 0xC000000000000001;
  v126 = v19 + 32;
  v127 = v19 & 0xFFFFFFFFFFFFFF8;
  sub_1C75504FC();
  v22 = 0;
  v123 = v19 & 0xC000000000000001;
  v124 = 0;
  v23 = &selRef_clsSceneClassifications;
LABEL_6:
  while (v22 != v20)
  {
    if (v21)
    {
      v24 = MEMORY[0x1CCA5DDD0](v22, v120);
    }

    else
    {
      if (v22 >= *(v127 + 16))
      {
        goto LABEL_98;
      }

      v24 = *(v126 + 8 * v22);
    }

    v25 = v24;
    v26 = __OFADD__(v22++, 1);
    if (v26)
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if ([v24 faceCount] >= 25)
    {
      v27 = sub_1C70CAC04(v25);
      if (!v28)
      {
        goto LABEL_106;
      }

      v29 = v28;
      if (*(a4 + 16))
      {
        v30 = v27;
        sub_1C7551F3C();
        sub_1C75505AC();
        v31 = sub_1C7551FAC();
        v32 = ~(-1 << *(a4 + 32));
        while (1)
        {
          v33 = v31 & v32;
          if (((*(a4 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v34 = (*(a4 + 48) + 16 * v33);
          if (*v34 != v30 || v29 != v34[1])
          {
            v36 = sub_1C7551DBC();
            v31 = v33 + 1;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          v21 = v123;
          goto LABEL_6;
        }

        v21 = v123;
      }

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }
  }

  swift_bridgeObjectRelease_n();
  v37 = v130;
  if (sub_1C6FB6304() <= 0)
  {
    v14 = sub_1C754FEEC();
    v73 = sub_1C755117C();
    if (os_log_type_enabled(v14, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v73, "No unverified pets have enough faces to be promoted, returning early.", v74, 2u);
      MEMORY[0x1CCA5F8E0](v74, -1, -1);
    }

    goto LABEL_41;
  }

  v130 = MEMORY[0x1E69E7CC0];
  v38 = [v119 librarySpecificFetchOptions];
  v39 = sub_1C72298C0();
  v40 = sub_1C722C934();
  v129[0] = v39;
  sub_1C6FD3574(v40);
  sub_1C7082AAC(v129[0], v38);
  [v38 setFetchLimit_];
  v41 = sub_1C6FB6304();
  sub_1C75504FC();
  v42 = 0;
  v43 = v122;
  v23 = v124;
  while (v41 != v42)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1CCA5DDD0](v42, v37);
    }

    else
    {
      if (v42 >= *(v37 + 16))
      {
        goto LABEL_100;
      }

      v44 = *(v37 + 8 * v42 + 32);
    }

    v45 = v44;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_99;
    }

    v46 = objc_autoreleasePoolPush();
    sub_1C722C990(v45, v38, v43, v125, &v130);
    objc_autoreleasePoolPop(v46);

    ++v42;
  }

  v125 = v130;
  v50 = sub_1C6FB6304();
  v114 = v37;
  v113 = v38;
  v112 = MEMORY[0x1E69E7CC0];
  if (v50)
  {
    v55 = v50;
    v129[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v50 & ~(v50 >> 63), 0, v51, v52, v53, v54);
    if ((v55 & 0x8000000000000000) == 0)
    {
      v56 = 0;
      v57 = v129[0];
      v124 = v125 & 0xC000000000000001;
      v121 = v125 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_101;
        }

        if (v124)
        {
          v59 = MEMORY[0x1CCA5DDD0](v56, v125);
        }

        else
        {
          if (v56 >= *(v121 + 16))
          {
            goto LABEL_104;
          }

          v59 = *(v125 + 8 * v56 + 32);
        }

        v60 = v59;
        v61 = v23;
        v62 = sub_1C70CAC04(v59);
        if (!v63)
        {
          goto LABEL_107;
        }

        v64 = v62;
        v65 = v63;

        v129[0] = v57;
        v71 = *(v57 + 16);
        v70 = *(v57 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1C6F7ED9C(v70 > 1, v71 + 1, 1, v66, v67, v68, v69);
          v57 = v129[0];
        }

        *(v57 + 16) = v71 + 1;
        v72 = v57 + 16 * v71;
        *(v72 + 32) = v64;
        *(v72 + 40) = v65;
        ++v56;
        v23 = v61;
        if (v58 == v55)
        {
          goto LABEL_59;
        }
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:

    __break(1u);
    return;
  }

  v61 = v23;
  v57 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v75 = objc_opt_self();
  v76 = sub_1C7550B3C();
  v77 = v118;
  sub_1C754DE6C();
  v78 = sub_1C754DECC();
  (*(v116 + 8))(v77, v117);
  v79 = [v75 momentCountsByPersonUUIDForPersonsWithUUIDs:v76 afterDate:v78 photoLibrary:v119];

  v80 = v123;
  if (!v79)
  {

    v14 = sub_1C754FEEC();
    v109 = sub_1C755119C();
    if (os_log_type_enabled(v14, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v109, "Failed to find moment counts for unverified pets.", v110, 2u);
      MEMORY[0x1CCA5F8E0](v110, -1, -1);
    }

    goto LABEL_41;
  }

  sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  v81 = sub_1C75504AC();

  v129[0] = v57;
  sub_1C75504FC();
  sub_1C75504FC();
  v121 = v81;
  v23 = v61;
  sub_1C723291C(v129, v81);
  if (v61)
  {
    goto LABEL_110;
  }

  v82 = v129[0];
  v83 = *(v129[0] + 16);
  if (v83 > v115)
  {
    sub_1C722CD3C(v83 - v115, v129[0]);
    v82 = v84;
  }

  sub_1C75504FC();
  v119 = v82;
  sub_1C706D154();
  v23 = v85;
  v128 = MEMORY[0x1E69E7CC0];
  v124 = sub_1C6FB6304();
  v86 = 0;
LABEL_64:
  while (v86 != v124)
  {
    if (v80)
    {
      v87 = MEMORY[0x1CCA5DDD0](v86, v120);
    }

    else
    {
      if (v86 >= *(v127 + 16))
      {
        goto LABEL_103;
      }

      v87 = *(v126 + 8 * v86);
    }

    v26 = __OFADD__(v86++, 1);
    if (v26)
    {
      goto LABEL_102;
    }

    v88 = v87;
    v89 = sub_1C6FCA214(v88);
    if (!v90)
    {
      goto LABEL_108;
    }

    v91 = v90;
    if (v23[2])
    {
      v92 = v89;
      sub_1C7551F3C();
      sub_1C75505AC();
      v93 = sub_1C7551FAC();
      v94 = ~(-1 << *(v23 + 32));
      while (1)
      {
        v95 = v93 & v94;
        if (((*(v23 + (((v93 & v94) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v93 & v94)) & 1) == 0)
        {
          break;
        }

        v96 = &(*v23[6])[16 * v95];
        if (*v96 != v92 || v91 != *(v96 + 1))
        {
          v98 = sub_1C7551DBC();
          v93 = v95 + 1;
          if ((v98 & 1) == 0)
          {
            continue;
          }
        }

        v99 = sub_1C6FCA214(v88);
        if (!v100)
        {
          goto LABEL_109;
        }

        if (!*(v121 + 16))
        {

          goto LABEL_86;
        }

        v101 = sub_1C6F78124(v99, v100);
        v103 = v102;

        if ((v103 & 1) == 0)
        {
          goto LABEL_86;
        }

        v104 = *(*(v121 + 56) + 8 * v101);
        if ([v104 integerValue] < 3)
        {

          goto LABEL_86;
        }

        v105 = v88;
        MEMORY[0x1CCA5D040]();
        if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();

        v112 = v128;
        goto LABEL_64;
      }
    }

LABEL_86:
  }

  sub_1C75504FC();
  sub_1C75504FC();
  v106 = sub_1C754FEEC();
  v107 = sub_1C755117C();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 134218240;
    *(v108 + 4) = sub_1C6FB6304();
    *(v108 + 12) = 2048;
    *(v108 + 14) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v106, v107, "Found %ld significant pets out of %ld input pets.", v108, 0x16u);
    MEMORY[0x1CCA5F8E0](v108, -1, -1);
  }

  else
  {
  }
}

void sub_1C722AD84(uint64_t a1, void *a2, NSObject *a3)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C754FF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (sub_1C6FB6304())
  {
    v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v6;
    sub_1C75504FC();
    v9 = sub_1C754FEEC();
    v10 = sub_1C755117C();
    v11 = os_log_type_enabled(v9, v10);
    v43 = a2;
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = sub_1C6FB6304();

      _os_log_impl(&dword_1C6F5C000, v9, v10, "Promoting any of the %ld input pets that are unverified.", v12, 0xCu);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
    }

    else
    {
    }

    v15 = MEMORY[0x1E69E7CC0];
    v47 = MEMORY[0x1E69E7CC0];
    v16 = sub_1C6FB6304();
    v44 = a3;
    if (v16)
    {
      v17 = v16;
      if (v16 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v17; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1CCA5DDD0](i, a1);
        }

        else
        {
          v19 = *(a1 + 8 * i + 32);
        }

        v20 = v19;
        if ([v19 verifiedType])
        {
        }

        else
        {
          v21 = v20;
          MEMORY[0x1CCA5D040]();
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          sub_1C7550BEC();

          v15 = v47;
        }
      }
    }

    if (!sub_1C6FB6304())
    {
      goto LABEL_25;
    }

    v23 = v41;
    v22 = v42;
    (*(v7 + 16))(v41, v44, v42);
    v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = v15;
    (*(v7 + 32))(&v25[v24], v23, v22);
    aBlock[4] = sub_1C7237528;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6FD8F68;
    aBlock[3] = &block_descriptor_49;
    v26 = _Block_copy(aBlock);
    sub_1C75504FC();

    aBlock[0] = 0;
    LODWORD(v24) = [v43 performChangesAndWait:v26 error:aBlock];
    _Block_release(v26);
    if (v24)
    {
      v27 = aBlock[0];
LABEL_25:

      return;
    }

    v28 = aBlock[0];
    v29 = sub_1C754DBEC();

    swift_willThrow();
    aBlock[0] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C6F65BE8(0, &qword_1EC216D18, 0x1E696ABC0);
    swift_dynamicCast();

    v30 = v45[0];
    v31 = sub_1C754FEEC();
    v32 = sub_1C755119C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48[0] = v34;
      *v33 = 136315138;
      v35 = [v30 localizedDescription];
      v36 = sub_1C755068C();
      v38 = v37;

      v39 = sub_1C6F765A4(v36, v38, v48);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Error! Failed to promote unverified pets: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1CCA5F8E0](v34, -1, -1);
      MEMORY[0x1CCA5F8E0](v33, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v44 = sub_1C754FEEC();
    v13 = sub_1C755117C();
    if (os_log_type_enabled(v44, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C6F5C000, v44, v13, "No pets passed into findSignificantPets, returning.", v14, 2u);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }
  }
}

void static PetPromoter.calculateOrderOfPetsWithinPeopleAndPetsHome(in:pnPhotoLibrary:clusterManager:delegate:logger:persistOrder:updateBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, void *a8)
{
  v14 = [a1 librarySpecificFetchOptions];
  type metadata accessor for PetPromoter();
  v15 = sub_1C72298C0();
  v16 = sub_1C722C934();
  sub_1C6FD3574(v16);
  sub_1C7082AAC(v15, v14);
  [v14 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C7565670;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v17 + 32) = sub_1C6F6AF98(0x724F6C61756E616DLL, 0xEB00000000726564, 1);
  sub_1C71F8834(v17, v14);
  v207 = v14;
  v19 = [objc_opt_self() fetchPersonsWithOptions_];
  v20 = [v19 fetchedObjects];

  if (!v20)
  {
    v35 = sub_1C754FEEC();
    v36 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v36))
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
  v21 = sub_1C7550B5C();

  v22 = sub_1C6FB6304();
  if (!v22)
  {

    v35 = sub_1C754FEEC();
    v45 = sub_1C755117C();
    if (OUTLINED_FUNCTION_7_0(v45))
    {
LABEL_33:
      v46 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v46);
      OUTLINED_FUNCTION_1_82();
      _os_log_impl(v47, v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_23_3();
    }

LABEL_34:

    return;
  }

  v213 = a4;
  v214 = a7;
  v216 = a5;
  v217 = a8;
  v204 = v22;
  v205 = a6;
  sub_1C722D1BC(v21);
  v24 = v23;
  v225[0] = MEMORY[0x1E69E7CC0];
  v25 = sub_1C6FB6304();
  v26 = 0;
  v27 = (v21 & 0xC000000000000001);
  v28 = v21 & 0xFFFFFFFFFFFFFF8;
  v220 = *MEMORY[0x1E6978F10];
  v29 = &selRef_clsSceneClassifications;
  v219 = v24;
  while (1)
  {
    if (v25 == v26)
    {
      v32 = 0;
      v33 = v225[0];
      v225[0] = MEMORY[0x1E69E7CC0];
      v221 = v21;
      while (v25 != v32)
      {
        if (v27)
        {
          v34 = MEMORY[0x1CCA5DDD0](v32, v21);
        }

        else
        {
          if (v32 >= *(v28 + 16))
          {
            goto LABEL_204;
          }

          v34 = *(v21 + 8 * v32 + 32);
        }

        a5 = v34;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_203;
        }

        if ([v34 detectionType] == 1 && v24 < objc_msgSend(a5, sel_manualOrder))
        {
          sub_1C755192C();
          sub_1C755196C();
          v21 = v221;
          sub_1C755197C();
          sub_1C755193C();
          v24 = v219;
        }

        else
        {
        }

        ++v32;
      }

      v218 = v27;

      v225[0] = sub_1C71CC970(v37);
      sub_1C72329B8(v225);

      v38 = v225[0];

      v39 = sub_1C754FEEC();
      v40 = sub_1C755118C();
      if (OUTLINED_FUNCTION_128(v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134218496;
        *(v41 + 4) = sub_1C6FB6304();

        *(v41 + 12) = 2048;
        *(v41 + 14) = sub_1C6FB6304();

        *(v41 + 22) = 2048;
        v29 = 0x1E82A5000;
        *(v41 + 24) = v219;
        _os_log_impl(&dword_1C6F5C000, v39, v40, "%ld pets to arrange, %ld people to go behind, %ld maximum user modified manual order", v41, 0x20u);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v203 = v28;
      a5 = sub_1C722D4E8(v221, a2, v213, v214, v217, v42, v43, v44);
      v225[0] = v33;

      v213 = v38;
      sub_1C6FD35B4(v53);
      sub_1C75504FC();
      v54 = sub_1C75504FC();
      v225[0] = sub_1C71CC970(v54);
      sub_1C7232A34(v225, a5);

      v55 = v225[0];
      v225[0] = MEMORY[0x1E69E7CC0];
      v56 = sub_1C6FB6304();
      v27 = v218;
      if (!v56)
      {

        v217 = 0;
        a5 = MEMORY[0x1E69E7CC0];
        v60 = MEMORY[0x1E69E7CC8];
        goto LABEL_77;
      }

      v28 = v56;
      if (v56 < 1)
      {
        goto LABEL_215;
      }

      v57 = 0;
      v58 = 0;
      v59 = v55 & 0xC000000000000001;
      v60 = MEMORY[0x1E69E7CC8];
      v209 = MEMORY[0x1E69E7CC0];
      v208 = v55;
      v211 = v56;
      v210 = v55 & 0xC000000000000001;
      while (1)
      {
        if (v59)
        {
          v61 = MEMORY[0x1CCA5DDD0](v58, v55);
        }

        else
        {
          v61 = *(v55 + 8 * v58 + 32);
        }

        v27 = v61;
        if ([v61 detectionType] == 1)
        {

          v57 = v27;
          v27 = v218;
          goto LABEL_73;
        }

        if (!v57)
        {
          v69 = v27;
          MEMORY[0x1CCA5D040]();
          OUTLINED_FUNCTION_62_14();
          if (v71)
          {
            OUTLINED_FUNCTION_15(v70);
            sub_1C7550B9C();
          }

          OUTLINED_FUNCTION_64();
          sub_1C7550BEC();

          v57 = 0;
          v209 = v225[0];
          v27 = v218;
          v28 = v211;
          v59 = v210;
          goto LABEL_73;
        }

        v62 = *(v60 + 16);
        v217 = v57;
        v215 = v57;
        if (v62 && (sub_1C6FC32C8(), (v64 & 1) != 0))
        {
          v65 = v60;
          v29 = *(*(v60 + 56) + 8 * v63);
          sub_1C75504FC();
        }

        else
        {
          v65 = v60;
          v29 = MEMORY[0x1E69E7CC0];
        }

        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C7565670;
        *(inited + 32) = v27;
        a5 = v29 >> 62;
        if (v29 >> 62)
        {
          v67 = OUTLINED_FUNCTION_96_7();
        }

        else
        {
          v67 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v68 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_209;
        }

        v28 = v27;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (a5)
        {
          goto LABEL_60;
        }

        a5 = v29 & 0xFFFFFFFFFFFFFF8;
        if (v68 > *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_61;
        }

LABEL_62:
        if (*(a5 + 16) >= *(a5 + 24) >> 1)
        {
          goto LABEL_210;
        }

        v72 = v25;
        swift_arrayInitWithCopy();

        ++*(a5 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v224 = v65;
        v25 = v215;
        sub_1C6FC32C8();
        v76 = *(v65 + 16);
        v77 = (v75 & 1) == 0;
        v27 = (v76 + v77);
        if (__OFADD__(v76, v77))
        {
          goto LABEL_211;
        }

        a5 = v74;
        v78 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219648, &unk_1C7579DE8);
        if (sub_1C7551A2C())
        {
          sub_1C6FC32C8();
          v27 = v218;
          if ((v78 & 1) != (v80 & 1))
          {
LABEL_220:
            sub_1C7551E4C();
            __break(1u);

            __break(1u);
            return;
          }

          a5 = v79;
        }

        else
        {
          v27 = v218;
        }

        v81 = v224;
        if (v78)
        {
          *(*(v224 + 56) + 8 * a5) = v29;
        }

        else
        {
          *(v224 + 8 * (a5 >> 6) + 64) |= 1 << a5;
          *(v81[6] + 8 * a5) = v215;
          *(v81[7] + 8 * a5) = v29;
          v82 = v81[2];
          v83 = __OFADD__(v82, 1);
          v84 = v82 + 1;
          if (v83)
          {
            goto LABEL_213;
          }

          v81[2] = v84;
        }

        v29 = 0x1E82A5000;
        v55 = v208;
        v28 = v211;
        v59 = v210;
        v25 = v72;
        v60 = v81;
LABEL_73:
        if (v28 == ++v58)
        {
          v217 = v57;

          a5 = v209;
LABEL_77:
          sub_1C75504FC();
          v85 = sub_1C754FEEC();
          v86 = sub_1C755118C();
          v209 = a5;
          if (OUTLINED_FUNCTION_7_0(v86))
          {
            v87 = OUTLINED_FUNCTION_41_0();
            *v87 = 134217984;
            *(v87 + 4) = sub_1C6FB6304();

            OUTLINED_FUNCTION_17();
            _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
            OUTLINED_FUNCTION_23_3();
          }

          else
          {
          }

          v93 = v219;
          v94 = 0;
          v224 = MEMORY[0x1E69E7CC0];
          while (v25 != v94)
          {
            if (v27)
            {
              v95 = MEMORY[0x1CCA5DDD0](v94, v221);
            }

            else
            {
              if (v94 >= *(v203 + 16))
              {
                goto LABEL_206;
              }

              v95 = *(v221 + 8 * v94 + 32);
            }

            a5 = v95;
            if (__OFADD__(v94, 1))
            {
              goto LABEL_205;
            }

            if (v93 < [v95 *(v29 + 3920)] || objc_msgSend(a5, *(v29 + 3920)) == v220)
            {
            }

            else
            {
              sub_1C755192C();
              sub_1C755196C();
              OUTLINED_FUNCTION_64();
              sub_1C755197C();
              sub_1C755193C();
              v93 = v219;
            }

            ++v94;
          }

          v223 = v224;
          v96 = sub_1C75504FC();
          sub_1C6FD35B4(v96);
          v28 = v213;
          v97 = sub_1C6FB6304();
          v218 = v60;
          if (!v97)
          {
            v25 = v216;
LABEL_128:
            v29 = "QueryTokenCategoryTypeString";
            if (sub_1C6FB6304() == v204)
            {
            }

            else
            {
              sub_1C75504FC();
              sub_1C75504FC();
              v115 = sub_1C754FEEC();
              v116 = sub_1C755119C();
              if (OUTLINED_FUNCTION_7_0(v116))
              {
                v118 = swift_slowAlloc();
                *v118 = 134218240;
                *(v118 + 4) = sub_1C6FB6304();

                *(v118 + 12) = 2048;
                v119 = sub_1C6FB6304();

                *(v118 + 14) = v119;

                OUTLINED_FUNCTION_17();
                _os_log_impl(v120, v121, v122, v123, v124, 0x16u);
                OUTLINED_FUNCTION_23_3();
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }
            }

            v125 = sub_1C754FEEC();
            v126 = sub_1C755117C();
            if (OUTLINED_FUNCTION_7_0(v126))
            {
              v127 = OUTLINED_FUNCTION_127();
              OUTLINED_FUNCTION_37_0(v127);
              OUTLINED_FUNCTION_1_82();
              _os_log_impl(v128, v129, v130, v131, v132, v133);
              OUTLINED_FUNCTION_23_3();
            }

            if (v205)
            {
              v134 = sub_1C754FEEC();
              v135 = sub_1C755117C();
              if (OUTLINED_FUNCTION_7_0(v135))
              {
                v136 = OUTLINED_FUNCTION_127();
                OUTLINED_FUNCTION_37_0(v136);
                OUTLINED_FUNCTION_1_82();
                _os_log_impl(v137, v138, v139, v140, v141, v142);
                OUTLINED_FUNCTION_23_3();
              }

              v143 = sub_1C74ED5F8(v28);
              if (v143)
              {
                v144 = v143;
                v145 = [v143 manualOrder];
              }

              else
              {
                v145 = 0;
              }

              if (v219 <= v145)
              {
                v27 = v145;
              }

              else
              {
                v27 = v219;
              }

              v146 = sub_1C6FB6304();
              if (v146)
              {
                a5 = v146;
                if (sub_1C6FB6304() >= 1)
                {
                  v25 = v28 & 0xC000000000000001;
                  sub_1C6FB6330();
                  if ((v28 & 0xC000000000000001) == 0)
                  {
                    v147 = *(v28 + 32);
                    goto LABEL_150;
                  }

                  goto LABEL_217;
                }

                goto LABEL_169;
              }

              v153 = sub_1C754FEEC();
              v154 = sub_1C755117C();
              if (OUTLINED_FUNCTION_66(v154))
              {
                v155 = OUTLINED_FUNCTION_127();
                OUTLINED_FUNCTION_58_8(v155);
                OUTLINED_FUNCTION_34_22();
                _os_log_impl(v156, v157, v158, v159, v160, 2u);
                OUTLINED_FUNCTION_109();
              }

              sub_1C722DB3C(v27, v209, a1);
            }

            else
            {
            }

            goto LABEL_200;
          }

          v29 = v97;
          a5 = 0;
          v25 = v216;
          v212 = v97;
          while (2)
          {
            if ((v213 & 0xC000000000000001) != 0)
            {
              v98 = MEMORY[0x1CCA5DDD0](a5, v28);
            }

            else
            {
              if (a5 >= *(v28 + 16))
              {
                goto LABEL_208;
              }

              v98 = *(v213 + 32 + 8 * a5);
            }

            v83 = __OFADD__(a5++, 1);
            if (v83)
            {
              goto LABEL_207;
            }

            v27 = v98;
            MEMORY[0x1CCA5D040]();
            OUTLINED_FUNCTION_62_14();
            if (v71)
            {
              OUTLINED_FUNCTION_15(v99);
              sub_1C7550B9C();
            }

            sub_1C7550BEC();
            if (*(v60 + 16) && (sub_1C6FC32C8(), (v101 & 1) != 0))
            {
              v29 = *(*(v60 + 56) + 8 * v100);
              v28 = v29 >> 62;
              if (v29 >> 62)
              {
                v102 = OUTLINED_FUNCTION_96_7();
                if (!v102)
                {
                  goto LABEL_116;
                }

LABEL_105:
                if (v102 < 1)
                {
                  goto LABEL_212;
                }

                sub_1C75504FC();
                for (i = 0; i != v102; ++i)
                {
                  if ((v29 & 0xC000000000000001) != 0)
                  {
                    v104 = MEMORY[0x1CCA5DDD0](i, v29);
                  }

                  else
                  {
                    v104 = *(v29 + 8 * i + 32);
                  }

                  v105 = v104;
                  MEMORY[0x1CCA5D040]();
                  OUTLINED_FUNCTION_62_14();
                  if (v71)
                  {
                    OUTLINED_FUNCTION_15(v106);
                    sub_1C7550B9C();
                  }

                  sub_1C7550BEC();
                }

                v25 = v216;
              }

              else
              {
                v102 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v102)
                {
                  goto LABEL_105;
                }

LABEL_116:
                sub_1C75504FC();
              }

              v27 = v27;
              sub_1C75504FC();
              v107 = sub_1C754FEEC();
              v108 = sub_1C755118C();
              if (OUTLINED_FUNCTION_128(v108))
              {
                v109 = swift_slowAlloc();
                v110 = swift_slowAlloc();
                v223 = v110;
                *v109 = 134218242;
                if (v28)
                {
                  v111 = OUTLINED_FUNCTION_96_7();
                }

                else
                {
                  v111 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v109 + 4) = v111;

                *(v109 + 12) = 2080;
                v112 = sub_1C70CAC04(v27);
                isUniquelyReferenced_nonNull_native = v113;

                v28 = v213;
                if (!isUniquelyReferenced_nonNull_native)
                {
LABEL_219:
                  __break(1u);
                  goto LABEL_220;
                }

                v114 = sub_1C6F765A4(v112, isUniquelyReferenced_nonNull_native, &v223);

                *(v109 + 14) = v114;
                _os_log_impl(&dword_1C6F5C000, v107, v108, "%ld pets to insert behind person %s", v109, 0x16u);
                __swift_destroy_boxed_opaque_existential_1(v110);
                OUTLINED_FUNCTION_37();
                OUTLINED_FUNCTION_109();

                v25 = v216;
              }

              else
              {

                swift_bridgeObjectRelease_n();
                v28 = v213;
              }

              v60 = v218;
              v29 = v212;
            }

            else
            {
            }

            if (a5 == v29)
            {
              goto LABEL_128;
            }

            continue;
          }
        }
      }

      if (a5)
      {
LABEL_60:
        OUTLINED_FUNCTION_96_7();
      }

LABEL_61:
      v29 = sub_1C75518CC();
      a5 = v29 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_62;
    }

    if (v27)
    {
      v30 = MEMORY[0x1CCA5DDD0](v26, v21);
    }

    else
    {
      if (v26 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_202;
      }

      v30 = *(v21 + 8 * v26 + 32);
    }

    v31 = v30;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if ([v30 detectionType] == 1 || objc_msgSend(v31, sel_manualOrder) != v220 && v24 >= objc_msgSend(v31, sel_manualOrder))
    {
    }

    else
    {
      sub_1C755192C();
      a5 = *(v225[0] + 16);
      sub_1C755196C();
      OUTLINED_FUNCTION_58();
      sub_1C755197C();
      sub_1C755193C();
      v24 = v219;
    }

    ++v26;
  }

  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
  do
  {
    __break(1u);
LABEL_217:
    v147 = MEMORY[0x1CCA5DDD0](0, v28);
LABEL_150:
    isUniquelyReferenced_nonNull_native = v147;
    v148 = [v147 manualOrder];

    v149 = *MEMORY[0x1E6978F28];
    v150 = v219;
    if (v219 <= v149)
    {
      if (v148 >= v149)
      {
        v148 = *MEMORY[0x1E6978F28];
      }

      if (a5 < 2)
      {
        v150 = v148;
        v148 += v149;
      }

      else
      {
        sub_1C6FB6330();
        if (v25)
        {
          v151 = v148;
          v152 = MEMORY[0x1CCA5DDD0](1, v28);
        }

        else
        {
          v151 = v148;
          v152 = *(v28 + 40);
        }

        isUniquelyReferenced_nonNull_native = v152;
        v148 = [v152 manualOrder];

        v150 = v151;
      }
    }

    v161 = v27;
    v162 = v150;
    v83 = __OFADD__(v150, v149);
    v163 = v150 + v149;
    if (v83)
    {
      __break(1u);
      goto LABEL_219;
    }

    if (v148 >= v163)
    {
      v164 = v163;
    }

    else
    {
      v164 = v148;
    }

    v165 = sub_1C754FEEC();
    v166 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v166))
    {
      v167 = swift_slowAlloc();
      *v167 = *(v29 + 2680);
      *(v167 + 4) = v162;
      *(v167 + 12) = 2048;
      *(v167 + 14) = v164;
      _os_log_impl(&dword_1C6F5C000, v165, v166, "Pets before people range: %ld -> %ld", v167, 0x16u);
      OUTLINED_FUNCTION_23_3();
    }

    v168 = v164;
    v25 = v216;
    v27 = sub_1C722DE50(v209, v162, v168, a1, v216, v161);
    v60 = v218;
LABEL_169:

    v169 = a5 - 1;
  }

  while (__OFSUB__(a5, 1));
  if (v169 >= 1)
  {
    v170 = v28 & 0xC000000000000001;
    sub_1C6FB6330();
    sub_1C6FB6330();
    a5 = 0;
    v222 = v169;
    do
    {
      v171 = v28 + 8 * a5;
      if (v170)
      {
        v172 = MEMORY[0x1CCA5DDD0](a5, v28);
      }

      else
      {
        v172 = *(v171 + 32);
      }

      v29 = v172;
      ++a5;
      if (*(v60 + 16) && (sub_1C6FC32C8(), (v174 & 1) != 0))
      {
        v175 = *(*(v60 + 56) + 8 * v173);
        sub_1C75504FC();
        v28 = [v29 manualOrder];
        if (v170)
        {
          v176 = MEMORY[0x1CCA5DDD0](a5, v213);
        }

        else
        {
          if (a5 >= *(v213 + 16))
          {
            goto LABEL_214;
          }

          v176 = *(v171 + 40);
        }

        v177 = v176;
        v178 = [v176 manualOrder];

        v27 = sub_1C722DE50(v175, v28, v178, a1, v25, v27);
        sub_1C75504FC();
        v179 = sub_1C754FEEC();
        v180 = sub_1C755118C();
        if (OUTLINED_FUNCTION_128(v180))
        {
          v219 = v27;
          v181 = swift_slowAlloc();
          *v181 = 134218496;
          if (v175 >> 62)
          {
            v182 = sub_1C75516BC();
          }

          else
          {
            v182 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v181 + 4) = v182;

          *(v181 + 12) = 2048;
          *(v181 + 14) = v28;
          *(v181 + 22) = 2048;
          *(v181 + 24) = v178;
          _os_log_impl(&dword_1C6F5C000, v179, v180, "Inserted %ld pets between persons with manual orders %ld and %ld", v181, 0x20u);
          OUTLINED_FUNCTION_109();

          v25 = v216;
          v28 = v213;
          v60 = v218;
          v27 = v219;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v25 = v216;
          v28 = v213;
          v60 = v218;
        }

        v169 = v222;
      }

      else
      {
      }
    }

    while (v169 != a5);
  }

  v183 = sub_1C74ED5F8(v28);

  if (v183)
  {
    v184 = sub_1C6FE141C(v183, v60);
    if (!v184)
    {
      goto LABEL_195;
    }

    sub_1C722DB3C(v27, v184, a1);
    sub_1C75504FC();
    v185 = sub_1C754FEEC();
    v186 = sub_1C755118C();
    if (OUTLINED_FUNCTION_7_0(v186))
    {
      v187 = OUTLINED_FUNCTION_41_0();
      *v187 = 134217984;
      v188 = sub_1C6FB6304();

      *(v187 + 4) = v188;

      OUTLINED_FUNCTION_17();
      _os_log_impl(v189, v190, v191, v192, v193, 0xCu);
      OUTLINED_FUNCTION_23_3();

LABEL_195:
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  v194 = sub_1C754FEEC();
  v195 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v195))
  {
    v196 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v196);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v197, v198, v199, v200, v201, v202);
    OUTLINED_FUNCTION_23_3();
  }

LABEL_200:
}

uint64_t sub_1C722C934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C7565670;
  *(v0 + 32) = sub_1C7551EFC();
  return v0;
}

void sub_1C722C990(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_opt_self() fetchAssetsForPerson:a1 faceCount:1 options:a2];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 count];
    v9 = a1;
    if (v8 >= 3)
    {
      MEMORY[0x1CCA5D040]();
      sub_1C6FB6328();
      sub_1C7550BEC();
    }

    else
    {
      v10 = sub_1C754FEEC();
      v11 = sub_1C755117C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v12 = 136315650;
        v13 = [v9 localIdentifier];
        v14 = sub_1C755068C();
        v16 = v15;

        v17 = sub_1C6F765A4(v14, v16, &v22);

        *(v12 + 4) = v17;
        *(v12 + 12) = 2048;
        *(v12 + 14) = v8;
        *(v12 + 22) = 2048;
        *(v12 + 24) = 3;
        _os_log_impl(&dword_1C6F5C000, v10, v11, "Pet %s doesn't have enough assets alone to be promoted: %ld < %ld", v12, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1CCA5F8E0](v21, -1, -1);
        MEMORY[0x1CCA5F8E0](v12, -1, -1);
      }
    }
  }

  else
  {
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v18, v19, "Unable to fetch assets alone for the pet!", v20, 2u);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }
  }
}

BOOL sub_1C722CBF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = sub_1C6F78124(*a1, v5);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    return 1;
  }

  v10 = *(*(a3 + 56) + 8 * v8);
  v11 = sub_1C6F78124(v6, v7);
  if ((v12 & 1) == 0)
  {

    return 1;
  }

  v13 = *(*(a3 + 56) + 8 * v11);
  v14 = [v10 integerValue];
  if (v14 != [v13 integerValue])
  {
    v18 = [v10 integerValue];
    v19 = [v13 integerValue];

    return v19 < v18;
  }

  if (v4 != v6 || v5 != v7)
  {
    v16 = sub_1C7551DBC();

    return v16 & 1;
  }

  return 0;
}

void sub_1C722CD3C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (result)
  {
    v34 = 0;
    v4 = 0;
    v36 = *(a2 + 16);
    v5 = a2 + 40;
    v6 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
    for (i = a2 + 40; ; v5 = i)
    {
      for (j = (v5 + 16 * v4); ; j += 2)
      {
        if (v36 == v4)
        {

          return;
        }

        if (v4 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(j - 1);
        v8 = *j;
        v10 = *(v6 + 16);
        if (v10 >= result)
        {
          break;
        }

        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6F7ED9C(0, v10 + 1, 1, v11, v12, v13, v14);
        }

        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1C6F7ED9C(v15 > 1, v16 + 1, 1, v11, v12, v13, v14);
        }

        *(v6 + 16) = v16 + 1;
        v17 = v6 + 16 * v16;
        *(v17 + 32) = v9;
        *(v17 + 40) = v8;
        ++v4;
      }

      if (v34 >= v10)
      {
        goto LABEL_29;
      }

      v18 = v6 + 16 * v34;
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      sub_1C75504FC();
      sub_1C75504FC();
      v21 = v35;
      v32 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6F7ED9C(0, *(v35 + 16) + 1, 1, v22, v23, v24, v25);
        v21 = v35;
      }

      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1C6F7ED9C(v26 > 1, v27 + 1, 1, v22, v23, v24, v25);
        v21 = v35;
      }

      *(v21 + 16) = v27 + 1;
      v35 = v21;
      v28 = v21 + 16 * v27;
      *(v28 + 32) = v32;
      *(v28 + 40) = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C7422A2C();
        v6 = v29;
      }

      if (v34 >= *(v6 + 16))
      {
        break;
      }

      v30 = v6 + 16 * v34;
      ++v4;
      *(v30 + 32) = v9;
      *(v30 + 40) = v8;

      if ((v34 + 1) < result)
      {
        v31 = v34 + 1;
      }

      else
      {
        v31 = 0;
      }

      v34 = v31;
    }

    goto LABEL_30;
  }
}

void sub_1C722CF74(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    v1 = sub_1C75516BC();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
LABEL_3:
      v2 = objc_opt_self();
      v3 = 0;
      v18 = v2;
      v19 = v1;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1CCA5DDD0](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v4 = *(a1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v7 = [v2 changeRequestForPerson_];
        [v7 setVerifiedType_];
        v8 = v5;
        v9 = sub_1C754FEEC();
        v10 = sub_1C755117C();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = v7;
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v21 = v13;
          *v12 = 136315138;
          v14 = sub_1C70CAC04(v8);
          v16 = v15;

          if (!v16)
          {
            __break(1u);
            return;
          }

          v17 = sub_1C6F765A4(v14, v16, &v21);

          *(v12 + 4) = v17;
          _os_log_impl(&dword_1C6F5C000, v9, v10, "Promoting pet with UUID %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x1CCA5F8E0](v13, -1, -1);
          MEMORY[0x1CCA5F8E0](v12, -1, -1);

          v2 = v18;
          v1 = v19;
        }

        else
        {
        }

        ++v3;
      }

      while (v6 != v1);
    }
  }
}

void sub_1C722D1BC(uint64_t a1)
{
  v2 = sub_1C75504FC();
  v24 = sub_1C71CC970(v2);
  sub_1C72329B8(&v24);
  v3 = v24;
  v4 = sub_1C6FB6304();
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *MEMORY[0x1E6978F10];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCA5DDD0](v6, v3);
      }

      else
      {
        if (v6 >= *(v3 + 16))
        {
          goto LABEL_40;
        }

        v9 = *(v3 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v9 manualOrder] == v8)
      {

        v12 = v7;
      }

      else
      {
        v12 = [v10 manualOrder];

        if (__OFADD__(v7, 1))
        {
          goto LABEL_39;
        }

        if (v12 != v7 + 1)
        {
          goto LABEL_13;
        }
      }

      ++v6;
      v7 = v12;
      if (v11 == v5)
      {
        goto LABEL_13;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_13:

    v24 = MEMORY[0x1E69E7CC0];
    v5 = sub_1C6FB6304();
    for (i = 0; v5 != i; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCA5DDD0](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v14 = *(a1 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if ([v14 verifiedType] == 1)
      {
        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      else
      {
      }
    }

    v16 = v24;
    v17 = sub_1C6FB6304();
    if (v17)
    {
      v5 = v17;
      v24 = MEMORY[0x1E69E7CC0];
      sub_1C716D854();
      if (v5 < 0)
      {
        goto LABEL_41;
      }

      v18 = 0;
      v19 = v24;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1CCA5DDD0](v18, v16);
        }

        else
        {
          v20 = *(v16 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = [v20 manualOrder];

        v24 = v19;
        v23 = v19[2];
        if (v23 >= v19[3] >> 1)
        {
          sub_1C716D854();
          v19 = v24;
        }

        ++v18;
        v19[2] = v23 + 1;
        v19[v23 + 4] = v22;
      }

      while (v5 != v18);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    sub_1C7424BCC(v19);
  }
}

void *sub_1C722D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C7229928(a1, a2, a3, a4, a5, a6, a7, a8, v50);
  v12 = [objc_allocWithZone(PNPersonPromoter) initWithPhotoLibrary:a2 andDelegate:a3];
  sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
  sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60, off_1E829F410);
  v13 = sub_1C7550F7C();

  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v61 = sub_1C7237268;
  v62 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1C7229DD8;
  v60 = &block_descriptor_43_0;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 interestingPersonsFromPersons:v13 detectionType:2 updateBlock:v15];
  _Block_release(v15);

  if (v16)
  {
    v17 = sub_1C7550F8C();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  v52 = v12;
  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C7550FEC();
    v17 = aBlock;
    v18 = v58;
    v19 = v59;
    v20 = v60;
    v21 = v61;
  }

  else
  {
    v20 = 0;
    v22 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(v17 + 56);
  }

  v51 = v19;
  v25 = (v19 + 64) >> 6;
  v26 = MEMORY[0x1E69E7CC8];
  v53 = v25;
  v54 = v18;
  if (v17 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v27 = v20;
  v28 = v21;
  v29 = v20;
  if (v21)
  {
LABEL_15:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v17 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
LABEL_29:
      sub_1C6F61E88(v17);

      return v26;
    }

    while (1)
    {
      v55 = v30;
      v32 = v17;
      v33 = [v31 localIdentifier];
      v34 = sub_1C755068C();
      v36 = v35;

      [v31 interestingScore];
      v38 = v37;
      swift_isUniquelyReferenced_nonNull_native();
      v56 = v26;
      v39 = sub_1C6F78124(v34, v36);
      if (__OFADD__(v26[2], (v40 & 1) == 0))
      {
        break;
      }

      v41 = v39;
      v42 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0, &unk_1C7569730);
      if (sub_1C7551A2C())
      {
        v43 = sub_1C6F78124(v34, v36);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_33;
        }

        v41 = v43;
      }

      if (v42)
      {

        *(v26[7] + 8 * v41) = v38;
      }

      else
      {
        v26[(v41 >> 6) + 8] |= 1 << v41;
        v45 = (v26[6] + 16 * v41);
        *v45 = v34;
        v45[1] = v36;
        *(v26[7] + 8 * v41) = v38;

        v46 = v26[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_32;
        }

        v26[2] = v48;
      }

      v20 = v29;
      v17 = v32;
      v18 = v54;
      v21 = v55;
      v25 = v53;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      if (sub_1C75516FC())
      {
        swift_dynamicCast();
        v31 = v56;
        v29 = v20;
        v30 = v21;
        if (v56)
        {
          continue;
        }
      }

      goto LABEL_29;
    }
  }

  else
  {
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v25)
      {
        goto LABEL_29;
      }

      v28 = *(v18 + 8 * v29);
      ++v27;
      if (v28)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C722D970(id *a1, void **a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a1 localIdentifier];
  v7 = sub_1C755068C();
  v9 = v8;

  v10 = COERCE_DOUBLE(sub_1C6FE0FE8(v7, v9, a3));
  LOBYTE(v7) = v11;

  v12 = 0.0;
  if (v7)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10;
  }

  v14 = [v5 localIdentifier];
  v15 = sub_1C755068C();
  v17 = v16;

  v18 = COERCE_DOUBLE(sub_1C6FE0FE8(v15, v17, a3));
  LOBYTE(v14) = v19;

  if (v14)
  {
    if (v13 != 0.0)
    {
      return v12 < v13;
    }
  }

  else
  {
    v12 = v18;
    if (v13 != v18)
    {
      return v12 < v13;
    }
  }

  v21 = [v4 faceCount];
  v22 = [v5 faceCount];
  if (v21 != v22)
  {
    return v22 < v21;
  }

  result = sub_1C70CAC04(v4);
  if (!v23)
  {
    __break(1u);
    goto LABEL_19;
  }

  v24 = result;
  v25 = v23;
  result = sub_1C70CAC04(v5);
  if (!v26)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v24 == result && v25 == v26)
  {

    return 0;
  }

  else
  {
    v28 = sub_1C7551DBC();

    return v28 & 1;
  }
}

uint64_t sub_1C722DB3C(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = v6;
  aBlock[4] = sub_1C7237520;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_37_0;
  v8 = _Block_copy(aBlock);
  sub_1C75504FC();

  aBlock[0] = 0;
  LODWORD(a2) = [a3 performChangesAndWait:v8 error:aBlock];
  _Block_release(v8);
  if (a2)
  {
    v9 = aBlock[0];
  }

  else
  {
    v10 = aBlock[0];
    v11 = sub_1C754DBEC();

    swift_willThrow();
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C6F65BE8(0, &qword_1EC216D18, 0x1E696ABC0);
    swift_dynamicCast();
    v12 = v24;
    v13 = sub_1C754FEEC();
    v14 = sub_1C755119C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      v17 = [v12 localizedDescription];
      v18 = sub_1C755068C();
      v20 = v19;

      v21 = sub_1C6F765A4(v18, v20, &v25);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1C6F5C000, v13, v14, "Error! Failed to set manual orders: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v22 = *(v6 + 16);

  return v22;
}

uint64_t sub_1C722DE50(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

    return a6;
  }

  v11 = sub_1C75516BC();
  if (!v11)
  {
    return a6;
  }

LABEL_3:
  if (a3 >= a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    v17 = a3 - a2;
    if (__OFSUB__(a3, a2))
    {
      __break(1u);
    }

    else if (!__OFADD__(v11, 1))
    {
      if (v11 != -1)
      {
        if (v17 != 0x8000000000000000 || v11 != -2)
        {
          v19 = v16;
          v20 = v17 / (v11 + 1);
          v21 = swift_allocObject();
          v21[2] = a1;
          v21[3] = v19;
          v21[4] = v20;
          aBlock[4] = sub_1C72374C8;
          aBlock[5] = v21;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1C6FD8F68;
          aBlock[3] = &block_descriptor_30_0;
          v22 = _Block_copy(aBlock);
          sub_1C75504FC();

          aBlock[0] = 0;
          v23 = [a4 performChangesAndWait:v22 error:aBlock];
          _Block_release(v22);
          if (v23)
          {
            v24 = aBlock[0];
          }

          else
          {
            v25 = aBlock[0];
            v26 = sub_1C754DBEC();

            swift_willThrow();
            aBlock[0] = v26;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
            sub_1C6F65BE8(0, &qword_1EC216D18, 0x1E696ABC0);
            swift_dynamicCast();
            v27 = v37;
            v28 = sub_1C754FEEC();
            v29 = sub_1C755119C();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v39[0] = v31;
              *v30 = 136315138;
              v32 = [v27 localizedDescription];
              v33 = sub_1C755068C();
              v35 = v34;

              v36 = sub_1C6F765A4(v33, v35, v39);

              *(v30 + 4) = v36;
              _os_log_impl(&dword_1C6F5C000, v28, v29, "Error! Failed to set manual orders: %s", v30, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v31);
              MEMORY[0x1CCA5F8E0](v31, -1, -1);
              MEMORY[0x1CCA5F8E0](v30, -1, -1);
            }

            else
            {
            }
          }

          return a6;
        }

LABEL_29:
        __break(1u);
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  v12 = sub_1C754FEEC();
  v13 = sub_1C755119C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "The ending person has a higher manual order than the starting person!", v14, 2u);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
  }

  return sub_1C722DB3C(a6, a1, a4);
}

void sub_1C722E28C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_12;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = objc_opt_self();
      if (v4 < 1)
      {
        break;
      }

      v6 = v5;
      v7 = *MEMORY[0x1E6978F28];
      swift_beginAccess();
      swift_beginAccess();
      v8 = 0;
      while (1)
      {
        v9 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](v8, a1) : *(a1 + 8 * v8 + 32);
        v10 = v9;
        v11 = *(a2 + 16);
        v12 = __OFADD__(v11, v7);
        v13 = v11 + v7;
        if (v12)
        {
          break;
        }

        ++v8;
        *(a2 + 16) = v13;
        v14 = [v6 changeRequestForPerson_];
        [v14 setManualOrder_];

        if (v4 == v8)
        {
          return;
        }
      }

      __break(1u);
LABEL_12:
      v4 = sub_1C75516BC();
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1C722E3DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_12;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v7 = objc_opt_self();
      if (v6 < 1)
      {
        break;
      }

      v8 = v7;
      swift_beginAccess();
      swift_beginAccess();
      v9 = 0;
      while (1)
      {
        v10 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](v9, a1) : *(a1 + 8 * v9 + 32);
        v11 = v10;
        v12 = *(a2 + 16);
        v13 = __OFADD__(v12, a3);
        v14 = v12 + a3;
        if (v13)
        {
          break;
        }

        ++v9;
        *(a2 + 16) = v14;
        v15 = [v8 changeRequestForPerson_];
        [v15 setManualOrder_];

        if (v6 == v9)
        {
          return;
        }
      }

      __break(1u);
LABEL_12:
      v6 = sub_1C75516BC();
      if (!v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_1C722E524(uint64_t a1, id a2, uint64_t a3)
{
  v5 = [a2 librarySpecificFetchOptions];
  v6 = sub_1C72298C0();
  sub_1C7082AAC(v6, v5);
  [v5 setIncludeTorsoAndFaceDetectionData_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755BAB0;
  *(v7 + 32) = sub_1C755068C();
  *(v7 + 40) = v8;
  sub_1C6FCA0EC(v7, v5);
  v83 = sub_1C6FB6304();
  if (!v83)
  {
    v77 = MEMORY[0x1E69E7CC8];
LABEL_49:

    return v77;
  }

  v9 = 0;
  v81 = objc_opt_self();
  v82 = a1 & 0xC000000000000001;
  v78 = a1 + 32;
  v79 = a1 & 0xFFFFFFFFFFFFFF8;
  v77 = MEMORY[0x1E69E7CC8];
  v80 = v5;
  v75 = a1;
  v76 = a3;
  while (1)
  {
    if (v82)
    {
      v10 = MEMORY[0x1CCA5DDD0](v9, a1);
    }

    else
    {
      if (v9 >= *(v79 + 16))
      {
        goto LABEL_51;
      }

      v10 = *(v78 + 8 * v9);
    }

    v11 = v10;
    v12 = __OFADD__(v9, 1);
    v13 = v9 + 1;
    if (v12)
    {
      break;
    }

    v85 = v13;
    v14 = v5;
    v15 = [v81 fetchRejectedFacesForPerson:v11 options:v14];
    v16 = [v15 fetchedObjects];

    if (v16)
    {
      v84 = v11;
      v17 = sub_1C6F65BE8(0, &qword_1EDD06898, 0x1E69787C8);
      v18 = sub_1C7550B5C();
      v19 = v18;
      if (v18 >> 62)
      {
        if (!sub_1C75516BC())
        {
LABEL_31:

          goto LABEL_32;
        }
      }

      else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v20 = [objc_opt_self() fetchPersonsWithFaces:v16 options:v14];

      v21 = [v20 fetchedObjects];
      if (!v21)
      {
        sub_1C75504FC();
        v52 = sub_1C754FEEC();
        v53 = sub_1C755119C();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v86 = v55;
          *v54 = 136315138;
          v56 = MEMORY[0x1CCA5D090](v19, v17);
          v58 = v57;

          v59 = sub_1C6F765A4(v56, v58, &v86);

          *(v54 + 4) = v59;
          _os_log_impl(&dword_1C6F5C000, v52, v53, "Couldn't get fetched pets with faces %s!", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v55);
          MEMORY[0x1CCA5F8E0](v55, -1, -1);
          MEMORY[0x1CCA5F8E0](v54, -1, -1);
        }

        else
        {
        }

        goto LABEL_46;
      }

      sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
      v22 = sub_1C7550B5C();

      if (v22 >> 62)
      {
        v27 = sub_1C75516BC();
        if (!v27)
        {
          goto LABEL_34;
        }

LABEL_14:
        v86 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C(0, v27 & ~(v27 >> 63), 0, v23, v24, v25, v26);
        if (v27 < 0)
        {
          goto LABEL_52;
        }

        v28 = 0;
        v29 = v86;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1CCA5DDD0](v28, v22);
          }

          else
          {
            v30 = *(v22 + 8 * v28 + 32);
          }

          v31 = v30;
          v32 = [v30 localIdentifier];
          v33 = sub_1C755068C();
          v35 = v34;

          v86 = v29;
          v41 = *(v29 + 16);
          v40 = *(v29 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1C6F7ED9C(v40 > 1, v41 + 1, 1, v36, v37, v38, v39);
            v29 = v86;
          }

          ++v28;
          *(v29 + 16) = v41 + 1;
          v42 = v29 + 16 * v41;
          *(v42 + 32) = v33;
          *(v42 + 40) = v35;
        }

        while (v27 != v28);

        a1 = v75;
      }

      else
      {
        v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
          goto LABEL_14;
        }

LABEL_34:

        v29 = MEMORY[0x1E69E7CC0];
      }

      if (*(v29 + 16))
      {
        v60 = [v84 localIdentifier];
        v61 = sub_1C755068C();
        v63 = v62;

        swift_isUniquelyReferenced_nonNull_native();
        v86 = v77;
        v64 = sub_1C6F78124(v61, v63);
        if (__OFADD__(*(v77 + 16), (v65 & 1) == 0))
        {
          goto LABEL_53;
        }

        v66 = v64;
        v67 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0, &qword_1C755CB70);
        if (sub_1C7551A2C())
        {
          v68 = sub_1C6F78124(v61, v63);
          if ((v67 & 1) != (v69 & 1))
          {
            goto LABEL_55;
          }

          v66 = v68;
        }

        v70 = v86;
        v77 = v86;
        if (v67)
        {
          *(v86[7] + 8 * v66) = v29;
        }

        else
        {
          v86[(v66 >> 6) + 8] |= 1 << v66;
          v71 = (v70[6] + 16 * v66);
          *v71 = v61;
          v71[1] = v63;
          *(v70[7] + 8 * v66) = v29;
          v72 = v70[2];
          v12 = __OFADD__(v72, 1);
          v73 = v72 + 1;
          if (v12)
          {
            goto LABEL_54;
          }

          v70[2] = v73;
        }
      }

      else
      {
      }

      v5 = v80;
      goto LABEL_46;
    }

    v43 = v11;
    v14 = sub_1C754FEEC();
    v44 = sub_1C755119C();

    if (!os_log_type_enabled(v14, v44))
    {

LABEL_32:
      goto LABEL_46;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v86 = v46;
    *v45 = 136315138;
    v47 = [v43 localIdentifier];
    v48 = sub_1C755068C();
    v50 = v49;

    v51 = sub_1C6F765A4(v48, v50, &v86);
    v5 = v80;

    *(v45 + 4) = v51;
    _os_log_impl(&dword_1C6F5C000, v14, v44, "Couldn't get fetched rejected faces for pet %s!", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1CCA5F8E0](v46, -1, -1);
    MEMORY[0x1CCA5F8E0](v45, -1, -1);

LABEL_46:
    v9 = v85;
    if (v85 == v83)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C722ECB4(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  sub_1C722E524(a1, a4, a5);
  v47 = sub_1C6FB6304();
  if (v47)
  {
    v7 = 0;
    v46 = a2 & 0xC000000000000001;
    v43 = a2 + 32;
    v8 = MEMORY[0x1E69E7CC8];
    v44 = a2;
    v45 = a3;
    while (1)
    {
      sub_1C6FB6330();
      v9 = v46 ? MEMORY[0x1CCA5DDD0](v7, a2) : *(v43 + 8 * v7);
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v49 = v9;
      v11 = [objc_msgSend(a3 pn:sel_fetchedObjects fetchInvalidCandidatePersonsForPerson:?)];
      swift_unknownObjectRelease();
      v12 = sub_1C7550B5C();

      v13 = sub_1C71BC2B8(v12);

      if (v13)
      {
        v48 = v8;
        v14 = sub_1C6FB6304();
        if (v14)
        {
          v19 = v14;
          v50 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C(0, v14 & ~(v14 >> 63), 0, v15, v16, v17, v18);
          if (v19 < 0)
          {
            goto LABEL_29;
          }

          v20 = 0;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x1CCA5DDD0](v20, v13);
            }

            else
            {
              v21 = *(v13 + 8 * v20 + 32);
              swift_unknownObjectRetain();
            }

            v22 = [v21 localIdentifier];
            v23 = sub_1C755068C();
            v25 = v24;
            swift_unknownObjectRelease();

            v31 = *(v50 + 16);
            v30 = *(v50 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_1C6F7ED9C(v30 > 1, v31 + 1, 1, v26, v27, v28, v29);
            }

            ++v20;
            *(v50 + 16) = v31 + 1;
            v32 = v50 + 16 * v31;
            *(v32 + 32) = v23;
            *(v32 + 40) = v25;
          }

          while (v19 != v20);

          a2 = v44;
          a3 = v45;
        }

        else
        {
        }

        sub_1C706D154();
        sub_1C70738FC();
        v33 = v34;
        v8 = v48;
      }

      else
      {
        v33 = MEMORY[0x1E69E7CD0];
      }

      v35 = [v49 localIdentifier];
      sub_1C755068C();

      v36 = sub_1C6FE3768();

      if (v36)
      {
        sub_1C706D154();
        sub_1C70738FC();
        v33 = v37;
      }

      if (*(v33 + 16))
      {
        v38 = [v49 localIdentifier];
        v39 = sub_1C755068C();
        v41 = v40;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1C6FC7D38(v33, v39, v41, isUniquelyReferenced_nonNull_native);
      }

      else
      {
      }

      if (v7 == v47)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_27:
  }
}

id sub_1C722F040(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  swift_getObjectType();
  sub_1C722ECB4(a2, a3, a1, a4, a7);
  v16 = v15;
  v17 = [objc_allocWithZone(PNPersonDeduperProfile) initForDetectionType_];
  v18 = objc_allocWithZone(PNPersonDeduper);
  v19 = v17;
  v20 = sub_1C7232BB4(a1, v16, v19);
  [v20 setDelegate_];
  swift_unknownObjectRetain();
  v21 = sub_1C754FEEC();
  v22 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = a6 != 0;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1C6F5C000, v21, v22, "Pet deduper delegate is non-nil: %{BOOL}d.", v23, 8u);
    OUTLINED_FUNCTION_109();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  [v20 setPetPromoter_];

  return v20;
}

void sub_1C722F1CC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v83 = a4;
  v92 = *MEMORY[0x1E69E9840];
  v7 = sub_1C754FF1C();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C755BAB0;
  v11 = [a2 localIdentifier];
  v12 = sub_1C755068C();
  v14 = v13;

  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = sub_1C7550B3C();

  v84 = a1;
  v16 = [a1 pn:v15 fetchPersonsWithLocalIdentifiers:?];

  v17 = [v16 fetchedObjects];
  swift_unknownObjectRelease();
  v18 = sub_1C7550B5C();

  sub_1C710DC34(v18, &aBlock);

  if (v89)
  {
    sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
    if (swift_dynamicCast())
    {
      v19 = v86;
      v20 = [a2 mergedPersonIdentifiers];
      v21 = [v20 allObjects];

      v22 = sub_1C7550B5C();
      sub_1C71BBD84(v22, v23, v24, v25, v26, v27, v28, v29, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, aBlock, *(&aBlock + 1), v88, v89, v90, v91, v92, v93, v94);
      v31 = v30;

      if (v31)
      {
        swift_bridgeObjectRetain_n();
        v32 = a2;
        v80 = a3;
        v33 = sub_1C754FEEC();
        v34 = sub_1C755117C();

        v35 = os_log_type_enabled(v33, v34);
        v78 = v32;
        v79 = v19;
        if (v35)
        {
          v36 = swift_slowAlloc();
          HIDWORD(v76) = v34;
          v37 = v36;
          v77 = swift_slowAlloc();
          *&aBlock = v77;
          *v37 = 136315650;
          v38 = [v32 localIdentifier];
          v39 = sub_1C755068C();
          v41 = v40;

          v42 = sub_1C6F765A4(v39, v41, &aBlock);

          *(v37 + 4) = v42;
          *(v37 + 12) = 2048;
          v43 = *(v31 + 16);

          *(v37 + 14) = v43;

          *(v37 + 22) = 2080;
          v44 = MEMORY[0x1CCA5D090](v31, MEMORY[0x1E69E6158]);
          v46 = sub_1C6F765A4(v44, v45, &aBlock);

          *(v37 + 24) = v46;
          _os_log_impl(&dword_1C6F5C000, v33, BYTE4(v76), "Verified pet %s has %ld merge candidates: %s", v37, 0x20u);
          v47 = v77;
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v47, -1, -1);
          MEMORY[0x1CCA5F8E0](v37, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v54 = v80;
        if (*(v31 + 16))
        {
          v55 = sub_1C7550B3C();

          v77 = [v84 pn:v55 fetchPersonsWithLocalIdentifiers:?];

          v56 = v81;
          v57 = v82;
          (*(v81 + 16))(&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v82);
          v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v59 = (v8 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
          v60 = swift_allocObject();
          v62 = v77;
          v61 = v78;
          *(v60 + 16) = v78;
          *(v60 + 24) = v62;
          (*(v56 + 32))(v60 + v58, v9, v57);
          v63 = v83;
          *(v60 + v59) = v83;
          v64 = v79;
          *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
          v90 = sub_1C723758C;
          v91 = v60;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v88 = sub_1C6FD8F68;
          v89 = &block_descriptor_55;
          v65 = _Block_copy(&aBlock);
          v66 = v61;
          swift_unknownObjectRetain();
          v67 = v63;
          v68 = v64;

          *&aBlock = 0;
          v69 = [v84 pn:v65 performChangesAndWait:&aBlock error:?];
          _Block_release(v65);
          if (v69)
          {
            v70 = aBlock;

            swift_unknownObjectRelease();
          }

          else
          {
            v71 = aBlock;
            v72 = sub_1C754DBEC();

            swift_willThrow();
            v73 = sub_1C754FEEC();
            v74 = sub_1C755119C();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              *v75 = 0;
              _os_log_impl(&dword_1C6F5C000, v73, v74, "Error writing merge candidate changes to Photos database!", v75, 2u);
              MEMORY[0x1CCA5F8E0](v75, -1, -1);
            }

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      else
      {
        v51 = sub_1C754FEEC();
        v52 = sub_1C755119C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_1C6F5C000, v51, v52, "Merged person identifiers were not strings!", v53, 2u);
          MEMORY[0x1CCA5F8E0](v53, -1, -1);
        }
      }

      return;
    }
  }

  else
  {
    sub_1C6FE32F4(&aBlock);
  }

  v48 = sub_1C754FEEC();
  v49 = sub_1C755119C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1C6F5C000, v48, v49, "Couldn't cast a fetched verified pet from PNPhotoLibrary to a PHPerson!", v50, 2u);
    MEMORY[0x1CCA5F8E0](v50, -1, -1);
  }
}

void sub_1C722F944(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  [a1 pn:a2 addMergeCandidatePersons:?];
  v48 = MEMORY[0x1E69E7CC0];
  v8 = [a2 fetchedObjects];
  v9 = sub_1C7550B5C();

  v10 = *(v9 + 16);
  if (v10)
  {
    v40 = a5;
    v11 = 0;
    v12 = v9 + 32;
    v42 = *(v9 + 16);
    v43 = v9;
    while (v11 < *(v9 + 16))
    {
      sub_1C6F774EC(v12, v47);
      sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
      if (swift_dynamicCast())
      {
        v13 = v46;
        MEMORY[0x1CCA5D040]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        v14 = [a1 localIdentifier];
        if (!v14)
        {
          sub_1C755068C();
          v14 = sub_1C755065C();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C755BAB0;
        v16 = [v13 localIdentifier];
        v17 = sub_1C755068C();
        v19 = v18;

        *(inited + 32) = v17;
        *(inited + 40) = v19;
        sub_1C706D154();
        v20 = sub_1C7550F7C();

        [a4 mergeConfidenceBetweenPersonLocalIdentifier:v14 andCandidateLocalIdentifiers:v20];
        v22 = v21;

        v23 = v13;
        v24 = sub_1C754FEEC();
        v25 = sub_1C755117C();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v47[0] = v41;
          *v26 = 136315394;
          v27 = [v23 localIdentifier];
          v28 = a3;
          v29 = sub_1C755068C();
          v31 = v30;

          v32 = v29;
          a3 = v28;
          v33 = sub_1C6F765A4(v32, v31, v47);

          *(v26 + 4) = v33;
          *(v26 + 12) = 2048;
          v34 = v22;
          *(v26 + 14) = v34;
          _os_log_impl(&dword_1C6F5C000, v24, v25, "Merge candidate %s has confidence %f.", v26, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v41);
          MEMORY[0x1CCA5F8E0](v41, -1, -1);
          MEMORY[0x1CCA5F8E0](v26, -1, -1);
        }

        else
        {

          v34 = v22;
        }

        v10 = v42;
        v9 = v43;
        v35 = [objc_opt_self() changeRequestForPerson_];
        [v35 setMergeCandidateConfidence:v34];
      }

      else
      {
        v35 = sub_1C754FEEC();
        v36 = sub_1C755119C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1C6F5C000, v35, v36, "Couldn't cast a fetched merge candidate from PNPhotoLibrary to a PHPerson!", v37, 2u);
          MEMORY[0x1CCA5F8E0](v37, -1, -1);
        }
      }

      ++v11;

      v12 += 32;
      if (v10 == v11)
      {

        a5 = v40;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    if (sub_1C6FB6304())
    {
      v38 = [objc_opt_self() changeRequestForPerson_];
      sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
      v39 = sub_1C7550B3C();

      [v38 addMergeCandidateWithConfidencePersons_];
    }

    else
    {
    }
  }
}

void sub_1C722FE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = v3;
    v8 = OBJC_IVAR___PNPetPromoter_metrics;
    swift_beginAccess();
    v9 = *(v4 + v8);
    sub_1C75504FC();
    v10 = OUTLINED_FUNCTION_58();
    v12 = sub_1C6FE376C(v10, v11, v9);

    if (v12)
    {
      v13 = [v12 unsignedIntegerValue];
    }

    else
    {
      v13 = 0;
    }

    v14 = __CFADD__(v13, a3);
    v15 = &v13[a3];
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      swift_beginAccess();
      if (v16)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v4 + v8);
        sub_1C6FC884C(v16, a1, a2, isUniquelyReferenced_nonNull_native);
        *(v4 + v8) = v19;
      }

      else
      {
        OUTLINED_FUNCTION_58();
        sub_1C7236D0C();
      }

      swift_endAccess();
    }
  }
}

void static PetPromoter.status(with:delegate:)()
{
  OUTLINED_FUNCTION_72_13();
  v340 = v1;
  v341 = v2;
  v3 = v0;
  v307 = v4;
  v6 = v5;
  v303 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v305 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v302 = v10 - v9;
  OUTLINED_FUNCTION_99_3();
  sub_1C6F65BE8(v11, v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215640, &unk_1C7579DC0);
  OUTLINED_FUNCTION_99_3();
  sub_1C7080178(v14, v15, v16);
  v17 = sub_1C75504DC();
  objc_allocWithZone(PNPromoterPhotoLibrary);
  v18 = v6;
  v19 = sub_1C7232AD8(v18, v17, 1);
  v308 = v18;
  v20 = [v18 librarySpecificFetchOptions];
  v309 = v3;
  v21 = sub_1C72298C0();
  sub_1C7082AAC(v21, v20);
  [v20 setPersonContext_];
  v22 = objc_opt_self();
  v23 = v20;
  v24 = [(SEL *)v22 fetchPersonsWithOptions:v23];
  [v23 setPersonContext_];
  i = [(SEL *)v22 fetchPersonsWithOptions:v23];
  v311 = v23;

  v26 = [v24 fetchedObjects];
  if (!v26)
  {
    sub_1C6FB1814();
    v63 = v62;
    OUTLINED_FUNCTION_38_21();
    if (v52)
    {
      OUTLINED_FUNCTION_2_0(v64);
      sub_1C6FB1814();
      v63 = v280;
    }

    OUTLINED_FUNCTION_3_1();
    *(v63 + 16) = v23;
    OUTLINED_FUNCTION_51_16();
    *(v67 + 32) = v65 + 54;
    *(v67 + 40) = v66;
    v334 = v63;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v68 = sub_1C703328C();
    OUTLINED_FUNCTION_59_16(v68, v69, v70, v68);
    OUTLINED_FUNCTION_69_15();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_92_11();

    goto LABEL_12;
  }

  v27 = v26;
  v300 = v24;
  v28 = sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
  v29 = sub_1C7550B5C();

  v30 = [i fetchedObjects];
  if (!v30)
  {

    sub_1C6FB1814();
    v72 = v71;
    OUTLINED_FUNCTION_38_21();
    if (v52)
    {
      OUTLINED_FUNCTION_2_0(v73);
      sub_1C6FB1814();
      v72 = v283;
    }

    OUTLINED_FUNCTION_3_1();
    *(v72 + 16) = v27;
    OUTLINED_FUNCTION_51_16();
    *(v76 + 32) = v74 + 56;
    *(v76 + 40) = v75;
    v334 = v72;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v77 = sub_1C703328C();
    OUTLINED_FUNCTION_59_16(v77, v78, v79, v77);
    OUTLINED_FUNCTION_69_15();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_92_11();

LABEL_12:
    goto LABEL_145;
  }

  v31 = v30;
  v32 = sub_1C7550B5C();

  v293 = v29;
  sub_1C7229928(v29, v19, v33, v34, v35, v36, v37, v38, v28);
  v40 = v39;
  v292 = v32;
  sub_1C7229928(v32, v19, v41, v42, v43, v44, v45, v46, v290);
  v310 = v47;
  v48 = [objc_allocWithZone(PNPersonClusterManager) initWithPhotoLibrary:v19 detectionType:2 promoterDelegate:v307];
  sub_1C6FB1814();
  v50 = v49;
  OUTLINED_FUNCTION_38_21();
  if (!v52)
  {
    goto LABEL_4;
  }

LABEL_150:
  OUTLINED_FUNCTION_2_0(v51);
  sub_1C6FB1814();
  v50 = v279;
LABEL_4:
  v294 = v22;
  OUTLINED_FUNCTION_3_1();
  *(v50 + 16) = v31;
  OUTLINED_FUNCTION_51_16();
  *(v55 + 32) = v53 + 14;
  *(v55 + 40) = v54;
  v327 = v48;
  if ((v40 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    OUTLINED_FUNCTION_99_3();
    sub_1C6F65BE8(v56, v57, v58);
    OUTLINED_FUNCTION_99_3();
    v48 = v327;
    sub_1C7080178(v59, v60, v61);
    sub_1C7550FEC();
    v31 = v333[0];
    v22 = v333[1];
  }

  else
  {
    v31 = 0;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_31_26();
    v22 = (v80 & v81);
  }

  v328 = 0;
  v316 = 0x80000001C75A5410;
  v299 = "0 merge candidates";
  OUTLINED_FUNCTION_3_1();
  v298 = v82;
  v297 = v310 & 0xC000000000000001;
  v83 = v310 & 0xFFFFFFFFFFFFFF8;
  if (v310 < 0)
  {
    v83 = v310;
  }

  v296 = v83;
  v291 = v310 + 56;
  OUTLINED_FUNCTION_3_1();
  v312 = v84;
  OUTLINED_FUNCTION_3_1();
  v295 = v88;
  v306 = v19;
  v319 = i;
  v318 = v85;
  v317 = v86;
  v315 = v87;
LABEL_17:
  while ((v85 & 0x8000000000000000) == 0)
  {
    v51 = v31;
    v40 = v31;
    if (!v22)
    {
      do
      {
        v40 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_149;
        }

        if (v40 >= v87)
        {
          goto LABEL_82;
        }

        ++v51;
      }

      while (!*(v86 + 8 * v40));
    }

    OUTLINED_FUNCTION_78_0();
    v321 = v90 & v89;
    v92 = OUTLINED_FUNCTION_94_11(v91);
    if (!v92)
    {
      goto LABEL_81;
    }

LABEL_26:
    v330 = 0xD000000000000027;
    v331 = v316;
    v94 = [v92 localIdentifier];
    sub_1C755068C();

    v95 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v95);

    MEMORY[0x1CCA5CD70](2960672, 0xE300000000000000);
    v96 = v330;
    v97 = v331;
    v99 = *(v50 + 16);
    v98 = *(v50 + 24);
    if (v99 >= v98 >> 1)
    {
      OUTLINED_FUNCTION_2_0(v98);
      sub_1C6FB1814();
      v50 = v165;
    }

    i = MEMORY[0x1E69E7CA0];
    *(v50 + 16) = v99 + 1;
    v100 = v50 + 16 * v99;
    *(v100 + 32) = v96;
    *(v100 + 40) = v97;
    v48 = v327;
    v22 = &selRef_clsSceneClassifications;
    v101 = [objc_msgSend(v327 pn:v92) fetchFacesForPerson:sel_fetchedObjects];
    OUTLINED_FUNCTION_24_2();
    swift_unknownObjectRelease();
    v102 = sub_1C7550B5C();

    sub_1C71BC2E0(v102);
    OUTLINED_FUNCTION_24_2();

    v326 = v96;
    if (v96)
    {
      v103 = [objc_msgSend(v48 pn:v92) fetchCandidatePersonsForPerson:sel_fetchedObjects];
      OUTLINED_FUNCTION_24_2();
      swift_unknownObjectRelease();
      i = sub_1C7550B5C();

      v31 = sub_1C71BC2B8(i);

      if (v31)
      {
        v330 = 9;
        v331 = 0xE100000000000000;
        v104 = sub_1C6FB6304();
        OUTLINED_FUNCTION_23_30(v104);
        v105 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v105);

        MEMORY[0x1CCA5CD70](0x202C736563616620, 0xE800000000000000);
        v106 = sub_1C6FB6304();
        OUTLINED_FUNCTION_23_30(v106);
        v107 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v107);

        OUTLINED_FUNCTION_22_38();
        v108 = v330;
        v109 = v331;
        v19 = *(v50 + 16);
        v110 = *(v50 + 24);
        v304 = v40;
        if (v19 >= v110 >> 1)
        {
          OUTLINED_FUNCTION_15_2(v110);
          sub_1C6FB1814();
          v50 = v166;
        }

        *(v50 + 16) = v19 + 1;
        v111 = v50 + 16 * v19;
        *(v111 + 32) = v108;
        *(v111 + 40) = v109;
        v332 = v50;
        v112 = sub_1C6FB6304();
        for (i = 0; ; ++i)
        {
          if (v112 == i)
          {

            v48 = v332;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1814();
              v48 = v167;
            }

            v115 = v92;
            v116 = v48[2];
            OUTLINED_FUNCTION_38_21();
            if (v52)
            {
              OUTLINED_FUNCTION_2_0(v117);
              sub_1C6FB1814();
              v48 = v168;
            }

            v48[2] = v31;
            v118 = &v48[2 * v116];
            v119 = v298;
            v118[4] = 0xD0000000000000D7;
            v118[5] = v119;
            v332 = v48;
            if (v297)
            {
              sub_1C75504FC();
              sub_1C755165C();
              sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
              sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60, off_1E829F410);
              sub_1C7550FEC();
              v121 = v334;
              v120 = v335;
              v122 = v336;
              v31 = v337;
              i = v338;
            }

            else
            {
              v121 = v310;
              v129 = -1 << *(v310 + 32);
              v122 = ~v129;
              v130 = -v129;
              if (v130 < 64)
              {
                v131 = ~(-1 << v130);
              }

              else
              {
                v131 = -1;
              }

              i = v131 & *(v310 + 56);
              sub_1C75504FC();
              v31 = 0;
              v120 = v291;
            }

            v301 = v122;
            v19 = (v122 + 64) >> 6;
            v322 = v121;
            v323 = v120;
            v314 = v19;
            v313 = v92;
            if ((v121 & 0x8000000000000000) == 0)
            {
LABEL_58:
              v51 = v31;
              v40 = v31;
              if (i)
              {
LABEL_62:
                OUTLINED_FUNCTION_78_0();
                v134 = (v133 & v132);
                v136 = OUTLINED_FUNCTION_94_11(v135);
                if (v136)
                {
                  goto LABEL_66;
                }

LABEL_78:
                v115 = v92;
                OUTLINED_FUNCTION_75_9();
LABEL_79:
                sub_1C6F61E88(v121);

                v31 = v304;
                v22 = v321;
                v19 = v306;
                i = v319;
                v85 = OUTLINED_FUNCTION_29_25();
                v87 = v315;
                v50 = v48;
                v48 = v327;
                goto LABEL_17;
              }

              while (1)
              {
                v40 = v51 + 1;
                if (__OFADD__(v51, 1))
                {
                  goto LABEL_148;
                }

                if (v40 >= v19)
                {
                  goto LABEL_79;
                }

                ++v51;
                if (*&v120[8 * v40])
                {
                  goto LABEL_62;
                }
              }
            }

            while (1)
            {
              v137 = sub_1C75516FC();
              if (!v137)
              {
                goto LABEL_79;
              }

              v329 = v137;
              sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
              OUTLINED_FUNCTION_93_11();
              v136 = v330;
              v40 = v31;
              v134 = i;
              if (!v330)
              {
                goto LABEL_78;
              }

LABEL_66:
              v121 = v48;
              v325 = objc_autoreleasePoolPush();
              v138 = v327;
              v139 = [v327 numberOfMomentsInCommonBetweenPerson:v92 andPerson:v136];
              if (v139)
              {
                v140 = v139;
                v324 = v134;
                v141 = [objc_msgSend(v138 pn:v136) fetchFacesForPerson:v22[230]];
                OUTLINED_FUNCTION_50_19();
                swift_unknownObjectRelease();
                v142 = sub_1C7550B5C();

                sub_1C71BC2E0(v142);
                OUTLINED_FUNCTION_50_19();

                if (!v48)
                {
                  OUTLINED_FUNCTION_33_22();
                  if (v52)
                  {
                    OUTLINED_FUNCTION_2_0(v158);
                    sub_1C6FB1814();
                    v121 = v164;
                  }

                  OUTLINED_FUNCTION_28_23();
                  v160 = v159 + 13;
                  v161 = v312;
                  *(v162 + 32) = v160;
                  *(v162 + 40) = v161;
                  v48 = v121;
                  v332 = v121;
                  v134 = v324;
                  goto LABEL_75;
                }

                v330 = 0;
                v331 = 0xE000000000000000;
                sub_1C755180C();
                OUTLINED_FUNCTION_67_13();
                MEMORY[0x1CCA5CD70](2313, 0xE200000000000000);
                v143 = [v136 localIdentifier];
                v144 = v138;
                v145 = sub_1C755068C();
                v320 = v48;
                v147 = v146;

                MEMORY[0x1CCA5CD70](v145, v147);

                MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
                v329 = v140;
                v148 = sub_1C7551D8C();
                MEMORY[0x1CCA5CD70](v148);

                OUTLINED_FUNCTION_30_17();
                OUTLINED_FUNCTION_23_30([v144 numberOfAssetsInCommonBetweenPerson:v92 andPerson:v136]);
                OUTLINED_FUNCTION_216();
                v149 = sub_1C7551D8C();
                MEMORY[0x1CCA5CD70](v149);

                OUTLINED_FUNCTION_30_17();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2196B0, &unk_1C7575F90);
                sub_1C7550B3C();
                OUTLINED_FUNCTION_65_17();
                v150 = sub_1C7550B3C();
                [v144 animalprintBasedDistanceBetweenPetFaces:&v330 andPetFaces:v150];

                sub_1C7550F6C();
                OUTLINED_FUNCTION_30_17();
                sub_1C7550B3C();
                OUTLINED_FUNCTION_65_17();
                v151 = sub_1C7550B3C();

                [v144 distanceBetweenPetFaces:&v330 andPetFaces:v151];

                sub_1C7550F6C();
                OUTLINED_FUNCTION_30_17();
                v121 = v320;
                [v144 momentBasedDistanceBetweenPet:v313 andPet:v136];
                sub_1C7550F6C();
                v152 = v330;
                v153 = v331;
                v155 = *(v121 + 16);
                v154 = *(v121 + 24);
                if (v155 >= v154 >> 1)
                {
                  OUTLINED_FUNCTION_2_0(v154);
                  sub_1C6FB1814();
                  v121 = v163;
                }

                v19 = v314;
                *(v121 + 16) = v155 + 1;
                v156 = v121 + 16 * v155;
                *(v156 + 32) = v152;
                *(v156 + 40) = v153;
                v48 = v121;
                v332 = v121;
                v22 = &selRef_clsSceneClassifications;
                v134 = v324;
              }

              v157 = v325;
LABEL_75:
              objc_autoreleasePoolPop(v157);

              v31 = v40;
              i = v134;
              v115 = v92;
              OUTLINED_FUNCTION_75_9();
              v120 = v323;
              if ((v121 & 0x8000000000000000) == 0)
              {
                goto LABEL_58;
              }
            }
          }

          v48 = v327;
          if ((v31 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1CCA5DDD0](i, v31);
          }

          else
          {
            v51 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (i >= v51)
            {
              goto LABEL_147;
            }

            v19 = *(v31 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if (__OFADD__(i, 1))
          {
            break;
          }

          v40 = objc_autoreleasePoolPush();
          v113 = v48;
          v114 = v328;
          sub_1C7231E50(v19, &v332, v113, v92, v326);
          v328 = v114;
          objc_autoreleasePoolPop(v40);
          swift_unknownObjectRelease();
        }

        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_33_22();
      if (v52)
      {
        OUTLINED_FUNCTION_2_0(v127);
        sub_1C6FB1814();
        v50 = v170;
      }

      OUTLINED_FUNCTION_88_8();
      OUTLINED_FUNCTION_28_23();
      *(v124 + 32) = v128 + 1;
      v126 = &v327;
    }

    else
    {
      OUTLINED_FUNCTION_33_22();
      if (v52)
      {
        OUTLINED_FUNCTION_2_0(v123);
        sub_1C6FB1814();
        v50 = v169;
      }

      OUTLINED_FUNCTION_88_8();
      OUTLINED_FUNCTION_28_23();
      *(v124 + 32) = v125 + 13;
      v126 = &v339;
    }

    *(v124 + 40) = *(v126 - 32);
    v31 = v40;
    v85 = OUTLINED_FUNCTION_29_25();
    v87 = v315;
  }

  v93 = sub_1C75516FC();
  if (v93)
  {
    v329 = v93;
    sub_1C6F65BE8(0, &unk_1EDD0CE60, off_1E829F410);
    OUTLINED_FUNCTION_93_11();
    v92 = v330;
    v40 = v31;
    v321 = v22;
    if (v330)
    {
      goto LABEL_26;
    }
  }

LABEL_81:
  v85 = OUTLINED_FUNCTION_29_25();
LABEL_82:
  sub_1C6F61E88(v85);

  v171 = *(v50 + 16);
  OUTLINED_FUNCTION_64_13();
  if (!(!v173 & v52))
  {
    OUTLINED_FUNCTION_2_0(v172);
    sub_1C6FB1814();
    v50 = v281;
  }

  *(v50 + 16) = v31;
  OUTLINED_FUNCTION_63_15();
  if (v175 != v176)
  {
    OUTLINED_FUNCTION_15_2(v174);
    sub_1C6FB1814();
    v50 = v282;
  }

  OUTLINED_FUNCTION_3_1();
  *(v50 + 16) = v171;
  OUTLINED_FUNCTION_51_16();
  *(v179 + 32) = v177 + 61;
  *(v179 + 40) = v178;
  v180 = [v308 librarySpecificFetchOptions];
  type metadata accessor for PetPromoter();
  v181 = sub_1C72298C0();
  v182 = sub_1C722C934();
  v330 = v181;
  sub_1C6FD3574(v182);
  sub_1C7082AAC(v330, v180);
  [v180 setPersonContext_];
  v320 = v180;
  v183 = [(SEL *)v294 fetchPersonsWithOptions:v180];
  v184 = [v183 fetchedObjects];

  if (!v184)
  {
    OUTLINED_FUNCTION_81_12();

    OUTLINED_FUNCTION_33_22();
    if (!v52)
    {
LABEL_102:
      OUTLINED_FUNCTION_3_1();
      *(v50 + 16) = v184;
      OUTLINED_FUNCTION_51_16();
      *(v205 + 32) = v203 + 48;
      *(v205 + 40) = v204;
      v330 = v50;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      v206 = sub_1C703328C();
      OUTLINED_FUNCTION_59_16(v206, v207, v208, v206);
      OUTLINED_FUNCTION_69_15();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_92_11();

      goto LABEL_145;
    }

LABEL_154:
    OUTLINED_FUNCTION_2_0(v188);
    sub_1C6FB1814();
    v50 = v289;
    goto LABEL_102;
  }

  v185 = sub_1C7550B5C();

  v186 = sub_1C75504FC();
  v330 = sub_1C71CC970(v186);
  v48 = v328;
  sub_1C72329B8(&v330);
  if (v48)
  {

    __break(1u);
    return;
  }

  v328 = v330;
  v187 = sub_1C6FB6304();
  v188 = " detectionType = ";
  v322 = v185;
  if (!v187)
  {
    v189 = v50;
    goto LABEL_104;
  }

  v184 = v187;
  if (v187 < 1)
  {
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v189 = v50;
  v190 = 0;
  v325 = "\tPerson localIdentifier = ";
  v326 = "om PHFetchResult!";
  OUTLINED_FUNCTION_45_20(" detectionType = ");
  do
  {
    if (v323)
    {
      v191 = MEMORY[0x1CCA5DDD0](v190, v328);
    }

    else
    {
      v191 = *(v328 + 8 * v190 + 32);
    }

    v192 = v191;
    v330 = 0;
    v331 = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_67_13();
    MEMORY[0x1CCA5CD70](0xD00000000000001BLL, v326 | 0x8000000000000000);
    v193 = [v192 localIdentifier];
    sub_1C755068C();

    OUTLINED_FUNCTION_70_14();

    OUTLINED_FUNCTION_17_44();
    v194 = sub_1C72372BC(v192);
    if (v195)
    {
      v196 = v195;
    }

    else
    {
      v194 = 0;
      v196 = 0xE000000000000000;
    }

    MEMORY[0x1CCA5CD70](v194, v196);

    OUTLINED_FUNCTION_89_10();
    OUTLINED_FUNCTION_23_30([v192 verifiedType]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_22_38();
    LOWORD(v329) = [v192 detectionType];
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_11_43();
    OUTLINED_FUNCTION_23_30([v192 faceCount]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    MEMORY[0x1CCA5CD70](0x4F6C61756E616D20, 0xEF203D2072656472);
    OUTLINED_FUNCTION_23_30([v192 manualOrder]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    v197 = v330;
    v198 = v331;
    v200 = *(v189 + 16);
    v199 = *(v189 + 24);
    if (v200 >= v199 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v199);
      sub_1C6FB1814();
      v189 = v202;
    }

    ++v190;

    *(v189 + 16) = v200 + 1;
    v201 = v189 + 16 * v200;
    *(v201 + 32) = v197;
    *(v201 + 40) = v198;
  }

  while (v184 != v190);
LABEL_104:

  v209 = v189;
  v210 = *(v189 + 16);
  OUTLINED_FUNCTION_64_13();
  if (!(!v173 & v52))
  {
    OUTLINED_FUNCTION_2_0(v211);
    sub_1C6FB1814();
    v209 = v284;
  }

  v48 = v306;
  v212 = v305;
  OUTLINED_FUNCTION_56_16();
  OUTLINED_FUNCTION_63_15();
  if (v175 != v176)
  {
    OUTLINED_FUNCTION_15_2(v213);
    sub_1C6FB1814();
    v209 = v285;
  }

  OUTLINED_FUNCTION_3_1();
  *(v209 + 16) = v210;
  OUTLINED_FUNCTION_51_16();
  *(v216 + 32) = v214 + 81;
  *(v216 + 40) = v215;
  v217 = v307;
  v19 = sub_1C722D4E8(v322, v48, v307, CGRectMake, 0, v218, v219, v220);

  v184 = v302;
  sub_1C754FF0C();
  static PetPromoter.calculateOrderOfPetsWithinPeopleAndPetsHome(in:pnPhotoLibrary:clusterManager:delegate:logger:persistOrder:updateBlock:)(v308, v48, v221, v217, v184, 0, CGRectMake, 0);
  v223 = v222;
  v225 = *(v212 + 8);
  i = v212 + 8;
  v224 = v225;
  v225(v184, v303);
  v328 = v223;
  v226 = sub_1C6FB6304();
  if (!v226)
  {

    goto LABEL_124;
  }

  v318 = v224;
  v188 = v333;
  v305 = i;
  if (v226 < 1)
  {
    goto LABEL_152;
  }

  v227 = v209;
  v184 = 0;
  v325 = "\tPerson localIdentifier = ";
  v326 = "om PHFetchResult!";
  v324 = " verifiedType = ";
  v323 = "interestingScore:\n";
  v322 = v328 & 0xC000000000000001;
  v321 = v19;
  do
  {
    v228 = v226;
    if (v322)
    {
      v229 = MEMORY[0x1CCA5DDD0](v184, v328);
    }

    else
    {
      v229 = *(v328 + 8 * v184 + 32);
    }

    v230 = v229;
    v330 = 0;
    v331 = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_67_13();
    MEMORY[0x1CCA5CD70](0xD00000000000001BLL, v326 | 0x8000000000000000);
    v231 = [v230 localIdentifier];
    sub_1C755068C();

    OUTLINED_FUNCTION_70_14();

    OUTLINED_FUNCTION_17_44();
    v232 = sub_1C72372BC(v230);
    if (v233)
    {
      v234 = v233;
    }

    else
    {
      v232 = 0;
      v234 = 0xE000000000000000;
    }

    MEMORY[0x1CCA5CD70](v232, v234);

    OUTLINED_FUNCTION_89_10();
    OUTLINED_FUNCTION_23_30([v230 verifiedType]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_22_38();
    LOWORD(v329) = [v230 detectionType];
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_11_43();
    OUTLINED_FUNCTION_23_30([v230 faceCount]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    MEMORY[0x1CCA5CD70](0xD000000000000014, v323 | 0x8000000000000000);
    v235 = [v230 localIdentifier];
    v236 = sub_1C755068C();
    v238 = v237;

    if (*(v321 + 16))
    {
      sub_1C6F78124(v236, v238);
    }

    sub_1C7550F5C();
    v239 = v330;
    v240 = v331;
    v242 = *(v227 + 16);
    v241 = *(v227 + 24);
    if (v242 >= v241 >> 1)
    {
      OUTLINED_FUNCTION_15(v241);
      sub_1C6FB1814();
      v227 = v244;
    }

    ++v184;

    *(v227 + 16) = v242 + 1;
    v243 = v227 + 16 * v242;
    *(v243 + 32) = v239;
    *(v243 + 40) = v240;
    v226 = v228;
  }

  while (v228 != v184);

  v209 = v227;
  v224 = v318;
LABEL_124:

  v245 = *(v209 + 16);
  OUTLINED_FUNCTION_64_13();
  if (!(!v173 & v52))
  {
    OUTLINED_FUNCTION_2_0(v246);
    sub_1C6FB1814();
    v209 = v286;
  }

  OUTLINED_FUNCTION_56_16();
  OUTLINED_FUNCTION_63_15();
  if (v175 != v176)
  {
    OUTLINED_FUNCTION_15_2(v247);
    sub_1C6FB1814();
    v209 = v287;
  }

  OUTLINED_FUNCTION_3_1();
  *(v209 + 16) = v245;
  v248 = v209 + 16 * v184;
  *(v248 + 32) = 0xD00000000000004ALL;
  *(v248 + 40) = v249;
  v330 = v292;
  sub_1C6FD35B4(v293);
  v250 = v330;
  v251 = v302;
  sub_1C754FF0C();
  sub_1C722A140(v250, v308, 10, MEMORY[0x1E69E7CD0], v251);
  v253 = v252;
  v224(v251, v303);
  v330 = 0;
  v331 = 0xE000000000000000;
  sub_1C755180C();
  OUTLINED_FUNCTION_67_13();
  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A5390);
  v328 = v253;
  v329 = sub_1C6FB6304();
  i = MEMORY[0x1E69E6590];
  OUTLINED_FUNCTION_49_3();
  v254 = sub_1C7551D8C();
  v19 = v255;
  MEMORY[0x1CCA5CD70](v254);

  MEMORY[0x1CCA5CD70](2109216, 0xE300000000000000);
  sub_1C6FB6304();
  OUTLINED_FUNCTION_24_2();

  v329 = &v330;
  OUTLINED_FUNCTION_49_3();
  v256 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v256);

  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75A53B0);
  v257 = v330;
  v48 = v331;
  v259 = *(v209 + 16);
  v258 = *(v209 + 24);
  if (v259 >= v258 >> 1)
  {
    OUTLINED_FUNCTION_2_0(v258);
    sub_1C6FB1814();
    v209 = v288;
  }

  *(v209 + 16) = v259 + 1;
  v260 = v209 + 16 * v259;
  *(v260 + 32) = v257;
  *(v260 + 40) = v48;
  v261 = sub_1C6FB6304();
  if (!v261)
  {
    v262 = v209;
    goto LABEL_144;
  }

  v184 = v261;
  if (v261 < 1)
  {
    goto LABEL_153;
  }

  v262 = v209;
  v263 = 0;
  v325 = "\tPet localIdentifier = ";
  v326 = " pets will get promoted.";
  OUTLINED_FUNCTION_45_20(" detectionType = ");
  do
  {
    if (v323)
    {
      v264 = MEMORY[0x1CCA5DDD0](v263, v328);
    }

    else
    {
      v264 = *(v328 + 8 * v263 + 32);
    }

    v265 = v264;
    v330 = 0;
    v331 = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_67_13();
    MEMORY[0x1CCA5CD70](0xD000000000000018, v326 | 0x8000000000000000);
    v266 = [v265 localIdentifier];
    sub_1C755068C();

    OUTLINED_FUNCTION_70_14();

    OUTLINED_FUNCTION_17_44();
    v267 = sub_1C72372BC(v265);
    if (v268)
    {
      v269 = v268;
    }

    else
    {
      v267 = 0;
      v269 = 0xE000000000000000;
    }

    MEMORY[0x1CCA5CD70](v267, v269);

    MEMORY[0x1CCA5CD70](0xD000000000000019, v325 | 0x8000000000000000);
    OUTLINED_FUNCTION_23_30([v265 verifiedType]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_22_38();
    LOWORD(v329) = [v265 detectionType];
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    OUTLINED_FUNCTION_11_43();
    OUTLINED_FUNCTION_23_30([v265 faceCount]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_61_13();

    v270 = v330;
    v271 = v331;
    v273 = *(v262 + 16);
    v272 = *(v262 + 24);
    if (v273 >= v272 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v272);
      sub_1C6FB1814();
      v262 = v275;
    }

    ++v263;

    *(v262 + 16) = v273 + 1;
    v274 = v262 + 16 * v273;
    *(v274 + 32) = v270;
    *(v274 + 40) = v271;
  }

  while (v184 != v263);
LABEL_144:

  v330 = v262;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v276 = sub_1C703328C();
  OUTLINED_FUNCTION_59_16(v276, v277, v278, v276);
  OUTLINED_FUNCTION_69_15();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_92_11();

LABEL_145:
  OUTLINED_FUNCTION_73_13();
}

void sub_1C7231E50(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v48 = a4;
    v11 = a1;
    swift_unknownObjectRetain();
    v12 = [objc_msgSend(a3 pn:v10) fetchFacesForPerson:sel_fetchedObjects];
    swift_unknownObjectRelease();
    v13 = sub_1C7550B5C();

    v14 = sub_1C71BC2E0(v13);

    if (v14)
    {
      v15 = [objc_msgSend(a3 pn:v10) fetchMomentsForPerson:sel_fetchedObjects];
      swift_unknownObjectRelease();
      sub_1C7550B5C();

      sub_1C755180C();

      v16 = [v11 localIdentifier];
      v17 = sub_1C755068C();
      v19 = v18;

      MEMORY[0x1CCA5CD70](v17, v19);

      MEMORY[0x1CCA5CD70](0x2068746977202CLL, 0xE700000000000000);
      sub_1C6FB6304();
      v20 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v20);

      MEMORY[0x1CCA5CD70](0x6120736563616620, 0xEB0000000020646ELL);

      v21 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v21);

      MEMORY[0x1CCA5CD70](0x73746E656D6F6D20, 0xE800000000000000);
      sub_1C6FB0600();
      v22 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v23 = *a2;
      *(v23 + 16) = v22 + 1;
      v24 = v23 + 16 * v22;
      *(v24 + 32) = 0xD000000000000012;
      *(v24 + 40) = 0x80000001C75A5830;
      sub_1C755180C();

      [a3 numberOfMomentsInCommonBetweenPerson:v48 andPerson:v10];
      v25 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v25);

      MEMORY[0x1CCA5CD70](0x73746E656D6F6D20, 0xE800000000000000);
      sub_1C6FB0600();
      v26 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v27 = *a2;
      *(v27 + 16) = v26 + 1;
      v28 = v27 + 16 * v26;
      *(v28 + 32) = 0xD000000000000012;
      *(v28 + 40) = 0x80000001C75A5850;
      sub_1C755180C();

      [a3 numberOfAssetsInCommonBetweenPerson:v48 andPerson:v10];
      v29 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v29);

      MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
      sub_1C6FB0600();
      v30 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v31 = *a2;
      *(v31 + 16) = v30 + 1;
      v32 = v31 + 16 * v30;
      *(v32 + 32) = 0xD000000000000011;
      *(v32 + 40) = 0x80000001C75A5870;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000003DLL, 0x80000001C75A5890);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2196B0, &unk_1C7575F90);
      v33 = sub_1C7550B3C();
      v34 = sub_1C7550B3C();
      [a3 animalprintBasedDistanceBetweenPetFaces:v33 andPetFaces:v34];

      sub_1C7550F6C();
      sub_1C6FB0600();
      v35 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v36 = *a2;
      *(v36 + 16) = v35 + 1;
      v37 = v36 + 16 * v35;
      *(v37 + 32) = 0;
      *(v37 + 40) = 0xE000000000000000;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000002CLL, 0x80000001C75A58D0);
      v38 = sub_1C7550B3C();
      v39 = sub_1C7550B3C();

      [a3 distanceBetweenPetFaces:v38 andPetFaces:v39];

      sub_1C7550F6C();
      sub_1C6FB0600();
      v40 = *(*a2 + 16);
      sub_1C6FB0EFC();
      v41 = *a2;
      *(v41 + 16) = v40 + 1;
      v42 = v41 + 16 * v40;
      *(v42 + 32) = 0;
      *(v42 + 40) = 0xE000000000000000;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000004ALL, 0x80000001C75A5900);
      [a3 momentBasedDistanceBetweenPet:v48 andPet:v10];
      sub_1C7550F6C();
      v44 = 0;
      v43 = 0xE000000000000000;
      sub_1C6FB0600();
      v45 = *(*a2 + 16);
      sub_1C6FB0EFC();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0x80000001C75A5800;
      sub_1C6FB0600();
      v45 = *(*a2 + 16);
      sub_1C6FB0EFC();
      swift_unknownObjectRelease();
      v44 = 0xD000000000000025;
    }
  }

  else
  {
    v43 = 0x80000001C75A57B0;
    sub_1C6FB0600();
    v45 = *(*a2 + 16);
    sub_1C6FB0EFC();
    v44 = 0xD00000000000004CLL;
  }

  v46 = *a2;
  *(v46 + 16) = v45 + 1;
  v47 = v46 + 16 * v45;
  *(v47 + 32) = v44;
  *(v47 + 40) = v43;
}

void sub_1C7232664(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a3;
  v4 = objc_allocWithZone(type metadata accessor for PetPromoter());
  v5 = PetPromoter.init(with:delegate:)(a1, 0);
  sub_1C7227714();
}

void static PetPromoter.promoteUnverifiedPets(in:with:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for PetPromoter());
  v3 = PetPromoter.init(with:delegate:)(a1, 0);
  sub_1C7227714();
}

id PetPromoter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PetPromoter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PetPromoter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C723291C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422A2C();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1C75504FC();
  sub_1C7232C58(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C72329B8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C7232EBC(v6);
  return sub_1C755193C();
}

uint64_t sub_1C7232A34(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1C7423D10();
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1C75504FC();
  sub_1C7232D90(v8, a2);
  sub_1C755193C();
  return swift_bridgeObjectRelease_n();
}

id sub_1C7232AD8(void *a1, uint64_t a2, char a3)
{
  sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215640, &unk_1C7579DC0);
  sub_1C7080178(&qword_1EDD0CD00, &qword_1EDD108E0, 0x1E696AD98);
  v6 = sub_1C755048C();

  v7 = [v3 initWithPhotoLibrary:a1 rawClusters:v6 includesPets:a3 & 1];

  return v7;
}

id sub_1C7232BB4(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
  v6 = sub_1C755048C();

  v7 = [v3 initWithPersonClusterManager:a1 andInvalidCandidatesMapping:v6 profile:a3];

  return v7;
}

uint64_t sub_1C7232C58(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1C7551D7C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1C75504FC();
      sub_1C7233590(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1C7232F9C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C7232D90(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1C7551D7C();
  if (result < v5)
  {
    v7 = result;
    v8 = sub_1C739D588(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_1C75504FC();
    result = sub_1C7234018(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1C7233224(0, v5, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1C7232EBC(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D588(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C7234AA4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C72334A0(0, v3, 1, a1);
  }
}

void sub_1C7232F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a5;
  if (a3 != a2)
  {
    v29 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = a1 - a3;
    while (2)
    {
      v25 = v6;
      v26 = a3;
      v8 = (v29 + 16 * a3);
      v10 = *v8;
      v9 = v8[1];
      v24 = v7;
      while (*(v5 + 16))
      {
        v11 = *(v6 - 2);
        v12 = *(v6 - 1);
        sub_1C75504FC();
        sub_1C75504FC();
        v13 = sub_1C6F78124(v10, v9);
        if ((v14 & 1) == 0)
        {

          break;
        }

        if (*(v5 + 16))
        {
          v30 = *(*(v5 + 56) + 8 * v13);
          v15 = sub_1C6F78124(v11, v12);
          if (v16)
          {
            v17 = *(*(v5 + 56) + 8 * v15);
            v28 = [v30 integerValue];
            if (v28 == [v17 integerValue])
            {
              if (v10 == v11 && v9 == v12)
              {

                v5 = a5;
                break;
              }

              v19 = sub_1C7551DBC();

              v5 = a5;
              if ((v19 & 1) == 0)
              {
                break;
              }
            }

            else
            {
              v20 = [v30 integerValue];
              v21 = [v17 integerValue];

              v5 = a5;
              if (v21 >= v20)
              {
                break;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }

        if (!v29)
        {
          __break(1u);
          return;
        }

        v10 = *v6;
        v9 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v9;
        *(v6 - 2) = v10;
        v6 -= 2;
        if (__CFADD__(v7++, 1))
        {
          break;
        }
      }

      a3 = v26 + 1;
      v6 = v25 + 2;
      v7 = v24 - 1;
      if (v26 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}